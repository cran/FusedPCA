fpca <- function(A, maxsteps = 200, tol = 1e-3, normalised = T, K = 2, score = F, ridge = T, approx = F){
	
	temp.obj = fpca.start(A = A, maxsteps = maxsteps, tol = tol, normalised = normalised, K = K, score = score, ridge = ridge, approx = approx)
	temp.cluster = fpca.cluster(obj = temp.obj, K = K, score = score)
	temp.cut = fpca.cut(A = A, obj = temp.obj, fpca.cluster = temp.cluster, K = K)
	temp = get.cluster(A = A, iso.seq = temp.obj$iso.seq, cut.list = temp.cut, clusters.list = temp.cluster)
	
	return(list(final.ratio.cluster = temp$final.ratio.cluster, ratio.location = temp$ratio.location, final.normalised.cluster = temp$final.normalised.cluster, normalised.location = temp$normalised.location))
}
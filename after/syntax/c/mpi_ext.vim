" Vim syntax file, C++ language exentesions for pthreads, MPI
" Maintainer:	Stephen Becker
" Last Change:	2010 Jan 31
"
" This file should be in $VIMRUNTIME/after/syntax/c.vim
" So that your regular c.vim file is loaded, and then this
" file is loaded as a supplement
"
" You can find other syntax files, like cuda.vim, on the web.



" ============= pthreads ================================
syn keyword	cPthreadFcn		pthread_exit pthread_cancel pthread_create  
syn keyword	cPthreadFcn		pthread_join pthread_detach 
syn keyword	cPthreadFcn		pthread_mutex_init pthread_mutex_destroy
syn keyword	cPthreadFcn		pthread_mutex_lock pthread_mutex_trylock
syn keyword	cPthreadFcn		pthread_mutex_unlock
syn keyword	cPthreadFcn		pthread_cond_init pthread_cond_destroy  
syn keyword	cPthreadFcn		pthread_cond_wait pthread_cond_signal
syn keyword	cPthreadFcn		pthread_cond_broadcast
syn keyword	cPthreadFcn		pthread_self pthread_equal pthread_once

" These are actual cTypes:
syn keyword	cType		 pthread_t pthread_attr_t
syn keyword	cType		 pthread_mutex_t pthread_condattr_t  

" ============= MPI =====================================
syn keyword		cMPIFcn		MPI_Init MPI_Finalize   
syn keyword		cMPIFcn		MPI_Comm_size MPI_Comm_rank 
syn keyword		cMPIFcn		MPI_Allreduce
syn keyword		cMPIFcn		MPI_Send MPI_Recv
syn keyword		cMPIFcn		MPI_Rsend MPI_Brecv
syn keyword		cMPIFcn		MPI_Ssend MPI_Srecv
syn keyword		cMPIFcn		MPI_Isend MPI_Irecv
syn keyword		cMPIFcn		MPI_Irsend MPI_Ibsend MPI_Issend
syn keyword		cMPIFcn		MPI_Test MPI_Wait
syn keyword cConstant		MPI_ANY_SOURCE MPI_ANY_TAG

syn keyword		cMPIFcn		MPI_Group_free MPI_Comm_free MPI_Comm_disconnect
syn keyword		cMPIFcn		MPI_Group_incl MPI_Group_excl
syn keyword		cMPIFcn		MPI_Group_union MPI_Group_intersection
syn keyword		cMPIFcn		MPI_Group_difference

syn keyword		cMPIFcn		MPI_Wtime MPI_Wtick 

syn keyword		cMPIFcn		MPI_Scan MPI_Reduce MPI_Barrier MPI_Scatter

syn keyword		cType			MPI_Comm
syn keyword cConstant		MPI_SUCCESS MPI_COMM_WORLD

syn keyword		cType			MPI_Datatype
syn keyword cConstant		MPI_INT MPI_LONG MPI_DOUBLE

syn keyword 	cType			MPI_CHAR MPI_WCHAR MPI_SIGNED_CHAR MPI_UNSIGNED_CHAR 
syn keyword		cType			MPI_SHORT MPI_INT MPI_LONG MPI_LONG_LONG_INT MPI_LONG_LONG MPI_UNSIGNED_SHORT MPI_UNSIGNED MPI_UNSIGNED_LONG MPI_UNSIGNED_LONG_LONG
syn keyword		cType			MPI_FLOAT MPI_DOUBLE MPI_LONG_DOUBLE
syn keyword		cType			MPI_C_COMPLEX MPI_C_FLOAT_COMPLEX MPI_C_DOUBLE_COMPLEX MPI_C_LONG_DOUBLE_COMPLEX
syn keyword		cType			MPI_C_BOOL
syn keyword		cType			MPI_INT8_T MPI_INT16_T MPI_INT32_T MPI_INT64_T
syn keyword		cType			MPI_UINT8_T MPI_UINT16_T MPI_UINT32_T MPI_UINT64_T
syn keyword		cType			MPI_BYTE
syn keyword		cType			MPI_PACKED

syn keyword		cType			MPI_Op
syn keyword cConstant		MPI_MAX MPI_MIN MPI_MAXLOC MPI_MINLOC
syn keyword cConstan			MPI_SUM MPI_PROD MPI_LAND MPI_LOR MPI_LXOR
syn keyword cConstant		MPI_BAND MPI_BOR MPI_BXOR MPI_REPLACE

if version >= 508 || !exists("did_cpp_syn_inits")
	if version < 508
		let did_cpp_syn_inits = 1
		command -nargs=+ HiLink hi link <args>
 	else
		command -nargs=+ HiLink hi def link <args>
	endif
	HiLink cMPIFcn	    cPthreadFcn
	HiLink cPthreadFcn	cStatement
	delcommand HiLink
endif


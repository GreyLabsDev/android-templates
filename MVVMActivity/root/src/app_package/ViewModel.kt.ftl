package ${packageName}

class ${className}ViewModel : ViewModel(), BaseViewModel, LifecycleObserver {
    private val disposables = CompositeDisposable()
    private var progressState: MutableLiveData<ProgressState> = MutableLiveData()

    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    override fun dispose() {
        disposables.dispose()
    }
    
    override fun getProgressState(): MutableLiveData<ProgressState> {
        return progressState
    }
}
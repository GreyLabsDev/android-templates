package ${packageName}

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.Observer
import org.koin.android.viewmodel.ext.android.viewModel

class ${className}View : AppCompatActivity(), BaseView, ${className}Navigator {
    private val viewModel: ${className}ViewModel by viewModel()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        //TODO add setContentView
        lifecycle.addObserver(viewModel)

        initToolbar()
        initViews()
        initListeners()
        initViewModelObserving()
    }
    
    override fun initToolbar() {}

    override fun initViews() {}

    override fun initListeners() {}

    override fun initViewModelObserving() {
        viewModel.getProgressState().observe(this, Observer { state ->
            when (state) {
                is ProgressState.Initial -> {

                }
                is ProgressState.Loading -> {

                }
                is ProgressState.Done -> {

                }
                is ProgressState.Error -> {

                }
                is ProgressState.Finish -> {

                }
            }
        })
    }
}
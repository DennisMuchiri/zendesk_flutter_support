package com.dennis.zendeskfluttercombination.zendesk_flutter_combination

import io.flutter.plugin.common.MethodChannel
import zendesk.core.AnonymousIdentity
import zendesk.core.Zendesk
import zendesk.support.HelpCenterProvider
import zendesk.support.Support
import zendesk.support.guide.HelpCenterActivity
import zendesk.support.request.RequestActivity
import zendesk.support.requestlist.RequestListActivity

class ZendeskFlutterCombination (private val plugin: ZendeskFlutterCombinationPlugin, private val channel: MethodChannel) {

    companion object {
        const val tag = "[ZendeskMessaging]"

        // Method channel callback keys
        const val initializeSuccess: String = "initialize_success"
        const val initializeFailure: String = "initialize_failure"
        const val loginSuccess: String = "login_success"
        const val loginFailure: String = "login_failure"
        const val logoutSuccess: String = "logout_success"
        const val logoutFailure: String = "logout_failure"
    }

    fun initialize(
        urlString: String,
        appId: String,
        clientId: String,
        nameIdentifier: String,
    ) {
        println("$tag - clientId== - $clientId")
        Zendesk.INSTANCE.init(
            plugin.activity!!,
            urlString,
            appId,
            clientId,
        )

        val identity = AnonymousIdentity.Builder()
            .withNameIdentifier(nameIdentifier)
            .build()

        Zendesk.INSTANCE.setIdentity(identity)
        Support.INSTANCE.init(Zendesk.INSTANCE)
        plugin.isInitialize = true
        channel.invokeMethod(initializeSuccess, null)
    }

    fun showHelpCenter(){
        HelpCenterActivity.builder().show(plugin.activity!!);
    }

    fun showRequestList(){
        RequestListActivity.builder().show(plugin.activity!!)
    }

    fun showRequest(){
        RequestActivity.builder().show(plugin.activity!!)
    }
}
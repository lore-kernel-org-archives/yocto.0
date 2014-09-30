Return-Path: <ncrypticus@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B972E00878; Tue, 30 Sep 2014 12:08:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ncrypticus[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f43.google.com (mail-wg0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAFD6E00876
	for <yocto@yoctoproject.org>; Tue, 30 Sep 2014 12:08:31 -0700 (PDT)
Received: by mail-wg0-f43.google.com with SMTP id a1so4364577wgh.2
	for <yocto@yoctoproject.org>; Tue, 30 Sep 2014 12:08:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=L51Sss158uw+vLD0eu2B9wAXbMfx8i6QMTcN01ZVcSs=;
	b=X9lMeoe9npY76cvz7wvzB5StK/dukyWp2580e6ZPsGNc4+Jcl80PmqKZkgBhvnF49V
	YHmRDG3Mq5wsKMupQe0eY7WKv6tpg2LBnjQUAnyvaA+hJxpUW412mnjRl8NtbR/POWo9
	nmNKLw3AFzkeAhX4bIaBI3j4Ivvhz58wtAAZtzSWaejk7kIwQ9BMUxvJ7zoJhspWSTNK
	J97lxT85IvW2260FeaBZzb8NncArBpOph18XZ3qTWCC607PLosstySh40yO4+CRKilqG
	n02pgeB+GNqJpkgBCcWMaHdbVQRic1jjPJ0IX637IICMQARbiwElD7xU+2svHNclVR5e
	v+eA==
MIME-Version: 1.0
X-Received: by 10.180.38.114 with SMTP id f18mr8099882wik.24.1412104109891;
	Tue, 30 Sep 2014 12:08:29 -0700 (PDT)
Received: by 10.194.10.202 with HTTP; Tue, 30 Sep 2014 12:08:29 -0700 (PDT)
Date: Tue, 30 Sep 2014 12:08:29 -0700
Message-ID: <CAMSG=xVdr6S7XwkwNnqPNHCrrCLxycmAf4X_wqGrBh36p2vTKg@mail.gmail.com>
From: Nemicolopterus Crypticus <ncrypticus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Yocto Plugin NullPointerException
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 30 Sep 2014 19:08:40 -0000
Content-Type: multipart/alternative; boundary=e89a8f6439c6db261605044d1bed

--e89a8f6439c6db261605044d1bed
Content-Type: text/plain; charset=UTF-8

Note: The plugin works on a different project in the same Eclipse
workspace. I am attempting to create some Project-specific settings, and
point the Toolchain and Sysroot to a different directory, and I'm getting
this error.

Full output here:http://pastebin.com/CkGfWspY

Running Kepler 4.3.2

Any thoughts? I'm completely stuck.


!SESSION 2014-09-30 11:41:03.071
-----------------------------------------------
eclipse.buildId=4.3.2.M20140221-1700
java.version=1.6.0_45
java.vendor=Sun Microsystems Inc.
BootLoader constants: OS=linux, ARCH=x86_64, WS=gtk, NL=en_US
Framework arguments:  -product org.eclipse.epp.package.standard.product
Command-line arguments:  -os linux -ws gtk -arch x86_64 -product
org.eclipse.epp.package.standard.product

!ENTRY org.eclipse.ui 4 4 2014-09-30 11:41:19.338
!MESSAGE Referenced part does not exist yet: org.eclipse.ui.views.TaskList.

!ENTRY org.eclipse.ui 4 0 2014-09-30 11:42:43.588
!MESSAGE Unhandled event loop exception
!STACK 0
java.lang.NullPointerException
    at org.yocto.sdk.ide.YoctoSDKChecker.checkYoctoSDK(Unknown Source)
    at org.yocto.sdk.ide.YoctoUISetting.validateInput(Unknown Source)
    at
org.yocto.sdk.ide.preferences.YoctoSDKPreferencePage.performOk(Unknown
Source)
    at
org.eclipse.jface.preference.PreferencePage.performApply(PreferencePage.java:432)
    at
org.eclipse.jface.preference.PreferencePage$2.widgetSelected(PreferencePage.java:281)
    at
org.eclipse.swt.widgets.TypedListener.handleEvent(TypedListener.java:248)
    at org.eclipse.swt.widgets.EventTable.sendEvent(EventTable.java:84)
    at org.eclipse.swt.widgets.Widget.sendEvent(Widget.java:1392)
    at org.eclipse.swt.widgets.Display.runDeferredEvents(Display.java:3742)
    at org.eclipse.swt.widgets.Display.readAndDispatch(Display.java:3363)
    at org.eclipse.jface.window.Window.runEventLoop(Window.java:826)
    at org.eclipse.jface.window.Window.open(Window.java:802)
    at
org.eclipse.ui.internal.dialogs.WorkbenchPreferenceDialog.open(WorkbenchPreferenceDialog.java:215)
    at
org.eclipse.ui.internal.OpenPreferencesAction.run(OpenPreferencesAction.java:65)
    at org.eclipse.jface.action.Action.runWithEvent(Action.java:499)
    at
org.eclipse.jface.action.ActionContributionItem.handleWidgetSelection(ActionContributionItem.java:584)
    at
org.eclipse.jface.action.ActionContributionItem.access$2(ActionContributionItem.java:501)
    at
org.eclipse.jface.action.ActionContributionItem$5.handleEvent(ActionContributionItem.java:411)
    at org.eclipse.swt.widgets.EventTable.sendEvent(EventTable.java:84)
    at org.eclipse.swt.widgets.Widget.sendEvent(Widget.java:1392)
    at org.eclipse.swt.widgets.Display.runDeferredEvents(Display.java:3742)
    at org.eclipse.swt.widgets.Display.readAndDispatch(Display.java:3363)
    at
org.eclipse.e4.ui.internal.workbench.swt.PartRenderingEngine$9.run(PartRenderingEngine.java:1113)
    at
org.eclipse.core.databinding.observable.Realm.runWithDefault(Realm.java:332)
    at
org.eclipse.e4.ui.internal.workbench.swt.PartRenderingEngine.run(PartRenderingEngine.java:997)
    at
org.eclipse.e4.ui.internal.workbench.E4Workbench.createAndRunUI(E4Workbench.java:140)
    at org.eclipse.ui.internal.Workbench$5.run(Workbench.java:611)
    at
org.eclipse.core.databinding.observable.Realm.runWithDefault(Realm.java:332)
    at
org.eclipse.ui.internal.Workbench.createAndRunWorkbench(Workbench.java:567)
    at org.eclipse.ui.PlatformUI.createAndRunWorkbench(PlatformUI.java:150)
    at
org.eclipse.ui.internal.ide.application.IDEApplication.start(IDEApplication.java:124)
    at
org.eclipse.equinox.internal.app.EclipseAppHandle.run(EclipseAppHandle.java:196)
    at
org.eclipse.core.runtime.internal.adaptor.EclipseAppLauncher.runApplication(EclipseAppLauncher.java:110)
    at
org.eclipse.core.runtime.internal.adaptor.EclipseAppLauncher.start(EclipseAppLauncher.java:79)
    at
org.eclipse.core.runtime.adaptor.EclipseStarter.run(EclipseStarter.java:354)
    at
org.eclipse.core.runtime.adaptor.EclipseStarter.run(EclipseStarter.java:181)
    at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
    at sun.reflect.NativeMethodAccessorImpl.invoke(Unknown Source)
    at sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)
    at java.lang.reflect.Method.invoke(Unknown Source)
    at org.eclipse.equinox.launcher.Main.invokeFramework(Main.java:636)
    at org.eclipse.equinox.launcher.Main.basicRun(Main.java:591)
    at org.eclipse.equinox.launcher.Main.run(Main.java:1450)
    at org.eclipse.equinox.launcher.Main.main(Main.java:1426)

--e89a8f6439c6db261605044d1bed
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Note: The plugin works on a different proje=
ct in the same Eclipse=20
workspace. I am attempting to create some Project-specific settings, and po=
int the Toolchain and Sysroot to a different directory, and I&#39;m
 getting this error.<br><br></div>Full output here:<a href=3D"http://pasteb=
in.com/CkGfWspY">http://pastebin.com/CkGfWspY</a><br><br></div><div>Running=
 Kepler 4.3.2<br><br></div>Any thoughts? I&#39;m completely stuck.<br></div=
><br><div><div><div><br>!SESSION 2014-09-30 11:41:03.071 ------------------=
-----------------------------<br>eclipse.buildId=3D4.3.2.M20140221-1700<br>=
java.version=3D1.6.0_45<br>java.vendor=3DSun Microsystems Inc.<br>BootLoade=
r constants: OS=3Dlinux, ARCH=3Dx86_64, WS=3Dgtk, NL=3Den_US<br>Framework a=
rguments:=C2=A0 -product org.eclipse.epp.package.standard.product<br>Comman=
d-line arguments:=C2=A0 -os linux -ws gtk -arch x86_64 -product org.eclipse=
.epp.package.standard.product<br><br>!ENTRY org.eclipse.ui 4 4 2014-09-30 1=
1:41:19.338<br>!MESSAGE Referenced part does not exist yet: org.eclipse.ui.=
views.TaskList.<br><br>!ENTRY org.eclipse.ui 4 0 2014-09-30 11:42:43.588<br=
>!MESSAGE Unhandled event loop exception<br>!STACK 0<br>java.lang.NullPoint=
erException<br>=C2=A0=C2=A0=C2=A0 at org.yocto.sdk.ide.YoctoSDKChecker.chec=
kYoctoSDK(Unknown Source)<br>=C2=A0=C2=A0=C2=A0 at org.yocto.sdk.ide.YoctoU=
ISetting.validateInput(Unknown Source)<br>=C2=A0=C2=A0=C2=A0 at org.yocto.s=
dk.ide.preferences.YoctoSDKPreferencePage.performOk(Unknown Source)<br>=C2=
=A0=C2=A0=C2=A0 at org.eclipse.jface.preference.PreferencePage.performApply=
(PreferencePage.java:432)<br>=C2=A0=C2=A0=C2=A0 at org.eclipse.jface.prefer=
ence.PreferencePage$2.widgetSelected(PreferencePage.java:281)<br>=C2=A0=C2=
=A0=C2=A0 at org.eclipse.swt.widgets.TypedListener.handleEvent(TypedListene=
r.java:248)<br>=C2=A0=C2=A0=C2=A0 at org.eclipse.swt.widgets.EventTable.sen=
dEvent(EventTable.java:84)<br>=C2=A0=C2=A0=C2=A0 at org.eclipse.swt.widgets=
.Widget.sendEvent(Widget.java:1392)<br>=C2=A0=C2=A0=C2=A0 at org.eclipse.sw=
t.widgets.Display.runDeferredEvents(Display.java:3742)<br>=C2=A0=C2=A0=C2=
=A0 at org.eclipse.swt.widgets.Display.readAndDispatch(Display.java:3363)<b=
r>=C2=A0=C2=A0=C2=A0 at org.eclipse.jface.window.Window.runEventLoop(Window=
.java:826)<br>=C2=A0=C2=A0=C2=A0 at org.eclipse.jface.window.Window.open(Wi=
ndow.java:802)<br>=C2=A0=C2=A0=C2=A0 at org.eclipse.ui.internal.dialogs.Wor=
kbenchPreferenceDialog.open(WorkbenchPreferenceDialog.java:215)<br>=C2=A0=
=C2=A0=C2=A0 at org.eclipse.ui.internal.OpenPreferencesAction.run(OpenPrefe=
rencesAction.java:65)<br>=C2=A0=C2=A0=C2=A0 at org.eclipse.jface.action.Act=
ion.runWithEvent(Action.java:499)<br>=C2=A0=C2=A0=C2=A0 at org.eclipse.jfac=
e.action.ActionContributionItem.handleWidgetSelection(ActionContributionIte=
m.java:584)<br>=C2=A0=C2=A0=C2=A0 at org.eclipse.jface.action.ActionContrib=
utionItem.access$2(ActionContributionItem.java:501)<br>=C2=A0=C2=A0=C2=A0 a=
t org.eclipse.jface.action.ActionContributionItem$5.handleEvent(ActionContr=
ibutionItem.java:411)<br>=C2=A0=C2=A0=C2=A0 at org.eclipse.swt.widgets.Even=
tTable.sendEvent(EventTable.java:84)<br>=C2=A0=C2=A0=C2=A0 at org.eclipse.s=
wt.widgets.Widget.sendEvent(Widget.java:1392)<br>=C2=A0=C2=A0=C2=A0 at org.=
eclipse.swt.widgets.Display.runDeferredEvents(Display.java:3742)<br>=C2=A0=
=C2=A0=C2=A0 at org.eclipse.swt.widgets.Display.readAndDispatch(Display.jav=
a:3363)<br>=C2=A0=C2=A0=C2=A0 at org.eclipse.e4.ui.internal.workbench.swt.P=
artRenderingEngine$9.run(PartRenderingEngine.java:1113)<br>=C2=A0=C2=A0=C2=
=A0 at org.eclipse.core.databinding.observable.Realm.runWithDefault(Realm.j=
ava:332)<br>=C2=A0=C2=A0=C2=A0 at org.eclipse.e4.ui.internal.workbench.swt.=
PartRenderingEngine.run(PartRenderingEngine.java:997)<br>=C2=A0=C2=A0=C2=A0=
 at org.eclipse.e4.ui.internal.workbench.E4Workbench.createAndRunUI(E4Workb=
ench.java:140)<br>=C2=A0=C2=A0=C2=A0 at org.eclipse.ui.internal.Workbench$5=
.run(Workbench.java:611)<br>=C2=A0=C2=A0=C2=A0 at org.eclipse.core.databind=
ing.observable.Realm.runWithDefault(Realm.java:332)<br>=C2=A0=C2=A0=C2=A0 a=
t org.eclipse.ui.internal.Workbench.createAndRunWorkbench(Workbench.java:56=
7)<br>=C2=A0=C2=A0=C2=A0 at org.eclipse.ui.PlatformUI.createAndRunWorkbench=
(PlatformUI.java:150)<br>=C2=A0=C2=A0=C2=A0 at org.eclipse.ui.internal.ide.=
application.IDEApplication.start(IDEApplication.java:124)<br>=C2=A0=C2=A0=
=C2=A0 at org.eclipse.equinox.internal.app.EclipseAppHandle.run(EclipseAppH=
andle.java:196)<br>=C2=A0=C2=A0=C2=A0 at org.eclipse.core.runtime.internal.=
adaptor.EclipseAppLauncher.runApplication(EclipseAppLauncher.java:110)<br>=
=C2=A0=C2=A0=C2=A0 at org.eclipse.core.runtime.internal.adaptor.EclipseAppL=
auncher.start(EclipseAppLauncher.java:79)<br>=C2=A0=C2=A0=C2=A0 at org.ecli=
pse.core.runtime.adaptor.EclipseStarter.run(EclipseStarter.java:354)<br>=C2=
=A0=C2=A0=C2=A0 at org.eclipse.core.runtime.adaptor.EclipseStarter.run(Ecli=
pseStarter.java:181)<br>=C2=A0=C2=A0=C2=A0 at sun.reflect.NativeMethodAcces=
sorImpl.invoke0(Native Method)<br>=C2=A0=C2=A0=C2=A0 at sun.reflect.NativeM=
ethodAccessorImpl.invoke(Unknown Source)<br>=C2=A0=C2=A0=C2=A0 at sun.refle=
ct.DelegatingMethodAccessorImpl.invoke(Unknown Source)<br>=C2=A0=C2=A0=C2=
=A0 at java.lang.reflect.Method.invoke(Unknown Source)<br>=C2=A0=C2=A0=C2=
=A0 at org.eclipse.equinox.launcher.Main.invokeFramework(Main.java:636)<br>=
=C2=A0=C2=A0=C2=A0 at org.eclipse.equinox.launcher.Main.basicRun(Main.java:=
591)<br>=C2=A0=C2=A0=C2=A0 at org.eclipse.equinox.launcher.Main.run(Main.ja=
va:1450)<br>=C2=A0=C2=A0=C2=A0 at org.eclipse.equinox.launcher.Main.main(Ma=
in.java:1426)<br></div></div></div></div>

--e89a8f6439c6db261605044d1bed--

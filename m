Return-Path: <sm0ketst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D3BBE008CD; Tue, 20 Jan 2015 22:47:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sm0ketst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yh0-f51.google.com (mail-yh0-f51.google.com
	[209.85.213.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CDCEE0086E
	for <yocto@yoctoproject.org>; Tue, 20 Jan 2015 22:47:02 -0800 (PST)
Received: by mail-yh0-f51.google.com with SMTP id z6so7344412yhz.10
	for <yocto@yoctoproject.org>; Tue, 20 Jan 2015 22:47:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=aKGd+sGWNZUXUzOKMi5kO9UUPM+NdNCmWfdcCpWd6TE=;
	b=b6v/5TTE4YLs5MqoJgnU//R8UpVQnfdEWNVZKqfAz3iz8NF4mgntpElJVff3UweMH+
	8t+zxIQgzXw3hT4V2EQDRWLp2WkDEtoMiMsFqYKhQUAXi0pQvO65BDbeXlg4LMnD1zkr
	V8lqPSwxikiiasGl6Bx5MPkhfY8WfPz4B6mzGjCMLyFJ41fLrBHQ5rrQrqo04FnRns3Q
	pH//uABLgit5Rtw4e+498fXFeNG28HakGAw3Ugdx/23mF+lbsA0PdXTL0nre6k0RM/dV
	BWthSFP/Mzjul2Jr2sAGy0aYGwx/33jl/uO1JSjsBlODVaBQNbyIZ/tYIn3IKvr8aoXw
	7mJg==
MIME-Version: 1.0
X-Received: by 10.170.120.195 with SMTP id m186mr14195763ykb.27.1421822820975; 
	Tue, 20 Jan 2015 22:47:00 -0800 (PST)
Received: by 10.170.166.87 with HTTP; Tue, 20 Jan 2015 22:47:00 -0800 (PST)
Date: Wed, 21 Jan 2015 07:47:00 +0100
Message-ID: <CABMtxuy5YRTZyu1Ksyu645TXPYuoVH_VBS4tySLUCyJxV4Np1Q@mail.gmail.com>
From: "J.J. Garcia" <sm0ketst@gmail.com>
To: yocto@yoctoproject.org
Subject: [eclipse-plugin] Exception Eclipse Plugin 1.7 / kepler Windows using MinGW can x-comp. No options are stored after configuration.
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
X-List-Received-Date: Wed, 21 Jan 2015 06:47:11 -0000
Content-Type: multipart/alternative; boundary=001a1138e3182d881f050d23ec67

--001a1138e3182d881f050d23ec67
Content-Type: text/plain; charset=UTF-8

Hi all,

When using the Yocto plugin in Kepler/Windos/X86_64 and MinGW/Toolchain
deployed in /opt/poky/1.7, after setting up the options as:
- Standard pre-built toolchain
- Toolchain Root Location: C:\MinGW\msys\1.0\opt\poky\1.7
- Sysroot
Location: C:\MinGW\msys\1.0\opt\poky\1.7\sysroots\i686-pokysdk-mingw32
and
- Target options set to "External HW"

I'm able to see how the Target Architecture is preset automatically to
"core2-32-poky-linux" but when I apply the changes an error message is
raised and the changes are lost if i come back to the plug propierties.

The error log shows the following details:
===============================================================================================
- Messsage: Unhandled event loop exception
===============================================================================================
- Exception Stack Trace:
java.lang.NullPointerException
at org.yocto.sdk.ide.YoctoSDKChecker.checkYoctoSDK(Unknown Source)
at org.yocto.sdk.ide.YoctoUISetting.validateInput(Unknown Source)
at org.yocto.sdk.ide.preferences.YoctoSDKPreferencePage.performOk(Unknown
Source)
at
org.eclipse.jface.preference.PreferencePage.performApply(PreferencePage.java:432)
at
org.eclipse.jface.preference.PreferencePage$2.widgetSelected(PreferencePage.java:281)
at org.eclipse.swt.widgets.TypedListener.handleEvent(TypedListener.java:248)
at org.eclipse.swt.widgets.EventTable.sendEvent(EventTable.java:84)
at org.eclipse.swt.widgets.Widget.sendEvent(Widget.java:1057)
at org.eclipse.swt.widgets.Display.runDeferredEvents(Display.java:4170)
at org.eclipse.swt.widgets.Display.readAndDispatch(Display.java:3759)
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
at org.eclipse.swt.widgets.Widget.sendEvent(Widget.java:1057)
at org.eclipse.swt.widgets.Display.runDeferredEvents(Display.java:4170)
at org.eclipse.swt.widgets.Display.readAndDispatch(Display.java:3759)
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
===============================================================================================
- Session Data:
eclipse.buildId=4.3.2.M20140221-1700
java.version=1.6.0_29
java.vendor=Sun Microsystems Inc.
BootLoader constants: OS=win32, ARCH=x86_64, WS=win32, NL=en_US
Framework arguments:  -product org.eclipse.epp.package.standard.product
Command-line arguments:  -os win32 -ws win32 -arch x86_64 -product
org.eclipse.epp.package.standard.product
===============================================================================================

Thanks in advance,

Regards

JJ

--001a1138e3182d881f050d23ec67
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>When using the Yocto plugin in =
Kepler/Windos/X86_64 and MinGW/Toolchain deployed in /opt/poky/1.7, after s=
etting up the options as:</div><div>- Standard pre-built toolchain</div><di=
v>- Toolchain Root Location: C:\MinGW\msys\1.0\opt\poky\1.7</div><div>- Sys=
root Location:=C2=A0C:\MinGW\msys\1.0\opt\poky\1.7\sysroots\i686-pokysdk-mi=
ngw32</div><div>and</div><div>- Target options set to &quot;External HW&quo=
t;</div><div><br></div><div>I&#39;m able to see how the Target Architecture=
 is preset automatically to &quot;core2-32-poky-linux&quot; but when I appl=
y the changes an error message is raised and the changes are lost if i come=
 back to the plug propierties.</div><div><br></div><div>The error log shows=
 the following details:<br><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D<br></div><div>- Messsage: Unhandled event loop exception=
</div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br=
></div><div>- Exception Stack Trace:</div><div><div>java.lang.NullPointerEx=
ception</div><div><span class=3D"" style=3D"white-space:pre">	</span>at org=
.yocto.sdk.ide.YoctoSDKChecker.checkYoctoSDK(Unknown Source)</div><div><spa=
n class=3D"" style=3D"white-space:pre">	</span>at org.yocto.sdk.ide.YoctoUI=
Setting.validateInput(Unknown Source)</div><div><span class=3D"" style=3D"w=
hite-space:pre">	</span>at org.yocto.sdk.ide.preferences.YoctoSDKPreference=
Page.performOk(Unknown Source)</div><div><span class=3D"" style=3D"white-sp=
ace:pre">	</span>at org.eclipse.jface.preference.PreferencePage.performAppl=
y(PreferencePage.java:432)</div><div><span class=3D"" style=3D"white-space:=
pre">	</span>at org.eclipse.jface.preference.PreferencePage$2.widgetSelecte=
d(PreferencePage.java:281)</div><div><span class=3D"" style=3D"white-space:=
pre">	</span>at org.eclipse.swt.widgets.TypedListener.handleEvent(TypedList=
ener.java:248)</div><div><span class=3D"" style=3D"white-space:pre">	</span=
>at org.eclipse.swt.widgets.EventTable.sendEvent(EventTable.java:84)</div><=
div><span class=3D"" style=3D"white-space:pre">	</span>at org.eclipse.swt.w=
idgets.Widget.sendEvent(Widget.java:1057)</div><div><span class=3D"" style=
=3D"white-space:pre">	</span>at org.eclipse.swt.widgets.Display.runDeferred=
Events(Display.java:4170)</div><div><span class=3D"" style=3D"white-space:p=
re">	</span>at org.eclipse.swt.widgets.Display.readAndDispatch(Display.java=
:3759)</div><div><span class=3D"" style=3D"white-space:pre">	</span>at org.=
eclipse.jface.window.Window.runEventLoop(Window.java:826)</div><div><span c=
lass=3D"" style=3D"white-space:pre">	</span>at org.eclipse.jface.window.Win=
dow.open(Window.java:802)</div><div><span class=3D"" style=3D"white-space:p=
re">	</span>at org.eclipse.ui.internal.dialogs.WorkbenchPreferenceDialog.op=
en(WorkbenchPreferenceDialog.java:215)</div><div><span class=3D"" style=3D"=
white-space:pre">	</span>at org.eclipse.ui.internal.OpenPreferencesAction.r=
un(OpenPreferencesAction.java:65)</div><div><span class=3D"" style=3D"white=
-space:pre">	</span>at org.eclipse.jface.action.Action.runWithEvent(Action.=
java:499)</div><div><span class=3D"" style=3D"white-space:pre">	</span>at o=
rg.eclipse.jface.action.ActionContributionItem.handleWidgetSelection(Action=
ContributionItem.java:584)</div><div><span class=3D"" style=3D"white-space:=
pre">	</span>at org.eclipse.jface.action.ActionContributionItem.access$2(Ac=
tionContributionItem.java:501)</div><div><span class=3D"" style=3D"white-sp=
ace:pre">	</span>at org.eclipse.jface.action.ActionContributionItem$5.handl=
eEvent(ActionContributionItem.java:411)</div><div><span class=3D"" style=3D=
"white-space:pre">	</span>at org.eclipse.swt.widgets.EventTable.sendEvent(E=
ventTable.java:84)</div><div><span class=3D"" style=3D"white-space:pre">	</=
span>at org.eclipse.swt.widgets.Widget.sendEvent(Widget.java:1057)</div><di=
v><span class=3D"" style=3D"white-space:pre">	</span>at org.eclipse.swt.wid=
gets.Display.runDeferredEvents(Display.java:4170)</div><div><span class=3D"=
" style=3D"white-space:pre">	</span>at org.eclipse.swt.widgets.Display.read=
AndDispatch(Display.java:3759)</div><div><span class=3D"" style=3D"white-sp=
ace:pre">	</span>at org.eclipse.e4.ui.internal.workbench.swt.PartRenderingE=
ngine$9.run(PartRenderingEngine.java:1113)</div><div><span class=3D"" style=
=3D"white-space:pre">	</span>at org.eclipse.core.databinding.observable.Rea=
lm.runWithDefault(Realm.java:332)</div><div><span class=3D"" style=3D"white=
-space:pre">	</span>at org.eclipse.e4.ui.internal.workbench.swt.PartRenderi=
ngEngine.run(PartRenderingEngine.java:997)</div><div><span class=3D"" style=
=3D"white-space:pre">	</span>at org.eclipse.e4.ui.internal.workbench.E4Work=
bench.createAndRunUI(E4Workbench.java:140)</div><div><span class=3D"" style=
=3D"white-space:pre">	</span>at org.eclipse.ui.internal.Workbench$5.run(Wor=
kbench.java:611)</div><div><span class=3D"" style=3D"white-space:pre">	</sp=
an>at org.eclipse.core.databinding.observable.Realm.runWithDefault(Realm.ja=
va:332)</div><div><span class=3D"" style=3D"white-space:pre">	</span>at org=
.eclipse.ui.internal.Workbench.createAndRunWorkbench(Workbench.java:567)</d=
iv><div><span class=3D"" style=3D"white-space:pre">	</span>at org.eclipse.u=
i.PlatformUI.createAndRunWorkbench(PlatformUI.java:150)</div><div><span cla=
ss=3D"" style=3D"white-space:pre">	</span>at org.eclipse.ui.internal.ide.ap=
plication.IDEApplication.start(IDEApplication.java:124)</div><div><span cla=
ss=3D"" style=3D"white-space:pre">	</span>at org.eclipse.equinox.internal.a=
pp.EclipseAppHandle.run(EclipseAppHandle.java:196)</div><div><span class=3D=
"" style=3D"white-space:pre">	</span>at org.eclipse.core.runtime.internal.a=
daptor.EclipseAppLauncher.runApplication(EclipseAppLauncher.java:110)</div>=
<div><span class=3D"" style=3D"white-space:pre">	</span>at org.eclipse.core=
.runtime.internal.adaptor.EclipseAppLauncher.start(EclipseAppLauncher.java:=
79)</div><div><span class=3D"" style=3D"white-space:pre">	</span>at org.ecl=
ipse.core.runtime.adaptor.EclipseStarter.run(EclipseStarter.java:354)</div>=
<div><span class=3D"" style=3D"white-space:pre">	</span>at org.eclipse.core=
.runtime.adaptor.EclipseStarter.run(EclipseStarter.java:181)</div><div><spa=
n class=3D"" style=3D"white-space:pre">	</span>at sun.reflect.NativeMethodA=
ccessorImpl.invoke0(Native Method)</div><div><span class=3D"" style=3D"whit=
e-space:pre">	</span>at sun.reflect.NativeMethodAccessorImpl.invoke(Unknown=
 Source)</div><div><span class=3D"" style=3D"white-space:pre">	</span>at su=
n.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)</div><div><sp=
an class=3D"" style=3D"white-space:pre">	</span>at java.lang.reflect.Method=
.invoke(Unknown Source)</div><div><span class=3D"" style=3D"white-space:pre=
">	</span>at org.eclipse.equinox.launcher.Main.invokeFramework(Main.java:63=
6)</div><div><span class=3D"" style=3D"white-space:pre">	</span>at org.ecli=
pse.equinox.launcher.Main.basicRun(Main.java:591)</div><div><span class=3D"=
" style=3D"white-space:pre">	</span>at org.eclipse.equinox.launcher.Main.ru=
n(Main.java:1450)</div><div><span class=3D"" style=3D"white-space:pre">	</s=
pan>at org.eclipse.equinox.launcher.Main.main(Main.java:1426)</div></div><d=
iv>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br></div><d=
iv>- Session Data:</div><div><div>eclipse.buildId=3D4.3.2.M20140221-1700</d=
iv><div>java.version=3D1.6.0_29</div><div>java.vendor=3DSun Microsystems In=
c.</div><div>BootLoader constants: OS=3Dwin32, ARCH=3Dx86_64, WS=3Dwin32, N=
L=3Den_US</div><div>Framework arguments: =C2=A0-product org.eclipse.epp.pac=
kage.standard.product</div><div>Command-line arguments: =C2=A0-os win32 -ws=
 win32 -arch x86_64 -product org.eclipse.epp.package.standard.product</div>=
</div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</d=
iv></div><div><br></div><div>Thanks in advance,</div><div><br></div><div>Re=
gards</div><div><br></div><div>JJ</div></div>

--001a1138e3182d881f050d23ec67--

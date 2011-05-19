Return-Path: <jessica.zhang@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id CDCC74C800A6
	for <yocto@yoctoproject.org>; Thu, 19 May 2011 15:48:56 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 19 May 2011 13:48:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,238,1304319600"; 
   d="scan'208";a="4180997"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga002.fm.intel.com with ESMTP; 19 May 2011 13:48:39 -0700
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx603.amr.corp.intel.com ([10.22.226.49]) with mapi;
	Thu, 19 May 2011 13:48:39 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Daniel Lazzari <busytester@gmail.com>
Date: Thu, 19 May 2011 13:48:37 -0700
Thread-Topic: [yocto] Can't create a new project with Yocto BitBake
	Commander plugin
Thread-Index: AcwWVQlF/y5ongFHQZSJOcWiHtrvDgAD7cFw
Message-ID: <9AFCD584B0B67B48AE8D8585BE30BA95011713C30D@orsmsx504.amr.corp.intel.com>
References: <BANLkTinwVS4Zu+21TR2eBa_-ArLb8gV0nQ@mail.gmail.com>
	<9AFCD584B0B67B48AE8D8585BE30BA9501170DBC5B@orsmsx504.amr.corp.intel.com>
	<BANLkTikHmPEiXKqRKZuRuZAB-Bm1vj9_bg@mail.gmail.com>
	<BANLkTiks+uySSt8p0jFD_97-83dSM6moNg@mail.gmail.com>
In-Reply-To: <BANLkTiks+uySSt8p0jFD_97-83dSM6moNg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Can't create a new project with Yocto BitBake Commander plugin
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 19 May 2011 20:48:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

OK, can you give me more info regarding your directory setup?
1. What is your eclipse workspace directory
2. what is your poky Bernard directory?

I think you may run into a corner case bug with your setup which I'm trying=
 to reproduce.  As to my setup that I tested and works is as following:

My Eclispe workspace is /home/jzhang/workspace
My Yocto directory is /home/jzhang/Yocto (without the build dir)

In the Eclise plug-in the create project, I set my project name as Yocto an=
d the location as /home/jzhang and the bitbake commander project is created=
 correctly for me.  Can you try create the project by mapping my directory =
setup? In the mean time I'll try to reproduce the issue with your setting o=
nce I get the info.

Thanks,
Jessica
-----Original Message-----
From: Daniel Lazzari [mailto:busytester@gmail.com]
Sent: Thursday, May 19, 2011 11:46 AM
To: Zhang, Jessica
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Can't create a new project with Yocto BitBake Commande=
r plugin

I tried with a fresh download and didn't rename the directory and then
looked at the .log file in my workspace/.metadata directory. Here's
the exceptions and stack traces I get from clicking Finish:

!SESSION 2011-05-19 11:42:15.961 ------------------------------------------=
-----
eclipse.buildId=3DM20110210-1200
java.version=3D1.6.0_24
java.vendor=3DSun Microsystems Inc.
BootLoader constants: OS=3Dlinux, ARCH=3Dx86, WS=3Dgtk, NL=3Den_US
Framework arguments:  -product org.eclipse.epp.package.cpp.product
Command-line arguments:  -os linux -ws gtk -arch x86 -product
org.eclipse.epp.package.cpp.product

!ENTRY org.yocto.bc.ui 4 4 2011-05-19 11:43:09.686
!MESSAGE
!STACK 0
java.lang.reflect.InvocationTargetException
        at org.eclipse.ui.actions.WorkspaceModifyOperation.run(WorkspaceMod=
ifyOperation.java:121)
        at org.eclipse.jface.operation.ModalContext.runInCurrentThread(Moda=
lContext.java:464)
        at org.eclipse.jface.operation.ModalContext.run(ModalContext.java:3=
72)
        at org.eclipse.jface.wizard.WizardDialog.run(WizardDialog.java:1008=
)
        at org.yocto.bc.ui.wizards.install.InstallWizard.performFinish(Unkn=
own Source)
        at org.eclipse.jface.wizard.WizardDialog.finishPressed(WizardDialog=
.java:811)
        at org.eclipse.jface.wizard.WizardDialog.buttonPressed(WizardDialog=
.java:430)
        at org.eclipse.jface.dialogs.Dialog$2.widgetSelected(Dialog.java:62=
4)
        at org.eclipse.swt.widgets.TypedListener.handleEvent(TypedListener.=
java:234)
        at org.eclipse.swt.widgets.EventTable.sendEvent(EventTable.java:84)
        at org.eclipse.swt.widgets.Widget.sendEvent(Widget.java:1258)
        at org.eclipse.swt.widgets.Display.runDeferredEvents(Display.java:3=
540)
        at org.eclipse.swt.widgets.Display.readAndDispatch(Display.java:316=
1)
        at org.eclipse.jface.window.Window.runEventLoop(Window.java:825)
        at org.eclipse.jface.window.Window.open(Window.java:801)
        at org.eclipse.ui.actions.NewProjectAction.run(NewProjectAction.jav=
a:117)
        at org.eclipse.jface.action.Action.runWithEvent(Action.java:498)
        at org.eclipse.jface.action.ActionContributionItem.handleWidgetSele=
ction(ActionContributionItem.java:584)
        at org.eclipse.jface.action.ActionContributionItem.access$2(ActionC=
ontributionItem.java:501)
        at org.eclipse.jface.action.ActionContributionItem$5.handleEvent(Ac=
tionContributionItem.java:411)
        at org.eclipse.swt.widgets.EventTable.sendEvent(EventTable.java:84)
        at org.eclipse.swt.widgets.Widget.sendEvent(Widget.java:1258)
        at org.eclipse.swt.widgets.Display.runDeferredEvents(Display.java:3=
540)
        at org.eclipse.swt.widgets.Display.readAndDispatch(Display.java:316=
1)
        at org.eclipse.ui.internal.Workbench.runEventLoop(Workbench.java:26=
40)
        at org.eclipse.ui.internal.Workbench.runUI(Workbench.java:2604)
        at org.eclipse.ui.internal.Workbench.access$4(Workbench.java:2438)
        at org.eclipse.ui.internal.Workbench$7.run(Workbench.java:671)
        at org.eclipse.core.databinding.observable.Realm.runWithDefault(Rea=
lm.java:332)
        at org.eclipse.ui.internal.Workbench.createAndRunWorkbench(Workbenc=
h.java:664)
        at org.eclipse.ui.PlatformUI.createAndRunWorkbench(PlatformUI.java:=
149)
        at org.eclipse.ui.internal.ide.application.IDEApplication.start(IDE=
Application.java:115)
        at org.eclipse.equinox.internal.app.EclipseAppHandle.run(EclipseApp=
Handle.java:196)
        at org.eclipse.core.runtime.internal.adaptor.EclipseAppLauncher.run=
Application(EclipseAppLauncher.java:110)
        at org.eclipse.core.runtime.internal.adaptor.EclipseAppLauncher.sta=
rt(EclipseAppLauncher.java:79)
        at org.eclipse.core.runtime.adaptor.EclipseStarter.run(EclipseStart=
er.java:369)
        at org.eclipse.core.runtime.adaptor.EclipseStarter.run(EclipseStart=
er.java:179)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessor=
Impl.java:39)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethod=
AccessorImpl.java:25)
        at java.lang.reflect.Method.invoke(Method.java:597)
        at org.eclipse.equinox.launcher.Main.invokeFramework(Main.java:620)
        at org.eclipse.equinox.launcher.Main.basicRun(Main.java:575)
        at org.eclipse.equinox.launcher.Main.run(Main.java:1408)
Caused by: org.eclipse.core.internal.resources.ResourceException:
Invalid project description.
        at org.eclipse.core.internal.resources.Project.checkDescription(Pro=
ject.java:162)
        at org.eclipse.core.internal.resources.Project.assertCreateRequirem=
ents(Project.java:52)
        at org.eclipse.core.internal.resources.Project.create(Project.java:=
274)
        at org.eclipse.core.internal.resources.Project.create(Project.java:=
256)
        at org.yocto.bc.ui.wizards.newproject.CreateBBCProjectOperation.exe=
cute(Unknown
Source)
        at org.eclipse.ui.actions.WorkspaceModifyOperation$1.run(WorkspaceM=
odifyOperation.java:106)
        at org.eclipse.core.internal.resources.Workspace.run(Workspace.java=
:1975)
        at org.eclipse.ui.actions.WorkspaceModifyOperation.run(WorkspaceMod=
ifyOperation.java:118)
        ... 43 more
Root exception:
org.eclipse.core.internal.resources.ResourceException: Invalid project
description.
        at org.eclipse.core.internal.resources.Project.checkDescription(Pro=
ject.java:162)
        at org.eclipse.core.internal.resources.Project.assertCreateRequirem=
ents(Project.java:52)
        at org.eclipse.core.internal.resources.Project.create(Project.java:=
274)
        at org.eclipse.core.internal.resources.Project.create(Project.java:=
256)
        at org.yocto.bc.ui.wizards.newproject.CreateBBCProjectOperation.exe=
cute(Unknown
Source)
        at org.eclipse.ui.actions.WorkspaceModifyOperation$1.run(WorkspaceM=
odifyOperation.java:106)
        at org.eclipse.core.internal.resources.Workspace.run(Workspace.java=
:1975)
        at org.eclipse.ui.actions.WorkspaceModifyOperation.run(WorkspaceMod=
ifyOperation.java:118)
        at org.eclipse.jface.operation.ModalContext.runInCurrentThread(Moda=
lContext.java:464)
        at org.eclipse.jface.operation.ModalContext.run(ModalContext.java:3=
72)
        at org.eclipse.jface.wizard.WizardDialog.run(WizardDialog.java:1008=
)
        at org.yocto.bc.ui.wizards.install.InstallWizard.performFinish(Unkn=
own Source)
        at org.eclipse.jface.wizard.WizardDialog.finishPressed(WizardDialog=
.java:811)
        at org.eclipse.jface.wizard.WizardDialog.buttonPressed(WizardDialog=
.java:430)
        at org.eclipse.jface.dialogs.Dialog$2.widgetSelected(Dialog.java:62=
4)
        at org.eclipse.swt.widgets.TypedListener.handleEvent(TypedListener.=
java:234)
        at org.eclipse.swt.widgets.EventTable.sendEvent(EventTable.java:84)
        at org.eclipse.swt.widgets.Widget.sendEvent(Widget.java:1258)
        at org.eclipse.swt.widgets.Display.runDeferredEvents(Display.java:3=
540)
        at org.eclipse.swt.widgets.Display.readAndDispatch(Display.java:316=
1)
        at org.eclipse.jface.window.Window.runEventLoop(Window.java:825)
        at org.eclipse.jface.window.Window.open(Window.java:801)
        at org.eclipse.ui.actions.NewProjectAction.run(NewProjectAction.jav=
a:117)
        at org.eclipse.jface.action.Action.runWithEvent(Action.java:498)
        at org.eclipse.jface.action.ActionContributionItem.handleWidgetSele=
ction(ActionContributionItem.java:584)
        at org.eclipse.jface.action.ActionContributionItem.access$2(ActionC=
ontributionItem.java:501)
        at org.eclipse.jface.action.ActionContributionItem$5.handleEvent(Ac=
tionContributionItem.java:411)
        at org.eclipse.swt.widgets.EventTable.sendEvent(EventTable.java:84)
        at org.eclipse.swt.widgets.Widget.sendEvent(Widget.java:1258)
        at org.eclipse.swt.widgets.Display.runDeferredEvents(Display.java:3=
540)
        at org.eclipse.swt.widgets.Display.readAndDispatch(Display.java:316=
1)
        at org.eclipse.ui.internal.Workbench.runEventLoop(Workbench.java:26=
40)
        at org.eclipse.ui.internal.Workbench.runUI(Workbench.java:2604)
        at org.eclipse.ui.internal.Workbench.access$4(Workbench.java:2438)
        at org.eclipse.ui.internal.Workbench$7.run(Workbench.java:671)
        at org.eclipse.core.databinding.observable.Realm.runWithDefault(Rea=
lm.java:332)
        at org.eclipse.ui.internal.Workbench.createAndRunWorkbench(Workbenc=
h.java:664)
        at org.eclipse.ui.PlatformUI.createAndRunWorkbench(PlatformUI.java:=
149)
        at org.eclipse.ui.internal.ide.application.IDEApplication.start(IDE=
Application.java:115)
        at org.eclipse.equinox.internal.app.EclipseAppHandle.run(EclipseApp=
Handle.java:196)
        at org.eclipse.core.runtime.internal.adaptor.EclipseAppLauncher.run=
Application(EclipseAppLauncher.java:110)
        at org.eclipse.core.runtime.internal.adaptor.EclipseAppLauncher.sta=
rt(EclipseAppLauncher.java:79)
        at org.eclipse.core.runtime.adaptor.EclipseStarter.run(EclipseStart=
er.java:369)
        at org.eclipse.core.runtime.adaptor.EclipseStarter.run(EclipseStart=
er.java:179)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessor=
Impl.java:39)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethod=
AccessorImpl.java:25)
        at java.lang.reflect.Method.invoke(Method.java:597)
        at org.eclipse.equinox.launcher.Main.invokeFramework(Main.java:620)
        at org.eclipse.equinox.launcher.Main.basicRun(Main.java:575)
        at org.eclipse.equinox.launcher.Main.run(Main.java:1408)
Contains: OK
Contains: /home/dlazzari/workspace/poky-bernard-5.0 overlaps the
location of another project: 'poky-bernard-5.0'

Hope that helps.

On Thu, May 19, 2011 at 11:26 AM, Daniel Lazzari <busytester@gmail.com> wro=
te:
> Hi Jessica,
>
> I want a Bitbake Commander project as I'll be creating and editing
> recipes, classes, and configuration files. I am using the Bernard
> release I downloaded from
> http://www.yoctoproject.org/downloads/poky/poky-bernard-5.0.tar.bz2
> though I renamed the directory to Yocto. I am using the 1.0 Eclipse
> plugin. I did have a build directory so I moved that outside of the
> Yocto directory, but still no luck.
>
> Thanks for the help,
> Daniel Lazzari Jr.
>
> On Wed, May 18, 2011 at 1:55 PM, Zhang, Jessica <jessica.zhang@intel.com>=
 wrote:
>> Hi Daniel,
>>
>> One more thing to check, do you have a build dir under your Yocto checko=
ut?  If so that maybe the reason prevent a new bitbake commander project be=
ing created since the build dir can contain large contents that Eclipse IPr=
oject tree view can't handle, so the work around is to move your build dir =
outside your Yocto checkout through oe-init-build-env path_of_build_dir...
>>
>> Thanks,
>> Jessica
>>
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.=
org] On Behalf Of Daniel Lazzari
>> Sent: Tuesday, May 17, 2011 5:46 PM
>> To: yocto@yoctoproject.org
>> Subject: [yocto] Can't create a new project with Yocto BitBake Commander=
 plugin
>>
>> Hi everyone,
>>
>> I searched and couldn't find anything on this issue, but it seems so
>> obvious that I'm guessing I'm doing something wrong. I installed the
>> Yocto Eclipse Plugin in Eclipse Helios Service Release 2 on an Ubuntu
>> 10.04 machine. I selected File->New->Project, Selected Yocto BitBake
>> Commander->New Yocto Project, set the Project Name to Yocto and
>> selected the workspace folder where I have my Yocto checkout. It says
>> everything is valid at the top, I click Finish, and it just flashes
>> and keeps the dialog box up. No new project is created.
>>
>> Has anyone else experienced this and knows of a fix or workaround? I'd
>> be happy to provide more details or log a bug for it if that helps.
>>
>> Thanks,
>> Daniel Lazzari Jr.
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>


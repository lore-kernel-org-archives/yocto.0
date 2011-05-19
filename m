Return-Path: <busytester@gmail.com>
Received: from mail-qy0-f169.google.com (mail-qy0-f169.google.com
	[209.85.216.169])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8AE984C8016A
	for <yocto@yoctoproject.org>; Thu, 19 May 2011 13:46:11 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qyk2 with SMTP id 2so4336473qyk.14
	for <yocto@yoctoproject.org>; Thu, 19 May 2011 11:46:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=lARBKEXLnj47zi1Z8d+3CUwH6uTUsCcgNSjQ+hPFL38=;
	b=c87GtREYzBvJkvjaapuRMrbnw0yYnwR7qv7GlD4dNcPO9ftoyR6s2d53DBRQHm8AHs
	OzK+1dCTEsFhVlXcgziIxs0/15H8wqXBIj6rwW4BKXJdDltygXi0ZBGVKmtmCFnkKov/
	0r8SCP4lp535IhY0wsFnZobk3cfT439HVc5Mo=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=ZHxtdNpFA5G5pvzN96h3NZQnLsePAmJxo9tWzV/ENGHvqCc0cXwhe5gkojYvq2amVC
	g3N/sjPajLk3ZPO+mFcKh3aXORAW5wZnUIJLvtDJ6h4AEzhAKLRGTWgQw9zh3ROwjsU5
	NmVegsXlOp7UGCZmvsLW9jGXFO4up5NrXrvPs=
MIME-Version: 1.0
Received: by 10.229.90.66 with SMTP id h2mr2693191qcm.109.1305830768639; Thu,
	19 May 2011 11:46:08 -0700 (PDT)
Received: by 10.229.98.140 with HTTP; Thu, 19 May 2011 11:46:08 -0700 (PDT)
In-Reply-To: <BANLkTikHmPEiXKqRKZuRuZAB-Bm1vj9_bg@mail.gmail.com>
References: <BANLkTinwVS4Zu+21TR2eBa_-ArLb8gV0nQ@mail.gmail.com>
	<9AFCD584B0B67B48AE8D8585BE30BA9501170DBC5B@orsmsx504.amr.corp.intel.com>
	<BANLkTikHmPEiXKqRKZuRuZAB-Bm1vj9_bg@mail.gmail.com>
Date: Thu, 19 May 2011 11:46:08 -0700
Message-ID: <BANLkTiks+uySSt8p0jFD_97-83dSM6moNg@mail.gmail.com>
From: Daniel Lazzari <busytester@gmail.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>
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
X-List-Received-Date: Thu, 19 May 2011 18:46:11 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

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
	at org.eclipse.ui.actions.WorkspaceModifyOperation.run(WorkspaceModifyOper=
ation.java:121)
	at org.eclipse.jface.operation.ModalContext.runInCurrentThread(ModalContex=
t.java:464)
	at org.eclipse.jface.operation.ModalContext.run(ModalContext.java:372)
	at org.eclipse.jface.wizard.WizardDialog.run(WizardDialog.java:1008)
	at org.yocto.bc.ui.wizards.install.InstallWizard.performFinish(Unknown Sou=
rce)
	at org.eclipse.jface.wizard.WizardDialog.finishPressed(WizardDialog.java:8=
11)
	at org.eclipse.jface.wizard.WizardDialog.buttonPressed(WizardDialog.java:4=
30)
	at org.eclipse.jface.dialogs.Dialog$2.widgetSelected(Dialog.java:624)
	at org.eclipse.swt.widgets.TypedListener.handleEvent(TypedListener.java:23=
4)
	at org.eclipse.swt.widgets.EventTable.sendEvent(EventTable.java:84)
	at org.eclipse.swt.widgets.Widget.sendEvent(Widget.java:1258)
	at org.eclipse.swt.widgets.Display.runDeferredEvents(Display.java:3540)
	at org.eclipse.swt.widgets.Display.readAndDispatch(Display.java:3161)
	at org.eclipse.jface.window.Window.runEventLoop(Window.java:825)
	at org.eclipse.jface.window.Window.open(Window.java:801)
	at org.eclipse.ui.actions.NewProjectAction.run(NewProjectAction.java:117)
	at org.eclipse.jface.action.Action.runWithEvent(Action.java:498)
	at org.eclipse.jface.action.ActionContributionItem.handleWidgetSelection(A=
ctionContributionItem.java:584)
	at org.eclipse.jface.action.ActionContributionItem.access$2(ActionContribu=
tionItem.java:501)
	at org.eclipse.jface.action.ActionContributionItem$5.handleEvent(ActionCon=
tributionItem.java:411)
	at org.eclipse.swt.widgets.EventTable.sendEvent(EventTable.java:84)
	at org.eclipse.swt.widgets.Widget.sendEvent(Widget.java:1258)
	at org.eclipse.swt.widgets.Display.runDeferredEvents(Display.java:3540)
	at org.eclipse.swt.widgets.Display.readAndDispatch(Display.java:3161)
	at org.eclipse.ui.internal.Workbench.runEventLoop(Workbench.java:2640)
	at org.eclipse.ui.internal.Workbench.runUI(Workbench.java:2604)
	at org.eclipse.ui.internal.Workbench.access$4(Workbench.java:2438)
	at org.eclipse.ui.internal.Workbench$7.run(Workbench.java:671)
	at org.eclipse.core.databinding.observable.Realm.runWithDefault(Realm.java=
:332)
	at org.eclipse.ui.internal.Workbench.createAndRunWorkbench(Workbench.java:=
664)
	at org.eclipse.ui.PlatformUI.createAndRunWorkbench(PlatformUI.java:149)
	at org.eclipse.ui.internal.ide.application.IDEApplication.start(IDEApplica=
tion.java:115)
	at org.eclipse.equinox.internal.app.EclipseAppHandle.run(EclipseAppHandle.=
java:196)
	at org.eclipse.core.runtime.internal.adaptor.EclipseAppLauncher.runApplica=
tion(EclipseAppLauncher.java:110)
	at org.eclipse.core.runtime.internal.adaptor.EclipseAppLauncher.start(Ecli=
pseAppLauncher.java:79)
	at org.eclipse.core.runtime.adaptor.EclipseStarter.run(EclipseStarter.java=
:369)
	at org.eclipse.core.runtime.adaptor.EclipseStarter.run(EclipseStarter.java=
:179)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.ja=
va:39)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccesso=
rImpl.java:25)
	at java.lang.reflect.Method.invoke(Method.java:597)
	at org.eclipse.equinox.launcher.Main.invokeFramework(Main.java:620)
	at org.eclipse.equinox.launcher.Main.basicRun(Main.java:575)
	at org.eclipse.equinox.launcher.Main.run(Main.java:1408)
Caused by: org.eclipse.core.internal.resources.ResourceException:
Invalid project description.
	at org.eclipse.core.internal.resources.Project.checkDescription(Project.ja=
va:162)
	at org.eclipse.core.internal.resources.Project.assertCreateRequirements(Pr=
oject.java:52)
	at org.eclipse.core.internal.resources.Project.create(Project.java:274)
	at org.eclipse.core.internal.resources.Project.create(Project.java:256)
	at org.yocto.bc.ui.wizards.newproject.CreateBBCProjectOperation.execute(Un=
known
Source)
	at org.eclipse.ui.actions.WorkspaceModifyOperation$1.run(WorkspaceModifyOp=
eration.java:106)
	at org.eclipse.core.internal.resources.Workspace.run(Workspace.java:1975)
	at org.eclipse.ui.actions.WorkspaceModifyOperation.run(WorkspaceModifyOper=
ation.java:118)
	... 43 more
Root exception:
org.eclipse.core.internal.resources.ResourceException: Invalid project
description.
	at org.eclipse.core.internal.resources.Project.checkDescription(Project.ja=
va:162)
	at org.eclipse.core.internal.resources.Project.assertCreateRequirements(Pr=
oject.java:52)
	at org.eclipse.core.internal.resources.Project.create(Project.java:274)
	at org.eclipse.core.internal.resources.Project.create(Project.java:256)
	at org.yocto.bc.ui.wizards.newproject.CreateBBCProjectOperation.execute(Un=
known
Source)
	at org.eclipse.ui.actions.WorkspaceModifyOperation$1.run(WorkspaceModifyOp=
eration.java:106)
	at org.eclipse.core.internal.resources.Workspace.run(Workspace.java:1975)
	at org.eclipse.ui.actions.WorkspaceModifyOperation.run(WorkspaceModifyOper=
ation.java:118)
	at org.eclipse.jface.operation.ModalContext.runInCurrentThread(ModalContex=
t.java:464)
	at org.eclipse.jface.operation.ModalContext.run(ModalContext.java:372)
	at org.eclipse.jface.wizard.WizardDialog.run(WizardDialog.java:1008)
	at org.yocto.bc.ui.wizards.install.InstallWizard.performFinish(Unknown Sou=
rce)
	at org.eclipse.jface.wizard.WizardDialog.finishPressed(WizardDialog.java:8=
11)
	at org.eclipse.jface.wizard.WizardDialog.buttonPressed(WizardDialog.java:4=
30)
	at org.eclipse.jface.dialogs.Dialog$2.widgetSelected(Dialog.java:624)
	at org.eclipse.swt.widgets.TypedListener.handleEvent(TypedListener.java:23=
4)
	at org.eclipse.swt.widgets.EventTable.sendEvent(EventTable.java:84)
	at org.eclipse.swt.widgets.Widget.sendEvent(Widget.java:1258)
	at org.eclipse.swt.widgets.Display.runDeferredEvents(Display.java:3540)
	at org.eclipse.swt.widgets.Display.readAndDispatch(Display.java:3161)
	at org.eclipse.jface.window.Window.runEventLoop(Window.java:825)
	at org.eclipse.jface.window.Window.open(Window.java:801)
	at org.eclipse.ui.actions.NewProjectAction.run(NewProjectAction.java:117)
	at org.eclipse.jface.action.Action.runWithEvent(Action.java:498)
	at org.eclipse.jface.action.ActionContributionItem.handleWidgetSelection(A=
ctionContributionItem.java:584)
	at org.eclipse.jface.action.ActionContributionItem.access$2(ActionContribu=
tionItem.java:501)
	at org.eclipse.jface.action.ActionContributionItem$5.handleEvent(ActionCon=
tributionItem.java:411)
	at org.eclipse.swt.widgets.EventTable.sendEvent(EventTable.java:84)
	at org.eclipse.swt.widgets.Widget.sendEvent(Widget.java:1258)
	at org.eclipse.swt.widgets.Display.runDeferredEvents(Display.java:3540)
	at org.eclipse.swt.widgets.Display.readAndDispatch(Display.java:3161)
	at org.eclipse.ui.internal.Workbench.runEventLoop(Workbench.java:2640)
	at org.eclipse.ui.internal.Workbench.runUI(Workbench.java:2604)
	at org.eclipse.ui.internal.Workbench.access$4(Workbench.java:2438)
	at org.eclipse.ui.internal.Workbench$7.run(Workbench.java:671)
	at org.eclipse.core.databinding.observable.Realm.runWithDefault(Realm.java=
:332)
	at org.eclipse.ui.internal.Workbench.createAndRunWorkbench(Workbench.java:=
664)
	at org.eclipse.ui.PlatformUI.createAndRunWorkbench(PlatformUI.java:149)
	at org.eclipse.ui.internal.ide.application.IDEApplication.start(IDEApplica=
tion.java:115)
	at org.eclipse.equinox.internal.app.EclipseAppHandle.run(EclipseAppHandle.=
java:196)
	at org.eclipse.core.runtime.internal.adaptor.EclipseAppLauncher.runApplica=
tion(EclipseAppLauncher.java:110)
	at org.eclipse.core.runtime.internal.adaptor.EclipseAppLauncher.start(Ecli=
pseAppLauncher.java:79)
	at org.eclipse.core.runtime.adaptor.EclipseStarter.run(EclipseStarter.java=
:369)
	at org.eclipse.core.runtime.adaptor.EclipseStarter.run(EclipseStarter.java=
:179)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.ja=
va:39)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccesso=
rImpl.java:25)
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
ut? =A0If so that maybe the reason prevent a new bitbake commander project =
being created since the build dir can contain large contents that Eclipse I=
Project tree view can't handle, so the work around is to move your build di=
r outside your Yocto checkout through oe-init-build-env path_of_build_dir..=
.
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


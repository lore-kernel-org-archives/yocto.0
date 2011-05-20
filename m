Return-Path: <busytester@gmail.com>
Received: from mail-qw0-f48.google.com (mail-qw0-f48.google.com
	[209.85.216.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4CE2E4C800B0
	for <yocto@yoctoproject.org>; Thu, 19 May 2011 19:10:51 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qwj9 with SMTP id 9so2330359qwj.35
	for <yocto@yoctoproject.org>; Thu, 19 May 2011 17:10:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=2713RJmnIu6jKVtR+Vd0lr0r0imfGcWtUxy+xS6sIWI=;
	b=umUdy1lNubwcFTCZ+XxX4gPrn5Ve4Ch1gw4ZXFOAYBx/97cr1BABQ6DVseJb2fI9HR
	sxLbAMCkLZ0SiaOBAPERXB5tCOIba5e41gXxPiu656zp9h0XisKdlzSDMffyMldoYiqE
	vZPD84Ks9lPTGbx9MT8E3ZavzMtQ7NzQrCS8g=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=nmQKpdwD+BH5AcSQj+FH/M8daHLcfLkF3V0LGiWnOBiCf7bIacAnPA6g0gitMC5lb5
	IraQ8P0dWgoXqKW71UuH4xioaeCZ16oEKamepS9yVpXSlTYS+BdZebY6aKx9I04CnPd4
	vtdaEWioetmU2LH9ZuGGfJlDmmYGkIXxCOWa0=
MIME-Version: 1.0
Received: by 10.229.105.93 with SMTP id s29mr2210304qco.147.1305850250005;
	Thu, 19 May 2011 17:10:50 -0700 (PDT)
Received: by 10.229.98.140 with HTTP; Thu, 19 May 2011 17:10:49 -0700 (PDT)
In-Reply-To: <9AFCD584B0B67B48AE8D8585BE30BA95011713C30D@orsmsx504.amr.corp.intel.com>
References: <BANLkTinwVS4Zu+21TR2eBa_-ArLb8gV0nQ@mail.gmail.com>
	<9AFCD584B0B67B48AE8D8585BE30BA9501170DBC5B@orsmsx504.amr.corp.intel.com>
	<BANLkTikHmPEiXKqRKZuRuZAB-Bm1vj9_bg@mail.gmail.com>
	<BANLkTiks+uySSt8p0jFD_97-83dSM6moNg@mail.gmail.com>
	<9AFCD584B0B67B48AE8D8585BE30BA95011713C30D@orsmsx504.amr.corp.intel.com>
Date: Thu, 19 May 2011 17:10:49 -0700
Message-ID: <BANLkTim=oz_pGwzXQARRDWyux344XLY04Q@mail.gmail.com>
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
X-List-Received-Date: Fri, 20 May 2011 00:10:51 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

My Eclipse workspace is /home/dlazzari/workspace
My Yocto directory is /home/dlazzari/workspace/Yocto

By moving the Yocto directory to /home/dlazzari/Yocto like you have,
it started working. My guess is that it saw that the Yocto directory
was already in workspace and got confused thinking it was already an
Eclipse project.

Thanks for the help!
Daniel Lazzari Jr.

On Thu, May 19, 2011 at 1:48 PM, Zhang, Jessica <jessica.zhang@intel.com> w=
rote:
> OK, can you give me more info regarding your directory setup?
> 1. What is your eclipse workspace directory
> 2. what is your poky Bernard directory?
>
> I think you may run into a corner case bug with your setup which I'm tryi=
ng to reproduce. =A0As to my setup that I tested and works is as following:
>
> My Eclispe workspace is /home/jzhang/workspace
> My Yocto directory is /home/jzhang/Yocto (without the build dir)
>
> In the Eclise plug-in the create project, I set my project name as Yocto =
and the location as /home/jzhang and the bitbake commander project is creat=
ed correctly for me. =A0Can you try create the project by mapping my direct=
ory setup? In the mean time I'll try to reproduce the issue with your setti=
ng once I get the info.
>
> Thanks,
> Jessica
> -----Original Message-----
> From: Daniel Lazzari [mailto:busytester@gmail.com]
> Sent: Thursday, May 19, 2011 11:46 AM
> To: Zhang, Jessica
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Can't create a new project with Yocto BitBake Comman=
der plugin
>
> I tried with a fresh download and didn't rename the directory and then
> looked at the .log file in my workspace/.metadata directory. Here's
> the exceptions and stack traces I get from clicking Finish:
>
> !SESSION 2011-05-19 11:42:15.961 ----------------------------------------=
-------
> eclipse.buildId=3DM20110210-1200
> java.version=3D1.6.0_24
> java.vendor=3DSun Microsystems Inc.
> BootLoader constants: OS=3Dlinux, ARCH=3Dx86, WS=3Dgtk, NL=3Den_US
> Framework arguments: =A0-product org.eclipse.epp.package.cpp.product
> Command-line arguments: =A0-os linux -ws gtk -arch x86 -product
> org.eclipse.epp.package.cpp.product
>
> !ENTRY org.yocto.bc.ui 4 4 2011-05-19 11:43:09.686
> !MESSAGE
> !STACK 0
> java.lang.reflect.InvocationTargetException
> =A0 =A0 =A0 =A0at org.eclipse.ui.actions.WorkspaceModifyOperation.run(Wor=
kspaceModifyOperation.java:121)
> =A0 =A0 =A0 =A0at org.eclipse.jface.operation.ModalContext.runInCurrentTh=
read(ModalContext.java:464)
> =A0 =A0 =A0 =A0at org.eclipse.jface.operation.ModalContext.run(ModalConte=
xt.java:372)
> =A0 =A0 =A0 =A0at org.eclipse.jface.wizard.WizardDialog.run(WizardDialog.=
java:1008)
> =A0 =A0 =A0 =A0at org.yocto.bc.ui.wizards.install.InstallWizard.performFi=
nish(Unknown Source)
> =A0 =A0 =A0 =A0at org.eclipse.jface.wizard.WizardDialog.finishPressed(Wiz=
ardDialog.java:811)
> =A0 =A0 =A0 =A0at org.eclipse.jface.wizard.WizardDialog.buttonPressed(Wiz=
ardDialog.java:430)
> =A0 =A0 =A0 =A0at org.eclipse.jface.dialogs.Dialog$2.widgetSelected(Dialo=
g.java:624)
> =A0 =A0 =A0 =A0at org.eclipse.swt.widgets.TypedListener.handleEvent(Typed=
Listener.java:234)
> =A0 =A0 =A0 =A0at org.eclipse.swt.widgets.EventTable.sendEvent(EventTable=
.java:84)
> =A0 =A0 =A0 =A0at org.eclipse.swt.widgets.Widget.sendEvent(Widget.java:12=
58)
> =A0 =A0 =A0 =A0at org.eclipse.swt.widgets.Display.runDeferredEvents(Displ=
ay.java:3540)
> =A0 =A0 =A0 =A0at org.eclipse.swt.widgets.Display.readAndDispatch(Display=
.java:3161)
> =A0 =A0 =A0 =A0at org.eclipse.jface.window.Window.runEventLoop(Window.jav=
a:825)
> =A0 =A0 =A0 =A0at org.eclipse.jface.window.Window.open(Window.java:801)
> =A0 =A0 =A0 =A0at org.eclipse.ui.actions.NewProjectAction.run(NewProjectA=
ction.java:117)
> =A0 =A0 =A0 =A0at org.eclipse.jface.action.Action.runWithEvent(Action.jav=
a:498)
> =A0 =A0 =A0 =A0at org.eclipse.jface.action.ActionContributionItem.handleW=
idgetSelection(ActionContributionItem.java:584)
> =A0 =A0 =A0 =A0at org.eclipse.jface.action.ActionContributionItem.access$=
2(ActionContributionItem.java:501)
> =A0 =A0 =A0 =A0at org.eclipse.jface.action.ActionContributionItem$5.handl=
eEvent(ActionContributionItem.java:411)
> =A0 =A0 =A0 =A0at org.eclipse.swt.widgets.EventTable.sendEvent(EventTable=
.java:84)
> =A0 =A0 =A0 =A0at org.eclipse.swt.widgets.Widget.sendEvent(Widget.java:12=
58)
> =A0 =A0 =A0 =A0at org.eclipse.swt.widgets.Display.runDeferredEvents(Displ=
ay.java:3540)
> =A0 =A0 =A0 =A0at org.eclipse.swt.widgets.Display.readAndDispatch(Display=
.java:3161)
> =A0 =A0 =A0 =A0at org.eclipse.ui.internal.Workbench.runEventLoop(Workbenc=
h.java:2640)
> =A0 =A0 =A0 =A0at org.eclipse.ui.internal.Workbench.runUI(Workbench.java:=
2604)
> =A0 =A0 =A0 =A0at org.eclipse.ui.internal.Workbench.access$4(Workbench.ja=
va:2438)
> =A0 =A0 =A0 =A0at org.eclipse.ui.internal.Workbench$7.run(Workbench.java:=
671)
> =A0 =A0 =A0 =A0at org.eclipse.core.databinding.observable.Realm.runWithDe=
fault(Realm.java:332)
> =A0 =A0 =A0 =A0at org.eclipse.ui.internal.Workbench.createAndRunWorkbench=
(Workbench.java:664)
> =A0 =A0 =A0 =A0at org.eclipse.ui.PlatformUI.createAndRunWorkbench(Platfor=
mUI.java:149)
> =A0 =A0 =A0 =A0at org.eclipse.ui.internal.ide.application.IDEApplication.=
start(IDEApplication.java:115)
> =A0 =A0 =A0 =A0at org.eclipse.equinox.internal.app.EclipseAppHandle.run(E=
clipseAppHandle.java:196)
> =A0 =A0 =A0 =A0at org.eclipse.core.runtime.internal.adaptor.EclipseAppLau=
ncher.runApplication(EclipseAppLauncher.java:110)
> =A0 =A0 =A0 =A0at org.eclipse.core.runtime.internal.adaptor.EclipseAppLau=
ncher.start(EclipseAppLauncher.java:79)
> =A0 =A0 =A0 =A0at org.eclipse.core.runtime.adaptor.EclipseStarter.run(Ecl=
ipseStarter.java:369)
> =A0 =A0 =A0 =A0at org.eclipse.core.runtime.adaptor.EclipseStarter.run(Ecl=
ipseStarter.java:179)
> =A0 =A0 =A0 =A0at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Met=
hod)
> =A0 =A0 =A0 =A0at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMetho=
dAccessorImpl.java:39)
> =A0 =A0 =A0 =A0at sun.reflect.DelegatingMethodAccessorImpl.invoke(Delegat=
ingMethodAccessorImpl.java:25)
> =A0 =A0 =A0 =A0at java.lang.reflect.Method.invoke(Method.java:597)
> =A0 =A0 =A0 =A0at org.eclipse.equinox.launcher.Main.invokeFramework(Main.=
java:620)
> =A0 =A0 =A0 =A0at org.eclipse.equinox.launcher.Main.basicRun(Main.java:57=
5)
> =A0 =A0 =A0 =A0at org.eclipse.equinox.launcher.Main.run(Main.java:1408)
> Caused by: org.eclipse.core.internal.resources.ResourceException:
> Invalid project description.
> =A0 =A0 =A0 =A0at org.eclipse.core.internal.resources.Project.checkDescri=
ption(Project.java:162)
> =A0 =A0 =A0 =A0at org.eclipse.core.internal.resources.Project.assertCreat=
eRequirements(Project.java:52)
> =A0 =A0 =A0 =A0at org.eclipse.core.internal.resources.Project.create(Proj=
ect.java:274)
> =A0 =A0 =A0 =A0at org.eclipse.core.internal.resources.Project.create(Proj=
ect.java:256)
> =A0 =A0 =A0 =A0at org.yocto.bc.ui.wizards.newproject.CreateBBCProjectOper=
ation.execute(Unknown
> Source)
> =A0 =A0 =A0 =A0at org.eclipse.ui.actions.WorkspaceModifyOperation$1.run(W=
orkspaceModifyOperation.java:106)
> =A0 =A0 =A0 =A0at org.eclipse.core.internal.resources.Workspace.run(Works=
pace.java:1975)
> =A0 =A0 =A0 =A0at org.eclipse.ui.actions.WorkspaceModifyOperation.run(Wor=
kspaceModifyOperation.java:118)
> =A0 =A0 =A0 =A0... 43 more
> Root exception:
> org.eclipse.core.internal.resources.ResourceException: Invalid project
> description.
> =A0 =A0 =A0 =A0at org.eclipse.core.internal.resources.Project.checkDescri=
ption(Project.java:162)
> =A0 =A0 =A0 =A0at org.eclipse.core.internal.resources.Project.assertCreat=
eRequirements(Project.java:52)
> =A0 =A0 =A0 =A0at org.eclipse.core.internal.resources.Project.create(Proj=
ect.java:274)
> =A0 =A0 =A0 =A0at org.eclipse.core.internal.resources.Project.create(Proj=
ect.java:256)
> =A0 =A0 =A0 =A0at org.yocto.bc.ui.wizards.newproject.CreateBBCProjectOper=
ation.execute(Unknown
> Source)
> =A0 =A0 =A0 =A0at org.eclipse.ui.actions.WorkspaceModifyOperation$1.run(W=
orkspaceModifyOperation.java:106)
> =A0 =A0 =A0 =A0at org.eclipse.core.internal.resources.Workspace.run(Works=
pace.java:1975)
> =A0 =A0 =A0 =A0at org.eclipse.ui.actions.WorkspaceModifyOperation.run(Wor=
kspaceModifyOperation.java:118)
> =A0 =A0 =A0 =A0at org.eclipse.jface.operation.ModalContext.runInCurrentTh=
read(ModalContext.java:464)
> =A0 =A0 =A0 =A0at org.eclipse.jface.operation.ModalContext.run(ModalConte=
xt.java:372)
> =A0 =A0 =A0 =A0at org.eclipse.jface.wizard.WizardDialog.run(WizardDialog.=
java:1008)
> =A0 =A0 =A0 =A0at org.yocto.bc.ui.wizards.install.InstallWizard.performFi=
nish(Unknown Source)
> =A0 =A0 =A0 =A0at org.eclipse.jface.wizard.WizardDialog.finishPressed(Wiz=
ardDialog.java:811)
> =A0 =A0 =A0 =A0at org.eclipse.jface.wizard.WizardDialog.buttonPressed(Wiz=
ardDialog.java:430)
> =A0 =A0 =A0 =A0at org.eclipse.jface.dialogs.Dialog$2.widgetSelected(Dialo=
g.java:624)
> =A0 =A0 =A0 =A0at org.eclipse.swt.widgets.TypedListener.handleEvent(Typed=
Listener.java:234)
> =A0 =A0 =A0 =A0at org.eclipse.swt.widgets.EventTable.sendEvent(EventTable=
.java:84)
> =A0 =A0 =A0 =A0at org.eclipse.swt.widgets.Widget.sendEvent(Widget.java:12=
58)
> =A0 =A0 =A0 =A0at org.eclipse.swt.widgets.Display.runDeferredEvents(Displ=
ay.java:3540)
> =A0 =A0 =A0 =A0at org.eclipse.swt.widgets.Display.readAndDispatch(Display=
.java:3161)
> =A0 =A0 =A0 =A0at org.eclipse.jface.window.Window.runEventLoop(Window.jav=
a:825)
> =A0 =A0 =A0 =A0at org.eclipse.jface.window.Window.open(Window.java:801)
> =A0 =A0 =A0 =A0at org.eclipse.ui.actions.NewProjectAction.run(NewProjectA=
ction.java:117)
> =A0 =A0 =A0 =A0at org.eclipse.jface.action.Action.runWithEvent(Action.jav=
a:498)
> =A0 =A0 =A0 =A0at org.eclipse.jface.action.ActionContributionItem.handleW=
idgetSelection(ActionContributionItem.java:584)
> =A0 =A0 =A0 =A0at org.eclipse.jface.action.ActionContributionItem.access$=
2(ActionContributionItem.java:501)
> =A0 =A0 =A0 =A0at org.eclipse.jface.action.ActionContributionItem$5.handl=
eEvent(ActionContributionItem.java:411)
> =A0 =A0 =A0 =A0at org.eclipse.swt.widgets.EventTable.sendEvent(EventTable=
.java:84)
> =A0 =A0 =A0 =A0at org.eclipse.swt.widgets.Widget.sendEvent(Widget.java:12=
58)
> =A0 =A0 =A0 =A0at org.eclipse.swt.widgets.Display.runDeferredEvents(Displ=
ay.java:3540)
> =A0 =A0 =A0 =A0at org.eclipse.swt.widgets.Display.readAndDispatch(Display=
.java:3161)
> =A0 =A0 =A0 =A0at org.eclipse.ui.internal.Workbench.runEventLoop(Workbenc=
h.java:2640)
> =A0 =A0 =A0 =A0at org.eclipse.ui.internal.Workbench.runUI(Workbench.java:=
2604)
> =A0 =A0 =A0 =A0at org.eclipse.ui.internal.Workbench.access$4(Workbench.ja=
va:2438)
> =A0 =A0 =A0 =A0at org.eclipse.ui.internal.Workbench$7.run(Workbench.java:=
671)
> =A0 =A0 =A0 =A0at org.eclipse.core.databinding.observable.Realm.runWithDe=
fault(Realm.java:332)
> =A0 =A0 =A0 =A0at org.eclipse.ui.internal.Workbench.createAndRunWorkbench=
(Workbench.java:664)
> =A0 =A0 =A0 =A0at org.eclipse.ui.PlatformUI.createAndRunWorkbench(Platfor=
mUI.java:149)
> =A0 =A0 =A0 =A0at org.eclipse.ui.internal.ide.application.IDEApplication.=
start(IDEApplication.java:115)
> =A0 =A0 =A0 =A0at org.eclipse.equinox.internal.app.EclipseAppHandle.run(E=
clipseAppHandle.java:196)
> =A0 =A0 =A0 =A0at org.eclipse.core.runtime.internal.adaptor.EclipseAppLau=
ncher.runApplication(EclipseAppLauncher.java:110)
> =A0 =A0 =A0 =A0at org.eclipse.core.runtime.internal.adaptor.EclipseAppLau=
ncher.start(EclipseAppLauncher.java:79)
> =A0 =A0 =A0 =A0at org.eclipse.core.runtime.adaptor.EclipseStarter.run(Ecl=
ipseStarter.java:369)
> =A0 =A0 =A0 =A0at org.eclipse.core.runtime.adaptor.EclipseStarter.run(Ecl=
ipseStarter.java:179)
> =A0 =A0 =A0 =A0at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Met=
hod)
> =A0 =A0 =A0 =A0at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMetho=
dAccessorImpl.java:39)
> =A0 =A0 =A0 =A0at sun.reflect.DelegatingMethodAccessorImpl.invoke(Delegat=
ingMethodAccessorImpl.java:25)
> =A0 =A0 =A0 =A0at java.lang.reflect.Method.invoke(Method.java:597)
> =A0 =A0 =A0 =A0at org.eclipse.equinox.launcher.Main.invokeFramework(Main.=
java:620)
> =A0 =A0 =A0 =A0at org.eclipse.equinox.launcher.Main.basicRun(Main.java:57=
5)
> =A0 =A0 =A0 =A0at org.eclipse.equinox.launcher.Main.run(Main.java:1408)
> Contains: OK
> Contains: /home/dlazzari/workspace/poky-bernard-5.0 overlaps the
> location of another project: 'poky-bernard-5.0'
>
> Hope that helps.
>
> On Thu, May 19, 2011 at 11:26 AM, Daniel Lazzari <busytester@gmail.com> w=
rote:
>> Hi Jessica,
>>
>> I want a Bitbake Commander project as I'll be creating and editing
>> recipes, classes, and configuration files. I am using the Bernard
>> release I downloaded from
>> http://www.yoctoproject.org/downloads/poky/poky-bernard-5.0.tar.bz2
>> though I renamed the directory to Yocto. I am using the 1.0 Eclipse
>> plugin. I did have a build directory so I moved that outside of the
>> Yocto directory, but still no luck.
>>
>> Thanks for the help,
>> Daniel Lazzari Jr.
>>
>> On Wed, May 18, 2011 at 1:55 PM, Zhang, Jessica <jessica.zhang@intel.com=
> wrote:
>>> Hi Daniel,
>>>
>>> One more thing to check, do you have a build dir under your Yocto check=
out? =A0If so that maybe the reason prevent a new bitbake commander project=
 being created since the build dir can contain large contents that Eclipse =
IProject tree view can't handle, so the work around is to move your build d=
ir outside your Yocto checkout through oe-init-build-env path_of_build_dir.=
..
>>>
>>> Thanks,
>>> Jessica
>>>
>>> -----Original Message-----
>>> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject=
.org] On Behalf Of Daniel Lazzari
>>> Sent: Tuesday, May 17, 2011 5:46 PM
>>> To: yocto@yoctoproject.org
>>> Subject: [yocto] Can't create a new project with Yocto BitBake Commande=
r plugin
>>>
>>> Hi everyone,
>>>
>>> I searched and couldn't find anything on this issue, but it seems so
>>> obvious that I'm guessing I'm doing something wrong. I installed the
>>> Yocto Eclipse Plugin in Eclipse Helios Service Release 2 on an Ubuntu
>>> 10.04 machine. I selected File->New->Project, Selected Yocto BitBake
>>> Commander->New Yocto Project, set the Project Name to Yocto and
>>> selected the workspace folder where I have my Yocto checkout. It says
>>> everything is valid at the top, I click Finish, and it just flashes
>>> and keeps the dialog box up. No new project is created.
>>>
>>> Has anyone else experienced this and knows of a fix or workaround? I'd
>>> be happy to provide more details or log a bug for it if that helps.
>>>
>>> Thanks,
>>> Daniel Lazzari Jr.
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>
>


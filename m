Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
 by mx.groups.io with SMTP id smtpd.web10.207.1612804376798360478
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 Feb 2021 09:12:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=HZGzGmDl;
 spf=pass (domain: gmail.com, ip: 209.85.160.178, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f178.google.com with SMTP id e11so10818844qtg.6
        for <yocto@lists.yoctoproject.org>; Mon, 08 Feb 2021 09:12:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WCrcXcIVi/53O/I5Ez7Rmkn0jBHFc9s7KIArn5tcFM0=;
        b=HZGzGmDl1wPjy/pVw0lJOBkH794WcDrLptH4vYBDlu/YX11MaYmduEG36rZP4V+4g1
         Tqk2/jgJBPwJ3Gps+KrQf5dmJoELKz0t8T8J6sn53xWe0bkdD7e1zfciVufFEC7AG0mp
         Y/9MudL1kdDBE0DpxlOpWKRfeJIaFtTkNQO9NruokizgqbSQPye5oLxKuSuo5YutPjhq
         0L3oY1KlTJ4ZNiWjlQEnB/hMIwW1LFRm91WS8t+lIQvMq5oSsGI5qb9U1TcIb+IHlin8
         qnqCGP5AQ7PvLli9s/wLjtnYhp5twTrj4dM3bSjzjA3tYznLKGJ1vJpqRKsbrNdrrY+k
         Gndg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WCrcXcIVi/53O/I5Ez7Rmkn0jBHFc9s7KIArn5tcFM0=;
        b=tuN8F+2haaNc1RkhTM2J32tFcmEpZWhYkhf6j93Uf7lNcgwYuaQ56rnDa8Z8JZbebb
         IO84fW5eWiomDUXCWsoj/2+056QKvfwGZ8CgUdzB9CeaipbIZj6A6YDG5YmHjOcTEYDC
         DIzYruQYzMuVAoWa8w11Sm7hyhfMZN+4nfNawisHFx36sUb6sLzmtDt9Z/WmSo96MrHk
         qDTzxOv8aWReRfvZpzWFHQf/N2Em370K3/FJ07nlfOf3hGy17IU9beeowsGpuemEmJH/
         /qGki1hebx9siJibrJj2pmjk8cqgrzy69lCknKJamZuGyMa21UyNRRk9gW1FRgmh2/KJ
         Fwhg==
X-Gm-Message-State: AOAM531HEJKUaH5ncOe5MADy1d4suY0qzDbmnZNjkleXkpbGo6DDmOpi
	WPNA8VC9HGx2ORd/4ayyPsQjAKkTE8TYA+rXygU=
X-Google-Smtp-Source: ABdhPJyRkJJm26qs5HxIm7EQmBei9Zk+GnL/6GXAwYAy/4Tn+XZ/4FFlHTYAv/I9/ZnNEsGysmv+4P72wfXXNokxPrc=
X-Received: by 2002:ac8:5894:: with SMTP id t20mr16060442qta.194.1612804371685;
 Mon, 08 Feb 2021 09:12:51 -0800 (PST)
MIME-Version: 1.0
References: <CAMKF1sp6occ9hyniH4mP5iCzrZGT66y12XHadxYKhd7Gf4YTMg@mail.gmail.com>
 <MADEUP.1661D4D13693092A.5829@lists.yoctoproject.org>
In-Reply-To: <MADEUP.1661D4D13693092A.5829@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Mon, 8 Feb 2021 09:12:40 -0800
Message-ID: <CAMKF1sqjs5gKH3P73X_4X+ORXNuj6PcgAighF+9=UMJcc0r44w@mail.gmail.com>
Subject: Re: [yocto] #yocto #zeus #sdk populate_sdk_ext build failing
To: steven.monsees@baesystems.com
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000aaa9fc05bad64711"

--000000000000aaa9fc05bad64711
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

That means it=E2=80=99s having issues with checksums is there any AUTOREV b=
eing
used ?

I would suggest to build without your changes and see if you can get an
eSDK

On Mon, Feb 8, 2021 at 9:09 AM Monsees, Steven C (US) via
lists.yoctoproject.org <steven.monsees=3Dbaesystems.com@lists.yoctoproject=
.org>
wrote:

>
> I configured SDK for:
>
> SDK_EXT_TYPE =3D "minimal"
> SDK_INCLUDE_TOOLCHAIN =3D "1"
> SDK_INCLUDE_PKGDATA =3D "0"
>
> And I still see "Error:  Failed to generate filtered task list for
> extensible SDK..."
>
> In my latest log I also see:
>
> "Error: Task quilt-native.do_fetch attempted to execute unexpectedly...
>  ...
>  This is usually due to missing ser=3Dtscene tasks...
> ..."
>
> Why might the filtered task list fail to generate correctly ?
>
> This appears to be the real issue, and then it dies a slow death...
>
> Thanks,
> Steve
>
>
> -----Original Message-----
> From: Khem Raj <raj.khem@gmail.com>
> Sent: Tuesday, February 2, 2021 10:37 PM
> To: Monsees, Steven C (US) <steven.monsees@baesystems.com>
> Cc: yocto@lists.yoctoproject.org
> Subject: Re: [yocto] #yocto #zeus #sdk populate_sdk_ext build failing
>
> *** WARNING ***
> EXTERNAL EMAIL -- This message originates from outside our organization.
>
>
> it seems bitbake does not execute when its trying to configure eSDK for
> install. Perhaps you can try to see some logs inside the esdk build area=
 to
> check if there is further info.
> secondly, try to build an esdk for core-image-minimal and see if that
> works.
>
> On Fri, Jan 29, 2021 at 3:04 PM Monsees, Steven C (US) via
> lists.yoctoproject.org <steven.monsees=3D
> baesystems.com@lists.yoctoproject.org> wrote:
> >
> >
> >
> > I need some help in understanding why the SDK EXT is failing to build
> > under zeus=E2=80=A6
> >
> >
> >
> > Can someone explain why the extended sdk build fails and how I might
> resolve ?
> >
> >
> >
> > sbcb-defaultfs kernel builds and boots correctly=E2=80=A6
> >
> >
> >
> > SDK builds under zeus for sbcb-defaultfs :
> >
> >
> >
> > bitbake sbcb-defaultfs-full -c populate_sdk    -WORKING CORRECTLY
> >
> >
> >
> > bitbake sbcb-defaultfs-full -c populate_sdk_ext  -Fails build with the
> following Errors:
> >
> >
> >
> > 17:13 smonsees@yix490016
> > /disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/s
> > bcb-default> bitbake sbcb-defaultfs-full -c populate_sdk_ext
> >
> > Loading cache: 100%
> > |###########################################################| Time:
> > 0:00:00
> >
> > Loaded 3645 entries from dependency cache.
> >
> > NOTE: Resolving any missing task queue dependencies
> >
> >
> >
> > Build Configuration:
> >
> > BB_VERSION           =3D "1.44.0"
> >
> > BUILD_SYS            =3D "x86_64-linux"
> >
> > NATIVELSBSTRING      =3D "rhel-7.9"
> >
> > TARGET_SYS           =3D "x86_64-poky-linux"
> >
> > MACHINE              =3D "sbcb-default"
> >
> > DISTRO               =3D "limws"
> >
> > DISTRO_VERSION       =3D "3.0.4"
> >
> > TUNE_FEATURES        =3D "m64 corei7"
> >
> > TARGET_FPU           =3D ""
> >
> > meta
> >
> > meta-poky            =3D
> "my_yocto_3.0.4:f2eb22a8783f1eecf99bd4042695bab920eed00e"
> >
> > meta-perl
> >
> > meta-python
> >
> > meta-filesystems
> >
> > meta-networking
> >
> > meta-initramfs
> >
> > meta-oe              =3D "zeus:2b5dd1eb81cd08bc065bc76125f2856e9383e98=
b"
> >
> > meta                 =3D "master:a32ddd2b2a51b26c011fa50e441df39304651=
503"
> >
> > meta-intel           =3D "zeus:d9942d4c3a710406b051852de7232db03c297f4=
e"
> >
> > meta-intel
> >
> > workspace            =3D
> "v2019.02:f635a364c55f1fb12519aff54924a0a5b947091e"
> >
> >
> >
> > Initialising tasks: 100%
> > |######################################################| Time: 0:00:04
> >
> > Checking sstate mirror object availability: 100%
> > |##############################| Time: 0:00:00
> >
> > Sstate summary: Wanted 503 Found 298 Missed 205 Current 1936 (59%
> > match, 91% complete)
> >
> > NOTE: Executing Tasks
> >
> > NOTE: Setscene tasks completed
> >
> > WARNING: rpcsvc-proto-native-1.4+gitAUTOINC+9bc3b5b785-r0 do_fetch:
> > Failed to fetch URL git://github.com/thkukuk/rpcsvc-proto, attempting
> > MIRRORS if available
> >
> > WARNING: nativesdk-libnss-nis-3.1+gitAUTOINC+062f31999b-r0 do_fetch:
> > Failed to fetch URL git://github.com/thkukuk/libnss_nis, attempting
> > MIRRORS if available
> >
> > NOTE: Excluding local workspace layer
> > /disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/s
> > bcb-default/workspace from extensible SDK
> >
> > ERROR: sbcb-defaultfs-full-1.0-r0 do_populate_sdk_ext: Failed to
> generate filtered task list for extensible SDK:
> >
> > /bin/bash: line 0: .: .: is a directory
> >
> > ERROR: bitbake failed:
> >
> > /bin/sh: bitbake: command not found
> >
> > ERROR: sbcb-defaultfs-full-1.0-r0 do_populate_sdk_ext: Error executing=
 a
> python function in exec_python_func() autogenerated:
> >
> >
> >
> > The stack trace of python calls that resulted in this exception/failur=
e
> was:
> >
> > File: 'exec_python_func() autogenerated', lineno: 2, function:
> > <module>
> >
> >      0001:
> >
> > *** 0002:copy_buildsystem(d)
> >
> >      0003:
> >
> > File:
> > '/disk0/scratch/smonsees/yocto/workspace_3/poky/meta/classes/populate_
> > sdk_ext.bbclass', lineno: 444, function: copy_buildsystem
> >
> >      0440:    sdk_ext_type =3D d.getVar('SDK_EXT_TYPE')
> >
> >      0441:    if (sdk_ext_type !=3D 'minimal' or sdk_include_toolchain=
 or
> derivative) and not sdk_include_nativesdk:
> >
> >      0442:        # Create the filtered task list used to generate the
> sstate cache shipped with the SDK
> >
> >      0443:        tasklistfn =3D d.getVar('WORKDIR') + '/tasklist.txt'
> >
> > *** 0444:        create_filtered_tasklist(d, baseoutpath, tasklistfn,
> conf_initpath)
> >
> >      0445:    else:
> >
> >      0446:        tasklistfn =3D None
> >
> >      0447:
> >
> >      0448:    if os.path.exists(builddir + '/cache/bb_unihashes.dat'):
> >
> > File:
> > '/disk0/scratch/smonsees/yocto/workspace_3/poky/meta/classes/populate_
> > sdk_ext.bbclass', lineno: 180, function: create_filtered_tasklist
> >
> >      0176:        # Clean out residue of running bitbake, which
> check_sstate_task_list()
> >
> >      0177:        # will effectively do
> >
> >      0178:        clean_esdk_builddir(d, sdkbasepath)
> >
> >      0179:    finally:
> >
> > *** 0180:        os.replace(sdkbasepath + '/conf/local.conf.bak',
> sdkbasepath + '/conf/local.conf')
> >
> >      0181:
> >
> >      0182:python copy_buildsystem () {
> >
> >      0183:    import re
> >
> >      0184:    import shutil
> >
> > Exception: FileNotFoundError: [Errno 2] No such file or directory:
> '/disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/sb=
cb-default/tmp/work/sbcb_default-poky-linux/sbcb-defaultfs-full/1.0-r0/sdk-=
ext/image//opt/limws/3.0.4/conf/local.conf.bak'
> ->
> '/disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/sb=
cb-default/tmp/work/sbcb_default-poky-linux/sbcb-defaultfs-full/1.0-r0/sdk-=
ext/image//opt/limws/3.0.4/conf/local.conf'
> >
> >
> >
> > ERROR: Logfile of failure stored in:
> > /disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/s
> > bcb-default/tmp/work/sbcb_default-poky-linux/sbcb-defaultfs-full/1.0-r
> > 0/temp/log.do_populate_sdk_ext.14130
> >
> > ERROR: Task
> (/disk0/scratch/smonsees/yocto/workspace_3/poky/../meta-bae/meta-limws/m=
eta-intel/recipes-core/images/sbcb-defaultfs-full.bb:do_populate_sdk_ext)
> failed with exit code '1'
> >
> > NOTE: Tasks Summary: Attempted 6770 tasks of which 6274 didn't need to
> be rerun and 1 failed.
> >
> >
> >
> > Summary: 1 task failed:
> >
> >
> > /disk0/scratch/smonsees/yocto/workspace_3/poky/../meta-bae/meta-limws/
> > meta-intel/recipes-core/images/sbcb-defaultfs-full.bb:do_populate_sdk_
> > ext
> >
> > Summary: There were 2 WARNING messages shown.
> >
> > Summary: There were 2 ERROR messages shown, returning a non-zero exit
> code.
> >
> > 17:49 smonsees@yix490016
> > /disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/s
> > bcb-default>
> >
> >
> >
> >
>
>=20
>
>

--000000000000aaa9fc05bad64711
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">That means it=E2=80=99s having issues with checksums is t=
here any AUTOREV being used ?</div><div dir=3D"auto"><br></div><div dir=3D"=
auto">I would suggest to build without your changes and see if you can get =
an eSDK=C2=A0</div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Mon, Feb 8, 2021 at 9:09 AM Monsees, Steven C (US) via=
 <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;s=
teven.monsees=3D<a href=3D"mailto:baesystems.com@lists.yoctoproject.org">ba=
esystems.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex"><br>
I configured SDK for:<br>
<br>
SDK_EXT_TYPE =3D &quot;minimal&quot;<br>
SDK_INCLUDE_TOOLCHAIN =3D &quot;1&quot;<br>
SDK_INCLUDE_PKGDATA =3D &quot;0&quot;<br>
<br>
And I still see &quot;Error:=C2=A0 Failed to generate filtered task list f=
or extensible SDK...&quot;<br>
<br>
In my latest log I also see:<br>
<br>
&quot;Error: Task quilt-native.do_fetch attempted to execute unexpectedly.=
..<br>
=C2=A0...<br>
=C2=A0This is usually due to missing ser=3Dtscene tasks...<br>
...&quot;<br>
<br>
Why might the filtered task list fail to generate correctly ?<br>
<br>
This appears to be the real issue, and then it dies a slow death...<br>
<br>
Thanks,<br>
Steve<br>
<br>
<br>
-----Original Message-----<br>
From: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank"=
>raj.khem@gmail.com</a>&gt; <br>
Sent: Tuesday, February 2, 2021 10:37 PM<br>
To: Monsees, Steven C (US) &lt;<a href=3D"mailto:steven.monsees@baesystems=
.com" target=3D"_blank">steven.monsees@baesystems.com</a>&gt;<br>
Cc: <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yoct=
o@lists.yoctoproject.org</a><br>
Subject: Re: [yocto] #yocto #zeus #sdk populate_sdk_ext build failing<br>
<br>
*** WARNING ***<br>
EXTERNAL EMAIL -- This message originates from outside our organization.<b=
r>
<br>
<br>
it seems bitbake does not execute when its trying to configure eSDK for in=
stall. Perhaps you can try to see some logs inside the esdk build area to c=
heck if there is further info.<br>
secondly, try to build an esdk for core-image-minimal and see if that work=
s.<br>
<br>
On Fri, Jan 29, 2021 at 3:04 PM Monsees, Steven C (US) via <a href=3D"http=
://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">lists.yocto=
project.org</a> &lt;steven.monsees=3D<a href=3D"mailto:baesystems.com@lists=
.yoctoproject.org" target=3D"_blank">baesystems.com@lists.yoctoproject.org<=
/a>&gt; wrote:<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; I need some help in understanding why the SDK EXT is failing to build=
 <br>
&gt; under zeus=E2=80=A6<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Can someone explain why the extended sdk build fails and how I might =
resolve ?<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; sbcb-defaultfs kernel builds and boots correctly=E2=80=A6<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; SDK builds under zeus for sbcb-defaultfs :<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; bitbake sbcb-defaultfs-full -c populate_sdk=C2=A0 =C2=A0 -WORKING COR=
RECTLY<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; bitbake sbcb-defaultfs-full -c populate_sdk_ext=C2=A0 -Fails build wi=
th the following Errors:<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; 17:13 smonsees@yix490016 <br>
&gt; /disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/=
s<br>
&gt; bcb-default&gt; bitbake sbcb-defaultfs-full -c populate_sdk_ext<br>
&gt;<br>
&gt; Loading cache: 100% <br>
&gt; |###########################################################| Time: <=
br>
&gt; 0:00:00<br>
&gt;<br>
&gt; Loaded 3645 entries from dependency cache.<br>
&gt;<br>
&gt; NOTE: Resolving any missing task queue dependencies<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Build Configuration:<br>
&gt;<br>
&gt; BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.44.0&q=
uot;<br>
&gt;<br>
&gt; BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-l=
inux&quot;<br>
&gt;<br>
&gt; NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D &quot;rhel-7.9&quot;<br>
&gt;<br>
&gt; TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;x86_64-p=
oky-linux&quot;<br>
&gt;<br>
&gt; MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;sbc=
b-default&quot;<br>
&gt;<br>
&gt; DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quo=
t;limws&quot;<br>
&gt;<br>
&gt; DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;3.0.4&quot;<br>
&gt;<br>
&gt; TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;m64 corei7&quot;<b=
r>
&gt;<br>
&gt; TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;&quot;<b=
r>
&gt;<br>
&gt; meta<br>
&gt;<br>
&gt; meta-poky=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;my_yocto=
_3.0.4:f2eb22a8783f1eecf99bd4042695bab920eed00e&quot;<br>
&gt;<br>
&gt; meta-perl<br>
&gt;<br>
&gt; meta-python<br>
&gt;<br>
&gt; meta-filesystems<br>
&gt;<br>
&gt; meta-networking<br>
&gt;<br>
&gt; meta-initramfs<br>
&gt;<br>
&gt; meta-oe=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;zeu=
s:2b5dd1eb81cd08bc065bc76125f2856e9383e98b&quot;<br>
&gt;<br>
&gt; meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D=
 &quot;master:a32ddd2b2a51b26c011fa50e441df39304651503&quot;<br>
&gt;<br>
&gt; meta-intel=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;zeus:d99=
42d4c3a710406b051852de7232db03c297f4e&quot;<br>
&gt;<br>
&gt; meta-intel<br>
&gt;<br>
&gt; workspace=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;v2019.02=
:f635a364c55f1fb12519aff54924a0a5b947091e&quot;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Initialising tasks: 100% <br>
&gt; |######################################################| Time: 0:00:0=
4<br>
&gt;<br>
&gt; Checking sstate mirror object availability: 100% <br>
&gt; |##############################| Time: 0:00:00<br>
&gt;<br>
&gt; Sstate summary: Wanted 503 Found 298 Missed 205 Current 1936 (59% <br=
>
&gt; match, 91% complete)<br>
&gt;<br>
&gt; NOTE: Executing Tasks<br>
&gt;<br>
&gt; NOTE: Setscene tasks completed<br>
&gt;<br>
&gt; WARNING: rpcsvc-proto-native-1.4+gitAUTOINC+9bc3b5b785-r0 do_fetch: <=
br>
&gt; Failed to fetch URL git://<a href=3D"http://github.com/thkukuk/rpcsvc=
-proto" rel=3D"noreferrer" target=3D"_blank">github.com/thkukuk/rpcsvc-prot=
o</a>, attempting <br>
&gt; MIRRORS if available<br>
&gt;<br>
&gt; WARNING: nativesdk-libnss-nis-3.1+gitAUTOINC+062f31999b-r0 do_fetch: =
<br>
&gt; Failed to fetch URL git://<a href=3D"http://github.com/thkukuk/libnss=
_nis" rel=3D"noreferrer" target=3D"_blank">github.com/thkukuk/libnss_nis</a=
>, attempting <br>
&gt; MIRRORS if available<br>
&gt;<br>
&gt; NOTE: Excluding local workspace layer <br>
&gt; /disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/=
s<br>
&gt; bcb-default/workspace from extensible SDK<br>
&gt;<br>
&gt; ERROR: sbcb-defaultfs-full-1.0-r0 do_populate_sdk_ext: Failed to gene=
rate filtered task list for extensible SDK:<br>
&gt;<br>
&gt; /bin/bash: line 0: .: .: is a directory<br>
&gt;<br>
&gt; ERROR: bitbake failed:<br>
&gt;<br>
&gt; /bin/sh: bitbake: command not found<br>
&gt;<br>
&gt; ERROR: sbcb-defaultfs-full-1.0-r0 do_populate_sdk_ext: Error executin=
g a python function in exec_python_func() autogenerated:<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; The stack trace of python calls that resulted in this exception/failu=
re was:<br>
&gt;<br>
&gt; File: &#39;exec_python_func() autogenerated&#39;, lineno: 2, function=
: <br>
&gt; &lt;module&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0001:<br>
&gt;<br>
&gt; *** 0002:copy_buildsystem(d)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0003:<br>
&gt;<br>
&gt; File: <br>
&gt; &#39;/disk0/scratch/smonsees/yocto/workspace_3/poky/meta/classes/popu=
late_<br>
&gt; sdk_ext.bbclass&#39;, lineno: 444, function: copy_buildsystem<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0440:=C2=A0 =C2=A0 sdk_ext_type =3D d.getVar(&#39=
;SDK_EXT_TYPE&#39;)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0441:=C2=A0 =C2=A0 if (sdk_ext_type !=3D &#39;min=
imal&#39; or sdk_include_toolchain or derivative) and not sdk_include_nativ=
esdk:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0442:=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Create the fil=
tered task list used to generate the sstate cache shipped with the SDK<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0443:=C2=A0 =C2=A0 =C2=A0 =C2=A0 tasklistfn =3D d=
.getVar(&#39;WORKDIR&#39;) + &#39;/tasklist.txt&#39;<br>
&gt;<br>
&gt; *** 0444:=C2=A0 =C2=A0 =C2=A0 =C2=A0 create_filtered_tasklist(d, base=
outpath, tasklistfn, conf_initpath)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0445:=C2=A0 =C2=A0 else:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0446:=C2=A0 =C2=A0 =C2=A0 =C2=A0 tasklistfn =3D N=
one<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0447:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0448:=C2=A0 =C2=A0 if os.path.exists(builddir + &=
#39;/cache/bb_unihashes.dat&#39;):<br>
&gt;<br>
&gt; File: <br>
&gt; &#39;/disk0/scratch/smonsees/yocto/workspace_3/poky/meta/classes/popu=
late_<br>
&gt; sdk_ext.bbclass&#39;, lineno: 180, function: create_filtered_tasklist=
<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0176:=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Clean out resi=
due of running bitbake, which check_sstate_task_list()<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0177:=C2=A0 =C2=A0 =C2=A0 =C2=A0 # will effective=
ly do<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0178:=C2=A0 =C2=A0 =C2=A0 =C2=A0 clean_esdk_build=
dir(d, sdkbasepath)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0179:=C2=A0 =C2=A0 finally:<br>
&gt;<br>
&gt; *** 0180:=C2=A0 =C2=A0 =C2=A0 =C2=A0 os.replace(sdkbasepath + &#39;/c=
onf/local.conf.bak&#39;, sdkbasepath + &#39;/conf/local.conf&#39;)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0181:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0182:python copy_buildsystem () {<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0183:=C2=A0 =C2=A0 import re<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0184:=C2=A0 =C2=A0 import shutil<br>
&gt;<br>
&gt; Exception: FileNotFoundError: [Errno 2] No such file or directory: &#=
39;/disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/sbc=
b-default/tmp/work/sbcb_default-poky-linux/sbcb-defaultfs-full/1.0-r0/sdk-e=
xt/image//opt/limws/3.0.4/conf/local.conf.bak&#39; -&gt; &#39;/disk0/scratc=
h/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/sbcb-default/tmp/wo=
rk/sbcb_default-poky-linux/sbcb-defaultfs-full/1.0-r0/sdk-ext/image//opt/li=
mws/3.0.4/conf/local.conf&#39;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; ERROR: Logfile of failure stored in: <br>
&gt; /disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/=
s<br>
&gt; bcb-default/tmp/work/sbcb_default-poky-linux/sbcb-defaultfs-full/1.0-=
r<br>
&gt; 0/temp/log.do_populate_sdk_ext.14130<br>
&gt;<br>
&gt; ERROR: Task (/disk0/scratch/smonsees/yocto/workspace_3/poky/../meta-b=
ae/meta-limws/meta-intel/recipes-core/images/sbcb-defaultfs-full.bb:do_popu=
late_sdk_ext) failed with exit code &#39;1&#39;<br>
&gt;<br>
&gt; NOTE: Tasks Summary: Attempted 6770 tasks of which 6274 didn&#39;t ne=
ed to be rerun and 1 failed.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Summary: 1 task failed:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0<br>
&gt; /disk0/scratch/smonsees/yocto/workspace_3/poky/../meta-bae/meta-limws=
/<br>
&gt; meta-intel/recipes-core/images/<a href=3D"http://sbcb-defaultfs-full.=
bb" target=3D"_blank">sbcb-defaultfs-full.bb</a>:do_populate_sdk_<br>
&gt; ext<br>
&gt;<br>
&gt; Summary: There were 2 WARNING messages shown.<br>
&gt;<br>
&gt; Summary: There were 2 ERROR messages shown, returning a non-zero exit=
 code.<br>
&gt;<br>
&gt; 17:49 smonsees@yix490016 <br>
&gt; /disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/=
s<br>
&gt; bcb-default&gt;<br>
&gt;<br>
&gt;<br>
&gt; <br>
&gt;<br>
<br>
<br>
<br>
</blockquote></div></div>

--000000000000aaa9fc05bad64711--

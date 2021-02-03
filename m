Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
 by mx.groups.io with SMTP id smtpd.web09.4442.1612323426673714731
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Feb 2021 19:37:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q6BzIyPh;
 spf=pass (domain: gmail.com, ip: 209.85.222.175, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f175.google.com with SMTP id v126so22116874qkd.11
        for <yocto@lists.yoctoproject.org>; Tue, 02 Feb 2021 19:37:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=tQGgrvaS3EjvRycJlbvh2Jji11/QpIFWZ3f8cGBBasI=;
        b=Q6BzIyPhheYPkTHc5KgmatRDMCdJGqf/4xY4lATpMYjbVmyqonjz6qYx+vd5dtN1z1
         7mWQ5J8Fw7DwjyePkspfgyxLfyjPYMJY/82J3Y8TEdcCV4JzmSq2kkVb1uWZK5EjHY5N
         aAArpHIkzjX549ANR/vS0DFqBLzL4rmxU8dgUVANI654X1k2/cqj9uQGjWHbxL3m8Z1H
         R0cjeXuIEkkQZyMXy10qkExSOyPdmE0fXynbBHeWItbYkLaEldP+02IHr7X/cTzTEWII
         tVpJbTTv9tmqpGh4ufplmg6/pl4xXcc4ytnoh0Isb2vweuoWz2ixcTuOBEx4v/2H9NO0
         eHeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=tQGgrvaS3EjvRycJlbvh2Jji11/QpIFWZ3f8cGBBasI=;
        b=O06FPHYeBwQI0BS+SyJfAd2wdwv85VSbUlGPCSO+uwz+GI9Vln1VIe22s0qmxp557Y
         zi+07h6pXIb9OgeC2PqmgG6CxD5EXPtVXD2WkloHQ+AY8iboqp6Blj5j2d+MC6SD+imp
         1pqbYG4GO6+FG0f1aM+sMuXoZvZuWSHvwTrKFDsHi1s1RAtM/zBrhd3g9OS+6MRxgyad
         bP3CrFpc7v4HPmX8wqwZevhXXVh4GLzPKS6VK5e0G2y7j4l85r5vYhQYRPWxp4Whgzlq
         Avn5rOMXicl42DmvGVdj7NwGdIuWwjgwwivnYk3n+uC4/hjGiHP8sL7TzfBM6WbBDqC3
         JKQw==
X-Gm-Message-State: AOAM530vHz73LSRQ9HmxIvETQ+h5yPikEZDd34NwDnfs1Z5+MPPvDjyX
	j9II0KOjUkHRmer3PQptxnvb4RLEAzvYk7nynIQ=
X-Google-Smtp-Source: ABdhPJz+OJgqRbKULShagTLfByRr4e7rKZ7gkHILegU+tOLQAB3HpJzkItQ9qoUJNdfYAOhY2ZDpqd7ogr3S1fOuHuA=
X-Received: by 2002:a37:9b8b:: with SMTP id d133mr829852qke.71.1612323425718;
 Tue, 02 Feb 2021 19:37:05 -0800 (PST)
MIME-Version: 1.0
References: <MADEUP.165ED668EC590D36.30795@lists.yoctoproject.org>
In-Reply-To: <MADEUP.165ED668EC590D36.30795@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 2 Feb 2021 19:36:39 -0800
Message-ID: <CAMKF1sp6occ9hyniH4mP5iCzrZGT66y12XHadxYKhd7Gf4YTMg@mail.gmail.com>
Subject: Re: [yocto] #yocto #zeus #sdk populate_sdk_ext build failing
To: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

it seems bitbake does not execute when its trying to configure eSDK
for install. Perhaps you can try to see some logs inside the esdk
build area to check if there is further info.
secondly, try to build an esdk for core-image-minimal and see if that work=
s.

On Fri, Jan 29, 2021 at 3:04 PM Monsees, Steven C (US) via
lists.yoctoproject.org
<steven.monsees=3Dbaesystems.com@lists.yoctoproject.org> wrote:
>
>
>
> I need some help in understanding why the SDK EXT is failing to build un=
der zeus=E2=80=A6
>
>
>
> Can someone explain why the extended sdk build fails and how I might res=
olve ?
>
>
>
> sbcb-defaultfs kernel builds and boots correctly=E2=80=A6
>
>
>
> SDK builds under zeus for sbcb-defaultfs :
>
>
>
> bitbake sbcb-defaultfs-full -c populate_sdk    -WORKING CORRECTLY
>
>
>
> bitbake sbcb-defaultfs-full -c populate_sdk_ext  -Fails build with the f=
ollowing Errors:
>
>
>
> 17:13 smonsees@yix490016 /disk0/scratch/smonsees/yocto/workspace_3/meta-=
bae/meta-limws/builds/sbcb-default> bitbake sbcb-defaultfs-full -c populate=
_sdk_ext
>
> Loading cache: 100% |###################################################=
########| Time: 0:00:00
>
> Loaded 3645 entries from dependency cache.
>
> NOTE: Resolving any missing task queue dependencies
>
>
>
> Build Configuration:
>
> BB_VERSION           =3D "1.44.0"
>
> BUILD_SYS            =3D "x86_64-linux"
>
> NATIVELSBSTRING      =3D "rhel-7.9"
>
> TARGET_SYS           =3D "x86_64-poky-linux"
>
> MACHINE              =3D "sbcb-default"
>
> DISTRO               =3D "limws"
>
> DISTRO_VERSION       =3D "3.0.4"
>
> TUNE_FEATURES        =3D "m64 corei7"
>
> TARGET_FPU           =3D ""
>
> meta
>
> meta-poky            =3D "my_yocto_3.0.4:f2eb22a8783f1eecf99bd4042695bab=
920eed00e"
>
> meta-perl
>
> meta-python
>
> meta-filesystems
>
> meta-networking
>
> meta-initramfs
>
> meta-oe              =3D "zeus:2b5dd1eb81cd08bc065bc76125f2856e9383e98b"
>
> meta                 =3D "master:a32ddd2b2a51b26c011fa50e441df3930465150=
3"
>
> meta-intel           =3D "zeus:d9942d4c3a710406b051852de7232db03c297f4e"
>
> meta-intel
>
> workspace            =3D "v2019.02:f635a364c55f1fb12519aff54924a0a5b9470=
91e"
>
>
>
> Initialising tasks: 100% |##############################################=
########| Time: 0:00:04
>
> Checking sstate mirror object availability: 100% |######################=
########| Time: 0:00:00
>
> Sstate summary: Wanted 503 Found 298 Missed 205 Current 1936 (59% match,=
 91% complete)
>
> NOTE: Executing Tasks
>
> NOTE: Setscene tasks completed
>
> WARNING: rpcsvc-proto-native-1.4+gitAUTOINC+9bc3b5b785-r0 do_fetch: Fail=
ed to fetch URL git://github.com/thkukuk/rpcsvc-proto, attempting MIRRORS i=
f available
>
> WARNING: nativesdk-libnss-nis-3.1+gitAUTOINC+062f31999b-r0 do_fetch: Fai=
led to fetch URL git://github.com/thkukuk/libnss_nis, attempting MIRRORS if=
 available
>
> NOTE: Excluding local workspace layer /disk0/scratch/smonsees/yocto/work=
space_3/meta-bae/meta-limws/builds/sbcb-default/workspace from extensible S=
DK
>
> ERROR: sbcb-defaultfs-full-1.0-r0 do_populate_sdk_ext: Failed to generat=
e filtered task list for extensible SDK:
>
> /bin/bash: line 0: .: .: is a directory
>
> ERROR: bitbake failed:
>
> /bin/sh: bitbake: command not found
>
> ERROR: sbcb-defaultfs-full-1.0-r0 do_populate_sdk_ext: Error executing a=
 python function in exec_python_func() autogenerated:
>
>
>
> The stack trace of python calls that resulted in this exception/failure =
was:
>
> File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
>
>      0001:
>
> *** 0002:copy_buildsystem(d)
>
>      0003:
>
> File: '/disk0/scratch/smonsees/yocto/workspace_3/poky/meta/classes/popul=
ate_sdk_ext.bbclass', lineno: 444, function: copy_buildsystem
>
>      0440:    sdk_ext_type =3D d.getVar('SDK_EXT_TYPE')
>
>      0441:    if (sdk_ext_type !=3D 'minimal' or sdk_include_toolchain o=
r derivative) and not sdk_include_nativesdk:
>
>      0442:        # Create the filtered task list used to generate the s=
state cache shipped with the SDK
>
>      0443:        tasklistfn =3D d.getVar('WORKDIR') + '/tasklist.txt'
>
> *** 0444:        create_filtered_tasklist(d, baseoutpath, tasklistfn, co=
nf_initpath)
>
>      0445:    else:
>
>      0446:        tasklistfn =3D None
>
>      0447:
>
>      0448:    if os.path.exists(builddir + '/cache/bb_unihashes.dat'):
>
> File: '/disk0/scratch/smonsees/yocto/workspace_3/poky/meta/classes/popul=
ate_sdk_ext.bbclass', lineno: 180, function: create_filtered_tasklist
>
>      0176:        # Clean out residue of running bitbake, which check_ss=
tate_task_list()
>
>      0177:        # will effectively do
>
>      0178:        clean_esdk_builddir(d, sdkbasepath)
>
>      0179:    finally:
>
> *** 0180:        os.replace(sdkbasepath + '/conf/local.conf.bak', sdkbas=
epath + '/conf/local.conf')
>
>      0181:
>
>      0182:python copy_buildsystem () {
>
>      0183:    import re
>
>      0184:    import shutil
>
> Exception: FileNotFoundError: [Errno 2] No such file or directory: '/dis=
k0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/sbcb-defau=
lt/tmp/work/sbcb_default-poky-linux/sbcb-defaultfs-full/1.0-r0/sdk-ext/imag=
e//opt/limws/3.0.4/conf/local.conf.bak' -> '/disk0/scratch/smonsees/yocto/w=
orkspace_3/meta-bae/meta-limws/builds/sbcb-default/tmp/work/sbcb_default-po=
ky-linux/sbcb-defaultfs-full/1.0-r0/sdk-ext/image//opt/limws/3.0.4/conf/loc=
al.conf'
>
>
>
> ERROR: Logfile of failure stored in: /disk0/scratch/smonsees/yocto/works=
pace_3/meta-bae/meta-limws/builds/sbcb-default/tmp/work/sbcb_default-poky-l=
inux/sbcb-defaultfs-full/1.0-r0/temp/log.do_populate_sdk_ext.14130
>
> ERROR: Task (/disk0/scratch/smonsees/yocto/workspace_3/poky/../meta-bae/=
meta-limws/meta-intel/recipes-core/images/sbcb-defaultfs-full.bb:do_populat=
e_sdk_ext) failed with exit code '1'
>
> NOTE: Tasks Summary: Attempted 6770 tasks of which 6274 didn't need to b=
e rerun and 1 failed.
>
>
>
> Summary: 1 task failed:
>
>   /disk0/scratch/smonsees/yocto/workspace_3/poky/../meta-bae/meta-limws/=
meta-intel/recipes-core/images/sbcb-defaultfs-full.bb:do_populate_sdk_ext
>
> Summary: There were 2 WARNING messages shown.
>
> Summary: There were 2 ERROR messages shown, returning a non-zero exit co=
de.
>
> 17:49 smonsees@yix490016 /disk0/scratch/smonsees/yocto/workspace_3/meta-=
bae/meta-limws/builds/sbcb-default>
>
>
>=20
>

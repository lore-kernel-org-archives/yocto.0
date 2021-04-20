Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
 by mx.groups.io with SMTP id smtpd.web10.2852.1618951887649796375
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Apr 2021 13:51:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=gblZpKXR;
 spf=pass (domain: gmail.com, ip: 209.85.160.169, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f169.google.com with SMTP id u8so29680829qtq.12
        for <yocto@lists.yoctoproject.org>; Tue, 20 Apr 2021 13:51:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=IgGvRkse8rSwvEnv6+RWlYAxUIqMIM0KyR+uqkRIrws=;
        b=gblZpKXRxMHkGRDcDri5xaEM3SSOlcfAR0OUdIDCAQ+lj7DADJysbZR+/A7HwkD3Kf
         rVl3zZY9VkCePfAQ4M8psnksMZutQwGFCmTcO1W30oV0L6+uxnLwma06AXRdPrNf5Yg9
         m50ERSVlL1PpsGsYylDgw/8pjYTv3LEY+tpNpiuBR1CNwV3FGTQmfYKjNSO0ePVE7PD6
         QMAMO/BpIDb8SKN2kCIhqXGQzDSrO/pxZFzLTZZZHVXQjeW+vyjX32FD/dAmvGHWTgMk
         QPflzhWfFREtafKcRXFx+JmnpGGjOX3oIjRNGLx/hGKZ6nOxY2leZpJLxn1kJFtzjI4z
         Uk7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=IgGvRkse8rSwvEnv6+RWlYAxUIqMIM0KyR+uqkRIrws=;
        b=MegjjFMvpF25iDwmg0EuxOmPThb1Cg2a/qsAP9IcDcpdVcD/DGxur/Gj/e+VYYN5Qb
         ua2SqQvanLx7cQkeIpn4urRfKuw/nbgyRO9tqXYqPE+z3Z+QFUhORi/X2jcesFGgLhmL
         xoGtl0czCKP2E/zuvJcS1Z0JpqvTlGalidFfqlXlnGf85ze4n2MswPmh5meThXCg6spZ
         aG8jG4lL0RyB2EW7JMbB8Z3sw0bcLwYaNxq/02Iro2FgTC3gCF+Kwi4q7ynfdoUlW3vn
         kyFvR/gL95bd4tP+xtv+bjDUSo0OcON1PjroPiG7PPCHRbnTRtnpgxR1VGrg065DyOI6
         DkmA==
X-Gm-Message-State: AOAM531ck4tkIO+L1oqsQqz9B8xfeXutQkMGXJwmy1zhWZqTt8FgrqVP
	iskgJ5ojWqyJF7H+IeHOEWto4IFSMnMgkiTEjNk=
X-Google-Smtp-Source: ABdhPJykS6j/RhdLkuyXLJ6zYoGMCaqXMb0ouCh2X2Sbp7RxOcLdZ0uUMMQg4gAvRVltZWFVAvngzkbGpoXITb0gGF0=
X-Received: by 2002:ac8:534a:: with SMTP id d10mr3540888qto.299.1618951886730;
 Tue, 20 Apr 2021 13:51:26 -0700 (PDT)
MIME-Version: 1.0
References: <607f28f3.1c69fb81.b81d.c1c3SMTPIN_ADDED_MISSING@mx.google.com>
In-Reply-To: <607f28f3.1c69fb81.b81d.c1c3SMTPIN_ADDED_MISSING@mx.google.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 20 Apr 2021 13:51:00 -0700
Message-ID: <CAMKF1sqYSpxVJ_yZnjhBBGviU+LPnShoj=oEjZp4UAnZ=KNZoQ@mail.gmail.com>
Subject: Re: [yocto] #yocto llvm support and meta-clang
To: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 20, 2021 at 12:18 PM Monsees, Steven C (US)
<steven.monsees@baesystems.com> wrote:
>
>
> There appears to be an issue  with build zeus based meta-clang under zeu=
s platform...
>
> I followed steps off meta-clang page, and from the work I did with meta-=
clang under "Rocko" about a year ago, a lot has changed under the hood...
>
> Working under zeus 3.0.4... EXT SDK appears fully functional, I require =
CLANG/LLVM for future development...
>

I think for future development you should look into dunfell or newer
since those are supported releases.

> Never seen this error before, did I miss a patch or possibly a step ?

clang toolchain has evolved rapidly in past few years and so you might
find major changes from release to release and also SDK builds are
relatively
new, I think dunfell and newer is where its properly working without
much issues.

>
> Clean build area...
>
> (1) Add meta-clang to bblayers.conf
>
> (2) Added EXT SDK Settings for meta-clang :
>
> SDKIMAGE_FEATURES_append =3D " staticdev-pkgs"
>
> SDK_EXTRA_TOOLS =3D "  \
>     nativesdk-cmake \
>     nativesdk-clang \    <---Only appears to download/build llvm when pr=
esent
>     "
>
> TOOLCHAIN_HOST_TASK_append =3D "${SDK_EXTRA_TOOLS}"
>
> The build is much slower due to "native-clang-9.0.1-r0 do_compile"...
>
>
> EXT SDK build error seen:
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=
=3D
>
> 10:12 smonsees@yix490038 /disk0/scratch/smonsees/yocto/workspace_3/build=
s2/sbcb-default> bitbake sbcb-defaultfs-full -c populate_sdk_ext
> Parsing recipes: 100% |#################################################=
################################| Time: 0:01:25
> Parsing of 2463 .bb files complete (0 cached, 2463 parsed). 3671 targets=
, 91 skipped, 0 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
>
> Build Configuration:
> BB_VERSION           =3D "1.44.0"
> BUILD_SYS            =3D "x86_64-linux"
> NATIVELSBSTRING      =3D "rhel-7.9"
> TARGET_SYS           =3D "x86_64-poky-linux"
> MACHINE              =3D "sbcb-default"
> DISTRO               =3D "limws"
> DISTRO_VERSION       =3D "3.0.4"
> TUNE_FEATURES        =3D "m64 corei7"
> TARGET_FPU           =3D ""
> meta
> meta-poky            =3D "my_yocto_3.0.4:f2eb22a8783f1eecf99bd4042695bab=
920eed00e"
> meta-perl
> meta-python
> meta-filesystems
> meta-networking
> meta-initramfs
> meta-oe              =3D "zeus:2b5dd1eb81cd08bc065bc76125f2856e9383e98b"
> meta-clang           =3D "zeus:f5355ca9b86fb5de5930132ffd95a9b352d694f9"
> meta                 =3D "master:a32ddd2b2a51b26c011fa50e441df3930465150=
3"
> meta-intel           =3D "zeus:d9942d4c3a710406b051852de7232db03c297f4e"
> meta-intel           =3D "v2019.02:f635a364c55f1fb12519aff54924a0a5b9470=
91e"
>
> NOTE: Fetching uninative binary shim from file:///ede/tms/yocto/zeus/dow=
nloads/intel/x86_64-nativesdk-libc.tar.xz;sha256sum=3Da09922172c3a439105e0a=
e6b943daad2d83505b17da0aba97961ff433b8c21ab
> Initialising tasks: 100% |##############################################=
################################| Time: 0:00:12
> Checking sstate mirror object availability: 100% |######################=
################################| Time: 0:00:00
> Sstate summary: Wanted 2490 Found 2157 Missed 333 Current 0 (86% match, =
0% complete)
> NOTE: Executing Tasks
> NOTE: Setscene tasks completed
> ERROR: sbcb-defaultfs-full-1.0-r0 do_sdk_depends: Error executing a pyth=
on function in exec_python_func() autogenerated:
>
> The stack trace of python calls that resulted in this exception/failure =
was:
> File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
>      0001:
>  *** 0002:extend_recipe_sysroot(d)
>      0003:
> File: '/disk0/scratch/smonsees/yocto/workspace_3/poky/meta/classes/stagi=
ng.bbclass', lineno: 551, function: extend_recipe_sysroot
>      0547:                    dest =3D newmanifest[l]
>      0548:                    if l.endswith("/"):
>      0549:                        staging_copydir(l, targetdir, dest, se=
endirs)
>      0550:                        continue
>  *** 0551:                    staging_copyfile(l, targetdir, dest, posti=
nsts, seendirs)
>      0552:
>      0553:    bb.note("Installed into sysroot: %s" % str(msg_adding))
>      0554:    bb.note("Skipping as already exists in sysroot: %s" % str(=
msg_exists))
>      0555:
> File: '/disk0/scratch/smonsees/yocto/workspace_3/poky/meta/classes/stagi=
ng.bbclass', lineno: 144, function: staging_copyfile
>      0140:    if os.path.islink(c):
>      0141:        linkto =3D os.readlink(c)
>      0142:        if os.path.lexists(dest):
>      0143:            if not os.path.islink(dest):
>  *** 0144:                raise OSError(errno.EEXIST, "Link %s already e=
xists as a file" % dest, dest)
>      0145:            if os.readlink(dest) =3D=3D linkto:
>      0146:                return dest
>      0147:            raise OSError(errno.EEXIST, "Link %s already exist=
s to a different location? (%s vs %s)" % (dest, os.readlink(dest), linkto),=
 dest)
>      0148:        os.symlink(linkto, dest)
> Exception: FileExistsError: [Errno 17] Link /disk0/scratch/smonsees/yoct=
o/workspace_3/builds2/sbcb-default/tmp/work/sbcb_default-poky-linux/sbcb-de=
faultfs-full/1.0-r0/recipe-sysroot/lib already exists as a file: '/disk0/sc=
ratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work/sbcb_default=
-poky-linux/sbcb-defaultfs-full/1.0-r0/recipe-sysroot/lib'
>
> ERROR: Logfile of failure stored in: /disk0/scratch/smonsees/yocto/works=
pace_3/builds2/sbcb-default/tmp/work/sbcb_default-poky-linux/sbcb-defaultfs=
-full/1.0-r0/temp/log.do_sdk_depends.24732
> ERROR: Task (/disk0/scratch/smonsees/yocto/workspace_3/poky/../meta-bae/=
meta-limws/meta-intel/recipes-core/images/sbcb-defaultfs-full.bb:do_sdk_dep=
ends) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 6892 tasks of which 5539 didn't need to b=
e rerun and 1 failed.
>
> Summary: 1 task failed:
>   /disk0/scratch/smonsees/yocto/workspace_3/poky/../meta-bae/meta-limws/=
meta-intel/recipes-core/images/sbcb-defaultfs-full.bb:do_sdk_depends
> Summary: There was 1 ERROR message shown, returning a non-zero exit code=
.
> 13:01 smonsees@yix490038 /disk0/scratch/smonsees/yocto/workspace_3/build=
s2/sbcb-default>
>
>
>
> Note: Modifying SDK_EXTRA_TOOLS by removing "nativesdk-clang", i.e.:
>
> SDK_EXTRA_TOOLS =3D "  \
>     nativesdk-cmake \
>     "
>
> If I remove, the build is much faster, and it builds without the error, =
also appears not to require/include
> "llvm" component in build.
> I do not believe the full package was actually built/enabled, but no err=
ors and image is functional.
>
>
> 13:09 smonsees@yix490038 /disk0/scratch/smonsees/yocto/workspace_3/build=
s2/sbcb-default> bitbake sbcb-defaultfs-full -c populate_sdk_ext
> Parsing recipes: 100% |#################################################=
################################| Time: 0:01:26
> Parsing of 2463 .bb files complete (0 cached, 2463 parsed). 3671 targets=
, 91 skipped, 0 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
>
> Build Configuration:
> BB_VERSION           =3D "1.44.0"
> BUILD_SYS            =3D "x86_64-linux"
> NATIVELSBSTRING      =3D "rhel-7.9"
> TARGET_SYS           =3D "x86_64-poky-linux"
> MACHINE              =3D "sbcb-default"
> DISTRO               =3D "limws"
> DISTRO_VERSION       =3D "3.0.4"
> TUNE_FEATURES        =3D "m64 corei7"
> TARGET_FPU           =3D ""
> meta
> meta-poky            =3D "my_yocto_3.0.4:f2eb22a8783f1eecf99bd4042695bab=
920eed00e"
> meta-perl
> meta-python
> meta-filesystems
> meta-networking
> meta-initramfs
> meta-oe              =3D "zeus:2b5dd1eb81cd08bc065bc76125f2856e9383e98b"
> meta-clang           =3D "zeus:f5355ca9b86fb5de5930132ffd95a9b352d694f9"
> meta                 =3D "master:a32ddd2b2a51b26c011fa50e441df3930465150=
3"
> meta-intel           =3D "zeus:d9942d4c3a710406b051852de7232db03c297f4e"
> meta-intel           =3D "v2019.02:f635a364c55f1fb12519aff54924a0a5b9470=
91e"
>
> NOTE: Fetching uninative binary shim from file:///ede/tms/yocto/zeus/dow=
nloads/intel/x86_64-nativesdk-libc.tar.xz;sha256sum=3Da09922172c3a439105e0a=
e6b943daad2d83505b17da0aba97961ff433b8c21ab
> Initialising tasks: 100% |##############################################=
################################| Time: 0:00:12
> Checking sstate mirror object availability: 100% |######################=
################################| Time: 0:00:00
> Sstate summary: Wanted 2436 Found 2407 Missed 29 Current 0 (98% match, 0=
% complete)
> NOTE: Executing Tasks
> NOTE: Setscene tasks completed
> NOTE: Tasks Summary: Attempted 6767 tasks of which 6223 didn't need to b=
e rerun and all succeeded.
> 13:31 smonsees@yix490038 /disk0/scratch/smonsees/yocto/workspace_3/build=
s2/sbcb-default>
>
>
> -----Original Message-----
> From: Khem Raj <raj.khem@gmail.com>
> Sent: Tuesday, April 20, 2021 12:02 PM
> To: Monsees, Steven C (US) <steven.monsees@baesystems.com>; Anton Antono=
v <anton.antonov@arm.com>; yocto@lists.yoctoproject.org
> Subject: Re: [yocto] #yocto llvm support
>
> External Email Alert
>
> This email has been sent from an account outside of the BAE Systems netw=
ork.
>
> Please treat the email with caution, especially if you are requested to =
click on a link, decrypt/open an attachment, or enable macros.  For further=
 information on how to spot phishing, access "Cybersecurity OneSpace Page" =
and report phishing by clicking the button "Report Phishing" on the Outlook=
 toolbar.
>
>
>
> On 4/20/21 7:00 AM, Monsees, Steven C (US) via lists.yoctoproject.org wr=
ote:
> > I noticed similar behavior.
> >
> > I am running zeus 3.0.4, "devtool sdk-install llvm" will get llvm
> > 8.0.1.
> >
> > When I build meta-clang, and I set TOOLCHAIN?=3D"clang" in local.conf =
it
> > appears to grab llvm-project-source-9.0.1-9.0.1.
> >
>
> this is intentional, when you use meta-clang, then llvm is preferred fro=
m LLVM since them we have consistent version of llvm for clang and others.
>
> > *From:*yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> *On
> > Behalf Of *Anton Antonov
> > *Sent:* Tuesday, April 20, 2021 9:51 AM
> > *To:* yocto@lists.yoctoproject.org
> > *Subject:* Re: [yocto] #yocto llvm support
> >
> > *_External Email Alert_*
> >
> > *This email has been sent from an account outside of the BAE Systems
> > network.*
> >
> > Please treat the email with caution, especially if you are requested
> > to click on a link, decrypt/open an attachment, or enable macros.  For
> > further information on how to spot phishing, access "Cybersecurity
> > OneSpace Page" and report phishing by clicking the button "Report
> > Phishing" on the Outlook toolbar.
> >
> >
> > Hi Steven,
> >
> >    I used meta-clang in my recipes and I noticed that:
> > 1. The current release of poky uses LLVM v11.1.0 by default
> > (poky/meta/recipes-devtools/llvm/llvm_git.bb)
> > 2. Meta-clang requires LLVM v12.0.0 (meta-clang/conf/layer.conf
> > defines LLVMVERSION =3D "12.0.0")
> >
> > As a result just including meta-clang into bblayers.conf will require
> > bitbake to build a new version of LLVM and rebuild everything which
> > uses it
> >
> > Anton
> >
> >
> >
> >=20
> >
>

Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.42180.1589810242616847289
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 May 2020 06:57:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=HF/v1xdv;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: gizero@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09FF3E01AF3; Mon, 18 May 2020 06:57:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,URIBL_RED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (gizero[at]gmail.com)
	*  0.0 URIBL_RED Contains an URL listed in the URIBL redlist
	*      [URIs: yoctoproject.org]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.179 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com [209.85.166.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91821E01ADC
	for <yocto@yoctoproject.org>; Mon, 18 May 2020 06:57:19 -0700 (PDT)
Received: by mail-il1-f179.google.com with SMTP id b15so9858686ilq.12
        for <yocto@yoctoproject.org>; Mon, 18 May 2020 06:57:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=CtjZdu+XeATmuh/nPEAGhhJPP3W5iG3j3d5bVb2hjPM=;
        b=HF/v1xdv/jpfzI5yUy5QZkj/5BJul9zl5Gd5aOaZCUUpQYNuZuv2sIKzcHk0WwYHwB
         Om9m+nuMBI3Y+dYKOMJ1vM9YbiAsFKUl/Pns7eZONomHiIP5AkEwgHpy3B/Nz1YrmZ2q
         su8K2rGxOb/378p+xIk9Gyzf59e9WVF1AkfKy38RLNIWKXu0Ds/aLlPTfO36+8AIU872
         NtvIyM0xng5p+5iJgOjRBEliD2A+JSiwSt6iLTlal9gCRLuwkYiUIICE+D+yX/agS8ON
         F38706NkY5oDvZzzbzSU+fdMAP2sb9lqPqebY5aeQbBAA6naGfjIRwqNehe8fMn1k0Br
         4bxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=CtjZdu+XeATmuh/nPEAGhhJPP3W5iG3j3d5bVb2hjPM=;
        b=JV9DKNhSHJAibzy1IgSKVz4u26DvLpIAysgE9ga6louLMo6dRKF+PsLh/wpnPFv30s
         Rvufg+d/yhCvv9zfbYs6fBl1pOa6hOud/pG8sZNcYI0V6eAaCg/hFVT1jgZTZcahnh0N
         NKkLLmJtcQ/cw1jjYhHFeZxBgvDgBQY8hKUfXUYNy6FWmnEdcIUpkdG/jP8f2OaJkrpc
         vnvwbGJkO9543bSrCwofAgDoI8m5ymMuJ00NMpAJeUQVjxHbpZm/KOUGwdalqJjrzwQ2
         nNF1TJKlYu8w3ij4SNtWzB6diAbvVp83Rw6oADlrpyfcQgjOR7cDS2Kt4zzs3k8ILHVM
         gHTw==
X-Gm-Message-State: AOAM5307qF9kIde3tb1OHeFQVrz1RBnfflinzXG6JSCWoNbRNGwAhUmr
	sNpzAk3G9rJwtK5kzVmo3aSd+beTF6pGgTto/DA=
X-Google-Smtp-Source: ABdhPJxd2GuwDYWuxoIk7knkMrsI/lc8xkfpyhB+uAiBWjD/wRCLODpiLqLc5N4vrWZfQBbrQP6crrdPkfFevYU8/lw=
X-Received: by 2002:a92:8d49:: with SMTP id s70mr16236487ild.54.1589810239015;
 Mon, 18 May 2020 06:57:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAMmNTemi9+UoZg0vWvvFZu-ggnYHkDy5VARfHhm6tHjAWr7BGQ@mail.gmail.com>
 <CAMmNTem63EK=Jab7ZYSug5VG+stsFN4-457UTde9PPFoRFNOuw@mail.gmail.com>
In-Reply-To: <CAMmNTem63EK=Jab7ZYSug5VG+stsFN4-457UTde9PPFoRFNOuw@mail.gmail.com>
From: "Andrea Galbusera" <gizero@gmail.com>
Date: Mon, 18 May 2020 15:57:07 +0200
Message-ID: <CAC+thW16nHpv48PKw3BMUtq19i7VHxPUq3iTFu_6wV26GSFLsQ@mail.gmail.com>
Subject: Re: [yocto] Extended SDK installation fails during git fetch of kernel source hosted on private repo
To: Gabriele Favalessa <gabriele@analyticsfire.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi!

I had a similar issue in my backlog for ages... Finally hit it again
while updating some SDKs and found this thread from more than two
years ago. In my case, fetching during the SDK install script run was
triggered by at least one recipe which was setting SRCREV with
AUTOREV. Although using AUTOREV in generating SDKs is probably
debatable, I found your comments here a good starting point for
further investigation. Looking at the git history since then, it
reveals a recent commit [1] which is reworking (possibly with
different motivations) the way SDK install script is "cleaning" some
env variables at invocation.

I tested backporting this commit to an old pyro based project where I
was seeing SDK install failures with AUTOREV recipes and it solved the
original error.

I could find no issue in Bugzilla for this specific face of the
problem, even though the above commit descries itself as a rework of
the fix for [1]. I'm reporting to the list for the records, in case
someone else would happen to hit issues with using the ssh agent while
installing their SDKs.

Regards,

[1] https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D6d78b84029=
d0717354bf39e5c355fba1c14d8347
[2] https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8698

On Thu, Sep 6, 2018 at 12:18 PM Gabriele Favalessa
<gabriele@analyticsfire.com> wrote:
>
> An update (and a workaround.)
>
> What's happening is that during the execution of the install script for t=
he extended SDK, the env of the original shell is ignored. If your SDK refe=
rs to private git repos (on github for example) and you normally authentica=
te to github using ssh and ssh-agent, the SSH_AUTH_SOCK env variables neede=
d won't be set by the time git is invoked. The workaround is configuring th=
e authentication to github in .ssh/config and avoid the ssh-agent. (Yes, I =
checked and SSH_AUTH_SOCK is exported by the shell :)
>
> But the underlying problem is that env of the shell is ignored during ins=
tall, so potentially other useful variables could be ignored. Is that inten=
tional? Is there a way to prevent it?
>
> Gabriele
>
> On Wed, Aug 29, 2018 at 3:55 PM Gabriele Favalessa <gabriele@analyticsfir=
e.com> wrote:
>>
>> Hi,
>>
>> I'm trying to install on ubuntu 17.04 an Extensible SDK that I have buil=
t, and it stops with an error:
>>
>> -------------------------------------------------------
>> sdk@sdk:~$ ./acme-linux-glibc-x86_64-acme-image-datalogger-cortexa7hf-ne=
on-toolchain-ext-2.5.1.sh -D
>> =E2=80=A6
>> + sh -c . buildtools/environment-setup* > /home/sdk/acme-linux_sdk/prepa=
ring_build_system.log && cd /home/sdk/acme-linux_sdk/layers/poky && set /ho=
me/sdk/acme-linux_sdk && . /home/sdk/acme-linux_sdk/layers/poky/oe-init-bui=
ld-env /home/sdk/acme-linux_sdk >> /home/sdk/acme-linux_sdk/preparing_build=
_system.log && python /home/sdk/acme-linux_sdk/ext-sdk-prepare.py /home/sdk=
/acme-linux_sdk/preparing_build_system.log 'acme-image-datalogger meta-exts=
dk-toolchain:do_populate_sysroot'
>> WARNING: /home/sdk/acme-linux_sdk/layers/poky/meta-myboard/recipes-kerne=
l/linux/linux-imx_4.9.11.bb: Exception during build_dependencies for AUTORE=
V
>> WARNING: /home/sdk/acme-linux_sdk/layers/poky/meta-myboard/recipes-kerne=
l/linux/linux-imx_4.9.11.bb: Error during finalise of /home/sdk/acme-linux_=
sdk/layers/poky/meta-myboard/recipes-kernel/linux/linux-imx_4.9.11.bb
>> ERROR: ExpansionError during parsing /home/sdk/acme-linux_sdk/layers/pok=
y/meta-myboard/recipes-kernel/linux/linux-imx_4.9.11.bb
>> Traceback (most recent call last):
>> bb.data_smart.ExpansionError: Failure expanding variable SRCPV, expressi=
on was ${@bb.fetch2.get_srcrev(d)} which triggered exception FetchError: Fe=
tcher failure: Fetch command export PSEUDO_DISABLED=3D1; export GIT_SSL_CAI=
NFO=3D"/home/sdk/acme-linux_sdk/buildtools/sysroots/x86_64-acmesdk-linux/et=
c/ssl/certs/ca-certificates.crt"; export PATH=3D"/home/sdk/acme-linux_sdk/l=
ayers/poky/scripts:/home/sdk/acme-linux_sdk/tmp/work/myboard-acme-linux-gnu=
eabi/linux-imx/4.9.11-r0/recipe-sysroot-native/usr/bin/arm-acme-linux-gnuea=
bi:/home/sdk/acme-linux_sdk/tmp/work/myboard-acme-linux-gnueabi/linux-imx/4=
.9.11-r0/recipe-sysroot/usr/bin/crossscripts:/home/sdk/acme-linux_sdk/tmp/w=
ork/myboard-acme-linux-gnueabi/linux-imx/4.9.11-r0/recipe-sysroot-native/us=
r/sbin:/home/sdk/acme-linux_sdk/tmp/work/myboard-acme-linux-gnueabi/linux-i=
mx/4.9.11-r0/recipe-sysroot-native/usr/bin:/home/sdk/acme-linux_sdk/tmp/wor=
k/myboard-acme-linux-gnueabi/linux-imx/4.9.11-r0/recipe-sysroot-native/sbin=
:/home/sdk/acme-linux_sdk/tmp/work/myboard-acme-linux-gnueabi/linux-imx/4.9=
.11-r0/recipe-sysroot-native/bin:/home/sdk/acme-linux_sdk/layers/poky/bitba=
ke/bin:/home/sdk/acme-linux_sdk/tmp/hosttools"; export HOME=3D"/home/sdk"; =
git -c core.fsyncobjectfiles=3D0 ls-remote ssh://git@github.com/Acme/linux-=
imx.git  failed with exit code 128, output:
>> Permission denied (publickey).
>> fatal: Could not read from remote repository.
>>
>> Please make sure you have the correct access rights
>> and the repository exists.
>>
>>
>> ERROR: SDK preparation failed: error log written to /home/sdk/acme-linux=
_sdk/preparing_build_system.log
>> -------------------------------------------------------
>>
>> I tested the failing git command `git -c ls-remote ssh://git@github.com/=
Acme/linux-imx.git` directly from the command line and it succeeds without =
errors. I do have the ssh key in ssh-agent, so that's not surprise.
>>
>> It looks like during the SDK installation the ssh key is needed but for =
some reason the ssh-agent is not reachable (maybe the SSH_* env variables a=
re not propagated by the script?)
>>
>> Is it unavoidable for the SDK to fetch from git during the installation?=
 If it is unavoidable, how can I make the script fetch from a private githu=
b repo, given that the ssh-agent seems to be ignored?
>>
>> Just out of curiosity, I copy&pasted the failing command in the shell, a=
nd this time it ran without errors (again confirming that the ssh key is pr=
esent.)
>>
>> -------------------------------------------------------
>> sdk@sdk:~$ sh -c . buildtools/environment-setup* > /home/sdk/acme-linux_=
sdk/preparing_build_system.log && cd /home/sdk/
>> acme-linux_sdk/layers/poky && set /home/sdk/acme-linux_sdk && . /home/sd=
k/acme-linux_sdk/layers/poky/oe-init-build-env
>> /home/sdk/acme-linux_sdk >> /home/sdk/acme-linux_sdk/preparing_build_sys=
tem.log && python /home/sdk/acme-linux_sdk/ext-
>> sdk-prepare.py /home/sdk/acme-linux_sdk/preparing_build_system.log 'acme=
-image-datalogger meta-extsdk-toolchain:do_popu
>> late_sysroot'
>> Loading cache: 100% |###################################################=
################################| Time: 0:00:00
>> Parsing recipes: 100% |#################################################=
################################| Time: 0:01:32
>> Initialising tasks: 100% |##############################################=
################################| Time: 0:00:02
>> Checking sstate mirror object availability: 100% |######################=
################################| Time: 0:00:00
>> Loading cache: 100% |###################################################=
################################| Time: 0:00:00
>> Parsing recipes: 100% |#################################################=
################################| Time: 0:00:07
>> Initialising tasks: 100% |##############################################=
################################| Time: 0:00:00
>> -------------------------------------------------------
>>
>> However the resulting SDK installation seems to be broken anyway (probab=
ly there are other steps after the one I re-run manually that where not exe=
cuted because the toplevel script stopped with an error):
>>
>> -------------------------------------------------------
>> sdk@sdk:~/acme-linux_sdk$ source environment-setup-cortexa7hf-neon-acme-=
linux-gnueabi
>> SDK environment now set up; additionally you may now run devtool to perf=
orm development tasks.
>> Run devtool --help for further details.
>> ERROR: this SDK was not fully installed and needs reinstalling
>> -------------------------------------------------------
>>
>> Thanks
>>
>> Gabriele
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Return-Path: <ajlennon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A770E02B4D; Wed, 13 Jun 2018 02:50:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ajlennon[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f53.google.com (mail-wm0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E637E01783
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2018 02:50:54 -0700 (PDT)
Received: by mail-wm0-f53.google.com with SMTP id e16-v6so3627871wmd.0
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2018 02:50:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=JbQzAe5fGp2bwXxCHAJ5+8ZWK3LPulOsVtZr9ABBThM=;
	b=s4IiOWMtXIAjrJKXdLCHZczv1sTchyw4TLYr1dI3hEQxPycWxSUuvFdYe69TYb2PEF
	9qqxLHCOfpjWdRI9ZXVWabbc9Ygn+igSuHx61AbTsYD4NWE49rYMga4Y6cZ58qD0/Nhs
	pDfcWZJQnXrLkbJ0Zy4TsUoy0Xs7Lf6yZRWjuUAwkH5z59OB+KUDTlXggaCOvN5n0Hiy
	RNgW3QrFJdGXqYx9r7I+0Em1IiCKV1N5PmY87MBJT390mqvdJyVeUgFKtOcMrdpZ9kUX
	Smb4CtbSyNGnymCPiw6Q/UtCDltNkPYJrxyruV68qw180FGJ0cyybcT4Ye4N1eIvqM2a
	QHjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=JbQzAe5fGp2bwXxCHAJ5+8ZWK3LPulOsVtZr9ABBThM=;
	b=mmHbo9k/K+V4TyVhKKUxecx1r9AS3syuLUa8U4k/tu8Q4bLHomaU60OtLrie740ZmU
	d0HVsuj/V+l7xek1G68dwAgr0eoqgtlKkFaPfA3xXgIZqXXPlPHjbaiwz2n6mhnDY+OA
	YRCNQKUtYc+CcudzlWF2p47X1hAIX2+sguCaSmeb7LNLJnpL8sk47Vo5o2J4sSinBMpf
	YTLFKr+8qFocwkbljbPyMRdkY8/A9eEaLfOIzKdNif+Bw4AcTwCeBX3h9iX4228SrF7s
	GCgxZd0pP3FnO7Hw3OOIzbzRkpu7o/ytulms+oGeAc0uT3UsVsFjW/PuIFFo9WJzbi0K
	6EDQ==
X-Gm-Message-State: APt69E1gzQfZQunLoMIkANyi1+wAQWpSZNjqLAughu3AiE9ZwjQYvrdK
	gsxJCCMqqxmCWPjf85wepoSgClRQ
X-Google-Smtp-Source: ADUXVKImxZVAo8ZaRERZaHPewb7eCfU8Sdg9oDa1lZ7tx9yhWwPwag3UtJH6QPiFKNOX/nZuuRCm1w==
X-Received: by 2002:a1c:b7d4:: with SMTP id
	h203-v6mr2895037wmf.161.1528883453339; 
	Wed, 13 Jun 2018 02:50:53 -0700 (PDT)
Received: from [192.168.0.133]
	(cpc111193-live30-2-0-cust656.17-2.cable.virginm.net.
	[92.232.58.145]) by smtp.gmail.com with ESMTPSA id
	i76-v6sm3528611wmd.20.2018.06.13.02.50.51
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 13 Jun 2018 02:50:51 -0700 (PDT)
To: Craig McQueen <craig.mcqueen@innerrange.com>
References: <fbde2f2fc27041fbb13d6f9c9eb3f881@innerrange.com>
	<9178069e17354c5daa14353f7e248009@innerrange.com>
	<48aca69585934356ae110e8647a8453f@innerrange.com>
	<CAMKF1spZJZ0WCaxHKa4e5O4EJtWH=Z1bMcnjEMSSGzUKzjz5qA@mail.gmail.com>
From: Alex Lennon <ajlennon@gmail.com>
Message-ID: <f1091f7c-f86e-a84d-8a5a-7ed3192a1598@gmail.com>
Date: Wed, 13 Jun 2018 10:50:49 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <CAMKF1spZJZ0WCaxHKa4e5O4EJtWH=Z1bMcnjEMSSGzUKzjz5qA@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: mono-native is trying to install files into a shared area...
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
X-List-Received-Date: Wed, 13 Jun 2018 09:50:56 -0000
Content-Type: multipart/alternative;
	boundary="------------DF04EC3372243599E31FB21F"
Content-Language: en-GB

--------------DF04EC3372243599E31FB21F
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit



On 12/06/2018 05:43, Khem Raj wrote:
>
>
> On Mon, Jun 11, 2018 at 8:36 PM Craig McQueen 
> <craig.mcqueen@innerrange.com <mailto:craig.mcqueen@innerrange.com>> 
> wrote:
>
>     I wrote:
>     >
>     > I wrote:
>     > >
>     > > Lately, I'm trying to upgrade to a later version of mono, 5.4.1.6.
>     > > When I try to do a build of my Yocto image, bitbake gets to
>     the end of
>     > > building mono- native, and then gets an error:
>     > >
>     > >
>     > > ERROR: mono-native-5.4.1.6-r0 do_populate_sysroot: The recipe
>     mono-
>     > > native is trying to install files into a shared area when
>     those files already
>     > exist.
>     > > Those files and their manifest location are:
>     > > /home/craigm/yocto/poky/build/tmp/sysroots/x86_64-
>     > > linux/usr/lib/mono/lldb/mono.py
>     > >  Matched in b''
>     > > /home/craigm/yocto/poky/build/tmp/sysroots/x86_64-
>     > > linux/usr/lib/mono/4.6.1-api/System.Web.Http.SelfHost.dll
>     > >  Matched in b''
>     > > ...
>     > > /home/craigm/yocto/poky/build/tmp/sysroots/x86_64-
>     > >
>     >
>     linux/usr/lib/mono/xbuild/14.0/bin/MSBuild/Microsoft.Build.CommonTypes.
>     > > xsd
>     > >  Matched in b''
>     > > /home/craigm/yocto/poky/build/tmp/sysroots/x86_64-
>     > >
>     linux/usr/lib/mono/xbuild/14.0/bin/MSBuild/Microsoft.Build.Core.xsd
>     > >  Matched in b''
>     > > /home/craigm/yocto/poky/build/tmp/sysroots/x86_64-
>     > >
>     >
>     linux/usr/lib/mono/xbuild/14.0/Microsoft.Common.targets/ImportAfter/Mi
>     > > c
>     > > rosoft.NuGet.ImportAfter.targets
>     > >  Matched in b''
>     > > Please verify which recipe should provide the above files.
>     > > The build has stopped as continuing in this scenario WILL break
>     > > things, if not now, possibly in the future (we've seen builds fail
>     > > several months later). If the system knew how to recover from this
>     > > automatically it would however there are several different
>     scenarios
>     > > which can result in this and we don't know which one this is.
>     It may
>     > > be you have switched providers of something like
>     virtual/kernel (e.g.
>     > > from linux-yocto to linux-yocto-dev), in that case you need to
>     execute the
>     > clean task for both recipes and it will resolve this error.
>     > > It may be you changed DISTRO_FEATURES from systemd to udev or vice
>     > > versa. Cleaning those recipes should again resolve this error
>     however
>     > > switching DISTRO_FEATURES on an existing build directory is not
>     > > supported, you should really clean out tmp and rebuild
>     (reusing sstate
>     > > should be safe). It could be the overlapping files detected are
>     > > harmless in which case adding them to SSTATE_DUPWHITELIST may
>     be the
>     > > correct solution. It could also be your buil  d is including two
>     > > different conflicting versions of things (e.g. bluez
>     > > 4 and bluez 5 and the correct solution for that would be to
>     resolve
>     > > the conflict. If in doubt, please ask on the mailing list,
>     sharing the
>     > > error and filelist above.
>     > > ERROR: mono-native-5.4.1.6-r0 do_populate_sysroot: If the above
>     > > message is too much, the simpler version is you're advised to
>     wipe out
>     > > tmp and rebuild (reusing sstate is fine). That will likely fix
>     things
>     > > in most (but not all) cases.
>     > > ERROR: mono-native-5.4.1.6-r0 do_populate_sysroot: Function
>     failed:
>     > > sstate_task_postfunc
>     > > ERROR: Logfile of failure stored in:
>     > > /home/craigm/yocto/poky/build/tmp/work/x86_64-linux/mono-
>     > > native/5.4.1.6-r0/temp/log.do_populate_sysroot.108358
>     > > ERROR: Task
>     (/home/craigm/yocto/poky/build/../../meta-mono/recipes-
>     > > mono/mono/mono-native_5.4.1.6.bb:do_populate_sysroot) failed with
>     > exit
>     > > code '1'
>     > > NOTE: Tasks Summary: Attempted 670 tasks of which 662 didn't
>     need to
>     > > be rerun and 1 failed.
>     > >
>     > > Summary: 1 task failed:
>     > >  /home/craigm/yocto/poky/build/../../meta-mono/recipes-
>     > > mono/mono/mono-native_5.4.1.6.bb:do_populate_sysroot
>     > > Summary: There were 3 ERROR messages shown, returning a
>     non-zero exit
>     > > code.
>     > >
>     > >
>     > > I'm building with Yocto poky morty branch (currently commit
>     > > 0e730770a9), meta-mono master (commit dced6635ca). I'm building on
>     > Ubuntu 16.04.4.
>     > >
>     > > I have tried deleting the tmp directory, deleting all mono and
>     > > mono-native from sstate, cleaning mono and meta-mono, etc, to
>     no avail.
>     > >
>     > > It's puzzling why I'm getting these errors, because it says
>     "Matched
>     > > in b''", so the files are not clashing with another recipe. It
>     seems
>     > > to be somehow trying to install its own files twice, or
>     something like
>     > > that. If I look under
>     tmp/work/x86_64-linux/mono-native/5.4.1.6-r0/,
>     > > then I see the files present in both:
>     > >
>     > > sysroot-destdir/home/craigm/yocto/poky/build/tmp/sysroots/x86_64-
>     > linux
>     > > / and
>     image/home/craigm/yocto/poky/build/tmp/sysroots/x86_64-linux/
>     > >
>     > > Is that part of the problem?
>     >
>     >
>     > I haven't had any success figuring out what is going on. I tried
>     doing a new
>     > clean build, and got the same error.
>     >
>     > Does anyone else have this problem? Is it an incompatibility
>     with Yocto
>     > morty, which I'm using? Any pointers on how to narrow down the
>     cause?
>
>     I tried updating from morty to rocko, and no longer got this
>     error. So it seems it's somehow an issue with meta-mono in
>     conjunction with morty.
>
>
> That’s due to the fact that Rocko onwards OE switched to using recipe 
> specific sysroots
>
Hey Craig,

There was an separate issue with the morty branch building which 
hopefully I've resolved with a recent cherry-pick.

I'm not intending atm to update support for more recent releases of Mono 
on Morty due to the issue you've identified above.

(This is because I think it's more valuable to put the time I have 
available into supporting the current Mono release on master, T-P etc. - 
which I'll hopefully be looking at shortly).

I'd be very pleased to receive PRs though if you have the time to 
address this...

Cheers,

Alex


--------------DF04EC3372243599E31FB21F
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 12/06/2018 05:43, Khem Raj wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAMKF1spZJZ0WCaxHKa4e5O4EJtWH=Z1bMcnjEMSSGzUKzjz5qA@mail.gmail.com">
      <div><br>
      </div>
      <div><br>
        <div class="gmail_quote">
          <div dir="auto">On Mon, Jun 11, 2018 at 8:36 PM Craig McQueen
            &lt;<a href="mailto:craig.mcqueen@innerrange.com"
              moz-do-not-send="true">craig.mcqueen@innerrange.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class="gmail_quote" style="margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex">I wrote:<br>
            &gt; <br>
            &gt; I wrote:<br>
            &gt; &gt;<br>
            &gt; &gt; Lately, I'm trying to upgrade to a later version
            of mono, 5.4.1.6.<br>
            &gt; &gt; When I try to do a build of my Yocto image,
            bitbake gets to the end of<br>
            &gt; &gt; building mono- native, and then gets an error:<br>
            &gt; &gt;<br>
            &gt; &gt;<br>
            &gt; &gt; ERROR: mono-native-5.4.1.6-r0 do_populate_sysroot:
            The recipe mono-<br>
            &gt; &gt; native is trying to install files into a shared
            area when those files already<br>
            &gt; exist.<br>
            &gt; &gt; Those files and their manifest location are:<br>
            &gt; &gt;   
            /home/craigm/yocto/poky/build/tmp/sysroots/x86_64-<br>
            &gt; &gt; linux/usr/lib/mono/lldb/mono.py<br>
            &gt; &gt;  Matched in b''<br>
            &gt; &gt; 
            /home/craigm/yocto/poky/build/tmp/sysroots/x86_64-<br>
            &gt; &gt;
            linux/usr/lib/mono/4.6.1-api/System.Web.Http.SelfHost.dll<br>
            &gt; &gt;  Matched in b''<br>
            &gt; &gt; ...<br>
            &gt; &gt; /home/craigm/yocto/poky/build/tmp/sysroots/x86_64-<br>
            &gt; &gt;<br>
            &gt;
            linux/usr/lib/mono/xbuild/14.0/bin/MSBuild/Microsoft.Build.CommonTypes.<br>
            &gt; &gt; xsd<br>
            &gt; &gt;  Matched in b''<br>
            &gt; &gt; 
            /home/craigm/yocto/poky/build/tmp/sysroots/x86_64-<br>
            &gt; &gt;
            linux/usr/lib/mono/xbuild/14.0/bin/MSBuild/Microsoft.Build.Core.xsd<br>
            &gt; &gt;  Matched in b''<br>
            &gt; &gt; 
            /home/craigm/yocto/poky/build/tmp/sysroots/x86_64-<br>
            &gt; &gt;<br>
            &gt;
            linux/usr/lib/mono/xbuild/14.0/Microsoft.Common.targets/ImportAfter/Mi<br>
            &gt; &gt; c<br>
            &gt; &gt; rosoft.NuGet.ImportAfter.targets<br>
            &gt; &gt;  Matched in b''<br>
            &gt; &gt; Please verify which recipe should provide the
            above files.<br>
            &gt; &gt; The build has stopped as continuing in this
            scenario WILL break<br>
            &gt; &gt; things, if not now, possibly in the future (we've
            seen builds fail<br>
            &gt; &gt; several months later). If the system knew how to
            recover from this<br>
            &gt; &gt; automatically it would however there are several
            different scenarios<br>
            &gt; &gt; which can result in this and we don't know which
            one this is. It may<br>
            &gt; &gt; be you have switched providers of something like
            virtual/kernel (e.g.<br>
            &gt; &gt; from linux-yocto to linux-yocto-dev), in that case
            you need to execute the<br>
            &gt; clean task for both recipes and it will resolve this
            error.<br>
            &gt; &gt; It may be you changed DISTRO_FEATURES from systemd
            to udev or vice<br>
            &gt; &gt; versa. Cleaning those recipes should again resolve
            this error however<br>
            &gt; &gt; switching DISTRO_FEATURES on an existing build
            directory is not<br>
            &gt; &gt; supported, you should really clean out tmp and
            rebuild (reusing sstate<br>
            &gt; &gt; should be safe). It could be the overlapping files
            detected are<br>
            &gt; &gt; harmless in which case adding them to
            SSTATE_DUPWHITELIST may be the<br>
            &gt; &gt; correct solution. It could also be your buil  d is
            including two<br>
            &gt; &gt; different conflicting versions of things (e.g.
            bluez<br>
            &gt; &gt; 4 and bluez 5 and the correct solution for that
            would be to resolve<br>
            &gt; &gt; the conflict. If in doubt, please ask on the
            mailing list, sharing the<br>
            &gt; &gt; error and filelist above.<br>
            &gt; &gt; ERROR: mono-native-5.4.1.6-r0 do_populate_sysroot:
            If the above<br>
            &gt; &gt; message is too much, the simpler version is you're
            advised to wipe out<br>
            &gt; &gt; tmp and rebuild (reusing sstate is fine). That
            will likely fix things<br>
            &gt; &gt; in most (but not all) cases.<br>
            &gt; &gt; ERROR: mono-native-5.4.1.6-r0 do_populate_sysroot:
            Function failed:<br>
            &gt; &gt; sstate_task_postfunc<br>
            &gt; &gt; ERROR: Logfile of failure stored in:<br>
            &gt; &gt;
            /home/craigm/yocto/poky/build/tmp/work/x86_64-linux/mono-<br>
            &gt; &gt;
            native/5.4.1.6-r0/temp/log.do_populate_sysroot.108358<br>
            &gt; &gt; ERROR: Task
            (/home/craigm/yocto/poky/build/../../meta-mono/recipes-<br>
            &gt; &gt;
            mono/mono/mono-native_5.4.1.6.bb:do_populate_sysroot) failed
            with<br>
            &gt; exit<br>
            &gt; &gt; code '1'<br>
            &gt; &gt; NOTE: Tasks Summary: Attempted 670 tasks of which
            662 didn't need to<br>
            &gt; &gt; be rerun and 1 failed.<br>
            &gt; &gt;<br>
            &gt; &gt; Summary: 1 task failed:<br>
            &gt; &gt; 
             /home/craigm/yocto/poky/build/../../meta-mono/recipes-<br>
            &gt; &gt;
            mono/mono/mono-native_5.4.1.6.bb:do_populate_sysroot<br>
            &gt; &gt; Summary: There were 3 ERROR messages shown,
            returning a non-zero exit<br>
            &gt; &gt; code.<br>
            &gt; &gt;<br>
            &gt; &gt;<br>
            &gt; &gt; I'm building with Yocto poky morty branch
            (currently commit<br>
            &gt; &gt; 0e730770a9), meta-mono master (commit dced6635ca).
            I'm building on<br>
            &gt; Ubuntu 16.04.4.<br>
            &gt; &gt;<br>
            &gt; &gt; I have tried deleting the tmp directory, deleting
            all mono and<br>
            &gt; &gt; mono-native from sstate, cleaning mono and
            meta-mono, etc, to no avail.<br>
            &gt; &gt;<br>
            &gt; &gt; It's puzzling why I'm getting these errors,
            because it says "Matched<br>
            &gt; &gt; in b''", so the files are not clashing with
            another recipe. It seems<br>
            &gt; &gt; to be somehow trying to install its own files
            twice, or something like<br>
            &gt; &gt; that. If I look under
            tmp/work/x86_64-linux/mono-native/5.4.1.6-r0/,<br>
            &gt; &gt; then I see the files present in both:<br>
            &gt; &gt;<br>
            &gt; &gt;
            sysroot-destdir/home/craigm/yocto/poky/build/tmp/sysroots/x86_64-<br>
            &gt; linux<br>
            &gt; &gt; / and
            image/home/craigm/yocto/poky/build/tmp/sysroots/x86_64-linux/<br>
            &gt; &gt;<br>
            &gt; &gt; Is that part of the problem?<br>
            &gt; <br>
            &gt; <br>
            &gt; I haven't had any success figuring out what is going
            on. I tried doing a new<br>
            &gt; clean build, and got the same error.<br>
            &gt; <br>
            &gt; Does anyone else have this problem? Is it an
            incompatibility with Yocto<br>
            &gt; morty, which I'm using? Any pointers on how to narrow
            down the cause?<br>
            <br>
            I tried updating from morty to rocko, and no longer got this
            error. So it seems it's somehow an issue with meta-mono in
            conjunction with morty.<br>
          </blockquote>
          <div dir="auto"><br>
          </div>
          <div dir="auto">That’s due to the fact that Rocko onwards OE
            switched to using recipe specific sysroots </div>
          <br>
        </div>
      </div>
    </blockquote>
    Hey Craig,<br>
    <br>
    There was an separate issue with the morty branch building which
    hopefully I've resolved with a recent cherry-pick.<br>
    <br>
    I'm not intending atm to update support for more recent releases of
    Mono on Morty due to the issue you've identified above.<br>
    <br>
    (This is because I think it's more valuable to put the time I have
    available into supporting the current Mono release on master, T-P
    etc. - which I'll hopefully be looking at shortly).<br>
    <br>
    I'd be very pleased to receive PRs though if you have the time to
    address this...<br>
    <br>
    Cheers,<br>
    <br>
    Alex<br>
    <br>
  </body>
</html>

--------------DF04EC3372243599E31FB21F--

Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D29E8CAC5AB
	for <webhook@archiver.kernel.org>; Tue, 17 Sep 2024 22:24:33 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web11.2686.1726611870251384677
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Sep 2024 15:24:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=UNEZ0ZIA;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.47, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-378e5d4a80eso3007594f8f.0
        for <yocto@lists.yoctoproject.org>; Tue, 17 Sep 2024 15:24:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1726611868; x=1727216668; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8K+Ltr20Izp7hmomTyWI8rZrhR9eT2LS+OWWAx60KTU=;
        b=UNEZ0ZIAyqywY2ZvGNvv2YgecC7IbxAV3ASxfgaG19JjAvvjHPopU8c6Xb3h1KBDK9
         4mCgzdHt4bW+MLPlornC0gYsQP2mfRvKtUoCkJG3WL9KTZ4ubbAkEigWMa4fHEZAXpSw
         J7nTh8tWx4UqF9W1iZ70w6+N6Ig34/nwuIsjQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726611868; x=1727216668;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8K+Ltr20Izp7hmomTyWI8rZrhR9eT2LS+OWWAx60KTU=;
        b=I3UQC0qnAQzCbidQTzuxsArqTSHBmb0/TEh4lGROLYJfyRqGC1kJMLnLtrxhS2mt6P
         pFSFYJvYAgby0SKFaSyU/z1ifv9WpuTOGMdCs2Livuu67jY3MWW3Y6AxpWjQKxHkHr57
         IRJp0xGeFVGBy9e1lndNYjEAfj5wNcWlf7RGwKDgnSkhtXr4zcdVVGvIXYtdGR5ORiy2
         IoyXdMYocr4DaHY371irKYtEi/3M70098dWVUboRUXaxu8wHwCKnkoBo3RWZtl8rfiZp
         qGLk2nZGmGlnBK6GnygS8zaPD6BCWK8+P9gDOoGMoWXtZ2wGCxYr2SWfu2r92dJYWRnr
         CP+A==
X-Gm-Message-State: AOJu0Yz/Bzps6Wxbgtz/CithIpW39dUpRJSGeI5SnbXHTSUf77Fyzi3U
	pa6uqmPWGDlEYYqxvXRYqD1Q/hptJjpJxpwhPfJoFcrMVtXTQlGJEBdfrFSkbhCbyf7lvcGPOHg
	t
X-Google-Smtp-Source: AGHT+IEao/h7MkrRx2yph9opkFIMy55tPvCfqcwklo3XTWhH99254tl5z48OIt6KiWhgRMJidIBTjg==
X-Received: by 2002:a5d:4dc2:0:b0:371:8e8b:39d4 with SMTP id ffacd0b85a97d-378c2d026eamr12694698f8f.28.1726611868063;
        Tue, 17 Sep 2024 15:24:28 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:121c:7879:24c3:1e39? ([2001:8b0:aba:5f3c:121c:7879:24c3:1e39])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-378e71ed08esm10825204f8f.4.2024.09.17.15.24.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Sep 2024 15:24:27 -0700 (PDT)
Message-ID: <ceab1bdec1d803b6d6bd8e65d3111ff9f9aaa5a4.camel@linuxfoundation.org>
Subject: Re: [yocto] sstate fetch errors from network sstate cache server
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org, philip.dawson@datapath.co.uk
Date: Tue, 17 Sep 2024 23:24:26 +0100
In-Reply-To: <Sc5N.1726582968380977142.qb0i@lists.yoctoproject.org>
References: <Sc5N.1726582968380977142.qb0i@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.3-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Sep 2024 22:24:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63855

On Tue, 2024-09-17 at 07:22 -0700, philip.dawson via lists.yoctoproject.org=
 wrote:
> I'm trying set up automated CI builds of our yocto builds and am running =
into intermittent issues fetching sstate cache files from our server.
> We're using Xilinx Petalinux tools 2023.1 version which corresponds to Yo=
cto Langdale. I'm posting here rather than in meta-xilinx as this feel like=
 a more general issue than a Xilinx specific one.
> =C2=A0
> The build is run inside a docker image on an Ubuntu 22.04 host machine.
> We have a NGINX server hosting our sstate cache and as a download pre-mir=
ror. The setup has been shown to work in local builds but when running from=
 our build server CI pipelines is unreliable.
> =C2=A0
> Even though the build completes by fetching from upstream sources it repo=
rts as a failure and the CI pipeline aborts:
> 2024-09-12T08:39:38.0284903Z NOTE: Tasks Summary: Attempted 8095 tasks of=
 which 6863 didn't need to be rerun and all succeeded.
> 2024-09-12T08:39:38.0387164Z=C2=A0
> 2024-09-12T08:39:38.0387977Z Summary: There were 28 WARNING messages.
> 2024-09-12T08:39:38.0389108Z Summary: There were 6 ERROR messages, return=
ing a non-zero exit code.
> 2024-09-12T08:39:38.4545026Z ERROR: Failed to build project. Check the /_=
_w/1/s/DS10G/yocto/dgc220_release/dgc220/build/build.log file for more deta=
ils...
> =C2=A0
> The specifics of the issue are that in any given build a handful of sstat=
e fetches from our server fail with errors like:
> 2024-09-12T08:10:54.9631514Z NOTE: recipe libgcrypt-native-1.10.1-r0: tas=
k do_populate_sysroot_setscene: Started
> ...
> 2024-09-12T08:11:19.2785546Z WARNING: libgcrypt-native-1.10.1-r0 do_popul=
ate_sysroot_setscene: Failed to fetch URL file://universal/a6/18/sstate:lib=
gcrypt-native:x86_64-linux:1.10.1:r0:x86_64:10:a61860a7702fbf31e63bdcbadf53=
48983eecb402fb01a4de25a91d8b9e45a9a3_populate_sysroot.tar.zst.siginfo;downl=
oadfilename=3Duniversal/a6/18/sstate:libgcrypt-native:x86_64-linux:1.10.1:r=
0:x86_64:10:a61860a7702fbf31e63bdcbadf5348983eecb402fb01a4de25a91d8b9e45a9a=
3_populate_sysroot.tar.zst.siginfo, attempting MIRRORS if available
> 2024-09-12T08:11:19.2792229Z ERROR: libgcrypt-native-1.10.1-r0 do_populat=
e_sysroot_setscene: Fetcher failure: Unable to find file file://universal/a=
6/18/sstate:libgcrypt-native:x86_64-linux:1.10.1:r0:x86_64:10:a61860a7702fb=
f31e63bdcbadf5348983eecb402fb01a4de25a91d8b9e45a9a3_populate_sysroot.tar.zs=
t.siginfo;downloadfilename=3Duniversal/a6/18/sstate:libgcrypt-native:x86_64=
-linux:1.10.1:r0:x86_64:10:a61860a7702fbf31e63bdcbadf5348983eecb402fb01a4de=
25a91d8b9e45a9a3_populate_sysroot.tar.zst.siginfo anywhere. The paths that =
were searched were:
> 2024-09-12T08:11:19.2793587Z =C2=A0 =C2=A0 /__w/1/s/DS10G/yocto/dgc220_re=
lease/dgc220/build/sstate-cache
> =C2=A0
> In the build above 5 other packages failed to fetch at the same time (wit=
hin 50ms). The exact packages that fail and number of packages that fail va=
ry from build to build.
> =C2=A0
> I have managed to capture a tcpdump on the docker host machine and the ac=
cess logs of the NGINX server at the time of the above build. The access lo=
gs show a HEAD and GET pair to check the tar.zst exists and fetch it, then =
HEAD request for the tar.zst.siginfo which returns OK but no corresponding =
GET. About 16s later the build errors happen.
> =C2=A0
> I can see no obvious errors in the tcpdump and no sign of failed attempts=
 to GET the siginfo. There are no errors reported from NGINX.
> =C2=A0
> From reading other posts I accept this is probably some issue with our ne=
twork that needs to be sorted, but I don't have much to give our IT departm=
ent to go on other than it's not working reliably.
> Is there a way I could get yocto/bitbake to produce more logs or diagnost=
ics as to why/how the fetch of the siginfo part of the sstate cache is fail=
ing (before the warning/error that the local file doesn't exist)?
> =C2=A0
> Or do you have any other advice that might help?

It could be:

https://git.yoctoproject.org/poky/commit/bitbake/lib?id=3D4172c3bdd5a076da6=
bb125071a8157a0fef28932

Cheers,

Richard


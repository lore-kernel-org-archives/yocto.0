Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5DCB0E0130D; Fri,  6 Jul 2018 05:38:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f44.google.com (mail-oi0-f44.google.com
	[209.85.218.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90786E01333
	for <yocto@yoctoproject.org>; Fri,  6 Jul 2018 05:38:55 -0700 (PDT)
Received: by mail-oi0-f44.google.com with SMTP id c6-v6so23215793oiy.0
	for <yocto@yoctoproject.org>; Fri, 06 Jul 2018 05:38:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=WhBqjp2PzPLPIVVM4Ui1c2cMno46OutbBUb5PGOw9rc=;
	b=jg9K8mpnH2DoqSS0AmtTdFGHhUSuS4HRRhScGNAFlzEUDI99kLa9TS53rb25tr2UbV
	GVjlEYC20qgI7OpDXWja7K91T/V+NEVsnrGe+XvbEMDS82qYZMrwjCbbtl2lPChRI2iJ
	u9vs/PF+rI/FcQnJZ+rkEEXhaNc12AfM0uLaZNWDEkwKBMPNvPPVdSAVywToUmcHewkX
	22kw3kiBHrZib7Jyn2mUmM6zIKMX8/Nc9KIiV0WcldSjoLTgGYg1p/93j9WOpj1VMnPS
	LdcE6kv+AUe5N7yQZ0hudnEOyB+PEoL8nv3lugsVtCIxU/q6picw38vdLz8rtgophXML
	PIZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=WhBqjp2PzPLPIVVM4Ui1c2cMno46OutbBUb5PGOw9rc=;
	b=GsOrDBUeN4IrJ8U9KqcxCqvgQEPP66z5RFGEl6iRqKT7UmwtqtjMhi98J5s70mvt4O
	pA6KLTsh4kDHWR2kceNLd+atSS8qLyDUeazy4Cj+eU6Tj9XppGnUlM0pVAYIhvchkrWO
	BgWgBP8gykbQ/bgtH9vHAp2al9fE5ZxR4OOmGUdLQ4IKkgatvlEnv1Woj7zh6v8wevNH
	DpSs+VQ4eDzVcu9SPw7ctGdfL8C0+3vyTBnbwpDfcUV9fPUXY/Iy3hSJnyZ5JnQ5j4Ph
	0853d+T/nKxWB8szyS2xbz1nsoryMbX/q2WpuwaxyZfU6kFfJEv2kPmDPFk3DTQj0gW8
	kXIQ==
X-Gm-Message-State: APt69E0CAZzgMSHQSSB0lNKsWuTSCexiXZrrXTJRhDBQ2EaKSijhviPO
	3nUmQDdwsA15/+i9IiaFZdMZrfIk2pKadW7zBtk3KQ==
X-Google-Smtp-Source: AAOMgpemvwIidlnuYHemXnFxjE3mJIQJb/7mS8dylcpa6zUqDuVCk5zhUA21O20pK+eMI/xxUkgnm+vKoxlWArhb25I=
X-Received: by 2002:aca:e715:: with SMTP id
	e21-v6mr11949485oih.18.1530880734767; 
	Fri, 06 Jul 2018 05:38:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:434d:0:0:0:0:0 with HTTP;
	Fri, 6 Jul 2018 05:38:34 -0700 (PDT)
In-Reply-To: <CAGKr=ydT_93m6GmGbhR0U21ewX6=OyvjaskX1hNCzNVu=eAeug@mail.gmail.com>
References: <CAGKr=yesOWOFUHJrvkgeBkw4LzqeNod6kG=6NpUkDzCJb8DDdQ@mail.gmail.com>
	<CAJTo0LaKC868wFeNd8V4MTgnW=e5BJpqSG8Ou_K9Ms__JHOSpQ@mail.gmail.com>
	<CAGKr=ydT_93m6GmGbhR0U21ewX6=OyvjaskX1hNCzNVu=eAeug@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 6 Jul 2018 13:38:34 +0100
Message-ID: <CAJTo0LaiQ2oXL2VJA3VKSqNWpp7Vdd-UB+qCQH-EOD6gBwgxeQ@mail.gmail.com>
To: Oliver Westermann <owestermann@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Creating a recipe for python3-pillow
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
X-List-Received-Date: Fri, 06 Jul 2018 12:38:56 -0000
Content-Type: text/plain; charset="UTF-8"

On 6 July 2018 at 13:32, Oliver Westermann <owestermann@gmail.com> wrote:
>  This does not seem to work as expected. With option 1) and 2) it fails in
> do_compile:
>
> | DEBUG: Executing shell function do_compile
> |
> /data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky-linux/python3-pillow/5.2.0-r0/temp/run.do_compile.14093:
> 112:
> /data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky-linux/python3-pillow/5.2.0-r0/temp/run.do_compile.14093:
> /data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky-linux/python3-pillow/5.2.0-r0/recipe-sysroot-native/usr/bin/python3-native/python3:
> not found
> | ERROR: python3 setup.py build_ext execution failed.
> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_compile (log file is located at
> /data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky-linux/python3-pillow/5.2.0-r0/temp/log.do_compile.14093)

That's very odd.  I'd suggest maybe something really weird happened,
what happens if you bitbake -cclean python3-pillow ; bitbake
python3-pillow?

Ross


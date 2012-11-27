Return-Path: <twoerner@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 249DBE0032E
	for <yocto@yoctoproject.org>; Mon, 26 Nov 2012 18:20:31 -0800 (PST)
Received: by mail-lb0-f176.google.com with SMTP id k6so10092015lbo.35
	for <yocto@yoctoproject.org>; Mon, 26 Nov 2012 18:20:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=KCZh1Y0X3OQjKiXS/U9utHfMbtM4EYLu845yEM3nTGQ=;
	b=U2tFA2c4xnVdLDmDxbmp0mJM/bwhRM3A3yDSaj87vJt+4eu1b0mIDGo510F1UiUPFR
	We0nvG4v/CYnSi2O5tT3Us9yuWHw9e2HLm97jyDmR0bwjhjEMPB22aPTmhreiPUEtRlN
	615oXmR0SUwyTFEoQPUpoYoCoI7/AaG+BsVJOh+33vK9c7k7XGQVdIMqfe+qOKUIQDHN
	BCP2VjeHNR/C+kIUMg2UxfQNaEv5yXOZUR2GUJVP3sUOz4aTDYir/Yp53jhRiPo3k0TV
	QHagLp3sSGKbrwTHDLu9BdjkS2J9NmW2BWvbFubeP4Tfi3ixRU7k7qkbImj57Suf+CzQ
	p09w==
MIME-Version: 1.0
Received: by 10.112.23.2 with SMTP id i2mr6073272lbf.24.1353982830974; Mon, 26
	Nov 2012 18:20:30 -0800 (PST)
Received: by 10.112.117.194 with HTTP; Mon, 26 Nov 2012 18:20:30 -0800 (PST)
In-Reply-To: <CAHUNapRZ2Fg_=G5gv7SGE0__3n7PjKk0R362V_w1nST5AuQpGQ@mail.gmail.com>
References: <CAHUNapSSawC9WwpdoNdg4vHBY6Yh3UycqYgOyX_pbTNw3S0Etg@mail.gmail.com>
	<CAHUNapSVRuxDxn9L=oHg6aO-RKso2VNF6Mczaf2zwgxHn2zzBw@mail.gmail.com>
	<20121126190407.GA69689@gmail.com>
	<CAHUNapRZ2Fg_=G5gv7SGE0__3n7PjKk0R362V_w1nST5AuQpGQ@mail.gmail.com>
Date: Mon, 26 Nov 2012 21:20:30 -0500
Message-ID: <CAHUNapSUN1iAh1ijxby6XW=DZuXA=_KCFLwfm9nYpgpKuE-V8w@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: =?ISO-8859-1?Q?Eren_T=FCrkay?= <eren@hambedded.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: IMAGE_INSTALL_append workflow
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
X-List-Received-Date: Tue, 27 Nov 2012 02:20:32 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Nov 26, 2012 at 6:52 PM, Trevor Woerner <twoerner@gmail.com> wrote:
> I haven't yet figured out if the "PREFERRED_PROVIDER_virtual/kernel =
> "linux-yocto-rt"" line might be the culprit.

No, it is not related, this problem doesn't need any fancy
configuration features. This problem is reproducible
with just the plain qemux86 machine and the core-image-minimal image.
Also, before my latest tests I pulled
the latest git repo.

To reproduce this problem:

- use the latest git repositories
- run "source poky/oe-init-build-env qemux86"
- make no modifications to conf/bblayers.conf
- make no changes to conf/local.conf
- run "bitbake core-image-minimal"

After that completes successfully add the following line to your
conf/local.conf:

IMAGE_INSTALL_append = " trace-cmd"

- re-run the build "bitbake core-image-minimal"

This should complete successfully. When it does, modify the last line
of conf/local.conf to be:

IMAGE_INSTALL_append = " trace-cmd bash"

- try re-running the build now "bitbake core-image-minimal". It fails
for me as I have detailed in my previous emails.

If I manually do:

$ bitbake bash
$ bitbake core-image-minimal

everything succeeds and my image contains 'bash'. But something tells
me there's a bug in there somewhere.


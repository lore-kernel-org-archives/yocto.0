Return-Path: <ross.burton@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E0B8E00283
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 03:08:42 -0700 (PDT)
Received: from mail-gh0-f180.google.com ([209.85.160.180])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 25 Jul 2012 03:08:41 -0700
Received: by ghbz12 with SMTP id z12so464959ghb.25
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 03:08:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=8eghlyS3RynjIfrK4LK6oI8JL5hUQtIGGJ4Kf3N1Has=;
	b=XtJW5SbQB8TOJ841Jo4+b6Uhz8J2g1AunrvX5GN1LPBUaETgFWb8RDMmUn724a+m5r
	12G7WhhshRxgcO28zNwHB2j6DQTSNB2V6vT3b3g0ZDoJWxqQKh+M0hn2uN34sAPBa4MT
	ClmJENwlYRyfJBxgl6N36MRWcBiZmgtTp+gpvwM3UeN9Pn00UMqsDW4DSZh1z1prlnwz
	Il6Pgzi+wso47X5jcTwX+TWJdElPKqGaOkx/vhD+N247RuqDZ2u61/+WIXSvYXr2515C
	8op+u1824gPall9JS59o8PitOn0ndGZkiUKTRCb3fWRyXDBOPDfm9Vb/hU46RdkK0Sxb
	cE9w==
Received: by 10.43.92.71 with SMTP id bp7mr23482036icc.52.1343210920573; Wed,
	25 Jul 2012 03:08:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.70.229 with HTTP; Wed, 25 Jul 2012 03:08:20 -0700 (PDT)
In-Reply-To: <CANsUPaPE6C7qAmNMNkKMDpU46OHys2xcK2H0z+TigKqYe=GhcA@mail.gmail.com>
References: <CANsUPaOukMiAGQSZPJQ6ZrpZX4=or2DCesr8bC6hEmQyiZobYA@mail.gmail.com>
	<CAJTo0LbPVx7GKzk3CcrdG9-tG31E7cr9OHVChpxLi678etuCeQ@mail.gmail.com>
	<CANsUPaOa11_oTJf46kCa5RjBL=JJehby1y+k5QtmHCAU5xsEbg@mail.gmail.com>
	<CAJTo0LZFbrD0e5SjBQYu6KnSmG+_K9shWdq1fNBC7tP+TyCQ3g@mail.gmail.com>
	<CANsUPaPE6C7qAmNMNkKMDpU46OHys2xcK2H0z+TigKqYe=GhcA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 25 Jul 2012 11:08:20 +0100
Message-ID: <CAJTo0LaradKKdy5UGc1qEVKUKgXSZD0R2Lw0h3+gaZxRpGJc2A@mail.gmail.com>
To: Giovanni Foiani <fnognn@unife.it>
X-Gm-Message-State: ALoCoQmBliDrmj7NC9a0wPDSdhkVN818bI5V2OAFXVujRBRAbypeNtH9hVDIVM7N7EvBEr9LbBPP
Cc: yocto@yoctoproject.org
Subject: Re: Yocto and Google Protocol Buffers
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
X-List-Received-Date: Wed, 25 Jul 2012 10:08:42 -0000
Content-Type: text/plain; charset=UTF-8

On 25 July 2012 11:04, Giovanni Foiani <fnognn@unife.it> wrote:
> Can I do this overriding do_configure task? Like this:
>
> do_configure() {
>     ./configure --with-protoc=/path/to/sysroot/i686-linux/usr/bin/protoc
> }
>
> I tried this way but I got a "permission denied" error..
>
> /bin/bash: line 8: ../-libtool: Permission denied
> | make[3]: *** [install-libLTLIBRARIES] Error 126

By explicitly calling configure you've thrown away all the special
options that are required to cross-compile.  Delete  your
do_configure() block and just set EXTRA_OECONF = "
--with-protoc=protoc" (as the sysroot is in your PATH, and you can't
predict where sysroot is).

Ross


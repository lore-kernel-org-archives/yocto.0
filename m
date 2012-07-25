Return-Path: <ross.burton@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29195E00280
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 02:49:44 -0700 (PDT)
Received: from mail-yw0-f52.google.com ([209.85.213.52])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 25 Jul 2012 02:49:43 -0700
Received: by yhpp61 with SMTP id p61so457530yhp.25
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 02:49:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=vbruFztiuF5Yx71MGq6bT7uf3MpLHH8u9NEJgRDjg2k=;
	b=TLWF2NUfEMi2wZG3HIOTpm0c4fUmVElfDs2JXGZGRPXrzqmzkI7HV3rT7GROSI2LOa
	hTFaW7MRaWYTvP8EP/IevBW7brNo7XJa26onFHsbpHJipKCpybOPWC4LJgh6p+0Ydg46
	u/8pWp/eoQPWB/uDBE12xq85lHhkq7Hhr3YrPGKQof4OcerUWjophXTtMdR4zsneS3aF
	u7HRFVZ4hysRjr078gTssNOO87Fk9p49+aORy5yA236WBI7tn3WEXEj3i1CBwo9bYjHP
	0d2EMa1t9xrIpTnlHs58Q00Fu6YJUivQEiB90979NY9hl39D0hMJxrELGDJtpaA17JY4
	CW6A==
Received: by 10.43.92.71 with SMTP id bp7mr23357258icc.52.1343209782762; Wed,
	25 Jul 2012 02:49:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.70.229 with HTTP; Wed, 25 Jul 2012 02:49:22 -0700 (PDT)
In-Reply-To: <CANsUPaOa11_oTJf46kCa5RjBL=JJehby1y+k5QtmHCAU5xsEbg@mail.gmail.com>
References: <CANsUPaOukMiAGQSZPJQ6ZrpZX4=or2DCesr8bC6hEmQyiZobYA@mail.gmail.com>
	<CAJTo0LbPVx7GKzk3CcrdG9-tG31E7cr9OHVChpxLi678etuCeQ@mail.gmail.com>
	<CANsUPaOa11_oTJf46kCa5RjBL=JJehby1y+k5QtmHCAU5xsEbg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 25 Jul 2012 10:49:22 +0100
Message-ID: <CAJTo0LZFbrD0e5SjBQYu6KnSmG+_K9shWdq1fNBC7tP+TyCQ3g@mail.gmail.com>
To: Giovanni Foiani <fnognn@unife.it>
X-Gm-Message-State: ALoCoQnwmavwauJn++o0fVmGfMCbgSWA170qyFd4wVpEd5d3/mwyzH/KzGzPLiMn95l07gd0ELtt
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
X-List-Received-Date: Wed, 25 Jul 2012 09:49:45 -0000
Content-Type: text/plain; charset=UTF-8

On 25 July 2012 10:47, Giovanni Foiani <fnognn@unife.it> wrote:
> The native library builds properly but it populates the wrong sysroot..I can
> find protoc executable into tmp/sysroots/i686-linux but not into imx53qsb
> sysroot, hence rebuilding the protobuf library it can't find the
> executable..

That's what you want -- you want a protoc in the native sysroot.  I
guess you need to patch the makefile to use the sysroot protoc instead
of the one it just built.

Ross


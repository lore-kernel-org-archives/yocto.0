Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1D7FE00B81; Tue, 23 Apr 2019 16:10:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.42 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com
	[209.85.166.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4763EE00942
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 16:10:49 -0700 (PDT)
Received: by mail-io1-f42.google.com with SMTP id u12so3565548iop.0
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 16:10:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=kFja0bZP0SPGq/4Tf/UNVSOWrTSxumURa/S1tZ6F+o8=;
	b=vE6bXG0f2LOsVG/qZryX1mFkvcdJJXCyuH7tU8pojfdu3rItAwxl6EJqSPWK3xVa+r
	/nxGLDZbSKhhj6Ilxod0sOrSiEfCI8wyuYwhiReSaczQTXI61VaWJksEw4YTE99way5/
	R62lKqh9kBLyzam0kZ8MyYzyEv2STMGiTbUCcPUj+q0bo5xt/MAIJRa6xuE5imVp+HW3
	ZB5c/dgy+VDmrvznUOKokNsiY+ZaufUdS8ox6nyE937zekc4oZIMnoA0hL7tIYDGlVVd
	zc+1yMWfQDPa/esN6veYKzjy4oqs7bmQ+il2kVUqBKj68TTP3F6qU0JAI05rZgyuG/zN
	o8OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=kFja0bZP0SPGq/4Tf/UNVSOWrTSxumURa/S1tZ6F+o8=;
	b=X+MTvBbWQyt/XUXy3winmDNBZXddbO6+pZvUbWFA23ctAiZHzPycOBWE1VPeFJoLrg
	fJuOuh5+y2JmboVCXGVs6KDuI/wjGXgcV6tPG0y43qe0NwBj+OVbZqMA7PFvY/ltpm5N
	N/Mo8DLZTKBhOXHlZ0x5RHmYoudjGUTo3xLDKNTYzobGy4uPB5KgHTuDSF4D+XI1LxHL
	Xhgs7a7G3ff39F5escKT5DDT28vejHvTFGPRoDXHumjELIRpDSfDoFtPB9WPpgGRiD6Q
	eULjQIeIu6XNrCf4bdCTYRPgUyptt5aZ9Bj6ekkQreBCWAa1buQp2CAY+quaS+jq4RIF
	1XjQ==
X-Gm-Message-State: APjAAAVqTAehn8G1WfqeMqfYlsqckh7rlfhd1E+CyzB2L25yzVdtmTp3
	tyqDF2TZzmNgyq8nwi1GhvDAQ8tRsBicXt3e9wYWzw==
X-Google-Smtp-Source: APXvYqyKw+k1U2RSwFMnuL+Ji7QHnoR+1Zupk8Z/J+ZNAz2YWCIT0HSS8pBCr7X6eO5ih/tpwc5+YsGbyqyIMOSArVc=
X-Received: by 2002:a6b:8e05:: with SMTP id q5mr9825783iod.270.1556061048648; 
	Tue, 23 Apr 2019 16:10:48 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWSdDkk86YAqQ98oLippf+XtTk=WCraM8cu+W9=j-R+gLg@mail.gmail.com>
In-Reply-To: <CAA=hcWSdDkk86YAqQ98oLippf+XtTk=WCraM8cu+W9=j-R+gLg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 24 Apr 2019 00:10:37 +0100
Message-ID: <CAJTo0La+At4hqdktEQ_CRtT=Tn=cjQAnpnMunAzL8e0ZreMcyw@mail.gmail.com>
To: JH <jupiter.hce@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: WARNING message: Building library didn't pass LDFLAGS? [ldflags]
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
X-List-Received-Date: Tue, 23 Apr 2019 23:10:49 -0000
Content-Type: text/plain; charset="UTF-8"

It means that the compile didn't respect LDFLAGS from the environment
(which sets the ELF hashing type).  Most usual build systems handle
this for you, but if your recipe uses hand-coded Makefiles then you'll
need to figure out what they're doing and how to make it respect
$LDFLAGS.

Ross

On Tue, 23 Apr 2019 at 23:49, JH <jupiter.hce@gmail.com> wrote:
>
> Hi,
>
> What is the following WARNING means, how can I fix it?
>
> yocto-sample-1.0.0-0 do_package_qa: QA Issue: No GNU_HASH in the ELF
> binary my_library, didn't pass LDFLAGS? [ldflags]
>
> Thank you.
>
> Kind regards,
>
> - jupiter
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


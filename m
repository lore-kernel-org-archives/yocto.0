Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B683E00D1B; Thu, 31 Jan 2019 02:49:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.54 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com
	[209.85.166.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07811E00546
	for <yocto@yoctoproject.org>; Thu, 31 Jan 2019 02:49:24 -0800 (PST)
Received: by mail-io1-f54.google.com with SMTP id s22so2234558ioc.8
	for <yocto@yoctoproject.org>; Thu, 31 Jan 2019 02:49:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=skO6JmGspeumYbYWQw2As6OowF9+xM3HZIY3noM8ztU=;
	b=So16Ons4sn4y2mn3cjvJTPWKdX4vYfuTW/EqFISPnhM/hjKXT38ZW25BTGDJq2FRCm
	YaXKwomuTu132WM8hZ30VvcW3AWwaLpAO4dh6TF4Gfi6jh467A3cfdG6yQxDCcZjyhB6
	ntCDt3G1AF/X1bmtNooDa0shPOgePe8IFh+oQQAu0Tz7MfZDQLmQ73Ym+9r3qg/iUfkZ
	Bs8FfgAhoozH+gkxxxlzrjL1hErvHiLjBMfWhwGZCic8FgGxw6HgrvJfdNaDLbKuEaLK
	ewa7+xa8/qbtGm5TntpJQ73C/XnbB+WugBtwF9AQQP6G4orFO0kOuFsrThuLYQ80Gh72
	NQQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=skO6JmGspeumYbYWQw2As6OowF9+xM3HZIY3noM8ztU=;
	b=GjB5vWWhqFUfXAFnk5oC9Rn3b99GZbNk7eEb41Lc0oIqF1HIGxjSGSp+DDgHPnD8/N
	fLTMjhbFLCaCtlPlDj5xfWLwYY0/ggS8VF5LR7VMQObOyMFDfArgB9oNFob9ikw1Aguh
	ADnE5wemT9ai+MxBWd7b4TVpxQfOcyeSfqN/b7Ul/Ls/+ZL/2ZeuF8NLtscWdCcP71aP
	KlTdE3KXEcpK0x9lfy/t7ywNVU8Pq6zJ3ef+TvXcBabc1UENfkC3BM+vLsI7PzXXqu1D
	Q3cWM+wgY3fZN5oLLk7yr7D3EocS1rXR+MHe/ZFSX1XAKqV3iPdxSRqIpPyl/Ga6gKJD
	txdA==
X-Gm-Message-State: AHQUAuYVfKcBe+XlTu/pFPzzmclSbiXOVAkw8+ju3FrcTiqIl3cBD0mK
	FAAysyxihwL3eWOBhw/p04enI2KRMJehbSvOBISiaQ==
X-Google-Smtp-Source: AHgI3IY07sIM23n84MfVWEqxin5KrIZgy8Hq3n+bk6Fkz9JxgPtql58wXmnxJAzzCh3QRKiLfnxGJtCEaYSbHPrlEbY=
X-Received: by 2002:a6b:f70a:: with SMTP id k10mr8555548iog.270.1548931764343; 
	Thu, 31 Jan 2019 02:49:24 -0800 (PST)
MIME-Version: 1.0
References: <3a07697c3d1d45100ad973bace76455a1988fef4.camel@sierrawireless.com>
In-Reply-To: <3a07697c3d1d45100ad973bace76455a1988fef4.camel@sierrawireless.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 31 Jan 2019 10:49:13 +0000
Message-ID: <CAJTo0LYxrsLQJsj3T60VzmKt9MUziEkN5mA0aD6vqd+LEJynbA@mail.gmail.com>
To: Darcy Watkins <dwatkins@sierrawireless.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: RDEPENDS and do_rootfs
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
X-List-Received-Date: Thu, 31 Jan 2019 10:49:25 -0000
Content-Type: text/plain; charset="UTF-8"

Presumably the problem here is that you've a maintainer script
(preinst or postinst) in B that needs a binary/library from A, and is
failing because B's postinst is running before A is unpacked?  If not,
please clarify, otherwise the problem is that DEPENDS just talks about
the final solution.  If you want to express that A needs to be
installed and configured before B is configured then you'll need to
use Pre-Depends, which I don't believe are actually supported in the
packaging classes yet.  I know that dpkg and opkg support this, and
presumably rpm too, so extending the packaging classes is a few
minutes work.

Ross

On Thu, 31 Jan 2019 at 06:51, Darcy Watkins <dwatkins@sierrawireless.com> wrote:
>
> Hi,
>
> Can someone knowledgeable with the inner workings of the build system
> please confirm...
>
> IF package B has RDEPENDS on package A
>
> THEN during do_rootfs task, package A will always be installed into
> rootfs first AND the post-inst scripts of package A will always be run
> prior to those for package B.
>
> Also, if that can be confirmed for 'daisy' branch, that would really be
> helpful.  If not, then please mention as far back the branch that you
> know for sure.  Thanks!
>
>
>
> --
>
>
> Regards,
>
> Darcy
>
> Darcy Watkins ::  Senior Staff Engineer, Firmware
>
> SIERRA
> WIRELESS
> Direct  +1 604 233 7989   ::  Fax  +1 604 231 1109  ::  Main  +
> 1 604 231 1100
> 13811 Wireless Way  :: Richmond, BC Canada V6V 3A4
> [P1]
>
> dwatkins@sierrawireless.com :: www.sierrawireless.com
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


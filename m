Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4A6DE00D1B; Wed, 27 Feb 2019 09:42:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.52 listed in list.dnswl.org]
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com
	[209.85.166.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65B4EE00D13
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 09:42:15 -0800 (PST)
Received: by mail-io1-f52.google.com with SMTP id y13so14217002iop.11
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 09:42:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Hl0uU9YfvtWoG6fu1j4CLTlxJDLtxTdLCRJWiWb8DvU=;
	b=bb4xUSrE8oHEI8R28GGbDO0JsQG9+2ieSsgMHIVdgbl8tV5HcLIUHOnbTlMdKAac0d
	EOKwXnF102uY9LTsjO/IwnVFxHWn0yF64VhTm2dP0YE4cXvbINvecsP0oE+uZlwV04ao
	fiLWouhOQEzptmr+3hcwLNioTW5SzApCl1VW+E2HIdVwlsddGrY6mi3+iFnn+lUiq5Vi
	hB/Af+JTyZGNcHcx8a+zU0TcuhpbKkjcmKZoQcH0KLYvngcBPe0hAXOLcZKPaY4sk+Zi
	a7tGsaBvFX1hN5qZG8Ycy0AcDVBijsLmVt/ncQh7cXvpBilC1dP1lXFv2mToK38nAqEA
	Upmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Hl0uU9YfvtWoG6fu1j4CLTlxJDLtxTdLCRJWiWb8DvU=;
	b=n6C/umvEHDDf0dIxZllocRBR/rcOt5pAG47pIxUqAXJhy4/4v+0B8URkbDaQRX1f8c
	c0Us2kfn3dqpV/yxL6Y9J+pobWEnP6QnoR36jVot6GiMs/fkmWy+czHiXmhfecoXZm+J
	f3PDQX/pANNW33qoE/ffTYTkNVyVGriPEfigmoH4jcu2KFQG5YMv3Ve2K9CCb3FAbldh
	HmlSHsSangOA2/jw/xpVEV8MvVi7MU4UdwSMZEf4uwrzjzjsXmP2oTMtknZnErsQIr5Q
	4IlwnqYImDifcSEVRmGs8u/u4PTlPP4V70R5naLjY5TS3caQDpRywlFQyA/BHczFYnMi
	tXbA==
X-Gm-Message-State: APjAAAUZtGCgUCoQOITVHxECKjPf1EKm9K9AaUstLck8x2w4Fsxd+rRV
	kseRbwLTRbbXMjfv+XWH6GE3AJ14ud91zaTzuloU6g==
X-Google-Smtp-Source: APXvYqwp6pP2f793No7wZ7QGteXC+naj1RG4Oc2PKNarBN0Sy+SbD58duV5Ar0/KldkCZKBqJcu0sOnZpf5HKy+UW8k=
X-Received: by 2002:a5d:848b:: with SMTP id t11mr2457357iom.270.1551289334795; 
	Wed, 27 Feb 2019 09:42:14 -0800 (PST)
MIME-Version: 1.0
References: <63908e27-9243-16f9-aa65-e0c0d3e23af1@innodelec.ch>
	<20190227170614.GV12046@bill-the-cat>
	<a4468f8b-7d51-75b6-d5cc-f40d11d9dc9b@windriver.com>
In-Reply-To: <a4468f8b-7d51-75b6-d5cc-f40d11d9dc9b@windriver.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 27 Feb 2019 17:42:03 +0000
Message-ID: <CAJTo0LbJUurHkyTz1EuOHnxkYK1MOX8MxUXzzSmPFZBqd_=qcQ@mail.gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
Cc: Tom Rini <trini@konsulko.com>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Removing busybox
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
X-List-Received-Date: Wed, 27 Feb 2019 17:42:15 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, 27 Feb 2019 at 17:27, Mark Hatle <mark.hatle@windriver.com> wrote:
> You can also blacklist busybox to ensure that it never builds, and thus can't
> show up in your target image.
>
> PNBLACKLIST[busybox] = "Don't build this"

Sounds like someone should write a new selftest that does the required
configuration changes as per Tom's mail, blacklists busybox, and then
tries a core-image-sato build.  This would double as a check that we
don't break it in the future, and a documented example of how to do it

Ross


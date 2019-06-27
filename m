Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D12BBE0090E; Thu, 27 Jun 2019 00:37:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.50 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com
	[209.85.166.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52181E008CA
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2019 00:37:00 -0700 (PDT)
Received: by mail-io1-f50.google.com with SMTP id r185so2624926iod.6
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2019 00:37:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=M2RotWUf4drlth5h8uuzlkpo3+INvxflG5PEQ0c2AA8=;
	b=Wxe/RrfqkkrFpAMOc0H3zN0DpLacEiI7QxC7gltODGZoVZLM/iX0nA2i0qXt78utkP
	zNEd9L98aLltYtAWeWVNKSYnNBd6vt1Wu6smly3LPN0AO7Nnvvv06LXLN72Trwh5D+Do
	utZjZY9wS7/USZAMDRfFhw2ydfcMx5kp0XDd14elaWxZ16s6GnfHHIowSAa86f6N2yxz
	QzRrrPPPpd2CFqwskHiEv0T4Q1tJ9GgZlQZbNh3pSDoOkz/7UTfo5dcL51QY/p5wBVYu
	EHe95eeISs5vBkoSYUs0X5oV4PLasfSthK0a8NjifW1TW4GlaeM6HxKQCux6kV6ZZKf8
	Edqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=M2RotWUf4drlth5h8uuzlkpo3+INvxflG5PEQ0c2AA8=;
	b=VhHyXtJkLOF2nPZrv8E62weuebmO862OIHlqTQJkXiZcJzzRx+lO5s7YXZ8Na7Ed4I
	NE9dpFBORqTt9nL+LB1Oajc4wsoE4dBcvAEih80TZGrWULmMftTJjTsTVo0nsgTpqRiJ
	oSw3KtHAj6h6T+9lf/CuO8lGB6NNImyltAEJ4b8DPWClysGMulQPuNZvKRa9KwvotnSN
	o2h4pmszzZGk3RgRHCUJxtSaljxwXFlSVTwDomvcv2RWQPFAN8qfbju/IUGownWi2G/5
	DtSHoB3pDH6Fji/XTTYzINZkDhFJV8q4GhphmB6iRIwrQA3Ve84ZcEdNq9YKL7F1TkES
	4oXA==
X-Gm-Message-State: APjAAAWp9eISXDL8XNp2xX0Cofj2qCX6W4lQV2OV/xC677VUe+zEy2Ae
	vLSU9YThL9ZMIc7yy6lJ+6rKg4Sq+IJ6bE8MMbbjfw==
X-Google-Smtp-Source: APXvYqzNbW2o1cizHIFRuEBTam+EFJq/FRHNF/pYgAFDzWTrUqDbAeRQWh9kvhKgBKrLqHMbgaATplde99kYjUV6ECE=
X-Received: by 2002:a5e:a708:: with SMTP id b8mr125745iod.25.1561621019801;
	Thu, 27 Jun 2019 00:36:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAEmXcAxcyTEv0tqmGrT9RyFch2ZxZWpAti5ssnh0+P0zTR9tqQ@mail.gmail.com>
In-Reply-To: <CAEmXcAxcyTEv0tqmGrT9RyFch2ZxZWpAti5ssnh0+P0zTR9tqQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 27 Jun 2019 08:36:48 +0100
Message-ID: <CAJTo0LY4vYE1SZo3Hp7mUeyiXvhfY67uhx+2+ZgwM9wBjU9ZRw@mail.gmail.com>
To: danwe <daniel.wenninger92@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: bitbak command: No recipe available for
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
X-List-Received-Date: Thu, 27 Jun 2019 07:37:00 -0000
Content-Type: text/plain; charset="UTF-8"

The problem is that oe-core and meta-bbb are different releases so the
versions don't match up.  Ensure that oe-core and meta-bbb are on the
same branch.

Ross

On Thu, 27 Jun 2019 at 07:33, danwe <daniel.wenninger92@gmail.com> wrote:
>
> while using the command:
> daniel@daniel-VirtualBox:~/bbb$ MACHINE=beaglebone bitbake core-immage-full cmdline I get the following ouput:
> ````
>
> Loading cache: 100% |############################################| Time: 0:00:03
>
> Loaded 1358 entries from dependency cache.
>
> Parsing recipes: 100% |##########################################| Time: 0:00:12
>
> Parsing of 832 .bb files complete (829 cached, 3 parsed). 1361 targets, 65 skipped, 0 masked, 0 errors.
>
> ERROR: No recipes available for:
>
>   /home/daniel/meta-bbb/recipes-connectivity/openssh/openssh_7.%.bbappend
>
>   /home/daniel/meta-bbb/recipes-qt/qt5/qtbase_git.bbappend
>
>   /home/daniel/meta-bbb/recipes-support/ntp/ntp_4.2.%.bbappend
>
>
>
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
> ````
>
> How can I solve this?
>
> Thanks.
>
> Daniel
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


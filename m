Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7200AE01236; Thu, 19 Jul 2018 15:06:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f52.google.com (mail-oi0-f52.google.com
	[209.85.218.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E967EE01075
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2018 15:06:56 -0700 (PDT)
Received: by mail-oi0-f52.google.com with SMTP id k81-v6so17831662oib.4
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2018 15:06:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=O21BcaxdinQt21Z3S3YWIEXNUA8lE1SNL2EaTV03Hx0=;
	b=dESLMami7qsT9NQiJhYTPTgqjpP/+kBsP9HNBq+DimgArTF2XcCxAVjEEO+7r8w7Uw
	Z0OxYxOapYig3UCsgZ0dSgHFqPKBhmBHT3o1YO781R71V7StmShtajCwsqqNfm0yG8dx
	FN7aneo2kWSt55A4x4d33ZaIc5/wJP5CWhC96F5yGXq+7DbPJo8wxLv820qzKKOISXkC
	df85miALq3YDICTHb27eIWglVET7MPqUjw/4RpUc2GHg2uwktr6VeTdLR7lfFXDvnLiH
	aYieaMw2cnwh4lX2PzOrYYQDRoXJACfgnJ65ZRGIi9ces4zfP88Uj2s8L+QS3bQqRPjC
	C45w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=O21BcaxdinQt21Z3S3YWIEXNUA8lE1SNL2EaTV03Hx0=;
	b=GyggUzmNMX0hP6FA/vBmdPcJccAI8dvGMWCEsaLKmND3+P29H3sXbC3ywBOs5Dvsvl
	w2QYFOrvG9f9YPU4sYuTkmYKp/o4VZXxbg+4luXnx339mZeWHYCzk3CcK0AKatP/Ygh1
	O6/dGqyVvotcC8M1ZnXp8xnGFbfF6KDF+mxmrK4oD+1NmDEyptfGOvyOl3aVyHs0lwzi
	utbgeXHuZj4BN9zqDnMSSn404CV+KKCYdDRb56cqdRE/szHVfa9L1ZewJsywJeAJn4KR
	+pgcal+YsSW+eVsXjmsyzzizHnJLtOoE9kX1GvGxpjOKZybl2mu/7HKgorJXnjmTf1lW
	LCgw==
X-Gm-Message-State: AOUpUlHVKwN+1Dqlv9B9XZjcPS/MrRBo5qzk7GrmxS8Hg7/8PLhnZjtv
	uU7L49wY7+FNaB8pDHracR8fvDxBud77hc1LwcfpGG7t
X-Google-Smtp-Source: AAOMgpdihA8filoq2u8x0jd0Gd4oWWjw5tWezl7snFIABByDZ1RHXuEn1CHg3kiTYnQZybKr0Tqk6vdEqk590VDCIGI=
X-Received: by 2002:aca:5f56:: with SMTP id
	t83-v6mr13454151oib.115.1532038016431; 
	Thu, 19 Jul 2018 15:06:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6845:0:0:0:0:0 with HTTP; Thu, 19 Jul 2018 15:06:35
	-0700 (PDT)
In-Reply-To: <CANmTPBY6Qk1xFU=ZTJe-f6WTULi6tiioft2WxSL4Xqt9fN2HLw@mail.gmail.com>
References: <CANmTPBY6Qk1xFU=ZTJe-f6WTULi6tiioft2WxSL4Xqt9fN2HLw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 19 Jul 2018 23:06:35 +0100
Message-ID: <CAJTo0LaAGY_gcrDF+mHwZYONPkOT53sHP6Or_6FY09NA7tB5JA@mail.gmail.com>
To: Simon Chamlian <simon.chamlian@mpbc.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: net-snmp 5.8 recipe
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
X-List-Received-Date: Thu, 19 Jul 2018 22:06:57 -0000
Content-Type: text/plain; charset="UTF-8"

Read the configure log and it will tell you what went wrong, which may
or may not be easy to fix.

Ross

On 19 July 2018 at 22:01, Simon Chamlian <simon.chamlian@mpbc.ca> wrote:
> Hi,
>
> Is there any recipe for the new snmp release 5.8 ?
>
> I took the net-snmp_5.7.3.bb file and renamed it net-snmp_5.8.bb
> removed the patches and re-entered the checksum but it still giving me
> errors.
>
> ERROR: net-snmp-5.8-r0 do_configure: This autoconf log indicates errors, it
> looked at host include and/or library paths while determining system
> capabilities.
> Rerun configure task after fixing this.
> ERROR: net-snmp-5.8-r0 do_configure: Function failed: do_qa_configure
> ERROR: Logfile of failure stored in:
> /opt/PHYTEC_BSPs/yocto_imx7/build/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/net-snmp/5.8-r0/temp/log.do_configure.394
> ERROR: Task
> (/opt/PHYTEC_BSPs/yocto_imx7/sources/meta-openembedded/meta-networking/recipes-protocols/net-snmp/net-snmp_5.8.bb:do_configure)
> failed with exit code '1'
>
> See attached for the recipe.
>
> Thanks,
> S
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


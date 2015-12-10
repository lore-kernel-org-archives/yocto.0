Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13800E00BBF; Wed,  9 Dec 2015 19:13:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,WEIRD_PORT
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.41 listed in list.dnswl.org]
Received: from mail-qg0-f41.google.com (mail-qg0-f41.google.com
	[209.85.192.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE9E7E00457
	for <yocto@yoctoproject.org>; Wed,  9 Dec 2015 19:13:12 -0800 (PST)
Received: by qgec40 with SMTP id c40so116312929qge.2
	for <yocto@yoctoproject.org>; Wed, 09 Dec 2015 19:13:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=6r0/j4HFdHQVFEwOcTcnnc6ynQDstZN2llJTjV8sm90=;
	b=iKc2QV98it+Hg1Ys8PoSO2EOosF8yUz7r9I/gocIPqkeaOMzkA0DHOOqvp6VOzWC+/
	or1wxhsNkZL3brUDMHmdhujcw2R5B8zUmAPAGLLP0+Pt98SQnTB7Uz7DqGDcOWkb/WI5
	XxJcZ2T2DjPBA0El4stKc5WoeYZsiHNWt3+4hNkfsQTgH/hGqAgK6T7i1X8d0/Ep+EDA
	9R99AYhHvZceVqsThKlKaLNnRRBzveusUpN3LAW3S1yeGisZpi0LsMbLghai0ULOcFCb
	ZMkLAw14eSq9SQRCCLRIBuD8RdfULudCguC3a1lxGEDGw5vf26cwQYvvhwx3QM8wP3jo
	b70Q==
MIME-Version: 1.0
X-Received: by 10.13.193.6 with SMTP id c6mr2825109ywd.62.1449717192083; Wed,
	09 Dec 2015 19:13:12 -0800 (PST)
Received: by 10.129.155.208 with HTTP; Wed, 9 Dec 2015 19:13:12 -0800 (PST)
In-Reply-To: <5668BCB8.9010408@reliableembeddedsystems.com>
References: <56688EE7.4070103@reliableembeddedsystems.com>
	<5668BCB8.9010408@reliableembeddedsystems.com>
Date: Thu, 10 Dec 2015 01:13:12 -0200
Message-ID: <CAF3SDA4pFuFDyzaRS8i2tb9=FDPFD1GcgdHU31mQbENyONd1sg@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: Robert Berger <gmane@reliableembeddedsystems.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: in-tree defconfig
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
X-List-Received-Date: Thu, 10 Dec 2015 03:13:15 -0000
Content-Type: text/plain; charset=UTF-8

Hey Robert,

I've done this by prepending kernel configure task. It just copies the
*_defconfig file to WORKDIR as defconfig.

do_configure_prepend() {
    cp ${S}/arch/arm/configs/my_defconfig ${WORKDIR}/defconfig
}

Regards,
- dhs

2015-12-09 21:43 GMT-02:00 Robert Berger <gmane@reliableembeddedsystems.com>:
> Hi,
>
> This seems to do the trick:
>
> https://github.com/RobertBerger/meta-mainline/blob/jethro-training-v4.1.x/multi-v7-ml/recipes-kernel/linux/linux-yocto-custom.inc
>
> Regards,
>
> Robert
>
>
>
> ..."The scientific name for an animal that doesn't either run from or
> fight its enemies is lunch." - Michael Friedman
>
> My public pgp key is available,at:
> http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Do or do not. There is no try"
  Yoda Master


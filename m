Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7EA9E00B6F; Sun,  3 Apr 2016 19:30:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f54.google.com (mail-qg0-f54.google.com
	[209.85.192.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47330E00A9C
	for <yocto@yoctoproject.org>; Sun,  3 Apr 2016 19:30:29 -0700 (PDT)
Received: by mail-qg0-f54.google.com with SMTP id c6so9670240qga.1
	for <yocto@yoctoproject.org>; Sun, 03 Apr 2016 19:30:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=GjWE7PYkWH1H1R3GnBIIM0xmsqYdM9sdtvL9LbxA5QU=;
	b=ZXUkI+0ztEPrj16j3PlFVfxnb710tXbMSW8CTE1R3PEUjUYKcwMo9fosSeNj1TyoIc
	MLfCCD/Adws8YO7vS142f+gdo4gL2V8vVuA0gzLAb+V2MQyMJtPkAlU1khpzBFQd7V8d
	5hpTV9+51Qe2eBPknXGdBoD5xnuwuchBOYP83PmZW9Jg5EGf315Ixfx5xS7EUY09wxou
	tf0m52ECMeThp7P18KglrhPisiIw3uaKFoxxQO+1GhIHwo43SBaUOJFFJWCvjoHEPvRT
	MOuI+/Z9xByRNaSSbpbWW+7rApa2PyeT4C2cnfkdJ10ifphsrHJWFctFrrKU1hZ6mWr6
	rX8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=GjWE7PYkWH1H1R3GnBIIM0xmsqYdM9sdtvL9LbxA5QU=;
	b=efPCd6u29wXB/5jNLgFj26XPXicHeHyclTrua5AnV4EJZGtfZ8NMTNVz9TqbB+ch71
	7aWDDK94jt8z3DA5xRKHuv7EWYyMveVmez1QVOfkZUaVEIMxwjTknvcf3d3CS7OWD5xT
	TuV2MH4taTtVuzW34SnfpgwohQ/F9pRg4MxvDCJq3ar/wFmmnNro5ptDwAzdeoh+CBri
	vXQGmrlHs/ECS/9e0e577jMONPwdC9lg/+dIYWbBFWBswJh5w9uZMshjRiZstBz3bMlw
	DzZp8CAZVYs4Vvaj+lgbVWxbV4C8wrRrc1AyvrfQvKetbjBiVgJcXV2r5hYKEek6bTgT
	ztiQ==
X-Gm-Message-State: AD7BkJJDWhH0/L6vc3uvlFzCP47F3LwohNYg1ccsyT81je6SuPZC2ucxurN46a1MBzL47n8i1Yv5D1QLSWR/ww==
X-Received: by 10.140.37.113 with SMTP id q104mr11903732qgq.104.1459737028867; 
	Sun, 03 Apr 2016 19:30:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Sun, 3 Apr 2016 19:29:59 -0700 (PDT)
In-Reply-To: <20160404013856.GA6212@linux-mkz6>
References: <1704123.nFWplM32RM@valkyrie> <20160331152604.GA23623@linux-yxv0>
	<20160404013856.GA6212@linux-mkz6>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 3 Apr 2016 19:29:59 -0700
Message-ID: <CAMKF1srVw_661GixzEC7gy-Kt7dBGKOAw_dXPzs4KdR5AajNxg@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [meta-raspberry] Raspberry Pi 3
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
X-List-Received-Date: Mon, 04 Apr 2016 02:30:35 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Apr 3, 2016 at 6:38 PM, Trevor Woerner <twoerner@gmail.com> wrote:
> Thanks to everyone for their help!! It looks like I've got something working,
> not sure if this is a "solution" or if most would just consider it a
> work-around:
>
> 1) use Andrei's meta-raspberrypi layer (which selects linux kernel 4.1 by
> default)

thats good.

>
> 2) add the following to your local.conf:
>
>         SERIAL_CONSOLE_forcevariable = "115200 ttyS0"
>         CORE_FREQ = "250"

Send a patch to document this in README.

>
> 3) ??
>
> 4) profit!!
>
> I've tested with poky building both core-image-x11 and
> core-image-full-cmdline.
>
> Best regards,
>         Trevor
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


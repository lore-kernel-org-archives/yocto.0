Return-Path: <maxin@maxinbjohn.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EBF51E00945; Fri, 22 May 2015 06:46:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
Received: from mail-ie0-f170.google.com (mail-ie0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9B9DE00820
	for <yocto@yoctoproject.org>; Fri, 22 May 2015 06:46:06 -0700 (PDT)
Received: by iesa3 with SMTP id a3so31528345ies.2
	for <yocto@yoctoproject.org>; Fri, 22 May 2015 06:46:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=IZ0Jni0bSjbxxWZ3OzEV1SpdIhHvHYQwbPwhVDdDjOY=;
	b=l0mjVqmKMGwR2nO17vnrJD+ib4h7qBtzpAZTmAj2gglggHa+I9uM5dFFaQiWTu8Idp
	w0vn7bZLETBlAIhoVmK24mFTZJ0IVvgZlp3aTGehuSYdjNGRRiUBjI0/875UwcJhvjwP
	l9X2PkVWAtBglsy+bzboP+x0gQkdni8TNC/WZLk3+M68lqxCbsq4xMFBDp9uL7IK4VGK
	ZXZOSCvrnUYiK6hOlO4c1OvNgd7iB3u/zs/SDLtSqEmGDaKLcxvQDXvmFGnd59KB/gI2
	ZF7Qdv4AcoRkh3Tsl04AYB2XX1W7F1dcx/0OjQ5U/0P9mXLjEKSQ25CAdaaxObLPvqcb
	iTwA==
X-Gm-Message-State: ALoCoQk9CtcGuvq3zjCFTUVogvTC2MlM9WmfItK8ecJj07378kxwq2I6ZlANmIL2NTugwiu37MrC
MIME-Version: 1.0
X-Received: by 10.50.132.33 with SMTP id or1mr5806097igb.31.1432302365746;
	Fri, 22 May 2015 06:46:05 -0700 (PDT)
Received: by 10.36.36.10 with HTTP; Fri, 22 May 2015 06:46:05 -0700 (PDT)
X-Originating-IP: [192.36.1.252]
In-Reply-To: <CADu_VSY4d0Q-gtJq4JjbY9u1Rxx+Qvubg1_QBW6O=E3B2nmt+A@mail.gmail.com>
References: <CADu_VSY4d0Q-gtJq4JjbY9u1Rxx+Qvubg1_QBW6O=E3B2nmt+A@mail.gmail.com>
Date: Fri, 22 May 2015 15:46:05 +0200
Message-ID: <CAFicg845VYmCtA1jcsSPFkGDkj9EgSJvrEg5R6evCDHjPs-bzA@mail.gmail.com>
From: Maxin John <maxin@maxinbjohn.info>
To: Matthew Karas <mkarascybi@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Configuring dropbear ssh
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
X-List-Received-Date: Fri, 22 May 2015 13:46:10 -0000
Content-Type: text/plain; charset=UTF-8

Hi Matthew,

On Fri, May 22, 2015 at 3:34 PM, Matthew Karas <mkarascybi@gmail.com> wrote:
> I've tried googling and searching for a while about this.
>
> How do I set up yocto to configure dropbear ssh?
>
> I'd like to prevent password access over ssh, only permitting key access.

Easiest way will be to create a .bbappend file in your layer which sets
DROPBEAR_EXTRA_ARGS="-s -g"
-s Disable password logins.
-g Disable password logins for root.

---
do_install_append() {

case "${MACHINE}" in "my_special_machine" )
echo 'DROPBEAR_EXTRA_ARGS="-s -g"'> ${D}${sysconfdir}/default/dropbear;;
*);;

esac
}
---

> Thanks.
Best Regards,
Maxin


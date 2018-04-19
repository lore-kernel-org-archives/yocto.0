Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CBF2E00A1C; Wed, 18 Apr 2018 23:00:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.180 listed in list.dnswl.org]
Received: from mail-qk0-f180.google.com (mail-qk0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BEAEE00756
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2018 23:00:28 -0700 (PDT)
Received: by mail-qk0-f180.google.com with SMTP id d206so4357805qkb.0
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2018 23:00:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=JC+yf1rI3lm+YJ0cYFFd/fXkte/hx9COMlr3JoWuJ0I=;
	b=RP13UxzNZQ85VY4oLc/KjOqrd+8721XQY2Jja2Y2Mlh+1/UMW0+b6bEM2vOdoYXXS6
	pspjfjRkxnyUWxnSr47OvvI76zCZ2u74mDc2reR/4yYRCBVItsvY99su3wWlvFYUDw+e
	EFvi0WcLrcf475hxXJ2hwuLzEYzaXDUBzaIYDltAa70jQCpRh8t1pFSd7p9znREPK/ri
	d4jN5CgbNZQbPu6aNknNA+RRjbSLJ2Grq69C8KHbjuoqqx9qqWtRZ2zhszIKtG79w6uX
	upxbppWXDE0MzYsTha6Hr2FJJVFNJyY0jNn1qdt8tn6YEkVjeUL+D4MBmAThxRSMGNd3
	7WSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=JC+yf1rI3lm+YJ0cYFFd/fXkte/hx9COMlr3JoWuJ0I=;
	b=ToJPyyPIWOAA8rhMbE08VbYpaJwgBF307sUReQDrdI7nVypIlG2VDRjqRyU47uLD8i
	knNjeSo7sjVrVmSSSPzPPWuMn83PnaUbluOQcYbc9agfIdVuvgogn26YgiwrYRQ2vBRX
	Hc7LqGTNFZ4A3YVpRNkkTHAyNl3OQlyoEkVr+CRtjxZ0OwStCmxQFtKUOG7vKrPkffgC
	z2mLfS9VFViksjXzLwJxRN//uzxWw8aWZolO6O/YoMbGWnEMxb3er7zwdNA93rdNMP/s
	w5/8ewvdyzRJjG9uAgSMLwORdTF0PLz5eE/4gf2ny0GuIFc2MV/WJcNG/Y+zmCGv5oBc
	3G3g==
X-Gm-Message-State: ALQs6tC4mNt39xvLi34MmC9WtfFQ1/3f9sVN+xFQeiUo+poa0i5SzoIF
	r6TRaIxsPet6tjCKQLzmocgm16yNTGdwSUBPjhdepw==
X-Google-Smtp-Source: AB8JxZotP2PjbV5lTDroN4WqlxBy8U87jnRy8vq1LP66yvAxeVWV4Xv7ru0M+NGaYNJpyTtypoKgPIqfieIi5AI47Po=
X-Received: by 10.55.31.69 with SMTP id f66mr4630638qkf.440.1524117627508;
	Wed, 18 Apr 2018 23:00:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.247.141 with HTTP; Wed, 18 Apr 2018 23:00:27 -0700 (PDT)
In-Reply-To: <AM5P192MB0132AEBDAFE4E6411791DF658DB60@AM5P192MB0132.EURP192.PROD.OUTLOOK.COM>
References: <AM5P192MB0132AEBDAFE4E6411791DF658DB60@AM5P192MB0132.EURP192.PROD.OUTLOOK.COM>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 19 Apr 2018 08:00:27 +0200
Message-ID: <CAGAf8Lx77SfXCsRT=2i3XygqvQKH8zOQishdpRXUCqYz+4m5XA@mail.gmail.com>
To: Vincent Daanen <vincent.daanen@orthotaxy.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Need Help for meta-qt5
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
X-List-Received-Date: Thu, 19 Apr 2018 06:00:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

http://developer.toradex.com/knowledge-base/how-to-set-up-qt-creator-to-cro=
ss-compile-for-embedded-linux#contents
http://developer.toradex.com/knowledge-base/board-support-package/openembed=
ded-(core)#Adding_the_Qt5_Layer

Hope this helps,
Zoran
_______

On Wed, Apr 18, 2018 at 6:24 PM, Vincent Daanen
<vincent.daanen@orthotaxy.com> wrote:
> Hi,
>
>
>
> I have to add Qt5 QtCore libs to my image. I know I must use meta-qt5 but=
 as
> I=E2=80=99m not familiar with qt configuration, I simply do not know how =
to start !
>
> So can someone help me to configure meta-qt5 to simply build and add QtCo=
re
> to my image ?
>
> Thank you
>
>
>
> Vincent
>
>
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


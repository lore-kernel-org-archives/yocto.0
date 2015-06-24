Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C354E00A21; Wed, 24 Jun 2015 06:59:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	URIBL_JP_SURBL autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.182 listed in list.dnswl.org]
	* 1.2 URIBL_JP_SURBL Contains an URL listed in the JP SURBL blocklist
	*      [URIs: gherzan.ro]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-lb0-f182.google.com (mail-lb0-f182.google.com
	[209.85.217.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB4F5E009D2
	for <yocto@yoctoproject.org>; Wed, 24 Jun 2015 06:59:08 -0700 (PDT)
Received: by lbbwc1 with SMTP id wc1so26929761lbb.2
	for <yocto@yoctoproject.org>; Wed, 24 Jun 2015 06:59:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=a7WmWIc8CPr7GnIi6opTVObzgY+ZYHxxXgaLKieXbnc=;
	b=MMWkau3FWdAmQ1Hvl7OkiP9f2smPbQLCKBU5XY7c6rS9ml527t/ndgHxZ+PGCeChup
	tnzYI5ZGdXd5ruriYaIevyvabaLuEPQsPt9k1EWl/i1PzbdsQig4jYJYMvjOCwqZmUBI
	ALlZ52LIFL5oMlHYsRzpV6eHsj3/R6k0iDJNNtqNQHhQTzGLwkYyWkPE5VzKhnfN+xZN
	BWBPrW6DZt5+HtEOIDWvTm5mplF9Tdv6rZBhwIlSEn5hcqxB5WmyKm1pCT/ot/VPmM0U
	+L9et0hp9lQu2hHoCcGjuaahSRh+XVonXYTLNmZqUHvaKCYYybMlAEHelGq36aCN1fWG
	H43Q==
X-Gm-Message-State: ALoCoQkyMLIwH4NJGSM71g5JMPDpaPzi6Tg8hisYBY2zZnjsPVKrCktxjZwX44joTsUj/+ItpWMb
X-Received: by 10.152.2.2 with SMTP id 2mr41136496laq.58.1435154346218; Wed,
	24 Jun 2015 06:59:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.112.147.232 with HTTP; Wed, 24 Jun 2015 06:58:46 -0700 (PDT)
X-Originating-IP: [81.108.63.159]
In-Reply-To: <001301d0ae7a$995ebbb0$cc1c3310$@neuf.fr>
References: <009101d0a8d9$c460eb40$4d22c1c0$@neuf.fr>
	<CAK18fxEc3T93vKFmRdxhRu5MHOZxM22xyBAfR+cAsnBiptwgUg@mail.gmail.com>
	<02ea01d0a99f$ec37d2c0$c4a77840$@neuf.fr>
	<CAK18fxG+HWcgNYmnspFVHdfi_Pzz5wK-vstJTAxti1pTz0943A@mail.gmail.com>
	<CAK18fxGtQ=bQZZKK2LyBVhmR1O-L_atYXZnAcVU2-9qf6hzxSA@mail.gmail.com>
	<000a01d0ae54$0efcd180$2cf67480$@neuf.fr>
	<CAK18fxHbB9+LaWVj6t46YUdO_Lay=_D9wo4nZv5aZjj5zq+FiQ@mail.gmail.com>
	<001301d0ae7a$995ebbb0$cc1c3310$@neuf.fr>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 24 Jun 2015 15:58:46 +0200
Message-ID: <CAK18fxHYe4mMXRkgd+Gyw52M8_Hdin3vpSgcBrC9sCjsszKSfA@mail.gmail.com>
To: Herve Jourdain <herve.jourdain@neuf.fr>,
	Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] [PATCH] ds1307-rtc-overlay.dtb has been removed from the kernel tree, and most overlays have been moved to the dts/overlays directory
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
X-List-Received-Date: Wed, 24 Jun 2015 13:59:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

Adding Yocto back in loop (sorry for this - it is my fault).

On Wed, Jun 24, 2015 at 2:37 PM, Herve Jourdain <herve.jourdain@neuf.fr> wr=
ote:
> Hi Andrei,
>
> OK, not sure what happened, it seemed that when I tested it, it downloade=
d the latest version of the kernel on github.com/raspberrypi for the 3.18.y=
 branch, instead of the version specified in the SRCREV... And I really don=
't know why...
> So after rechecking from scratch, when it pulls the correct version, then=
 it still works like before.
>
> But this patch will be needed as soon as meta-raspberrypi moves to a more=
 recent 3.18y version (739c586c87576fb8ef151b5843ebed76c43a5221 or later).

I understand that and checking the upstream code I can confirm this
change. Thanks for informing and will definitely look into it when we
will update the kernel. If you want, you can help Petter in getting
the updates faster. I know he is already working on this (CCed).

> Regards,
>
> Herve
>
> -----Original Message-----
> From: Herve Jourdain [mailto:herve.jourdain@neuf.fr]
> Sent: mercredi 24 juin 2015 12:40
> To: 'Andrei Gherzan'
> Subject: RE: [yocto] [meta-raspberrypi] [PATCH] ds1307-rtc-overlay.dtb ha=
s been removed from the kernel tree, and most overlays have been moved to t=
he dts/overlays directory
>
> Hi,
>
> OK, I'm trying right now... I will need a little time, though, compilatio=
n is not really fast...
>
> Regards,
>
> Herve
>
> -----Original Message-----
> From: Andrei Gherzan [mailto:andrei@gherzan.ro]
> Sent: mercredi 24 juin 2015 11:21
> To: Herve Jourdain
> Subject: Re: [yocto] [meta-raspberrypi] [PATCH] ds1307-rtc-overlay.dtb ha=
s been removed from the kernel tree, and most overlays have been moved to t=
he dts/overlays directory
>
> Hello,
>
> On Wed, Jun 24, 2015 at 10:02 AM, Herve Jourdain <herve.jourdain@neuf.fr>=
 wrote:
>> Hi,
>>
>> I used the master head, downloaded in may.
>> The last commit I see using "git log" is:
>> commit 6ef9d94a2c2588dcefe442577ef6ae5bbe722dec
>> Author: Petter Mab=C3=A4cker <petter@technux.se>
>> Date:   Fri May 8 23:49:05 2015 +0200
>
> Could you please use the current HEAD? I can't reproduce on current revis=
ion.
>
> --
> Andrei Gherzan
> e: andrei@gherzan.ro
> w: www.gherzan.ro

Regards,

--=20
Andrei Gherzan
e: andrei@gherzan.ro
w: www.gherzan.ro


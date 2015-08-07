Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5687E00A39; Thu,  6 Aug 2015 23:15:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
Received: from mail-io0-f182.google.com (mail-io0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63A71E00A31
	for <yocto@yoctoproject.org>; Thu,  6 Aug 2015 23:15:24 -0700 (PDT)
Received: by ioeg141 with SMTP id g141so102940704ioe.3
	for <yocto@yoctoproject.org>; Thu, 06 Aug 2015 23:15:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=2+/MrCkA9KTj3ZLjyaNk77NV2WECpRjvWzjrZE6Upsw=;
	b=uyx6VN87WPj7z2d0fM0OCbeAjPEplfBeXCn4JpvEQopaalRf5ekoiC26QsOOXFiyCD
	nEyXWno8xDTv5kNezk+Ko1Pnwln/qInrKpBMthKLhydR8ScSdINnrXl0ySac5kov/wrG
	c3Ox7frMLSfy6pB6Zl0oOSmtqE4NBacZt7Ux2XfK7xFtHjJgwawfPtxgbOy5TtfNcoE/
	lwCA4+DJIwmAPK+dwZ49Sqy869b9AxlsTyV/d+0sWH2pGtjd+qIyzn3lI2NUVG0oJjQ8
	1l1OaXPW44p+8csEGAvVr9sRs27l2I+ZC1WKeHACTNwqGBwzWkLHMjEAOdY4ehXu0jWT
	TpBg==
X-Received: by 10.107.168.145 with SMTP id e17mr6167685ioj.112.1438928124455; 
	Thu, 06 Aug 2015 23:15:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.38.79 with HTTP; Thu, 6 Aug 2015 23:14:55 -0700 (PDT)
In-Reply-To: <002501d0d0d6$1a587d50$4f0977f0$@neuf.fr>
References: <002501d0d0d6$1a587d50$4f0977f0$@neuf.fr>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 6 Aug 2015 23:14:55 -0700
Message-ID: <CAMKF1soYHzCF65peDgV=KBcwmx0RTZdRfgWo4Ts+Phsssd2qNA@mail.gmail.com>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] userland
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
X-List-Received-Date: Fri, 07 Aug 2015 06:15:35 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 6, 2015 at 10:57 PM, Herve Jourdain <herve.jourdain@neuf.fr> wr=
ote:
> Hi,
>
>
>
> Currently, userland_git.bb PROVIDES virtual/egl and virtual/libgles2.
>
> But =E2=80=9Cuserland=E2=80=9D seems to provide many additional component=
s: mmal, vcos,
> openmaxil, vchiq_arm, bcm_host, WFC, OpenVG
>
>
>
> Wouldn=E2=80=99t it make sense to add additional PROVIDES to handle those=
 as well?


if they are implementation of generic components then sure. openvg and
openmax might be one of them but if no one
is depending on them why bother ?

>
>
>
> I=E2=80=99m thinking about openmaxil, for instance.
>
> Right now for instance, I get it by adding a DEPEND userland to a .bbappe=
nd,
> but I=E2=80=99m considering adding maybe a virtual/openmaxil to userland_=
git.bb.
>
>
>
> Does it make sense? Any suggestion about that?
>
>
>
> Best regards,
>
>
>
> Herve
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


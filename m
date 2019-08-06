Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DBE66E00CB9; Tue,  6 Aug 2019 11:12:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.46 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com
	[209.85.208.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75941E00C5C
	for <yocto@yoctoproject.org>; Tue,  6 Aug 2019 11:12:13 -0700 (PDT)
Received: by mail-ed1-f46.google.com with SMTP id p15so83095134eds.8
	for <yocto@yoctoproject.org>; Tue, 06 Aug 2019 11:12:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=ugZQB9MGLEM+tvj/1Lk7HsRhcRtTK/ahd4MLIqgNiPY=;
	b=VzALd/vMUU7WD9R/HbbKOpfwIG3y37VbMi23S5tqMfoeAPzxladDgZ1eiz63UmVMHP
	codyi1VjttwShtDL5NFEu0vixCXMSg4I10B9eRjnRaM/oRHnulGHHxk7xEj1wr6CC8pJ
	cnJvzd5hwxlFCyR7pEy08bFNgvSABPZlx7kvBSJDKBZSZ2ctLsAXGbLade8QZ/4y3gno
	lkEBeCwfim9EFLNY/70JBTTaTcv43GGW1fNFKevwdiTHOfBUV6NQn0xTVMCTiAGKZH78
	XE6WFC8Gq59QwhQxVotNAzNTqZ+M4b54NZdNq8r+9g53njRmT1+W6r0nVwGXK37EJNT7
	Xvew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=ugZQB9MGLEM+tvj/1Lk7HsRhcRtTK/ahd4MLIqgNiPY=;
	b=ZzzIhLkh5Un68UZJMTTN63tNqxR4B1eauZu6a6/0crOXuTK4vSBQcXYCFA8o1jZq1s
	wsoeXYBr9NwaGoX9YHOUxLXUFAZK7F7iAMKKdIi2MMR9rdKWJQSFaZu9fyrUhRO97VB5
	Ro3Nu2BTrybCoPzorrva+6HcF3KiluxOFXNbH/j8HJWy8//qPuOG898F8dk+AQITx/oo
	uG9xWhzz72DH2RBHyXtcjtqJpvXfIeOk6FEOK14Yui5+NPBoIIIjr/L6OmcFMgMpssgn
	Mpcb8m0zhjsDNdC/MR1pjD5gLJBeMYP+1uPkdi8CU2OYwf0nsPnyLRQOPtc2iq73vZaA
	+Vgg==
X-Gm-Message-State: APjAAAUgFLOPYe8HbDbksWf3w4jz6C3utpAZ/3M7CeVFuYmoEzkb0H/p
	IBKHHWqUyRQRpEqcbtyJyGofTvZxD34D1Wg74ts=
X-Google-Smtp-Source: APXvYqxHBR4Nznn69Nl9odvnuDBbYw6LljnOtI3nQ1//Tw14lGcSNJVNfZSe71mbv98tz6NRTR80Zcd3aZh1lS78fnY=
X-Received: by 2002:a17:906:12d7:: with SMTP id
	l23mr4547244ejb.282.1565115132584; 
	Tue, 06 Aug 2019 11:12:12 -0700 (PDT)
MIME-Version: 1.0
References: <a0b3676e80ee47cab3b6cbef25d77f22@sakuraus.com>
In-Reply-To: <a0b3676e80ee47cab3b6cbef25d77f22@sakuraus.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Tue, 6 Aug 2019 20:12:00 +0200
Message-ID: <CAAfyv34M_0dKu2ML0En8QyVCV5KXscZ6gYfZwE=-yrxxHuqxYA@mail.gmail.com>
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: U-boot enable not working for Raspberry Pi3
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
X-List-Received-Date: Tue, 06 Aug 2019 18:12:14 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Greg,

On Tue, Aug 6, 2019 at 7:12 PM Greg Wilson-Lindberg
<GWilson@sakuraus.com> wrote:
>
> I'm working with a Yocto Sumo build provided with Qt's boot2qt system. I'=
m trying to enable using Das U-boot to load Linux as a first step in trying=
 to enable OSTree updates.
>
> In the meta-raspberrypi documentation is says to set:
>
> RPI_USE_U_BOOT =3D "1"
Could be tha tboot2qt somehow drop your config. Please try tin run
bitbake -e <IMAGE_NAME> | grep ^RPI_USE_U_BOOT to be sure that
variable exists. I used it many times and it works perfectly fine.
>
> to enable u-boot for the raspberrypi. I have set that variable in the top=
 level local.conf file but I don't seem to be getting any changes in the bu=
ild. Nothing in the cooker log shows building u-boot, and the start up scre=
en doesn't show any u-boot messages.
>
> It appears that I'm missing necessary to turn u-boot on, can anybody shed=
 some light on what is going on?
>
> Regards,
>
> Greg Wilson-Lindberg
> www.sakuraus.com
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

BR,

marek

--=20
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com


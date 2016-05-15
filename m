Return-Path: <matt@madison.systems>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7B9FE00CFF; Sun, 15 May 2016 10:29:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f46.google.com (mail-pa0-f46.google.com
	[209.85.220.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47898E00CF1
	for <yocto@yoctoproject.org>; Sun, 15 May 2016 10:29:43 -0700 (PDT)
Received: by mail-pa0-f46.google.com with SMTP id bt5so56343569pac.3
	for <yocto@yoctoproject.org>; Sun, 15 May 2016 10:29:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=madison-systems.20150623.gappssmtp.com; s=20150623;
	h=mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=TGQssgX5Za8/JojDncH8xFXA1EamK8VYeq64tHivU7M=;
	b=AKJKIqiZILsW+rzhfalo8aoGce8zdBt7yNv5oJfJ1drgHxxRyF/20L352FAuzQXv05
	Ptz+q1jj3pL/LYztzetbJ0vnL3OJ0ZQyR/DfXQLHHk6bOyeaLbNYtqtMrkZDheL5Wig5
	iYj4xTMCDlYF3XT5bL48dVpjQJcwtagTEnrjytAZOLaI3Rd94s0YtGq6KP7FZ4QAufIC
	yqBhzklCreLeOqKRLCsshpfs3BhEAtjOBe4acX1nJU4ODWmZQ1OsDgvrwkb5Bb/Pvk8h
	vGncU0Ek6J+ipRk210uVeIZ+XmrdyFkjwZ3+rqT7PumN8NDzNRxZYgf3rafwTSLyOix6
	m2xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=TGQssgX5Za8/JojDncH8xFXA1EamK8VYeq64tHivU7M=;
	b=BadJq9d764zE4NH5OwQV3X0RcLpDNPAuP/Fiq9jRN5EfzB3Kup2XEOuaq32sxjIsqK
	D5na8cH8/eSZD3om6MVDBwesnveeE2bYYYZ2Z9uKW5kmAl0BaZErmCAOhJ6Qcal+sJMQ
	XwUwVxdYVeTUxEDt3uU/4tsF6SqPrTnlC3tqU0c/N4KYqoOzgUd/yrPJN1os/OLQJeXk
	r4o6AnigmqR0RqCoPbtvEKmcDFIH3r3924RCZVHcDC2FfH+IBPoQKFLNJ8fHaEbDQsvx
	eDvo2uwHS8U2aTt/WBr04VBfKim2YdfEZWmQaTVnC9ebV/GzerlUmImDFGv8vhy10WOU
	eHBQ==
X-Gm-Message-State: AOPr4FVLVWScE7cDv8U7qGMww1zZVAQeAncvTuicSWkS2zOaqSSnGGKcyBRsLT1oDNgW2A==
X-Received: by 10.66.172.165 with SMTP id bd5mr39470073pac.128.1463333383250; 
	Sun, 15 May 2016 10:29:43 -0700 (PDT)
Received: from [172.16.1.13]
	(70.90.175.93-BusName-ca.sfba.hfc.comcastbusiness.net.
	[70.90.175.93]) by smtp.gmail.com with ESMTPSA id
	dh4sm41689605pad.37.2016.05.15.10.29.41
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 15 May 2016 10:29:42 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: Matt Madison <matt@madison.systems>
In-Reply-To: <2b5a99dd-ca48-a77f-9acd-bcfebe479884@eumx.net>
Date: Sun, 15 May 2016 10:29:40 -0700
Message-Id: <0F4D52DD-BB7E-4449-B5B2-5D90A683ABC3@madison.systems>
References: <CABfz71dsLkf5W9LDsEewXj2Rmw715jqqMFvwKE7WYT=83iAs6g@mail.gmail.com>
	<CAMKF1so7vzL4iKu5LiBKNK2cNBbV_0fuRoD_c7aVaN8x+kAh3Q@mail.gmail.com>
	<CABfz71dAJ4L6rKFgCOQgYNdqmr9jk5UaSLkMO=2PJ58gMBCLkw@mail.gmail.com>
	<CABfz71e32ixS10u7Wyr+XnZm+N93s6tPNorYNRqf276xh5ay9Q@mail.gmail.com>
	<CAMKF1srhr1uYJq53LZ+CKUNqYPAv3uq2onv3PtY=nVVyz7+bgA@mail.gmail.com>
	<CABfz71fcyMhkU3oH7msO8p2rAp1x4wozU9ordW2ZP7dqQVCNGQ@mail.gmail.com>
	<CABfz71c3eZDAXRJ-2RcqjnwAe9bhfkqz8aF1FHFiPYSVwA5ZBg@mail.gmail.com>
	<2b5a99dd-ca48-a77f-9acd-bcfebe479884@eumx.net>
To: Jack Mitchell <ml@embed.me.uk>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: machine arch files for Jetson TX1 (Quad-core ARMCortex-A57 MPCore Processor)
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
X-List-Received-Date: Sun, 15 May 2016 17:29:48 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 15 May 2016, at 04:25 , Jack Mitchell <ml@embed.me.uk> wrote:
>=20
> On 14/05/16 23:46, Paul Knopf wrote:
>> This is what I am thinking.
>>=20
>> DEFAULTTUNE =3D "cortexa9hf"
>> require conf/machine/include/tune-cortexa9.inc
>>=20
>> Does this sound right? I am using "hf" because in the crosstools-ng
>> has CT_ARCH_FLOAT=3D"hard", and cortexa9 because of
>> CT_ARCH_CPU=3D"cortex-a9" and CT_ARCH_TUNE=3D"cortex-a9".
>>=20
>> Sorry, I'm that familiar with embedded processors. Any guidance would
>> be greatly appreciated.
>> <snip>
>=20
> Someone has already started having a go.
>=20
> https://github.com/watatuki/meta-jetson-tx1
>=20
> Easiest way to check for support in OE is to google meta + devboard =
name. Usually turns something up :)

There=E2=80=99s also https://github.com/madisongh/meta-tegra.=20

-Matt


>=20
> Cheers,
> Jack.
>=20
> ---
> Jack Mitchell
> Embedded Linux Consultant
> www.tuxable.co.uk
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



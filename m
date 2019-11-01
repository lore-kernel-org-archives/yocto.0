Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40921E00DE6; Fri,  1 Nov 2019 10:18:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.173 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
	[209.85.222.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B026E00D94
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2019 10:18:52 -0700 (PDT)
Received: by mail-qk1-f173.google.com with SMTP id q70so11316723qke.12
	for <yocto@yoctoproject.org>; Fri, 01 Nov 2019 10:18:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=Dw9edNDMJ4jFLc8JQl+Yn4+E7WzzbCJTsHJNsJpZP78=;
	b=S86ngnM8NeibZ02MHehi+2An3L+5PknLKE78CzGK7qkyTIHmFYQmHj8jy2HCTESBMr
	yTeU9rZQFF7ryIKsqTPM6tjYZ3AJD6WP3VBptB9gXGaYJoW0PsaIfbwsyIL9P/WOjfIb
	J8jSKlckG1yi0Xl0V5/1ojiP2kC09z4KH3onmxHEDmyWd5o9roYpmFXzEtQ9HzWgvWyB
	uJBp2wnEIwsJVGCfZJPkqjG6qQTC934JNv8Dcx8HxslpH39BhtSorMvQw1pgNagIGb2T
	X4USA6gi6CKC4VAUFyR6Ljcv2rEDFv4IPZaR2PLFZRbGm/8wMXUj8phxTYKMIGI7cgH/
	7pjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=Dw9edNDMJ4jFLc8JQl+Yn4+E7WzzbCJTsHJNsJpZP78=;
	b=tnvspV2+3GL6FfM5/i3Ei34EoW3vN/peDlBuzOiQixrvpl21nKPoV/5LffSjyl/OrH
	FK6hqXG2KQKAE2cdb9veai5iqi2SAlB1bJhlbTSsGSfOLUxbzCQfBDc/MrnGXC30iAu5
	5RinrWlOHxBmOTtV54fD95schc8avyrhXyNMXeRQgpUiuzc+EUG6kqzLayqCcJ5wkWPv
	puXJu8sE5uVQfmj2T9pzmRx2LWm4HOH5Ix0IYo2YAsSdGJk3h3RRRQe7LmA+WqWT8f1j
	7GA5pgRKrrqzueMtEUCBidlhXYEf2qcFw3BwpO/iNAmyMeW/16HRWJF9WX3kTaadu+Ye
	bcLA==
X-Gm-Message-State: APjAAAW888yHgGtlByecJCn0pyXvizG4l93Tky2BGsFstNnV1/azUFl0
	8D9FNUHVs7lnJ1C2D/rTmqbWwMiF0GI1QlabX475nLaZuac=
X-Google-Smtp-Source: APXvYqzdoLVITvHsIuzQX2nYmTejZt/TgUSPZ0Sf+LVave+d6nIlrNtraDZQ/wlGBNnNNMG/qCFV5jheUJVPnkFB4Gc=
X-Received: by 2002:a05:620a:a9a:: with SMTP id
	v26mr6680472qkg.71.1572628731225; 
	Fri, 01 Nov 2019 10:18:51 -0700 (PDT)
MIME-Version: 1.0
References: <7D6FCC3C-A8B1-4EE7-875F-E544DCC3B44A@korgrd.com>
	<d6a7e59a-cc6a-aa34-21a5-47c73062f9e1@gherzan.ro>
In-Reply-To: <d6a7e59a-cc6a-aa34-21a5-47c73062f9e1@gherzan.ro>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 1 Nov 2019 10:18:24 -0700
Message-ID: <CAMKF1srHdfY1=Qbb7vURbMauc5VcPiKzH6_AGht86ChoJKvDZQ@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Yocto Project <yocto@yoctoproject.org>, Steve Pavao <stevep@korgrd.com>
Subject: Re: [meta-raspberrypi] poky linux build fails if ARM erratum mfix linker switch is specified
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
X-List-Received-Date: Fri, 01 Nov 2019 17:18:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 1, 2019 at 1:28 AM Andrei Gherzan <andrei@gherzan.ro> wrote:
>
> Hi Steve,
>
> On 01/11/2019 05:32, Steve Pavao wrote:
> > poky linux build fails when ARM erratum mfix linker switch is specified
> > in local.conf:
> >
> > TARGET_LD_ARCH_append +=3D " -mfix-cortex-a53-843419=E2=80=9D
> >
> > causes build failure.
> >
> > Please advise how to use this switch successfully.  I am synced current
> > in master branch in all layers as of today.  The switch causes libtool
> > link to fail due to missing libbz2.so.  If I don=E2=80=99t specify the =
switch,
> > the build completes without errors.
> >
> > It is important to be able to build poky linux with this switch to avoi=
d
> > certain crash conditions as described in the ARM errata document.
>
> I haven't tried this erratum fix. It is indeed implemented at the
> linker's lever. It's curious though to see the bz2 dependency. Can you
> share the specific error? I assume you are doing this on RPi3.
>

this will impact rpi3 in 64bit mode, don't think 32bit needs this. I
think its best to
add this option in raspberrypi3-64.conf perhaps via TUNE_CCARGS

> --
> Andrei Gherzan
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9D83E0090C; Mon, 20 Aug 2018 04:09:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f46.google.com (mail-oi0-f46.google.com
	[209.85.218.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE4FBE007C9
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2018 04:09:26 -0700 (PDT)
Received: by mail-oi0-f46.google.com with SMTP id q11-v6so25042881oic.12
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2018 04:09:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=mltDpodbSlGGWkk3RI4T+5ZfJ3NtWBkm3kgfahxlLZk=;
	b=FeD01U0QJgLCPZQ3c6eadOxrQg/HNEcJCpgQCsE4F2SmxAO1OcrOuaEWFBD8Vs9ZfW
	h//cOkUM5ne1Z8seAcJMGcYT5AAeeOrz3mUlWh/yr5kgajWzLWBVoCaP5/aAecWD+u1D
	SlUFFBsHCffTuFAGrubn5XFUl5y0DseP8TzpDopmcZ+9Ywwa4+GSYRjiFtYybMg17Xa8
	wnvK/qr/QBvpycdWMljCGGpOk+KCZ56W+jAIqv8JKP4S3Mka6EbyNP+vIVWO7SCniF54
	XwJf677fJVZGBO/b6KdABeahUvcBiaIyVvD6KbfksZ+cZgkogBIFGzDjH/8Mr3MnwegQ
	a1eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=mltDpodbSlGGWkk3RI4T+5ZfJ3NtWBkm3kgfahxlLZk=;
	b=nvJmO+DS2dRnnQCbhwD+1cJ91/ufbqV59zqqjXjfYYYqHlIrNvkPfrdHASm1C+1ZXb
	vfzRQuUke/JXzKbY6p/zTLAv4pcdgpV5+2tRdfzF6jui0BGH9xGOWnn/pBfUx5t5ZxPm
	wIcRge4KUP/b4RRCKBmx8+B938dN3FEj+NJ08YLGOqCZTYgJXuKMtowGSy8rWKrpahhJ
	SwPuAeYwYVfHdAOJ5/Ih95RbT+dhBBDr+ND0Fbotj+ZJL9Kb4TPCFpiey0WOMceDcD+i
	awvtnJkGlxaZ1Jsh4PvEBZbW6xlYNsJ3Bs+g3Dh0oSHtLpL1p1FfNedITPUokpeTD18u
	yKKA==
X-Gm-Message-State: AOUpUlG+7SHBRx3WEpdWOUQEEfi3JiB+cNxky7fj2WwfQvZyFL6slce6
	GL6D3tRyC9iwXvfPg9PyNbZrdeT0WPQSCW7KS/T7Zh4V
X-Google-Smtp-Source: ANB0VdaaR+pgnQOLnaQpDpd0vs3KG/aHwA/7R1pC+pGJFfQ5FmF/e5WhmuCgULV/JgoKb7ynw7VxVfLEqCwAW8oP7G8=
X-Received: by 2002:aca:4ac6:: with SMTP id
	x189-v6mr14029410oia.211.1534763366198; 
	Mon, 20 Aug 2018 04:09:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:90ed:0:0:0:0:0 with HTTP; Mon, 20 Aug 2018 04:09:25
	-0700 (PDT)
In-Reply-To: <HE1PR06MB1689A8B4242EF071FDD42F78943E0@HE1PR06MB1689.eurprd06.prod.outlook.com>
References: <HE1PR06MB1689A8B4242EF071FDD42F78943E0@HE1PR06MB1689.eurprd06.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 20 Aug 2018 13:09:25 +0200
Message-ID: <CANNYZj94ivO54g88AT4g1KLTbtPHGfiFxA=Owvnvu=RqHYRVKg@mail.gmail.com>
To: Nader Hariri <nader.hariri@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: ptest-runner "No ptests found."
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
X-List-Received-Date: Mon, 20 Aug 2018 11:09:28 -0000
Content-Type: text/plain; charset="UTF-8"

2018-08-16 16:07 GMT+02:00 Nader Hariri <nader.hariri@hotmail.com>:
> Hi, I am new to Yocto. I am working on ptest-runner.
>
> I followed the wiki https://wiki.yoctoproject.org/wiki/Ptest , but when I
> boot to my image and run ptest-runner I have the output : "No ptests found."
>
> Is this normal ? I thought that
>
> DISTRO_FEATURES_append = " ptest"
>
> and
>
> EXTRA_IMAGE_FEATURES += "ptest-pkgs"
>
>  would install all the ptests for me in my image, apparently I am wrong but
> could you please explain to me why this is not the case i.e why ptests are
> not automatically installed in the image even though I included the above
> lines in my local.conf ?

Please note that ptests are only supported by a (small) subset of
recipes. If none of the packages that are in your image are
ptest-enabled, then no ptests will go to the image. Is there a recipe
in particular for which you expected ptests to be in the image, and
they're not?

Alex


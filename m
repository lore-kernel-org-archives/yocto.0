Return-Path: <erik.boto@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11AECE00D4F; Mon, 26 Aug 2019 00:15:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (erik.boto[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.181 listed in list.dnswl.org]
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com
	[209.85.210.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A416E0097C
	for <yocto@yoctoproject.org>; Mon, 26 Aug 2019 00:15:54 -0700 (PDT)
Received: by mail-pf1-f181.google.com with SMTP id w2so11213032pfi.3
	for <yocto@yoctoproject.org>; Mon, 26 Aug 2019 00:15:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=CM/VQIApLZSWlLpvcnktYjQZ/su2Z8RNm5SoFmPFWFY=;
	b=EM4ijxbfhSZlBvTrgCkOEkIzE5AX0vO797nnI1JDaPq3WbAj+awsfGnBzNSkeFe3mP
	LYEs3JKQErE209IANbR0R9+UdMYw6+iBOVP5Ig4hBoTrFSsT+SX4AkNc/fVz6kW84Enw
	uIeqEH6TmpNTXFVvKqrDGRdC5vQ5Z1kZVh+5ICJRcn7gwx7G/M7ajRDidNBGFBYPypeq
	yaql5SfEf/BzaAf1KZbT9ToKIB54AXt8Iwejw7Ind4kBMl4rsSCNSqnW/6i0aKFtV4Jf
	U+sTffkAwu7Id61rsZJyVxPyVnPlWNolEcPIN76cjVr8refYmO8BIMlnaTzIOEyG4zfl
	AEtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=CM/VQIApLZSWlLpvcnktYjQZ/su2Z8RNm5SoFmPFWFY=;
	b=BLFmLdfke9CpGweuPUoLzyuUO4VnDhHDWw9TGu1qq/PVOpltjMIbD2gkSJoIVTu9nV
	tM0YKsfODD4nqANxwPmDkrmbOF0ONAnilcqwDDr0CIlcsKKLZCCmfW+FzqqQixWrXrYC
	Ic4DIUCtOBkjkROr7WohldHgQElg7acFR370yUVenrNTzy+vwpcmYmQ6GNvjiW9imfQV
	K2YWA/ebuy6D7A7AOEwfnb7EMwkGxcWwAUMDuEA+vCutJn2uq72rSLpj9aPEI5XSPch6
	itQeHgUInw/Ow9Sqj8uoX8cO9jLAA/shtr0nIaShO2lgeeqpGlDDWYbnFkJ29zioUphr
	WUwQ==
X-Gm-Message-State: APjAAAU63F9jEPSCglWVWQbUjKcyBOqxaV5irwt9UFwGg1hsjxycWcSf
	H0XW4A1/J5N77mkE/cnkpE+2FP3KGQsvyUoPrmM4UZIS
X-Google-Smtp-Source: APXvYqx4NB1WU0nuUINUSkJsKIDlidED0SIj3V4rVECZ/o8w1IXHDCZmzOU1EfKToS7mLGbRzjn5Lq39+bhd4Zm1y4A=
X-Received: by 2002:a17:90a:9f4a:: with SMTP id
	q10mr2215843pjv.95.1566803754432; 
	Mon, 26 Aug 2019 00:15:54 -0700 (PDT)
MIME-Version: 1.0
References: <58fb31a5-8271-0645-f72a-4658e13ca988@faresoftware.it>
In-Reply-To: <58fb31a5-8271-0645-f72a-4658e13ca988@faresoftware.it>
From: =?UTF-8?Q?Erik_Bot=C3=B6?= <erik.boto@gmail.com>
Date: Mon, 26 Aug 2019 09:15:43 +0200
Message-ID: <CALNvYWO35yg01OsAcVe-0BP6UDL-Rfp9Ymh0utskFZtG2kG6eA@mail.gmail.com>
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Conditional include in image recipe.
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
X-List-Received-Date: Mon, 26 Aug 2019 07:15:56 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

On Sat, Aug 24, 2019 at 12:20 PM Mauro Ziliani <mauro@faresoftware.it> wrote:
>
> Hi all
>
> I working on a image recipe.
>
> If I include the layer meta-raspberrypi layer  I'd like to include
> recipes-code/images/rpi-basic-image-bb.
>
> While if i not include meta-raspberrypi layer I don't include
> rpi-basic-image.
>
>
> How can I do that?

I think this should just work if you use "include
recipes-core/images/rpi-basic-image.bb" in the recipe, since "include"
only includes a file if it exist and will not fail if it doesn't
exist. As opposed to "require" which will do the same as "include" if
the file exist, but fail if it doesn't exist.

Cheers,
Erik

>
>
> I don't understand, but I suppose I need to read bitbake manual.
>
>
> MZ
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C67BE00D63; Tue, 21 May 2019 18:55:46 -0700 (PDT)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.171 listed in list.dnswl.org]
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
	[209.85.222.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2020E00D54
	for <yocto@yoctoproject.org>; Tue, 21 May 2019 18:55:44 -0700 (PDT)
Received: by mail-qk1-f171.google.com with SMTP id t64so311656qkh.1
	for <yocto@yoctoproject.org>; Tue, 21 May 2019 18:55:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=EyzgidjHUcEq+4hgXWRgRgEUbED+TyLcAsPaP+OPyFs=;
	b=qFcmt1iZN0vypPwc4E2LP2WYNzSK9mcZpKOLbcBUyZ+g6v6ScP3dvM5Y9NM0czofoa
	UTEC2+fZPgUXhm+SOYQvVE0nVQAwB5OjRVmtqSEUMpvoNAx/lDutyTSFGvi/0xVV/Qcl
	/Gbj/xrwG8WrzQjjf5Bzmp6RKDq3R0iCkFScAJKDMshcsUo0YKiocVqoT7Qcl333Nv3p
	Z6bUYDYereR2BaMi8uNBpv218ErobmZxmv/vPHd5Y7BHqT0mB1HiTPA4k1iW47bel8dV
	J8cEG1mOMlLGNz0zFNELrddOQHJvTeyBcp9uvQFU2SmA4zCiLgJb3oN9PVNRM358yIEX
	qqXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=EyzgidjHUcEq+4hgXWRgRgEUbED+TyLcAsPaP+OPyFs=;
	b=LGCrPSmHpFvnpNhTN9a2knm5YfdIR44hweD/modxFXaQn54iEuJskzhFHaw4+fFoFD
	GL9dhhz5PNFywRWufl3aO72GxEasIONQt+fMPMFvOaSe4xoUio4GS1w/5yAZVl01Kknx
	04kgBrYn+SBxTeQ1Ny9O7HBlPwwn9tibOHlkT5maAAiluiHQANQ8Ye+0j/+n/A6K7bvr
	tkeJTSKUsbYZ5CQzzTTLcJwSpoR6WWArSwQBJ+nU3dN0U3CMP2S4uXJI0/9ND6m3AHJ3
	570IQvvd6yEnGnr0xI1buhKvYHyVjrLF3ETWHPWgJmAMtzaze+cc894+VcFfwVLI+td7
	A8Sw==
X-Gm-Message-State: APjAAAUO2uwfTnQnW/UqTkiUUO5P1PRibvRJfXYc4pSziYuO/y3CG3Qw
	W0INxhcfbQ4hEIe/Rq7BqxGSuMPinNwnCvWYHOzlDgLADo4=
X-Google-Smtp-Source: APXvYqygYQ4EgjcSZGy6Lzfxfvhfs2uSwQVypOOIO8JfJ9M6Rt9kzVUp6aQHm5GxLZZniyAnIXBq6m+FF3kfwWu+8RM=
X-Received: by 2002:a05:620a:14a1:: with SMTP id
	x1mr50207324qkj.312.1558490144160; 
	Tue, 21 May 2019 18:55:44 -0700 (PDT)
MIME-Version: 1.0
References: <605eba8c-7265-40e3-8619-81355ec46e7d@www.fastmail.com>
In-Reply-To: <605eba8c-7265-40e3-8619-81355ec46e7d@www.fastmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 21 May 2019 18:55:18 -0700
Message-ID: <CAMKF1sqcM+iEpEyM3eZH_6n794c8S=Wzr1ZQ-jR0BjgjAGV7Yg@mail.gmail.com>
To: Paul Barker <paul@betafive.co.uk>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: distrodata documentation in 2.7 Mega Manual
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
X-List-Received-Date: Wed, 22 May 2019 01:55:46 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, May 21, 2019 at 12:31 PM Paul Barker <paul@betafive.co.uk> wrote:
>
> Just reading the 2.7 Mega Manual at https://www.yoctoproject.org/docs/2.7/mega-manual/mega-manual.html and noticed a possible bug.
>
> "24.15.9. Removed Classes" indicates that the `distrodata` class is now gone. However it's still referred to in several other places in the documentation. May need a bit of garbage collection.
>

same is needed for bugzilla.bbclass as well as distutils-tools

> Thanks,
>
> --
> Paul Barker
> Managing Director & Principal Engineer
> Beta Five Ltd
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


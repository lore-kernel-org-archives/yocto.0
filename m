Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF344E01112; Thu, 19 Jul 2018 04:12:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
	[209.85.208.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F4E4E00A39
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2018 04:12:49 -0700 (PDT)
Received: by mail-lj1-f196.google.com with SMTP id f1-v6so5218362ljc.9
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2018 04:12:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=U/KfcFNnXodqha8GrKard8AopnCvWTsnocS+9pRGeek=;
	b=LHPsO7Q/LLVzj4JK3rIh5H01+jkrOv+VQVfmogu642vaywI/hQm1xYmYQVDvrz88wD
	cKG9D74YdUXf4pUPpddNN37He5LaDBnjMK08Di4o4a6M93lpnqmCqtqehCaxqPCItbUt
	zm9oJybgjYqE4tMD/BNa860nnKOnF5BCligCiPIw9h3uE5jpv7xsrtjIQShAUd8pdyPX
	yiAJjrXQwCK5y8nTYEyiH0s8ikH1TSy8fPauQfTLPTpW8+nKaYd/VTlg43laDnBucxpt
	VLTY4WXEf6jdMUx1TUt6TnbfZdFFq/W2jks1t75FB3fTFxXVAm1fa5mKevNOT4eBbEjt
	6E1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=U/KfcFNnXodqha8GrKard8AopnCvWTsnocS+9pRGeek=;
	b=O6eRMlWrQDci/ULLzwQjJCpUDNx8IQCbdemlP3y7OaxuqH9grGmXDmZGnGKml/CgiV
	Aae7ILRTPxdbkQor3tY2DbzK6FCpeKKFQTzvJ9wCM0k7GGakxisTWhTMUv2J7Kc/nQA4
	XiPmsi9bTzC7raRItD9Xt/kgLhLM6GNii8WzCRttedujhIcIjSaByf7qWyV6YJxZ2eHG
	hicapms0hpawwd4D36Y4orWxuhpPZPKPACcvWJB0cWB0uyGI15JZSoR6rC2emPxYcDtR
	wQm8/36X5gt0/YOwF/W5QxkjglWq485QoSKuSvM0js+bhdHToABKWopxloUZpEibgbf4
	CsKA==
X-Gm-Message-State: AOUpUlH/hULU1YM+2f/xE399SOsvSe2ygRsOlKAb0wu08yvpsYmlXcT1
	PnHosqvGA72YaO8Q2UM1qL5VqFsABmRUGamyzpo=
X-Google-Smtp-Source: AAOMgpc20hbKjXrdwfwtEgyV/tAZQPT72MtXkfFEILAuufivtcH2Rk87HNgWppsqRRB3/beuJlfaASM34mKTxcybtQY=
X-Received: by 2002:a2e:7c12:: with SMTP id
	x18-v6mr7270063ljc.71.1531998768348; 
	Thu, 19 Jul 2018 04:12:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:7014:0:0:0:0:0 with HTTP; Thu, 19 Jul 2018 04:12:47
	-0700 (PDT)
In-Reply-To: <1531997505.3103.20.camel@genivi.org>
References: <CAGAf8Lxousw4NEGP_aHGzHiqvzkJNERFgGHMM1hxNyj6Km72aQ@mail.gmail.com>
	<CANNYZj_aBuEMf1=_xVDQTtqtzxhka5XgLyNVREZvFiFHS7pWZw@mail.gmail.com>
	<CAGAf8LwUEFNu4icxvk0HivK93Yfx7f6-i5gjKa7CpT4NUUHiKQ@mail.gmail.com>
	<CAJ86T=WMJ8zE3ciNdwkSaThdYHBwC9QytGWHKXiVVbue+6kVXg@mail.gmail.com>
	<CAGAf8LxZcL-8fyDCJ2+0e2GgUmCGufY91aAHUepb60FUfuW=7A@mail.gmail.com>
	<1531997505.3103.20.camel@genivi.org>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 19 Jul 2018 13:12:47 +0200
Message-ID: <CAGAf8LyaNhpThiGONyM-+gxAJ+pqO9oa1s3Rzco13CKck=NUFw@mail.gmail.com>
To: Gunnar Andersson <gandersson@genivi.org>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [Chicken and Egg problem] Defining RDEPENDS of the package itself!
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
X-List-Received-Date: Thu, 19 Jul 2018 11:12:50 -0000
Content-Type: text/plain; charset="UTF-8"

> Is your code published? (I mean not in the email,
> too messy to extract it from there)

Feel free to comment on it, and to elaborate better recipes. Published
on my scratch pad everything/nothing git:
https://github.com/ZoranStojsavljevic/cip-rt-misc/tree/master/configs/bbb/YOCTO-recipes

Zoran
_______


On Thu, Jul 19, 2018 at 12:51 PM, Gunnar Andersson
<gandersson@genivi.org> wrote:
> On Thu, 2018-07-19 at 09:22 +0200, Zoran Stojsavljevic wrote:
>
> [trimmed]
>
>> Actually, the recipe I am showing here is the GENIVI (the same you
>> pointed to), but heavily modified. :-)
>
> See previous email about shared maintenance :-)
>
> Is your code published? (I mean not in the email, too messy to extract it
> from there)
>
> - Gunnar
>
> --
> Gunnar Andersson <gandersson@genivi.org>
> Development Lead
> GENIVI Alliance
>
>


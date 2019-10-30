Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4FE49E00DFC; Wed, 30 Oct 2019 05:11:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (star[at]gmx.li)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [212.227.17.22 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAE73E00DEF
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2019 05:11:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1572437509;
	bh=5Ko7mYR99+JpXlJIqqTO+ZXp9+oPfpazoz2spMR9wSI=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
	b=Rv0JaPeWsg+BNhvGSeVXdN2wUksFFcWKT63sakx350Q0dp2pZRwLV1Leno8ZJl/rL
	XSMd2xjjcHnbXROJ4Q1s13HmahG3+xuwSkYaTCa9VWuliFEJcPefI0Q2xGZXlsBIrk
	jHIEx1aaRqZlwYVojy5YB4y6BlCcM0tlXaDOqw4A=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [62.225.157.196] ([62.225.157.196]) by web-mail.gmx.net
	(3c-app-gmx-bs19.server.lan [172.19.170.71]) (via HTTP);
	Wed, 30 Oct 2019 13:11:49 +0100
MIME-Version: 1.0
Message-ID: <trinity-6abbfb1a-fa17-4a62-b533-19ad564d18c2-1572437509538@3c-app-gmx-bs19>
From: "Arno Steffens" <star@gmx.li>
To: ross.burton@intel.com
Date: Wed, 30 Oct 2019 13:11:49 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <trinity-8eddf10e-7c97-465a-a389-4a6462d8fdf7-1572416709913@3c-app-gmx-bs26>
References: <trinity-8eddf10e-7c97-465a-a389-4a6462d8fdf7-1572416709913@3c-app-gmx-bs26>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:u24CugYOJEX4AYn6bykmuEUW9LCbOFTk+xjpilqJQqJJkGRxFkFzxvIUolyjwLDyGe1lH
	eMNDriVPrckhI9WjdYn6KWZuO3qMtfU9A5BoMA9gDGzzZEF6ZiNBC+FXzUcVTyfCmU1ER+wrCybL
	Zb+gIOxJ4b5X5zIXr3LHFb9JaRKl94lVnu0Z637PVAPtjIAGpzYw8jxQPQXi7krnSJMBJ3YHrUgb
	KSJZMdbLmzZvbQJSVbnyaKEyuEuNPQF5mJ3wUwUW5Qm3T/NNAGwtjsVxlr4C/+t3vcb3ttQCxFJT
	XY=
X-UI-Out-Filterresults: notjunk:1;V03:K0:za0taLSqzV0=:r/EK8tv4z/NWllVYGgeuOu
	/aDhBvQmVZcJBv8y/wMpxn9FEPD5W7JRP2BvvmkDOV0exyKse2xRPSwH5de6FHwE6twAtxAFe
	zeqp8u81RSKOLt3Yk+Qtml6zBf4cqJf+7PfN5nbZl3X3kVCsOAoq6cbwNXOFsCacqmRJ7M9IE
	nlHcbPyi1qAB3OE+XkDE4gzND+sSVGcmZD9UyOHp3arfxUQpf8N834Siy3PzOeUNAsHmCc6fD
	mBT++LGubUrPT/SY4EDnVeazIBRCfkz4TpMvlwX1ZwOWbQUe30zlJ28gEinfKkrPxjZ47ozNP
	Ak5/pZZV5fYBreC9EzVdJssIDMM9Lo2BRNwzSCPwqtmsDYg6fpC246KUMqyqOA3w5JhmxYJln
	Bnl9MpC40Z8JBr8DgnoYSPDqFheX3YZqzbrNb7B7UYkE1u7kBkJhZ3YBjibqPB/lvHRHFqyGL
	kHLJsfeYSQFf2Dt9UAympxHDcuG6XtUKaTsLVbbKpaKrVULMPpJZlTQqpBg6huwa49X8GGrZn
	OquBNEUuSJ84kPMuUzFCqxNDaSpaM6fCxlA9jQKmqN84EgaosTKPQY6NlPvJhojKCH2cR31x7
	9GkgPIM7kptva+mglxyTOqFsqBmW7nocABtxYt3l83E21DiVINj6QVVUQ8A6g9ZyfZxTVErUw
	mcwNxgV9EQQShvMc74ZLxrdWoCHZMkn02ZrrpxQQCVSZuow==
Cc: yocto@yoctoproject.org
Subject: Re: [zeus] icu-native-64.2-r0 do_configure: configure failed
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
X-List-Received-Date: Wed, 30 Oct 2019 12:11:57 -0000
Content-Type: text/plain; charset=UTF-8

I use a poky core-image-minimal with some packages added - as for instance strace and valgrind (for armv7a).
Strange - yocto in older versions generates images with valgrind/strace .. without any complaints.
So both PC and image-recipe are same, but in Yocto 2.5 and 2.7 it works, in 3.0 not ?!?

Sorry I am confused, do you mean python is missing in requested image or at host PC with Ubuntu 1804? If it is missing in image,
shouldn't it be included by dependencies automatically?

At UbuntuPC python 2.7 is installed:
python
Python 2.7.15+ (default, Oct 7 2019, 17:39:04)
[GCC 7.4.0] on linux2

Regrads
Arno


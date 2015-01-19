Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA7EFE00546; Sun, 18 Jan 2015 16:51:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.177 listed in list.dnswl.org]
Received: from mail-pd0-f177.google.com (mail-pd0-f177.google.com
	[209.85.192.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 733FAE002F9
	for <yocto@yoctoproject.org>; Sun, 18 Jan 2015 16:51:13 -0800 (PST)
Received: by mail-pd0-f177.google.com with SMTP id y13so8381000pdi.8
	for <yocto@yoctoproject.org>; Sun, 18 Jan 2015 16:51:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=U8QGSq3zMBKBG193jGHjmsbLkWyO64BXHXAEIenc2Uo=;
	b=VcK+4ejMzLQdvEb5TTiqhy6mdfzH9kOkqjbEW4vjrsbxMaTwA+w8TjCqOGLajdYTNI
	IWy84sTqfB3VMiNsemO4ZDvYfvBQMMC3T23bxI9p+CoazabhmU3A/hG8Us+u0wzhHpud
	DN6MlDi2dEyqFy8W2GvgdIDs5jPphluzAUQ3vsnAYowOMrF4ys89yM9C1UbLmHgTtUVZ
	/5bFwFTqEx5smOv1kTf+rSlkFhmklp4uHC3i3N8hHMSCCQCgdU1apSgqJ7uW9zptPf66
	w0s4mKlOEuD/u5rYqLVv0ab+EsSg2i6TPe1SBBcAiFwpE/y/RP/G2nGKQeEvTpG7CWPj
	GRvw==
X-Received: by 10.66.148.161 with SMTP id tt1mr34183992pab.85.1421628673506;
	Sun, 18 Jan 2015 16:51:13 -0800 (PST)
Received: from ?IPv6:2601:c:a700:272f:4433:82a5:f445:1a48?
	([2601:c:a700:272f:4433:82a5:f445:1a48])
	by mx.google.com with ESMTPSA id x16sm1460114pbt.66.2015.01.18.16.51.11
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 18 Jan 2015 16:51:12 -0800 (PST)
Message-ID: <54BC54FD.5030305@gmail.com>
Date: Sun, 18 Jan 2015 16:51:09 -0800
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: Andrei Gherzan <andrei@gherzan.ro>, Yocto Project <yocto@yoctoproject.org>
References: <CAK18fxFQRXRJioWfxZKO6Zwh=u2B21X3iX-Diz4h7Ms_jh-TFQ@mail.gmail.com>
In-Reply-To: <CAK18fxFQRXRJioWfxZKO6Zwh=u2B21X3iX-Diz4h7Ms_jh-TFQ@mail.gmail.com>
Subject: Re: Benchmark layer available
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
X-List-Received-Date: Mon, 19 Jan 2015 00:51:16 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Andrei,

there are bench mark recipes in meta-openembedded

meta-oe/recipes-benchmark

http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-benchmark

I don't know what the threshold is for making a layer from a set of recipes.

- Armin

On 01/17/2015 05:02 PM, Andrei Gherzan wrote:
> Hello guys,
>
> Is there any benchmarking layer available? I was interested in LINPACK
> and I think it would make sense to have a benchmarking layer which will
> include stuff like: LINPACK, ioquake3, Whetstone etc.
>
> Regards,
>
> --
> *Andrei Gherzan*
>
>


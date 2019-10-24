Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65073E00E3B; Thu, 24 Oct 2019 08:56:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.221.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
	[209.85.221.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64E42E00E25
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2019 08:56:03 -0700 (PDT)
Received: by mail-wr1-f68.google.com with SMTP id z11so3307042wro.11
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2019 08:56:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=6nOTKSblgXNZiLwGZb8gYsA+L1vYzkWig512/nXbFUw=;
	b=YuUine/JjKB2ni5u0IqOTMg6I6/BSrn6APY53JKgYb8jkKS0Lo/I6C1Z4Ns0NiMgqU
	YcnMj8P0Nm9Pizc06Vtz60Id5LSt7iy0yEHMzhflCvVfngDsCExpRyGEuYdukKZfTUSn
	ZL+8QuET8q7kyLCtcI2fCeSCD97tdxixAZIuo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=6nOTKSblgXNZiLwGZb8gYsA+L1vYzkWig512/nXbFUw=;
	b=FeAwcdOLF5D8YEwSHjvrD5MIm14eH0pQZUFArAXES5TMkQSRhvqfEH0hs3FzwjSA+h
	lnNm13DN+hFKFVu9PCoVCabuGa8g5oI+7HqDswUB6rV9D4rzT5xUSa5n5U4XwkQXC7gh
	O4WXNUUmLoO8699CCzynmvpWKKPDFMYTz8Jhm0aAIHwOziZVkjN81HKBqqE3lV0EgTSd
	LuBpKVHlK6xHecl+VJYbSNHYDKWQBCKkwLeyCTQ70nNtiPpBD9Z12Ky5lUeoKDziN43Y
	m97QbIy/AfuSD/9xBY88sryEgCytqUrMU9Wz5HT/GE5ulchSxNUou9+gn9D/e2riyAPk
	g+Vg==
X-Gm-Message-State: APjAAAWB4hKt0ig37tkxOzY3jAQxEI/2VvnCGqDG4E9Atm2WGOAfevcD
	+T75ghtAVKlLs/5uaENu47dGtw==
X-Google-Smtp-Source: APXvYqz6Xf8Tb0U/YK9UJ1W6xCLciRPMSDJrlNQCgCQ5X0Y6HfBonsJsL8jmsYsjj8rNKnCZPOpLlw==
X-Received: by 2002:a5d:5222:: with SMTP id i2mr4480261wra.271.1571932562632; 
	Thu, 24 Oct 2019 08:56:02 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	p12sm13493574wrt.7.2019.10.24.08.56.01
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 24 Oct 2019 08:56:02 -0700 (PDT)
Message-ID: <65bf32790a18301a58e7d5f515e5e1320bb162f4.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: "Westermann, Oliver" <Oliver.Westermann@cognex.com>, William Mills
	<wmills@ti.com>, "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	"Dmytriyenko, Denys" <denys@ti.com>
Date: Thu, 24 Oct 2019 16:55:59 +0100
In-Reply-To: <BN6PR06MB3138924730BC280E950B0549866A0@BN6PR06MB3138.namprd06.prod.outlook.com>
References: <BN6PR06MB313849AD19D69C793421AE90866B0@BN6PR06MB3138.namprd06.prod.outlook.com>
	<9856cb73d6b59b77d4d0682dfd2bead31d26ba2c.camel@linuxfoundation.org>
	<BN6PR06MB313818F72FAB043D8AB49765866A0@BN6PR06MB3138.namprd06.prod.outlook.com>
	<e0e504f3013981d9dfb31ef0428cdf8f1aabb22b.camel@linuxfoundation.org>
	<95316727-6a1c-42fa-5cb3-f6d79ee4edf6@ti.com>
	<f95fb29cf51372495e0a604b5e830a0152dbdd13.camel@linuxfoundation.org>
	<03c8c0c5-c897-acd7-4236-00cd384c9162@ti.com>
	<BN6PR06MB3138924730BC280E950B0549866A0@BN6PR06MB3138.namprd06.prod.outlook.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Subject: Re: [EXTERNAL] Re: Issues adding bare meta toolchain to yocto build
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
X-List-Received-Date: Thu, 24 Oct 2019 15:56:32 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2019-10-24 at 15:37 +0000, Westermann, Oliver wrote:
> > On Thu, 2019-10-24 at 04:01 +0000, Richard Purdie wrote:
> > If its a native recipe, there are no packages and therefore FILES
> > doesn't make sense.
> 
> Oh, I have to admit I'm pretty new to the concept of the native
> packages.
> Where can I find the list of files that are considered to be
> installed into a "native" packages sysroot?

http://git.yoctoproject.org/cgit.cgi/poky/tree/meta/classes/staging.bbclass

SYSROOT_DIRS_NATIVE vs. just SYSROOT_DIRS
(at the top of the file)

The code which uses these is below in that file and handles which files
get "staged". We stage a different set for native and target.

> An good option for me would be to eg. install the toolchain into the
> native sysroots /opt/ dir for usage by other recipes.

You can probably do that by extending SYSROOT_DIRS in the recipe.

> > Can you confirm that recipe does work?
> 
> For the TI recipe, no, I can't. I found it online and used it as a
> guide for my first steps on the topic.
>
> 
> > If you install the binaries into ${bindir} they will. If you place
> > them
> > somewhere else which the system doesn't know about, they probably
> > won't.
> > 
> > There are ways to make alternative locations work but I don't see
> > any
> > of that in the above recipe.
> 
> Can you point me to these ways? :)

See above, easiest is extending SYSROOT_DIRS.

> > There isn't anything that special about a baremetal compiler except
> > it sets some different default flags and is missing the library
> > support.
> 
> I agree, though using linaro has the benefit that we would use the
> same toolchain in yocto as in "regular development" of the m4
> functionality.

Agreed. If you want a newlib compiler (which is a bit more than
baremetal as I understand the term) you'd need a multiconfig build to
generate one too as discussed in the other part of the thread.

Cheers,

Richard







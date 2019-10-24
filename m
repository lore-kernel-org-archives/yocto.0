Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 259AFE00D4F; Thu, 24 Oct 2019 08:50:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
	[209.85.221.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8364E00839
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2019 08:50:08 -0700 (PDT)
Received: by mail-wr1-f65.google.com with SMTP id c2so21431029wrr.10
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2019 08:50:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=ov5z4gG+kK9iJOZHFSSovl2qvIWYiVSbYkNCqV2QFy8=;
	b=XlxE7o2Fp8LmW6EY90xBhSXeIye6cTz/TmtjrxsvjXXitCtLqQw6ZbHKvg6o4nLZiZ
	tTEdaKPaF7uSdTvCrJhchOspVmNqkWLEKoYU5UUvmaMv5KRm5jz29PIEWvkhoJ5b0DwN
	V+UTngpVNUDW4mVbmjHERpRbFL+51CYm5ipk4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=ov5z4gG+kK9iJOZHFSSovl2qvIWYiVSbYkNCqV2QFy8=;
	b=pdeOTa593wmrFQjgB7h/0nxhXrdAzX0RMqucmhdrjDVdJ0e1eiWNMPVAxFen5Hkr6x
	AhprXOGcCZ7QwIlQZcjly5TC1CAs+duNOc4PEeofZHneWudnz7jDyob1lZx90vSIWfzT
	mPUpu6+SdIQmnFVNlAhWjKvTEq5laBlRbE0ijiNFhY4IayEFPWhCJTEawExwyYJdfkm6
	3NcvEHlhnAZE7nuCW8MZJ+BiFJP/qTsQxpe8WDp6Rxop3/vwOnEmW4pjKM3qrsWcHTfP
	wxB3YuA+xmkRDKvCSyGme04wbSPuy2sHflkaAb0y3iSZ0/UTgDIGzMYWFv2JcdzElJKa
	t2tA==
X-Gm-Message-State: APjAAAXbwRJH272Cq/0218fW2OgZWQnCKzygZ2F3x+wBUIovrykrsL1/
	umn64AlgBUpp0U/3y0qrk4lEBg==
X-Google-Smtp-Source: APXvYqwEVfHTV9+4/aavVIft71FwfG+zI++hjFm2VpeEGnuwkm8xmF2d9k3vLwKutjcQnU+UtM0N0g==
X-Received: by 2002:a5d:55c7:: with SMTP id i7mr4666141wrw.371.1571932207767; 
	Thu, 24 Oct 2019 08:50:07 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	o187sm3607394wmo.3.2019.10.24.08.50.06
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 24 Oct 2019 08:50:07 -0700 (PDT)
Message-ID: <c98f6ef3ff3b44785c926c1b6796160b89e59d90.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: William Mills <wmills@ti.com>, "Westermann, Oliver"
	<Oliver.Westermann@cognex.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "Dmytriyenko, Denys" <denys@ti.com>
Date: Thu, 24 Oct 2019 16:50:05 +0100
In-Reply-To: <03c8c0c5-c897-acd7-4236-00cd384c9162@ti.com>
References: <BN6PR06MB313849AD19D69C793421AE90866B0@BN6PR06MB3138.namprd06.prod.outlook.com>
	<9856cb73d6b59b77d4d0682dfd2bead31d26ba2c.camel@linuxfoundation.org>
	<BN6PR06MB313818F72FAB043D8AB49765866A0@BN6PR06MB3138.namprd06.prod.outlook.com>
	<e0e504f3013981d9dfb31ef0428cdf8f1aabb22b.camel@linuxfoundation.org>
	<95316727-6a1c-42fa-5cb3-f6d79ee4edf6@ti.com>
	<f95fb29cf51372495e0a604b5e830a0152dbdd13.camel@linuxfoundation.org>
	<03c8c0c5-c897-acd7-4236-00cd384c9162@ti.com>
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
X-List-Received-Date: Thu, 24 Oct 2019 15:50:11 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2019-10-24 at 10:30 -0400, William Mills wrote:
> On 10/24/19 10:02 AM, richard.purdie@linuxfoundation.org wrote:
> > On Thu, 2019-10-24 at 09:43 -0400, William Mills wrote:
> > > Then understand that you will need to supply your own gcc
> > > compiler
> > > helpers and all stdc functions even the ones that port well like
> > > strlen and memcpy.  (Because everyone should embedded their own
> > > unoptimized memcpy in their projects.)
> > 
> > Right, that is by definition baremetal.
> > 
> 
> Well not really.  All the "bare-metal" toolchains I have used come
> with a proper libgcc and some conig of newlib that at least gets you
> usable strlen and memcpy etc.  How much of the rest of it is usable
> on your platform is variable.
> 
> This is true of the toolchain Oliver is pointing at and has been true
> back to 2007 when I was using codesourcery releases.

The baremetal libgcc would be libgcc-initial in OE terms. As for
"baremetal", OE defines that as no library. You can see the options in
this listing:

http://git.yoctoproject.org/cgit.cgi/poky/tree/meta/conf/distro/include

tclibc-baremetal.inc
tclibc-glibc.inc
tclibc-musl.inc
tclibc-newlib.inc

So we support newlib builds but that is different to our definition of
baremetal. So we conflicting usage of terms.

> > You're probably right to have some concerns in that its not a well
> > travelled path. There are libc specifics encoded into libgcc but I
> > can't quite see where they change how gcc behaves other that the
> > default option selection.
> > 
> > Equally there may be something I'm missing.
> > 
> > For full disclosure, gcc is built against linux-libc-headers
> > wherease
> > with baremetal it would be built without headers. I believe that
> > changes the default options gcc uses for compiling but not the way
> > the
> > compiler itself works.
> 
> "baremetal" would be compiled against some config of newlib headers.
> newlib has its own issues and many config choices (you get to pick
> your threading model: none, bad, or hacky).  For TI-RTOS I think we
> rebuild it with a different thread model.

Our baremetal is compiled with no headers. Newlib is effectively like
choosing a different C library, and yes, gcc would be built against its
headers and use it to link against. You would need multiconfig to mix a
newlib and musl/glibc toolchain.

Sorry for the confusion over the terms.

Cheers,

Richard







Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3DB7FE00655; Mon, 18 Aug 2014 12:14:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f172.google.com (mail-ig0-f172.google.com
	[209.85.213.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 983B3E004F5
	for <yocto@yoctoproject.org>; Mon, 18 Aug 2014 12:14:38 -0700 (PDT)
Received: by mail-ig0-f172.google.com with SMTP id h15so8930290igd.17
	for <yocto@yoctoproject.org>; Mon, 18 Aug 2014 12:14:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=0FaXe83G92+jVtWY92NDkYr0kdaAwHflfhqfdMIgf7I=;
	b=tChUbYIZ63K6TO8mJhBcjn2BwdLqDtLBAG9TDjmrmxl5nhU3e5iQqhPTKwNxHUUzwS
	5MKdX8Of5d+FY7Inc5DXdg+4zCSW+h6dE7ZnJReC5hS9kTb1iVqcyWDlHAdlUw4+YFNd
	fL8z/rIOmyn8NIY8qm1jgiBA7A6WFA+Zp9zBHCif6U1Bsrdb5K50OCTXETN4M4zGRFQw
	hQLbs3tanOIRGIukHGiBYDO16SAvDywj1CMz6K/2hgwZTWn5+DIYHzadfW4zOhdfvbpJ
	wJA3x9++y3qyRecVik90eIKTq3h83XErqCsQYqHmxMG3LTscimONUmheccGSBzk+CCwl
	8Q+g==
X-Received: by 10.42.103.143 with SMTP id m15mr36197761ico.50.1408389278076;
	Mon, 18 Aug 2014 12:14:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.126.103 with HTTP; Mon, 18 Aug 2014 12:14:08 -0700 (PDT)
In-Reply-To: <20140818190814.GB7174@gmail.com>
References: <CAMKF1sp9Z6vj1Dz96_WYiHOtYFqa-zECrNHOFgb=dBUDJN2Z_g@mail.gmail.com>
	<20140818181424.GG12992@gmail.com>
	<CAMKF1srjVfmfAWZ0mx+AfE_nR4erYtAEYt2OVhEsU+q++XKVrg@mail.gmail.com>
	<20140818185009.GA7174@gmail.com>
	<CAMKF1spkQkfbZMkL2Gg41hF9bm=+HS8sU8LME3pV6yMzDLLs-Q@mail.gmail.com>
	<20140818190814.GB7174@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 18 Aug 2014 12:14:08 -0700
Message-ID: <CAMKF1sq+qbSPSOaU4iyi1Vr8=Xvzuyd2gHx2QN5PPNtUo0JLAQ@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, musl@lists.openwall.com,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] Announcing meta-musl OE/Yocto layer supporting musl C library
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
X-List-Received-Date: Mon, 18 Aug 2014 19:14:46 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Aug 18, 2014 at 12:08 PM, Paul Barker <paul@paulbarker.me.uk> wrote:
>> That would be handy too. But I wanted was to keep this info in project
>> for folks to try it out.
>>
>
> I'll just post one ticket for now.
>

Thats fine too.

> I think I've got a fix for e2fsprogs as well.

Great. when we write patches that arise out of musl systems we should
make sure that

1. If patch fixes a genuine issue surfaced with musl, fight it out ar
respective package upstream and in OE universe add it to the original
layer where recipe primarily resides
but we can keep the patches in meta-musl as a last resort.

2. If its something musl specific then lets keep it in meta-musl and
see how musl can be changed to fix it.

Thanks
-Khem


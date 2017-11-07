Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB5ADE00A6A; Tue,  7 Nov 2017 08:37:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.175 listed in list.dnswl.org]
Received: from mail-pf0-f175.google.com (mail-pf0-f175.google.com
	[209.85.192.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E6DBE00928
	for <yocto@yoctoproject.org>; Tue,  7 Nov 2017 08:37:12 -0800 (PST)
Received: by mail-pf0-f175.google.com with SMTP id a8so10719764pfc.0
	for <yocto@yoctoproject.org>; Tue, 07 Nov 2017 08:37:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=cskFSr54OXriG2YpA0Pr5iPOB7i37aT3fTUL3fdOAZg=;
	b=Jmd8bS/fJx2qQsiAJkMIMSUQ3borIA3NrpTm0lp6cLRCSu8Ca/+UFIY0oOHqCgUWc6
	8qc9NzdUplh67GWa9Vw4pB8mN21hIpvkKZewjlS+5koyTDoTUU2FTY7ioHIQrMZGetmR
	8dY490/i2w3g4WLawZQsMjqvEYW7kGeo5cuB9wma13Yd2/YEXT7W2KOozuIoceaxMGOK
	7ZwEE3CsoTdsRutHU5qemOMxHsmjMaPw+80nj6PpG42zB+hxH91v09wjUObFpBh+Kozd
	X5q+ARR8wapofUT4yzbysL/PldJSsZjIcbQu6DaSQBSNuQR2NcU1+qFYEdJ46pi2g8XB
	P2Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=cskFSr54OXriG2YpA0Pr5iPOB7i37aT3fTUL3fdOAZg=;
	b=MFZpcDtNpPdQlI/l8N3z9tYKgl+BPdsRT3YcKxSSBRplEyrM4zASHj05KQ1Zh9+W82
	VZxg0WOILkiO0CU9q6ZpRhSTGZ8sN6TCyOLer0CA9nBR6j1BxWttX9CK1cbkgpFEuI7t
	5vRalUZCashxtO0ZND3nBIfCTCtcHd7GvXdxNa5BRKKHt9w+TLYfiXuJ0QK7J6008keL
	kVuO+pGJyDpay0yaICLt8KAsUYzPhs4vQY+GdfPVim2Lce8y7P24AYdNk+BM+/gIMwuz
	aOVJulF4UQJ1rVFa2hhdSfqVgu7s/yTdTVACzTlN6NkxEdM+pbQ0azhQL5d1IN/ZnLfp
	BcKQ==
X-Gm-Message-State: AMCzsaWX41e6z7jAcUkCtvAD6kdNqBYhxxi2xNEbznNJIc6yKa3vXlWC
	WWmUkiUwAXYGyfH/umPZq3hjspGr1qbLuPgjQ9A=
X-Google-Smtp-Source: ABhQp+QRF3IdIuIEz9uUVUDydOSfoY4QCg2YK+yk1lJnEegoWQV3HxKdry3BacbfmI+leYakhHLVU4jVGwBlBqBS5ho=
X-Received: by 10.84.128.97 with SMTP id 88mr19047226pla.161.1510072632515;
	Tue, 07 Nov 2017 08:37:12 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.187.66 with HTTP; Tue, 7 Nov 2017 08:36:41 -0800 (PST)
In-Reply-To: <1bd6b35a-c58e-df9c-2855-e2c3657ea360@siemens.com>
References: <1509101466-32192-1-git-send-email-pascal.bach@siemens.com>
	<CAMKF1sqnUFWx2yXDovoRsyivNneBsmje1_cJ7+2NC99-_pxtYw@mail.gmail.com>
	<449ad5e0-fef6-a9c3-3ba9-4eec46a60b67@siemens.com>
	<CAMKF1spgFtqfNnXWj=NJ=egJ_TS4WpEb0_65pm_ehy6vhH1__w@mail.gmail.com>
	<672ece18-ad55-1198-0753-499fb9cd370f@dynamicdevices.co.uk>
	<1bd6b35a-c58e-df9c-2855-e2c3657ea360@siemens.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 7 Nov 2017 08:36:41 -0800
Message-ID: <CAMKF1spLYuAWAXS_MnkJhEC3Kc1VZ8s4saixa29fVOTXYiDkoA@mail.gmail.com>
To: Pascal Bach <pascal.bach@siemens.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-mono][PATCH] mono-4.xx: compiling mono 4 with btls requires cmake
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
X-List-Received-Date: Tue, 07 Nov 2017 16:37:14 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, Nov 7, 2017 at 5:26 AM, Pascal Bach <pascal.bach@siemens.com> wrote:
>
>
>>>>
>>>> Mono requires cmake to build the bundled BoringSSL library. I didn't look why it works in detail but I currently assume that BoringSSL is standalone enough that no additional
>>>> CMake toolchain settings are required to make it work.
>>>>
>>> yeah that probably is a case of bundling which is on rise at app level
>>> these days,
>>>
>>>> One option would be to disable it with `--disable-btls` but I fear that would disable TLS1.2 support (http://www.mono-project.com/docs/about-mono/releases/4.8.0/#tls-12-support).
>>>> But I have no way of checking that.
>>>>
>>> interesting, do they support any other TLS implementations ?
>>>
>>
>> It is disabled in 5.x builds by default as it breaks the build e.g.
>>
>> http://git.yoctoproject.org/cgit/cgit.cgi/meta-mono/tree/recipes-mono/mono/mono-5.4.0.201.inc
>>
>> It's probably time to look at a working build with it re-enabled. Patches welcomed...
>>
>> (I did have a quick look at inheriting cmake but that breaks the build too)
>>
> I did some more testing. And adding "cmake-native" still doesn't build btls. I guess it need cmake to figure that out. But this means it was never enabled in the first place.
>
> So my proposal for the moment is to explicitly set "--disable-btls" for Mono 4 too, this way it builds and it is clear that it is disabled.

that seems reasonable

>
> If somebody figures out how to enable it again. I will send an updated Patch.
>
> Pascal
>


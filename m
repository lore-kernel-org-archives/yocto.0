Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58872E00C59; Thu,  2 Nov 2017 09:00:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3004CE00D4D
	for <yocto@yoctoproject.org>; Thu,  2 Nov 2017 09:00:05 -0700 (PDT)
Received: by mail-pg0-f65.google.com with SMTP id 15so5487012pgc.12
	for <yocto@yoctoproject.org>; Thu, 02 Nov 2017 09:00:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=j6Mo1r6o86UKuJoV7HzLSvTeBhnDeDtm30oX4xUVruE=;
	b=aQ0RS9Y1IkKYYmgJL4YHDxEo7r6X9rQPKw96fij4lOqnxnZFldm8QZNPCipjagHMCw
	CMDMCzj4hCtP+XDGlqhS17VX2DCugRvwMWzQXhE89PFdlQT8faES/XLRAbJxiCiYeHFc
	l/9p2/UX5zj2RV+j8RIxQWwbGmdkJkCjiQn5Wn6iYQJqm2MYEi2j5tBjw8pgqFwEs9CK
	NXL46XaRlnNisD5fWXBlZsJWY+ceTg4ODnziqlY4Lzj8029/fPhSieJ6n++xlnOPsEJz
	347qPSR+W5m77Wd9atq7GcfTt5dEoMl70jqTV1eclnRdWchDv/sTesjFWC3H/BctadDf
	wXfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=j6Mo1r6o86UKuJoV7HzLSvTeBhnDeDtm30oX4xUVruE=;
	b=EMffHmUUnqxoceNUfBfF+ZZ9JY7YC+9Z/Xd4N0NDs/M9mMO6hFep/eMFJA1o25y2xM
	UTpEP2Qzckzl049k0Q5jOnj1hqaEGNPSjDRsxQ8FNqHoc8s474ekv9FY0N0D0/Cs7pcP
	Xz+9Ft8VgJRNhzE6WBvw4fsaEU3aDwnt00hGBs4FP8yWMk/pRNUf+f+MbdxMVZ92/KAL
	tXWjbOjbnsu/f5+UJWf9U5UJXDzNjO/xH/ItI6yd27i+RxXIMQXo6Ui2ZVSvetZkkNpF
	HoY/P+MukNX4OP731lPDvQL8vJr0TIW/YgWHSTdeyEHSXBaPl7YE1jcQNlUwBgP4yJr/
	TnZw==
X-Gm-Message-State: AMCzsaWzRgDGR85I3iu4EGSsY9R0YV0rcU5LY6uTtrv02LfBIosb+Y38
	FngP1wagXoyfSkEw4IFD3IC7YKXbzSu2lwjsUi0=
X-Google-Smtp-Source: ABhQp+RBBrME/qbcRUgpnO0UNsL5nbHJPcN3XVLadoQUP6YSyX10/vHcuWvEn8CHdd/t2lQuNbci22Tx9kFKo/LdG6w=
X-Received: by 10.99.51.72 with SMTP id z69mr4110421pgz.317.1509638405402;
	Thu, 02 Nov 2017 09:00:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.187.66 with HTTP; Thu, 2 Nov 2017 08:59:34 -0700 (PDT)
In-Reply-To: <449ad5e0-fef6-a9c3-3ba9-4eec46a60b67@siemens.com>
References: <1509101466-32192-1-git-send-email-pascal.bach@siemens.com>
	<CAMKF1sqnUFWx2yXDovoRsyivNneBsmje1_cJ7+2NC99-_pxtYw@mail.gmail.com>
	<449ad5e0-fef6-a9c3-3ba9-4eec46a60b67@siemens.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 2 Nov 2017 08:59:34 -0700
Message-ID: <CAMKF1spgFtqfNnXWj=NJ=egJ_TS4WpEb0_65pm_ehy6vhH1__w@mail.gmail.com>
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
X-List-Received-Date: Thu, 02 Nov 2017 16:00:07 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Nov 2, 2017 at 8:46 AM, Pascal Bach <pascal.bach@siemens.com> wrote:
>
> On 27.10.2017 23:41, Khem Raj wrote:
>> On Fri, Oct 27, 2017 at 3:51 AM, Pascal Bach <pascal.bach@siemens.com> wrote:
>>> This was probably working before pyro and the recipes specific sysroots.
>>>
>>> Signed-off-by: Pascal Bach <pascal.bach@siemens.com>
>>> ---
>>>  recipes-mono/mono/mono-4.xx.inc | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/recipes-mono/mono/mono-4.xx.inc b/recipes-mono/mono/mono-4.xx.inc
>>> index e06fac7..cf9170b 100644
>>> --- a/recipes-mono/mono/mono-4.xx.inc
>>> +++ b/recipes-mono/mono/mono-4.xx.inc
>>> @@ -4,7 +4,7 @@ HOMEPAGE = "http://mono-project.com"
>>>  BUGTRACKER = "http://bugzilla.xamarin.com/"
>>>  SECTION = "devel"
>>>
>>> -DEPENDS = "zlib"
>>> +DEPENDS = "zlib cmake-native"
>>>
>> perhaps this should inehrit cmake if its using cmake
>> or explain how cmake is used where abstactions
>> are not relevant
> Using the cmake bbclass doesn't work as it is not really a CMake project.
>
> Mono requires cmake to build the bundled BoringSSL library. I didn't look why it works in detail but I currently assume that BoringSSL is standalone enough that no additional
> CMake toolchain settings are required to make it work.
>

yeah that probably is a case of bundling which is on rise at app level
these days,

> One option would be to disable it with `--disable-btls` but I fear that would disable TLS1.2 support (http://www.mono-project.com/docs/about-mono/releases/4.8.0/#tls-12-support).
> But I have no way of checking that.
>

interesting, do they support any other TLS implementations ?

> Pascal
>
>
>>
>>>  SRC_URI = "http://download.mono-project.com/sources/mono/mono-${PV}.tar.bz2 \
>>>             file://dllmap-config.in.diff \
>>> --
>>> 2.1.4
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>


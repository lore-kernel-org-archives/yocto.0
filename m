Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24BB5E0049A; Tue, 12 Jul 2016 16:27:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.170 listed in list.dnswl.org]
Received: from mail-qk0-f170.google.com (mail-qk0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAADFE0043B
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2016 16:27:20 -0700 (PDT)
Received: by mail-qk0-f170.google.com with SMTP id s63so28967274qkb.2
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2016 16:27:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=ogmsDGBzSYZeP88Fx3LrKR38YBbgIZ4YjdX5+c+8DGw=;
	b=0izVcCI2hmXxtwCtJC1g1UggJBsyVNpAD1t1OI+PCqGUwQRavt+rTTFDhY2HoTMxPV
	aB2QpBBC2cUKPiuybqZns5eCI0fULpFUY54IN4LHn42aCfTs0Sr7sbPqxUMZMEQLEVT7
	Nd6ySyceMJnLKAF+AQ/IJDh9RBPTm5odxpgIPQBFuTIX77wfZMDPsCiZlfbg1lc1yUOZ
	8KlIF5t1QUMPBGFkhmWIQEttauioWUVtGs9gpWcO5rXDoS0Pc2d3xDS3Lheq8O6kr06M
	1Lwdz1QjrlyRiuBIzwUylWPCuT6l1qvlEW98nU2jpD8hWMRZTTXdTyBTzAEzq6vcxYTr
	kdxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=ogmsDGBzSYZeP88Fx3LrKR38YBbgIZ4YjdX5+c+8DGw=;
	b=Kl+ejtQzTGUBunC9ubTk0NIna2ew0PtNTpffFHEfZWw3JRuVZKUp3gkdXw7fpnzq0W
	4sgLrZ+CGkfziCuqcQ8iiRS+O+M83QJFtHyvKJLMaQYd3CFowqDgwQcYJRsnkWNdvjsu
	lChXqp+as3z9X0HFeVKVui1wUS/iIJ+1Du2kAWBz0k41BXiB1dBEtktLlEuuw9UST/Se
	y7dHBSLbfvdyEwBcFmhyYQ746mZOH7ly9lkTjNAmiaZ8x/BWLlPsrNWUHCM8gRHYYIZd
	IKj9dK6r9l6Kmx766LK21JY+VWh+UAvOUU4SbJHjAKjT2jEcEUwPeL1neh2IgvyS5GYo
	UFJw==
X-Gm-Message-State: ALyK8tLu11jBYhmYrEYhSrogqgFcwDMHkTrgBxk15giIj3Wo2wcXwiCjpSLVKq31vX6oE/AAbUgZYRe60036Mw==
X-Received: by 10.55.97.80 with SMTP id v77mr6771570qkb.41.1468366040228; Tue,
	12 Jul 2016 16:27:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.214.83 with HTTP; Tue, 12 Jul 2016 16:26:50 -0700 (PDT)
In-Reply-To: <CY1PR0101MB159434803789B80D34BE5E66D7300@CY1PR0101MB1594.prod.exchangelabs.com>
References: <CY1PR0101MB15942895A402A660E25E1963D73B0@CY1PR0101MB1594.prod.exchangelabs.com>
	<A67957CD-65BD-43D0-ABA6-7F14D62D82EC@bmw-carit.de>
	<CY1PR0101MB159434803789B80D34BE5E66D7300@CY1PR0101MB1594.prod.exchangelabs.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 12 Jul 2016 16:26:50 -0700
Message-ID: <CAMKF1soDoA7xh_oCHgHXzyQ8PpE_BVW+4XiV-9SApauWx4rS-w@mail.gmail.com>
To: Takashi Matsuzawa <tmatsuzawa@uievolution.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: linux/limits.h: No such file or directory
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
X-List-Received-Date: Tue, 12 Jul 2016 23:27:25 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 11, 2016 at 10:42 PM, Takashi Matsuzawa
<tmatsuzawa@uievolution.com> wrote:
> Hello, thank you for your suggestion.
>
> Yes, I was aware of the post, but I was not sure if you came up with a
> workaround..
>
>
> In fact, my problem was gone once I physically (not by -c cleansstate,
> cleanall, etc.) removed SSTATE_CACHE directory.
>
> (I think bitbake fails in unclear errors if previous build attempts faile=
d
> or interrupted and leaving files in irregular states.)

There are several cases which may be out of control for bitbake to handle d=
uring
build. however we consider and try to solve the cases as we understand
them and can fail deterministic way we fix them. There however could
be local issues to your workspace which are hard to reproduce unless
you delve into your env and find
out when it happens. We will we happy to help

>
>
> Building everything from scratch was a pain (more than 1 day for my build
> machines), so if I see the same issue next time, I will try your workarou=
nd.
>
>
>
> ________________________________
> From: Clemens Lang <Clemens.Lang@bmw-carit.de>
> Sent: Thursday, July 7, 2016 4:45 PM
> To: Takashi Matsuzawa
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] linux/limits.h: No such file or directory
>
> Hi,
>
> Takashi Matsuzawa <tmatsuzawa@uievolution.com> wrote:
>
>> >configure: error: C preprocessor "x86_64-pokysdk-linux-gcc -E
>>
>> --sysroot=3D/mnt/ssd2/>yocto/dev/tmp/x86-wk3/sysroots/x86_64-nativesdk-p=
okysdk-linux
>> " fails sanity check
>> >| See `config.log' for more details.
>>
>> If I look into config.log
>>
>> (gcc-4.9.2/build.x86_64-pokysdk-linux.x86_64-pokysdk-linux/libgcc/config=
.log)
>> as suggested, I can see the following.
>> It says linux/limits.h is not found.
>>
>> (in config.log)
>> >usr/include/bits/local_lim.h:38:26: fatal error: linux/limits.h: No suc=
h
>> file or directory
>
> This looks a lot like a problem we=E2=80=99ve seen a while ago. See
>    https://lists.yoctoproject.org/pipermail/yocto/2015-July/025856.html
> which is the mailing list post a colleague sent to the list back then.
>
> Looking at our git history, the workaround we did back then was add a
> dependency from gcc-crosssdk-initial to nativesdk-linux-libc-headers if
> $TARGET_OS starts with =E2=80=9Clinux=E2=80=9D.
>
>
> HTH,
> Clemens
> --
> BMW Car IT GmbH
> Clemens Lang
> Spezialist Entwicklung
> Lise-Meitner-Stra=C3=9Fe 14
> 89081 Ulm
>
> Tel: +49-731-37804182
> Mail: clemens.lang@bmw-carit.de
> Web: http://www.bmw-carit.de
> --------------------------------------------------------------------
> BMW Car IT GmbH
> Gesch=C3=A4ftsf=C3=BChrer: Michael W=C3=BCrtenberger und Alexis Trolin
> Sitz und Registergericht: M=C3=BCnchen HRB 134810
> --------------------------------------------------------------------
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


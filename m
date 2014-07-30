Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4B1AE00547; Wed, 30 Jul 2014 15:06:05 -0700 (PDT)
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
	*      [209.85.223.178 listed in list.dnswl.org]
Received: from mail-ie0-f178.google.com (mail-ie0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F7E0E0043F
	for <yocto@yoctoproject.org>; Wed, 30 Jul 2014 15:05:56 -0700 (PDT)
Received: by mail-ie0-f178.google.com with SMTP id rd18so2404615iec.37
	for <yocto@yoctoproject.org>; Wed, 30 Jul 2014 15:05:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=A8Wrc8W7whiTU72PWeA7jWiceNj2n9irOynBBTzv+/8=;
	b=CualkjeHDMdFaKAswmmWnDQp+ZZvXyWaIgfyMGREtpuQxJjZst/GJZ6AkyqKTp1eDq
	SCHBiNvGxHB/3XHjcQa/HgbMRq/ECnvNzMZ0048LO525HHhvrlwO64090yM6Ug/HCz/y
	1A6PBeohkLtq93L2SZNdcBxKW3hAh/mr7VPR/06W1Daen3k/g7N5aGTgU/TERf/jFsWQ
	Sa/GZ/P/zSj5ojS5Ehsh51fy/Cnd0t8Jy3U3ojnXGSqzXihMRFnhab1Pylu4OlwcUVt7
	Gt01ExCErx+3weR+L2582wqs2mMkzBKfaFnNrJe0BCz6wwHpedWMwenogMysn8woYGBT
	EZFg==
X-Received: by 10.50.25.71 with SMTP id a7mr56711020igg.17.1406757956365; Wed,
	30 Jul 2014 15:05:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.78.105 with HTTP; Wed, 30 Jul 2014 15:05:26 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.11.1407301647460.30982@localhost>
References: <alpine.LFD.2.11.1407301529040.30154@localhost>
	<CAMKF1srPF4zZrXxgakGiSMeJAanTMuXxi27mFWrKsDkoNX0kcw@mail.gmail.com>
	<alpine.LFD.2.11.1407301647460.30982@localhost>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 30 Jul 2014 15:05:26 -0700
Message-ID: <CAMKF1srrrrSDakSgSdoORaWxeiO8XN-rn-6N7m1i0nxsu5GiGQ@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto-docs][PATH] Emphasize both 32- and 64-bit MIPS supported.
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
X-List-Received-Date: Wed, 30 Jul 2014 22:06:05 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Jul 30, 2014 at 1:48 PM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>   ok, i should resubmit with "MIPS, MIPS64" then? coming up.

yes please


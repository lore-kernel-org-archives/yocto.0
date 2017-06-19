Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 130FFE009A0; Mon, 19 Jun 2017 13:02:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f49.google.com (mail-wm0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E10FE0084A
	for <yocto@yoctoproject.org>; Mon, 19 Jun 2017 13:02:18 -0700 (PDT)
Received: by mail-wm0-f49.google.com with SMTP id u195so2776138wmd.1
	for <yocto@yoctoproject.org>; Mon, 19 Jun 2017 13:02:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=by937wRAajVah89DTAt7c/ysGp+UVjCIfEm/5eKosbU=;
	b=PbaCnrRL98P9u+YDCxmjEe2eqUO1ljmHVAafIKSN70q+IfFFjyK5T/8pL0SrhKZvH9
	SPxXVB7pNVTCK0wdtr7z76VC4QWmXmtkCJiewkFc23R0g4hPFUCRQAefP4WxMaIpLlJ5
	z5rlgOPkGWkTO0gM/1Xt8QNTpR7MySTST2GBon32HVb0HH0LdTYjVTo/vSraztsrsQ8V
	0xTFwzh/eZnKhaQJtQDPOZX5lqQRaLeeOXHASbfhBl71XJ83odAVH2wHKIuTBGH/HVa9
	/4ZS2MmCY48zoTpWjTyYde/ZeD3WPAES0hW3PW2ZNqNH9RRdQeDINT5Rht3BVTk36ogw
	8azQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=by937wRAajVah89DTAt7c/ysGp+UVjCIfEm/5eKosbU=;
	b=V6Fjp+rVzK0lJ6JIwq1g3ZZtIN93BS1rEcFHwRjaK455bIbexPKv5uwySo0FOY1sEK
	oRjrP7w3W/xAnB05CN0qOiBAILBxLFJlr4HbZVt+Is9owhiTywXmW/gLx3T0t8dG8mLk
	SD4V2dgjG3M0oTsEO5oxWqbKhAVuldDlJFthLq5Ewpx1YnZkzehpy/Ssc+KzSh6xbJf5
	aCCNGOQCAs5ZHdEg3LScKZ76SOrBgteTxlnaqSBju8paPWgBaoiTg8qcOPjTHb5AHZr2
	h6MjmdnguedjYegCHe5pp8Yvn8L3tWQjYGALm6vNZjGo6SKbw4AVRWUafUITvIyNtvJg
	GZuQ==
X-Gm-Message-State: AKS2vOyTVavpDn7fs/5gAOJEuB2HuIOWjohBm9tA2Z1LfjnRWUcL/sx+
	n2IxUIydE/TnVtxEYnahXVysYDWIIw==
X-Received: by 10.80.151.37 with SMTP id c34mr18878459edb.30.1497902538126;
	Mon, 19 Jun 2017 13:02:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.153.222 with HTTP; Mon, 19 Jun 2017 13:01:47 -0700 (PDT)
In-Reply-To: <7ee7dd60-a45d-350d-b213-0917fe6e32cb@igalia.com>
References: <mailman.66247.1497786545.15860.yocto@yoctoproject.org>
	<1497809434.2788.77.camel@genivi.org>
	<7ee7dd60-a45d-350d-b213-0917fe6e32cb@igalia.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 19 Jun 2017 13:01:47 -0700
Message-ID: <CAMKF1sr-5mxP2_WCXtvnfzMt4OgUAf_V2ZhLQFgQAqGMbPDovQ@mail.gmail.com>
To: =?UTF-8?Q?Jacobo_Aragunde_P=C3=A9rez?= <jaragunde@igalia.com>
Cc: Riko Ho <antonius.riko@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gunnar Andersson <gandersson@genivi.org>
Subject: Re: Compiling meta-browser ==>chromium ? cleaning ?
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
X-List-Received-Date: Mon, 19 Jun 2017 20:02:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 19, 2017 at 7:21 AM, Jacobo Aragunde P=C3=A9rez
<jaragunde@igalia.com> wrote:
> On 18/06/17 20:10, Gunnar Andersson wrote:
>>
>> Riko Ho <antonius.riko@gmail.com> wrote:
>>
>>> Hello Everyone,
>>>
>>> I tried to compile chromium but never succeeded, took me already 12
>>> hours and stopped on 99%, I used bitbake for doing it,
>>
>> Not sure what would cause it to just stop and it could have been some
>> temporary glitch?   Maybe you want to provide some logs of your build if
>> Martin's reference does not help.
>>
>
> Just a heads-up, if it stopped at 99% it probably was in the linking
> phase (you can check the logs under
> tmp/work/$arch/chromium-wayland/$version/temp/log.do_compile to be
> certain). This phase has a very high RAM demand, you could even need to
> temporarily increase your swap space to go past that point.
>

linker takes a whole lot of memory here, if you have < 8G of RAM
its likely to fail with out of memory errors. Can you check your dmesg
and see if there were such errors in there

> Best,
> --
> Jacobo Aragunde
> Software Engineer at Igalia
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


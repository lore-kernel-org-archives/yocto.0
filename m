Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38385E00953; Tue, 30 May 2017 03:34:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.66 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f66.google.com (mail-lf0-f66.google.com
	[209.85.215.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0FD6E0080F
	for <yocto@yoctoproject.org>; Tue, 30 May 2017 03:34:19 -0700 (PDT)
Received: by mail-lf0-f66.google.com with SMTP id m18so8479961lfj.0
	for <yocto@yoctoproject.org>; Tue, 30 May 2017 03:34:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ZJ6zo7IjPxA81AyHycjpW7o0SmQoRMLOrASx0sJVsp0=;
	b=QBVcV5rghS1BLYuzfdzG3A2sxLGloplLCEVZg0fkaTn92b9GLa9S3xtGFCyjSUjC30
	j6ycMrRjoD/Pyo7kmy4cp8g1YICEttvkxCuRY+r2XH6znfAHMeRMSQfbgWFBc1wVKcja
	xTdkR/x6UmYDCg/76JhjCYPIa5pj6fmEMnRWNyJ9ODlrdvuEZWSJ5gJzJM1I7XN55Y5v
	J6NwbE2wRV5umoHqidppmrtQvN9bUkaZIeIfMrEzJw4xdhRr7UqRI/UQ2gw88fs7nbss
	qtV4p75e10zkQn7aQ07FPEEfq7Z1xBVIb3INulN3N9ls4hwwH8HPc6qfd//ilIrU+vu5
	8/sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ZJ6zo7IjPxA81AyHycjpW7o0SmQoRMLOrASx0sJVsp0=;
	b=iv1JLok6cHrbIUe8mRvQ7n3NwAwoG32h0BnTHUydYxEzARgTDRmTaCxvobAtfx0t0D
	sB0Oz9dVML4A3hbPgP1rQx7MR51hwF3Co7XkcdETKo+kyf9C8CH8p2AvEz2GwmAZzaUN
	5nIzOIG4MpDk4wEEVXFCxUQem4LlJ5JDrkfmoYXaN7pbjff+4Ab9WjAw92nN4HZ1FjUi
	clKedjSMO5+CJSvIxd97ISciOCiScvoAZgFfXz8M/sU93knQmP6C1mbJIZHTTsLCp86s
	+BHxFS73tpmG4n6ogCzesgyiWb5Ub3xyC16umu9UQwqSNwCF+1F5RXTKC2QRQM3w2hph
	4lEA==
X-Gm-Message-State: AODbwcCQXKs3Zm/jcWDEqzhShjV54SZFdSgMoa2pFM1dcfaBBnjJRqSm
	sguBd+53+Xd59ihvkmgtEGDUMAbKJQ==
X-Received: by 10.25.163.12 with SMTP id m12mr5626699lfe.6.1496140458476; Tue,
	30 May 2017 03:34:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.207.16 with HTTP; Tue, 30 May 2017 03:34:17 -0700 (PDT)
In-Reply-To: <0afef265-6e2d-30b5-11b3-324e1b4effca@smart-home-technology.ch>
References: <275dac4b-2244-aea2-e539-a177855d5169@smart-home-technology.ch>
	<CAAfyv34p4-0DQRzxHY6_Y_zYVRXHthWjUi-yHLnC0+tj=SMr-A@mail.gmail.com>
	<cafef6f7-905a-0c03-8d8e-ecaf1d47ef28@smart-home-technology.ch>
	<CAAfyv36WmwS7=x71p50SGEQ6umxjuB9x5f5nPkbZdDW5q_a4Xw@mail.gmail.com>
	<0afef265-6e2d-30b5-11b3-324e1b4effca@smart-home-technology.ch>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Tue, 30 May 2017 12:34:17 +0200
Message-ID: <CAAfyv34v+2=94fTJmGEgH+xwTqx4AYEU0ZVuyHDxmNm1+eCB2Q@mail.gmail.com>
To: Jakob Hasse <jakob.hasse@smart-home-technology.ch>
Cc: Yocto List <yocto@yoctoproject.org>
Subject: Re: CMake project not building; building from local git repo possible
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
X-List-Received-Date: Tue, 30 May 2017 10:34:21 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Jakob,

On Tue, May 30, 2017 at 11:53 AM, Jakob Hasse
<jakob.hasse@smart-home-technology.ch> wrote:
> Hi Marek,
>
> On 30.05.2017 11:37, Belisko Marek wrote:
>>
>> Hi Jakob,
>>
>> On Tue, May 30, 2017 at 11:28 AM, Jakob Hasse
>> <jakob.hasse@smart-home-technology.ch> wrote:
>>>
>>> Hi Marek,
>>
>> please don't top post http://www.idallen.com/topposting.html :)
>>>
>>> Thanks for your answer!
>>> I did use a local repo folder since I find it more convenient to make
>>> quick
>>> changes that way, as it is the case right now.
>>
>> Source is fetched only once then it's keep in downloads directory so
>> better use then local repo.
>>>
>>> I applied your changes but I still get the same bitbake errors as before,
>>> as
>>> shown below. The CMake Error log says:
>>> ...
>>> error: unrecognized command line option '-Wmissing-variable-declarations'
>>> ...
>>> error: unrecognized command line option '-Wshorten-64-to-32'
>>
>> Can you give me some more info about poky version, target you're building
>> ...
>
>
> Build Configuration:
> BB_VERSION        = "1.32.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "universal"
> TARGET_SYS        = "arm-dey-linux-gnueabi"
> MACHINE           = "ccimx6ulstarter"
> DISTRO            = "dey"
> DISTRO_VERSION    = "2.2-r1"
> TUNE_FEATURES     = "arm armv7ve vfp thumb neon callconvention-hard
> cortexa7"
> TARGET_FPU        = "hard"
>
> We're using the digi embedded yocto here. I think I'll contact their
> support, too.
I think this would be the best ;) as it's probably custom patched build system.
> The arm-dey-linux-gnueabi looks like a normal arm-linux-gnueabi-gcc.
> Please tell me if you think you need more info.
>
> Cheers,
>
> Jakob
>
> --
> Jakob Hasse
> Software Developement
>
> E: jakob.hasse@smart-home-technology.ch
> T: +41 44 552 02 66
>
> Smart Home Technology GmbH
> www.smart-home-technology.ch
>

BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com


Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90B23E00E43; Fri, 16 Feb 2018 05:36:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13618E00D41
	for <yocto@yoctoproject.org>; Fri, 16 Feb 2018 05:36:48 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	16 Feb 2018 05:36:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,519,1511856000"; d="scan'208";a="201665688"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga005.jf.intel.com with ESMTP; 16 Feb 2018 05:36:47 -0800
To: =?UTF-8?Q?Iv=c3=a1n_Castell?= <icastell@nayarsystems.com>,
	yocto@yoctoproject.org
References: <CAALXFYxA90tPEHBfkutbJZ_wBHfShiQcoaqHbwLs9Q8NsZYRLQ@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <7b5fed6e-3d01-958d-dac2-0fce79002306@linux.intel.com>
Date: Fri, 16 Feb 2018 15:30:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <CAALXFYxA90tPEHBfkutbJZ_wBHfShiQcoaqHbwLs9Q8NsZYRLQ@mail.gmail.com>
Subject: Re: Howto generate a Yocto image with spanish full-support by default
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
X-List-Received-Date: Fri, 16 Feb 2018 13:36:49 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 02/16/2018 02:17 PM, Iván Castell wrote:
> After a lot of tests, I have been able to fix this creating these two files:
> 
>      $ cat /etc/locale.conf
>      LANG=es_ES.UTF-8
>      LANGUAGE=es:en
> 
>      $ cat /etc/profile.d/locale.sh
>      LC_ALL=es_ES
>      LANG=es_ES
>      LANGUAGE=es_ES
> 
> After rebooting, I get this localectl settings:
> 
>      # localectl
>     System Locale: LANG=es_ES.UTF-8
>                    LANGUAGE=es:en
>         VC Keymap: ES
>        X11 Layout: es
>         X11 Model: pc105
>       X11 Options: terminate:ctrl_alt_bksp
> 
> And the 'Ñ' key works as expected:
> 
>      root@iwill:~# ñññññ
> 
> I don't know how to fix this issue without having to make manual changes 
> to the generated image.
> I would like the generated image with Spanish support available once the 
> .wic image is burned into my USB memory stick.
> 
> Is that posible? How should be managed?

POSIX specifies only how locale settings are determined per-process 
(from LANG and LC_* env vars). It says nothing about how those variables 
should be set in the first place. And so every system comes up with its 
own way to do it. locale.conf is systemd-specific, and won't work with 
initv. profile.d stuff has effect only in interactive login shells and 
does nothing for GUI apps. Also, both of these are system-wide and won't 
work if users want to choose their own settngs. And so on.

Anyway, Yocto does not try to come up with any kind of solution for 
this. You need to determine the context and use cases where you need the 
locales to work, and then implement their setting accordingly. If you 
just want a single global setting, then probably a trivial recipe that 
installs /etc/locale.conf will work.

Side note: do not set LC_ALL, it's a bad idea. LANG is sufficient.

Alex


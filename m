Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C176E00D45; Tue, 21 May 2019 03:17:44 -0700 (PDT)
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
	*      [209.85.128.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
	[209.85.128.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30798E00D3D
	for <yocto@yoctoproject.org>; Tue, 21 May 2019 03:17:42 -0700 (PDT)
Received: by mail-wm1-f67.google.com with SMTP id c77so2364923wmd.1
	for <yocto@yoctoproject.org>; Tue, 21 May 2019 03:17:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.ro; s=google;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=CpyI9t08wlC1FfD2aVRK97X9OCoKSkS9z/7eeifeqP8=;
	b=Sivzs9Xjrb+ti3EPDK0qvz5J2GuCs0mIpxSJt8cvC5Ltkuvj61x9OMmy/bqzr8NKf2
	/mSkyr9zkl0Ei/Gbc2sqOYC4IhAXs6UqFjLcjiUbaPO+wptg7MehjEWLFTscy3THPd1O
	HWREZ/EKkU/SpwPJXf0Ir0jpevITNvzjWBzdqQG1xyTQX4CcaDqSqNaw5eNiTk3OOocq
	p1XOHS9d1lz6Ib1M+BtScWmLoDiz2LTPyidiESz8Toq8EA2OiXWFpT7SuOACYIb+a4hr
	cgP1ALrgEBsZTnXiuFSaxZyTFw/Zi6uDepP51w9TMQOfY9Y5PIDWIk3RhW73Y1w9Mxni
	h2Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=CpyI9t08wlC1FfD2aVRK97X9OCoKSkS9z/7eeifeqP8=;
	b=gB0Eaki/s7jbcA4aBSZ3TMXcbfjxlGquRUZrytuZxDw5TuHVNz9lnOkbm9UXGyYaOE
	phha7dg1ujEUOGnW5p3dcaNpH5GQD7ttDunZfT+nUXH6IVXSu8ep/rh9HQjegqqBW9ay
	+TNp8sOxkK38p8zr8JJf7xrEIJ5T0TngfSyKfvBiz6vKFjF6e4MFjP40dpNSyMlKAiq3
	3WSHXY/87xJG3I4BMW4iah7+zI6tsj3dSXUKR7msTK19nLH+2oxg/IvGib4jx6l+DGT7
	ZiECrll250/QXs5XJwPEA/OK/HJWzY5o5JJh24aLQgxnjQijDUt/ob1/vqSwVxsBvh/p
	FnCw==
X-Gm-Message-State: APjAAAXxgtrUuCPXXycXOQsTMByLkgM3q+6VLcXtVsAMkUVof+7ljN7s
	S6IkbT6VULJOApGpxjK3uEGwcZG9NYM=
X-Google-Smtp-Source: APXvYqxr9LO+iNR5hHBbUyZlqspgwDaJBeh2uD9RWb8SACVwdqbQ1YpJV+HgpfXiCHd1Igs2QHF3Dg==
X-Received: by 2002:a7b:c5cd:: with SMTP id n13mr2686538wmk.67.1558433860916; 
	Tue, 21 May 2019 03:17:40 -0700 (PDT)
Received: from [192.168.17.100]
	(host109-150-130-159.range109-150.btcentralplus.com.
	[109.150.130.159]) by smtp.gmail.com with ESMTPSA id
	c2sm14815760wrr.13.2019.05.21.03.17.39
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Tue, 21 May 2019 03:17:40 -0700 (PDT)
To: Khem Raj <raj.khem@gmail.com>,
	Jean-Christian de Rivaz <jean-christian.derivaz@innodelec.ch>,
	Paul Barker <paul@betafive.co.uk>,
	Yocto discussion list <yocto@yoctoproject.org>
References: <17b6446a-7ca5-5bb0-2c3d-0d482ac226d5@innodelec.ch>
	<1b045887-43ce-44c6-a5c1-0fd85944cd93@www.fastmail.com>
	<7448c585-90cc-35bb-c20f-ce5bf1879de4@innodelec.ch>
	<488795da-6201-60e2-8618-ceeac78542e1@gherzan.ro>
	<f518e279-ffdb-c762-b12f-1f7327b00341@gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Message-ID: <821000ed-9e26-9c3f-610b-e5b993811b4c@gherzan.ro>
Date: Tue, 21 May 2019 11:17:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <f518e279-ffdb-c762-b12f-1f7327b00341@gmail.com>
Subject: Re: linux-raspberrypi_4.19.bb unknown commit
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
X-List-Received-Date: Tue, 21 May 2019 10:17:44 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi,

On 20/05/2019 19.30, Khem Raj wrote:
>
>
> On 5/16/19 8:53 AM, Andrei Gherzan wrote:
>>
>> On 12/05/2019 16.04, Jean-Christian de Rivaz wrote:
>>> Le 11.05.19 à 21:46, Paul Barker a écrit :
>>>> On Sat, 11 May 2019, at 20:44, Jean-Christian de Rivaz wrote:
>>>>> Hi,
>>>>>
>>>>> I try to use the Linux 4.19 for the RaspberryPi from the
>>>>> meta-raspberrypi recipe linux-raspberrypi_4.19.bb but the commit
>>>>> ab8652c03fa081b27de7e28a74c2536cb2aa3e5b from his SRCREV don't exists
>>>>> into the repository github.com/raspberrypi/linux branch rpi-4.19.y
>>>>> . I
>>>>> searched that commit on a few others branches but failed to find it.
>>>>> Have anyone tested that recipe ?
>>>> The upstream rpi-4.19.y branch is still unstable and they enjoy
>>>> rebasing commits. The breaks the commit references used in our
>>>> recipes.
>>>>
>>>> For now I recommend sticking to the 4.14.y kernels for Raspberry Pi.
>>>>
>>> Too bad, I need Linux >= 4.19 to enable cgroup2 memory.oom_group to
>>> properly kill and restart xserver-nodm with chromium in kiosk mode
>>> displaying videos all the days long. There a bug somewhere in
>>> chromium/ffmpeg/gpu that eat all the available memory, and I don't have
>>> time and money  to dig in that complexity and patch acceptance
>>> marathon.
>> Feel free to complain upstream:
>> https://github.com/raspberrypi/linux/issues/2931
>>
>
> this has been fixed upstream. So I think time to bump the SRCREV and
> change default kernel back to 4.19 again.

I'll handle this today.

-- 
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan



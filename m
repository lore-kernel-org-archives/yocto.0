Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7BBA2E00D46; Mon, 20 May 2019 11:31:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
	[209.85.214.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B616E00D43
	for <yocto@yoctoproject.org>; Mon, 20 May 2019 11:31:01 -0700 (PDT)
Received: by mail-pl1-f194.google.com with SMTP id p15so7102153pll.4
	for <yocto@yoctoproject.org>; Mon, 20 May 2019 11:31:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=j0XQ7qOo4piMFc4LIBVUAPNUmJ8yh4h4oA5yC1kU+Ac=;
	b=dHBDzxcJ+hECVtD/XZH3exWcNhcP0LgI+ulneisMoWDdpUs6tZK1X5UGxYG+X0GTLF
	CnbcmsOJ3d7bulA61IgpFS/yPgoNRtRIHcythD7fY7LI/fRoImTykcCFnL/6pGl8I1v1
	6BqwpurxjG5poscwkcklQKK3Cg74ZBUqwuHLwv5cGwmXiV8Lvsq+DPr/o3NGJslNTaIk
	MLMkynFWqSV8DFoHdcEloOw/LOO9qmAqhN3thMJh7vUsamzIEVynmLlN0WilwPcxUdEc
	qeGaTMyxg2Dv3UhhC7mT0APiTwi0vZ5jRviX0fnKqnjLXm3Nh3ro403MWJUeRGs2E98k
	9NVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=j0XQ7qOo4piMFc4LIBVUAPNUmJ8yh4h4oA5yC1kU+Ac=;
	b=JbORukrOglcwLaP4VbxD4NSfY/nfDki1/8zdCoReZlZca5Jadzr5PtZ6NkmewHxFlo
	ZU++N+VpvQFTyrV34GI9mCpp3vSD50VNoCk3vopesFdRBQslrmJsb4MwF+3q3DM4LMkl
	zBIeaICjFUVw+8uaKsGpWFF6aYQSTICv5pxSFogXz0F4KVWFOGktqL72ya4CB7vvN8Hj
	yOlbUagO0am1uVm+FCXzlVemBe6wUBEkmF9EV2ud75YMLTrRUSEAqVx5StA5UVE1yekB
	0dtCsK8hjyXE1Mq9hHrODGT4qTaotLyG+RIp6CW6XZEv2OMJ48/SVUVxCeaIWYCKCRkS
	xHXg==
X-Gm-Message-State: APjAAAWLLNPraAOmFNklc4rVLrLvKeReFxK3rZ8loOhGhbNLBclYR6Ka
	t59lSYG2FUT1XK5qtBUWnJiZDnCd8ZU=
X-Google-Smtp-Source: APXvYqyN1vgabXv9gehYFVN6KdC8VHmJaKwmY7cVsjtAmEygifmBuOYYXfhYkNsJgs4psFnm+ZM4CQ==
X-Received: by 2002:a17:902:e311:: with SMTP id
	cg17mr9728158plb.202.1558377060542; 
	Mon, 20 May 2019 11:31:00 -0700 (PDT)
Received: from hermes.local ([2601:646:8500:6bc6:74d7:3fa5:f6a5:ec10])
	by smtp.gmail.com with ESMTPSA id
	184sm23573286pfa.48.2019.05.20.11.30.59
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Mon, 20 May 2019 11:31:00 -0700 (PDT)
To: Andrei Gherzan <andrei@gherzan.ro>,
	Jean-Christian de Rivaz <jean-christian.derivaz@innodelec.ch>,
	Paul Barker <paul@betafive.co.uk>,
	Yocto discussion list <yocto@yoctoproject.org>
References: <17b6446a-7ca5-5bb0-2c3d-0d482ac226d5@innodelec.ch>
	<1b045887-43ce-44c6-a5c1-0fd85944cd93@www.fastmail.com>
	<7448c585-90cc-35bb-c20f-ce5bf1879de4@innodelec.ch>
	<488795da-6201-60e2-8618-ceeac78542e1@gherzan.ro>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <f518e279-ffdb-c762-b12f-1f7327b00341@gmail.com>
Date: Mon, 20 May 2019 11:30:58 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:67.0)
	Gecko/20100101 Thunderbird/67.0
MIME-Version: 1.0
In-Reply-To: <488795da-6201-60e2-8618-ceeac78542e1@gherzan.ro>
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
X-List-Received-Date: Mon, 20 May 2019 18:31:03 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 5/16/19 8:53 AM, Andrei Gherzan wrote:
> 
> On 12/05/2019 16.04, Jean-Christian de Rivaz wrote:
>> Le 11.05.19 à 21:46, Paul Barker a écrit :
>>> On Sat, 11 May 2019, at 20:44, Jean-Christian de Rivaz wrote:
>>>> Hi,
>>>>
>>>> I try to use the Linux 4.19 for the RaspberryPi from the
>>>> meta-raspberrypi recipe linux-raspberrypi_4.19.bb but the commit
>>>> ab8652c03fa081b27de7e28a74c2536cb2aa3e5b from his SRCREV don't exists
>>>> into the repository github.com/raspberrypi/linux branch rpi-4.19.y . I
>>>> searched that commit on a few others branches but failed to find it.
>>>> Have anyone tested that recipe ?
>>> The upstream rpi-4.19.y branch is still unstable and they enjoy rebasing commits. The breaks the commit references used in our recipes.
>>>
>>> For now I recommend sticking to the 4.14.y kernels for Raspberry Pi.
>>>
>> Too bad, I need Linux >= 4.19 to enable cgroup2 memory.oom_group to
>> properly kill and restart xserver-nodm with chromium in kiosk mode
>> displaying videos all the days long. There a bug somewhere in
>> chromium/ffmpeg/gpu that eat all the available memory, and I don't have
>> time and money  to dig in that complexity and patch acceptance marathon.
> Feel free to complain upstream:
> https://github.com/raspberrypi/linux/issues/2931
> 

this has been fixed upstream. So I think time to bump the SRCREV and 
change default kernel back to 4.19 again.


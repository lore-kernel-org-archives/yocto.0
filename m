Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3AE1E00E22; Fri, 19 Jan 2018 02:45:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.67 listed in list.dnswl.org]
Received: from mail-vk0-f67.google.com (mail-vk0-f67.google.com
	[209.85.213.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB05EE0085E
	for <yocto@yoctoproject.org>; Fri, 19 Jan 2018 02:45:41 -0800 (PST)
Received: by mail-vk0-f67.google.com with SMTP id t4so676536vkb.9
	for <yocto@yoctoproject.org>; Fri, 19 Jan 2018 02:45:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=qKeHLKXwqFYZC9CFdt9Z/vGUVj/Xmspm01q7ZuPBU3I=;
	b=YcKDGYUA0UQmKCCYYQ77ZLmq+2sZ1EaOUM4nKcmcopn/wMGkELdg0a758/UmYqcFaX
	8gYnb2M+Nmm6DbmnZiuZFH15hkZBtXv7wA/uDuiz/GggZEh9iNkRPsJ2TqaqKsHMMDWu
	YqKL5nsLyG9clXrS3vZJ2YYNdMZVoivKolK0KQ7ADDj72MCZIq0AeSPoTfpHtISLKotx
	fflP9cU4mW0hmBjfzD6RN1EEcfN6B/S7A4hbA5FKcYyyYZnclK3fsomRu/M7KOv6s32B
	iWaAENahBX0W9jBwjzEewLhhoTNwf6EUBnk/CqqsP8PPYRCISE74RF8Qr6piSZxm0hMq
	ng5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=qKeHLKXwqFYZC9CFdt9Z/vGUVj/Xmspm01q7ZuPBU3I=;
	b=n5R2NYHn1w8ZzeNLbyMvS/XHZ1gcl36UILwUGaqYm8Wc8F6Mi5l9dwGM8i8F5PwUng
	2ASi4vT0o2qGFbUDtlGEzSu7OJv11E0Yvt37kKlOq/bI3SqArj2UNt0/78DNomuEt3bS
	jjhpxUjEPmrSRgE9/T+Icc0bi1y+6ceD7ckKvzXdWMZbu6ldm4vxMzgZ6n/ZXWBLIGH/
	Cbi3WxQOEZE2r3JPMI35jP2JjQywzf8O1eg7xliHaiisNGrHLxRCFloWHBWZjbi+TMXI
	TGvVljMVM3+pHkYxboJwgc/8oD0/uc34t9zLEheJhNqpFaxNvyu6a6jYteIdP2S5FKgD
	d8pQ==
X-Gm-Message-State: AKwxytfXLeuE8+9kybEqGGiiPO71tHyD2OzpWaRDtCpdnb3UXDYKLNHr
	Di5djG2GBT9aa1cbfoE7fCrA4zJkeJS2UMzvR5Y=
X-Google-Smtp-Source: ACJfBovsypt8vAFFQfztQAEc0GFdpGBMoZ8iR7ndJMLDZ6uT5qPJu1jPzItoFztqpxIPOqAj+aB3km0ysBoQ0yHRq3Q=
X-Received: by 10.31.85.193 with SMTP id j184mr6401031vkb.152.1516358740586;
	Fri, 19 Jan 2018 02:45:40 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.77.169 with HTTP; Fri, 19 Jan 2018 02:45:40 -0800 (PST)
In-Reply-To: <28c69ac5-219a-8718-83f6-5f7f2b51bf10@linux.intel.com>
References: <FBE5527A-743B-468F-9CEA-FC1732314AFE@googlemail.com>
	<CAC+thW1kL2F2LKxpnLMTd-YfWZV8KNzDSqpF8q2KdOBENBjt4g@mail.gmail.com>
	<CAC+thW0xBGsXZz-GJQU5f-LbVtUVWmzt5ReUwZr-SG4gvw-eVA@mail.gmail.com>
	<20d47e1b-c33b-d7f6-1b9e-f7a6f1e779a0@linux.intel.com>
	<CAEHkU3WSqGih6myuVDZCrWjszPA7yaj6p_BWuEqin53LBh_tsA@mail.gmail.com>
	<CAC+thW0g-Sc+K7yNp6BU6ia31RX1Gy4N0v6LQ1qFcTjiXniDTQ@mail.gmail.com>
	<24fffbce-1f44-dba6-aed2-913af75ba525@linux.intel.com>
	<CAJ86T=U4m-J8WLdRP6UFP7T=FxyRRMsc7uXzpOyU9uCoimA1_g@mail.gmail.com>
	<28c69ac5-219a-8718-83f6-5f7f2b51bf10@linux.intel.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Fri, 19 Jan 2018 11:45:40 +0100
Message-ID: <CAC+thW07t_5w-g9aWDTSWeqN_V0zH=mEZBDLrUO_5LD97JG5-A@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: Mathias Rudnik <rudnik.mathias@googlemail.com>,
	Yocto Project <yocto@yoctoproject.org>
Subject: Re: Error do_compile libepoxy
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
X-List-Received-Date: Fri, 19 Jan 2018 10:45:43 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Jan 19, 2018 at 8:45 AM, Alexander Kanavin
<alexander.kanavin@linux.intel.com> wrote:
> On 01/19/2018 05:29 AM, Andre McCurdy wrote:
>>>
>>> Note that this same test does build fine in poky, so disabling the tests
>>> is
>>> not a good fix. You should figure out what is about the non-poky EGL
>>> headers
>>> that is causing the failure, and whether you need to configure the
>>> provider
>>> of those headers differently, or add missing dependencies etc.
>>
>>
>> Upstream documents that the test suite relies on X11:
>>
>>    https://github.com/anholt/libepoxy/blob/1.4.3/README.md#building
>>
>> So disabling the test suite for targets without X11 seems like a
>> perfectly reasonable approach.
>
>
> The meson.build files already have guards for lack of X11 around the test
> files that are failing here. It looks like in this particular configuration
> meson erroneously detects that X11 is present, when it's not.
>
> Alex

I'll try to recap a little bit but, please, forgive my ignorance in
graphics stacks and libraries.
Disclaimer: mostly working on headless systems... my bad!
This is what I think I understand here (remember I test building poky
+ meta-raspberrypi):
* libepoxy recipe in poky uses PACKAGECONFIG to conditionally depend
on virtual/X11 when this is available in DISTRO_FEATURE
* the latter is the case for poky which is the DISTRO I'm building
for. This gives i.e. a populated recipe-sysroot/usr/include/X11
* upstream meson.build conditionally builds tests if X11 is
available... so we expect they should build fine in this case
* compile fails on test/egl_common.c which does not explicitly include
X11/Xlib.h by itself. Doing so moves things forward but, to me, does
not seem to be the right thing to do.

Is this correct to assume that the upstream tested usecases are
probably getting the include otherwise, maybe conditionally as Alex
initially suggested. If so, where should we look for the missing
pieces?

Andrea


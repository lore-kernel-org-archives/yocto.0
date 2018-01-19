Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1799DE00DF1; Thu, 18 Jan 2018 19:29:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76251E00D7F
	for <yocto@yoctoproject.org>; Thu, 18 Jan 2018 19:29:19 -0800 (PST)
Received: by mail-wm0-f68.google.com with SMTP id v71so807976wmv.2
	for <yocto@yoctoproject.org>; Thu, 18 Jan 2018 19:29:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=YF9QiqsFwqkXfKYVkk+IDC3yfKtxHqwsN0TFz//0/Lk=;
	b=gbDMuN+n6Lte1Kgysezf9sv24IorIG4Mo19KUAgqdAui6eW0gmM921AfV7zfnY8scp
	q4jzANNOZOUXrCMjGntRvQ9Rx0JfZ4JEqWIvU1ySLKL9n4D0suZ32bjLWhjHeLer09Vs
	BVARQfdGOufS4PkK0S0bzLiZjF8z+sy2yACCiU0583d15oWnhOJbwDwtUYsiSD7m3Tpr
	H9DDydFzyOgLAy6MFXO6n/xopQ2hfKDKLRtBRoYw+JGCID7/wONMGvkrn94QyjpJ8s6e
	YVYhsRQfUXcU8nK3AYz+QNA3au61gD/y6w8NJ44PGEb7ElvNeG8qxNzFhwzYO+VJkQ50
	Zz6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=YF9QiqsFwqkXfKYVkk+IDC3yfKtxHqwsN0TFz//0/Lk=;
	b=ed1fjuzjkhCg6Wx1PjsnF1RYVTFndQASA+b5dsAC+oyhh5SCf8+LW5IAZt0d555V2N
	tGSw3GpfwmGoaABDbN97E4iPsCjx6Xln4kcPq505s3GgUp7Ap6JPz1e0pJEPf5I6qFG4
	APzTYd5ZhVbHv7dgpQI0S2jjLYjXp5byVbaMot9jD+1gRs4j1OVUBYdejs52xchjSnJn
	1iGNGxcOBcZfyX26ZF2oeRJPKoHzU4JijoNWIHFmy/xMzMKJeSNqp3MIe/wpshMYhLLS
	5ceK79KBzxTCQ8w/xPMhg+wKqzZtUrgHfnFfRwKkNHB0+udI3NawvLiDnSru8knjJ10z
	kc+A==
X-Gm-Message-State: AKwxytd06Dxz5sNKpXz/CjWZMe5zE2ETSXSKThXfCXJu4qVSpOjaCtiJ
	of0tNHPJhMBPv87LQ/rS1Zo1uir9AD9BM+Q6DCY=
X-Google-Smtp-Source: ACJfBoskacsr7eNNDQrZKAtlCrzzkm5Y0rutCyR7pmQh3NbF9Tt0a3AmjVl8uQ99sWbCwkQwFUWknVvjdOpxXUxJGRM=
X-Received: by 10.28.40.195 with SMTP id o186mr7610344wmo.136.1516332559269;
	Thu, 18 Jan 2018 19:29:19 -0800 (PST)
MIME-Version: 1.0
Received: by 10.223.190.132 with HTTP; Thu, 18 Jan 2018 19:29:18 -0800 (PST)
In-Reply-To: <24fffbce-1f44-dba6-aed2-913af75ba525@linux.intel.com>
References: <FBE5527A-743B-468F-9CEA-FC1732314AFE@googlemail.com>
	<CAC+thW1kL2F2LKxpnLMTd-YfWZV8KNzDSqpF8q2KdOBENBjt4g@mail.gmail.com>
	<CAC+thW0xBGsXZz-GJQU5f-LbVtUVWmzt5ReUwZr-SG4gvw-eVA@mail.gmail.com>
	<20d47e1b-c33b-d7f6-1b9e-f7a6f1e779a0@linux.intel.com>
	<CAEHkU3WSqGih6myuVDZCrWjszPA7yaj6p_BWuEqin53LBh_tsA@mail.gmail.com>
	<CAC+thW0g-Sc+K7yNp6BU6ia31RX1Gy4N0v6LQ1qFcTjiXniDTQ@mail.gmail.com>
	<24fffbce-1f44-dba6-aed2-913af75ba525@linux.intel.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Thu, 18 Jan 2018 19:29:18 -0800
Message-ID: <CAJ86T=U4m-J8WLdRP6UFP7T=FxyRRMsc7uXzpOyU9uCoimA1_g@mail.gmail.com>
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
X-List-Received-Date: Fri, 19 Jan 2018 03:29:21 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Jan 18, 2018 at 5:49 AM, Alexander Kanavin
<alexander.kanavin@linux.intel.com> wrote:
> On 01/18/2018 03:41 PM, Andrea Galbusera wrote:
>>
>> Yes, this is coherent with what Alexander's commit message says. We
>> started building stuff in test/ while switching to meson...
>> If we can't easily fix the upstream ourself and/or reproduce outside
>> of OE to ask for help from upstream devels, IMO we should temporarily
>> prevent meson from building the tests.
>
> Note that this same test does build fine in poky, so disabling the tests is
> not a good fix. You should figure out what is about the non-poky EGL headers
> that is causing the failure, and whether you need to configure the provider
> of those headers differently, or add missing dependencies etc.

Upstream documents that the test suite relies on X11:

  https://github.com/anholt/libepoxy/blob/1.4.3/README.md#building

So disabling the test suite for targets without X11 seems like a
perfectly reasonable approach.

> Alex
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


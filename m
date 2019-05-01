Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 146E2E00D2F; Wed,  1 May 2019 03:34:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.172 listed in list.dnswl.org]
Received: from mail-it1-f172.google.com (mail-it1-f172.google.com
	[209.85.166.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03915E00BB7
	for <yocto@yoctoproject.org>; Wed,  1 May 2019 03:34:55 -0700 (PDT)
Received: by mail-it1-f172.google.com with SMTP id k64so9194219itb.5
	for <yocto@yoctoproject.org>; Wed, 01 May 2019 03:34:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Aqnj/AKKLPsOJz5YsQEJGORPy5Z0VADyVyOWlcHUOrY=;
	b=mFOg/zq5VVBCw+huY/Tptb2ccdc//m8hjMrUHQE9HbRz4+MEtX2F0khr4thRJ7glzd
	QR1r66L7GOIRqhB0xHbIpMGqSVKH50iUdi1K0WL4H7MEifAw39UWBxfXZ26se7qyZmfc
	tFgTFAilj8fbRQzyo3NZMqioZua5rJ5GioXN3b4Oi9oKtjNDbJhn4PqybIMv4D6UjzQM
	MKUsks4PFEbj1PRctZYi9K3lke9f6dZjSRoh9kjFW+A24emkykZNLk0vdAG7pYCJJssN
	xl72qMR3irUXEczZt/MqZ9s7UFQjq9jgz7Y3OEDFiUGLpKTzJC494w8zD501K3BghCdD
	GzRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Aqnj/AKKLPsOJz5YsQEJGORPy5Z0VADyVyOWlcHUOrY=;
	b=nXRDdcSurbQA1xuHAA1irm1AlYTaqgHFDLCxDqBf1jkVX2HETvMZWYZpS28DQRLy3p
	XWT59dSGM6PIOpCN34ohBy8dUhwbJ2A/bVAKpEiurcjvMDq/8xJ5F85vdP3MSBeOXBcU
	/Y1kl8/F3v9jDUN/IivGwR9v/6dWN7a+X4iL2j48aEn/cyOQIzQxrHeyPOjH2VJfYEuQ
	Ka1ZeHcwmsI3dvz+20vmK55ahEgu+VQKp5JCM5Wn7RN9QpT8S7njHrjVfdDItfz5Eh2K
	jDeNH4GYQXg17ZUckgOcXYYFnNHslLs1YlkGQGFkhkhMMNncWkO9ZttUkYFxC4Q4aLq2
	do4Q==
X-Gm-Message-State: APjAAAXjdp+bU+yXpl+QyzGiPbsS2zW/VJPWnS1ZB6LmDiONZJRtMQjt
	cZSjtzzFKtW5E6LYjJWeJdKrKkycdESWPuKxme45xejn
X-Google-Smtp-Source: APXvYqz40Z5ZK2NwQ61PiwjJoDFvb25z+7D9dqW4Ut+ubz6/em6HO9P5yUZ0kYA0Ts9DfRSFzgutrz3hv94dkGTvMBw=
X-Received: by 2002:a24:e517:: with SMTP id g23mr7428493iti.113.1556706895387; 
	Wed, 01 May 2019 03:34:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:9c06:0:0:0:0:0 with HTTP;
	Wed, 1 May 2019 03:34:54 -0700 (PDT)
In-Reply-To: <3ca8cb2d31e9c295e6da1bfb161ce9ffbb0e0318.camel@linuxfoundation.org>
References: <CAA=hcWSvZZ_wTjpdKF+-0=UeMESA45VFvmauQh-FcF+B7i6_-w@mail.gmail.com>
	<3ca8cb2d31e9c295e6da1bfb161ce9ffbb0e0318.camel@linuxfoundation.org>
From: JH <jupiter.hce@gmail.com>
Date: Wed, 1 May 2019 20:34:54 +1000
Message-ID: <CAA=hcWSoyZnSMCud9ahg9ZqKi0Wcsy5Sc6GgG05AFHtEG8Wa4w@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Could not find glib.h
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
X-List-Received-Date: Wed, 01 May 2019 10:34:57 -0000
Content-Type: text/plain; charset="UTF-8"

Thanks Richard, where to run pkg-config? If I run pkg-config in the
host, it pointed to host Ubuntu package which is different to the
cross compiler.

On 5/1/19, Richard Purdie <richard.purdie@linuxfoundation.org> wrote:
> On Wed, 2019-05-01 at 10:43 +1000, JH wrote:
>> Hi,
>>
>> I added glib-2.0 to DEPENDS but it still could find the glib.h, what
>> I
>> could be missing here?
>>
>> fatal error: glib.h: No such file or directory
>> >  #include <glib.h>
>> >           ^~~~~~~~
>> > compilation terminated.
>
> You probably need to use pkg-config to find out which CFLAGS to use for
> glib-2.0...
>


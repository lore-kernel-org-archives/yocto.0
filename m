Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84660E00D85; Wed,  9 Oct 2019 03:22:02 -0700 (PDT)
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
	*      [209.85.128.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
	[209.85.128.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F3ACE00790
	for <yocto@yoctoproject.org>; Wed,  9 Oct 2019 03:22:01 -0700 (PDT)
Received: by mail-wm1-f66.google.com with SMTP id y21so1938802wmi.0
	for <yocto@yoctoproject.org>; Wed, 09 Oct 2019 03:22:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.ro; s=google;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=ec6Vj0OF0Oun6pSLnNUZ1YOiDJLncSLEj8tjS4oyeUQ=;
	b=T6cmM3cuFYWh6ce/aHyW1V3jdZyqOt88lu+LhfMBCRbizE7oaAhwRlD4pcvB18vnLI
	mspoi2jkZ43R8oD3tFIyeq58d1MYSWrjU9biKebTMhEM0IcJ12NUGZXFfc2RPFF5LQ2i
	2xu3iLL4kXZ/ArgNMNj+pZHtCGhu6ABx+xQHe1z4j3GEp8qaWZlzP0TrFckXQMJAT48T
	0u0cwpgNrDmOADRddCFBHgIsCxUqs5DSlOfmua5JAQ40I5Gkk/KtaeLkQqocVvRmfz1i
	y522IzoTe33U5b7xO/OUcN/eOf+wDqyArtvtBnbd5u2BpNtFn88tmU3N8KRHby0Lb1P8
	feXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=ec6Vj0OF0Oun6pSLnNUZ1YOiDJLncSLEj8tjS4oyeUQ=;
	b=BOOTpHUt2yqCUW0iDRBKQgdf47yE2yDCJgqp5RgOuJ/G3dIZPpcizHmw3pf1gfFhoP
	BxzrKPefJZR2+OhpuJWsESe00iwrmbFHsuOgTjLyQlKF8VCeYPpH3c4pKbUBkskdjU6c
	EvufzAo/vIzPXe6X0A+RzI919k8hss6sm6aPOJvPRUdOZudnxQ3Ecv4Qx2IqpPNf/Tt8
	vWzj0Vj0vK7HGcNcicskZgA+dwxw6G4QHJ0+kqUMFnT9Qki+BJgOdcnQ0zfOaG50MBpi
	8JdE7qEj0G2cZ8etgYiVeqKB/+5GLhFJcdY09fuv9Vd9z8QHqIzZ1VKkaQ4h87Ax6Idh
	ohkw==
X-Gm-Message-State: APjAAAV50P9BzTKjHDZYTWwh7tHUTUlB9zTxEqJepuiu8GXR4Yb1pqXQ
	VjXPQiKxo+Z9dQCD/2tlMhZnI4TO3rI=
X-Google-Smtp-Source: APXvYqxvqKh937NHPSV3SCK/91n/iUBviE5GdvH/17LnKpDS2xvLYThdZPvfCavvhiqhQYyKFXn2hA==
X-Received: by 2002:a7b:c387:: with SMTP id s7mr1885492wmj.22.1570616519976;
	Wed, 09 Oct 2019 03:21:59 -0700 (PDT)
Received: from [10.13.0.21] ([81.145.148.228])
	by smtp.gmail.com with ESMTPSA id c6sm2052448wrm.71.2019.10.09.03.21.59
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 09 Oct 2019 03:21:59 -0700 (PDT)
To: Paul Barker <paul@betafive.co.uk>,
	Yocto discussion list <yocto@yoctoproject.org>
References: <a51024a0-2c3f-a584-2821-c5c8a8a786a3@gherzan.ro>
	<75274d36-ec83-4e33-8a05-c198ba13d718@www.fastmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Message-ID: <40c0eda4-c553-7592-0c28-d8879dd8a37c@gherzan.ro>
Date: Wed, 9 Oct 2019 11:21:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <75274d36-ec83-4e33-8a05-c198ba13d718@www.fastmail.com>
Subject: Re: Task vardeps on a variable changed externally
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
X-List-Received-Date: Wed, 09 Oct 2019 10:22:02 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Cheers Paul!

On 09/10/2019 11:07, Paul Barker wrote:
> On Wed, 9 Oct 2019, at 10:42, Andrei Gherzan wrote:
>> Hi guys,
>>
>> I struggle to figure out an issue that I lately got into. I want to have
>> a recipe which writes a manifest of all the layers part of the build.
>> These layers are all git repositories and I want their revision to be
>> exposed at runtime.
> 
> Do you need this to be an actual package or would you be happy with it just injected into the rootfs via IMAGE_PREPROCESS_COMMAND? If so you could take a look at image-buildinfo.bbclass which seemed to work well when I've done it in the past.

That is exactly what I've done in the past to workaround this but now, 
when facing the same issue again, I thought that there must be something 
better. It really sounds to me as a bug and I'm mainly searching for an 
explanation if that is not the case.

> 
> The only other way I've done something like this in the past is to put the git commands into do_compile for a recipe and set do_compile[nostamp] = "1". That way the task and every task that depends on it are always re-ran. It does mean that it will be re-ran even if the git repositories haven't been updated at all.

Myeah. That would always invalidate the recipe. Not great.

-- 
Andrei Gherzan


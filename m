Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76F54E00790; Thu,  9 Oct 2014 23:13:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-oi0-f50.google.com (mail-oi0-f50.google.com
	[209.85.218.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40F8EE00769
	for <yocto@yoctoproject.org>; Thu,  9 Oct 2014 23:12:56 -0700 (PDT)
Received: by mail-oi0-f50.google.com with SMTP id i138so5580804oig.23
	for <yocto@yoctoproject.org>; Thu, 09 Oct 2014 23:12:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=AKbNk1VhjVUJULdrKw6KaxIvDeefMQg+6kHSkWfbFKY=;
	b=WE0r8k8iE4JtwR3wOHP0s1H3+iq+WS67n/yLt+0DXa+KgEpZRPEeAfhnUPwjDfv3KC
	M3AR5ydIDcniq5WsZN9gUnropFH0IMmoMA8M5ohBrta05uN8POfaSA3C2bfwqiRpw1b/
	Jfb2T5uNUuDJkwgckmss1EKbJGCDQxAVCYl77r9Ilat3F0dDGaWAvFhaFnR6THCfT/Mc
	3nebQug6Fnw6Qp9YrkdM2lKDJMHjtO8m+qcUCMUIEg3VvubTzrgGRqjkMLGWd9G5jyP8
	jt4s2qQcv387PwUlCjQEx9xb3/97htbxX8T5Ep9uz4xW5crHa39/G9+Uu9YjfQX/mOau
	gG3A==
X-Gm-Message-State: ALoCoQmxunCEhOpg8vKk4ZrKDWsh7K9AZF38Ps5UucF8CfVOBMTntHm7r5iCcKmw2XMLRQZMgANy
X-Received: by 10.202.184.135 with SMTP id i129mr2410851oif.53.1412921575518; 
	Thu, 09 Oct 2014 23:12:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.187.8 with HTTP; Thu, 9 Oct 2014 23:12:35 -0700 (PDT)
In-Reply-To: <CAG6mzON96UH=mFnrrkC3KWudoUqPdQSdT9wPH1_Vj=vgFdzTDQ@mail.gmail.com>
References: <CAG6mzOMePPK-DkfwFfyftCojc17R2Qx6=yNvZbkXk8Mmg6gk6A@mail.gmail.com>
	<CAP71Wjw5hZa753z828dz9HeOMuTDscQQiCkFe0_EjF6zhvGixA@mail.gmail.com>
	<CAG6mzOOZ0bCAWu7iv=yDfMpCfyq94WEO0j27NzZUU=q2s0THrA@mail.gmail.com>
	<CAG6mzOPEMuMs3BWZsZK1AJG=4ucBHm19m6sir10g3t87NTQDJg@mail.gmail.com>
	<20141008204308.GM25997@denix.org>
	<CAG6mzOMzmmeafkG3UFhWd=OtQ-CjDpU4nRGG86+WqPp6aMVDjw@mail.gmail.com>
	<CAP71WjwDxDEsS1C-_-MEs1tmkXQaMzgwmXRDjGfZi8uUR2zJJg@mail.gmail.com>
	<CAG6mzON96UH=mFnrrkC3KWudoUqPdQSdT9wPH1_Vj=vgFdzTDQ@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Fri, 10 Oct 2014 08:12:35 +0200
Message-ID: <CAP71WjyH9GJ0xVbe+pO+Ww3CPAXkpTsabqn1XZumN-LR0ffSyg@mail.gmail.com>
To: Wy kevinthesun <kevinthesunwy@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Cannot run simple binary executable file
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
X-List-Received-Date: Fri, 10 Oct 2014 06:13:00 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 9, 2014 at 10:27 PM, Wy kevinthesun <kevinthesunwy@gmail.com> wrote:
> It seems that Yocto 1.5.1 is built with hard float. However, the 1.51, 1.6
> and  1.62 toolchains are soft float. When I tried to set
> "-mfloat-abi=hardfp" in the compile option, the compiling process ran into
> error. It seems these toolchains don't  support hard float? How can I solve
> this problem?
>
> These are my set in the environment file of 1.5.1 toolchain:
> export CC="arm-poky-linux-gnueabi-gcc  -march=armv5te -marm
> -mthumb-interwork -mfloat-abi=hardfp
> --sysroot=/opt/poky/1.5.1/sysroots/armv5te-poky-linux-gnueabi"
> export CXX="arm-poky-linux-gnueabi-g++  -march=armv5te -marm
> -mthumb-interwork -mfloat-abi=hardfp
> --sysroot=/opt/poky/1.5.1/sysroots/armv5te-poky-linux-gnueabi"
> export CPP="arm-poky-linux-gnueabi-gcc -E  -march=armv5te -marm
> -mthumb-interwork -mfloat-abi=hardfp
> --sysroot=/opt/poky/1.5.1/sysroots/armv5te-poky-linux-gnueabi"
>
> It ran into error.


maybe because the gcc documentation says -mfloat-abi=hard, not =hardfp ?

in general, showing us the error you have is much preferred, otherwise
it's difficult to help if we don't really know what went wrong.

cheers.


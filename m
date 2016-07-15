Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64BB4E00CEC; Fri, 15 Jul 2016 13:10:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f46.google.com (mail-vk0-f46.google.com
	[209.85.213.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BED34E00CEC
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2016 13:10:04 -0700 (PDT)
Received: by mail-vk0-f46.google.com with SMTP id w127so111406506vkh.2
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2016 13:10:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=8Lx6sLL1YvPIguzqygr4LH9Ng1INJFsauwTCb2jkls0=;
	b=IUBpkFLer0LQi3aBaKgQJT1RiyVowGj1TJVjWW3IV8S/A12gZV/lmJTNoAMFrk8Fqw
	IsvdE8Woj7PR9/SO9pKhYX4B+Ud7n1+uP2KVVpWuhTsiIQPyVi9vw7HInB9QRskRh1cJ
	Tmcv0h0KQM7DZNXoHdIEq9CpU9B4BLNZ/pURjFKtmTQGwCy3GO8unI5a3nYdtIEhdcse
	Z83bcHmTj1Jlxwt8AzoyLMMCnI1r9K4Hn1PyIctgibNhmSciehOGFOEB8AretU7VULqh
	QuHTaikKAdr2/OZeT9dN++6NNyJQmw7+WOk+UjajCo2LkUm5PrVASg+UKHVhQ0mWxRSv
	Dv1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=8Lx6sLL1YvPIguzqygr4LH9Ng1INJFsauwTCb2jkls0=;
	b=k4mVqO2vSnoVCDGsDOu/5gZTDKpj+TOeDwihMCtmKp/UjL/mHrBfiPSwSocRyMz7Bd
	U8ZQy+N1u2bBrW9kiN31AuWj+QMFDFd2eZN8Of/TpC3JQMlnImhHtdtt7KFrpUoSOROe
	DYQxaTdjnFbWEorl+y/vdwt0kkAt89qMOK2iLuMca4yhIoeCYzoi2WjJRfslvUyrQ+U5
	Xdo3hRSN/6QBR7p5ZkNC1S0aoXf1k5t2T2NNjoTKFfFfymvFUZI58osowBoBk6qNHD5D
	/uU0+y5NCcemTfctTTTzuSOXqayw6FqOqCEZqcXGwlJFcEknqgAh9E335elcP3O2KFa2
	nWsw==
X-Gm-Message-State: ALyK8tJydBKyQTEPo7/y/lKCMxXRF+I7bNt2EVw+IuSrHDbOOGSelcw4ReK30kub9bBMlq0wA+owVshj2+djvA==
X-Received: by 10.31.206.130 with SMTP id e124mr8204982vkg.129.1468613403581; 
	Fri, 15 Jul 2016 13:10:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.37.233 with HTTP; Fri, 15 Jul 2016 13:10:03 -0700 (PDT)
In-Reply-To: <CADkTA4Oeqi8e-SysL=AZdphpyAh1o0ZbRF3JhFqmaXU38JF++Q@mail.gmail.com>
References: <CAF3SDA5hVSS6ERFPUQ02YqMWCMwhHGLt95+MfMSrrP4WxiWg=A@mail.gmail.com>
	<CADkTA4Oeqi8e-SysL=AZdphpyAh1o0ZbRF3JhFqmaXU38JF++Q@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Fri, 15 Jul 2016 17:10:03 -0300
Message-ID: <CAF3SDA7rb4+XrQ756MifGpSb+G3JBvEXpOreBThyp7X6M4v_fg@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Docker and Yocto
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
X-List-Received-Date: Fri, 15 Jul 2016 20:10:05 -0000
Content-Type: text/plain; charset=UTF-8

Hi Bruce,

Thanks for answering me. What is your use case? I've been reading
about Docker and seems to do some nice magic. I was wondering if would
be possible and productive to deploy embedded applications using
Docker... Also the Docker swarm seems really cool stuff, are you using
this too?

Regards,


2016-07-15 11:43 GMT-03:00 Bruce Ashfield <bruce.ashfield@gmail.com>:
> Yep, that's something that we test consistently with the docker support in
> meta-virtualization.
>
> Bruce
>
> On Fri, Jul 15, 2016 at 9:56 AM, Daniel. <danielhilst@gmail.com> wrote:
>>
>> Is anybory out there using Docker containers inside Yocto images? I
>> have some machines running at ARMv7 architeture and I want to know if
>> there is somebody already using Docker on non-x86 embedded platforms
>> and if it can help deploying applications in this case too!?
>>
>> Regards,
>>
>> --
>> "Do or do not. There is no try"
>>   Yoda Master
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
>
> --
> "Thou shalt not follow the NULL pointer, for chaos and madness await thee at
> its end"



-- 
"Do or do not. There is no try"
  Yoda Master


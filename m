Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74E00E00B68; Thu, 29 May 2014 13:50:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.179 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f179.google.com (mail-ig0-f179.google.com
	[209.85.213.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E214AE00A2F
	for <yocto@yoctoproject.org>; Thu, 29 May 2014 13:50:32 -0700 (PDT)
Received: by mail-ig0-f179.google.com with SMTP id hn18so8558igb.12
	for <yocto@yoctoproject.org>; Thu, 29 May 2014 13:50:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=lyh9AythXk4+JEqZ/aZiUw2QO0Fmo7ES/WMyNvPQ1NE=;
	b=LDrouNVidvOGx56La+eKRemARACdow4zKsWJlDR3lt/d7JqNt307qQPQeCq8r9AaEI
	zQY0ewc/JDkfOvkWfPorNS7AKMEvFGb9zVG8fRmnELofNSLHwUEytmO3quAQoOfJc6rV
	84CxGyFtjP+kDxUMjvatrnzpV66jKqeebO6496yji7XSPvv3xt1InwAMVEpbhe8AKzaK
	/xqRwm2OVQ6RTU4qC050/BkANCaZAXiwnB5j+DZO0CnYqnWMSsJxxLERr8AsoVUVKUfi
	TmFoBZYs99Oom3QHfLCiCCmTwNgA9LqT5VhSKo+CIf3uFfF+jLJHCWtG7vAsoH6iZJW0
	GoZA==
X-Received: by 10.42.211.205 with SMTP id gp13mr9897294icb.29.1401396631814;
	Thu, 29 May 2014 13:50:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.117.33 with HTTP; Thu, 29 May 2014 13:50:01 -0700 (PDT)
In-Reply-To: <53876533.7080306@bsmucker.eu.org>
References: <537F9583.50407@bsmucker.eu.org> <53874D1F.8090504@bsmucker.eu.org>
	<2317978.pEesILAVCv@koontz> <53876533.7080306@bsmucker.eu.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 29 May 2014 13:50:01 -0700
Message-ID: <CAMKF1srSaXBf3YZ9S_7FfMhnqB4Yo_=T1t24yjST99-+GYqyEw@mail.gmail.com>
To: Brian Smucker <bds@bsmucker.eu.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto with Initial RamFS
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
X-List-Received-Date: Thu, 29 May 2014 20:50:33 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, May 29, 2014 at 9:49 AM, Brian Smucker <bds@bsmucker.eu.org> wrote:
> My followup question is: Can I mix toolchains in this situation?
>

No, not easily. Although you can see if klibc is an option for you.
meta-initramfs has support for that

> Can I compile the initramfs binaries with the uclibc toolchain based on the
> poky-tiny distro and the regular file system binaries with the glibc-based
> toolchain (based on a different distro)?
>
> If this is possible, how would I begin to do it?
>
> T


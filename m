Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9EF8E00CEA; Fri, 28 Dec 2018 03:40:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
	[209.85.221.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48988E00CA9
	for <yocto@yoctoproject.org>; Fri, 28 Dec 2018 03:40:05 -0800 (PST)
Received: by mail-wr1-f67.google.com with SMTP id j2so20762299wrw.1
	for <yocto@yoctoproject.org>; Fri, 28 Dec 2018 03:40:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:in-reply-to:references:user-agent
	:mime-version:content-transfer-encoding;
	bh=E19pJp7cKJOpDMXKeNzJRYRIwhGvhLtUw5zSyikX5XA=;
	b=biGMpvWP1yPJXNlY9S1Sn4DdHTebDQglfMR/T9AIxcAJG8g4/IH6o+7Z2WAGfzrUnu
	CAwjn44CXjrcIx8+T1H1b2tjGS9X/RhZ+/zsmKCzfrNgSAu4fkDZD/WQ6sUPGXWO2OL8
	w6P+sNZ1pfWRqu8Pg4JYOp3AN4Wwkqhr+Vu+k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=E19pJp7cKJOpDMXKeNzJRYRIwhGvhLtUw5zSyikX5XA=;
	b=m/mqBMJKLeiqCo7ei76i9mCtyGO3bU7PF2vlQNvxMu49ID9C3C5h4AS8NTqodR486n
	Sx5zTCpn+9jBj/d2WF9aZWXMeRsRaTDY+6Sjs19a366UCj54R56lx7dbmVf8QP1EommB
	r15ExYi377FUEHX+IP4YmLY5V2E/dxSqJfzigryMv6Vaq97rYLFs9sgLXBpmeFTi7FtH
	oAvr1pTxRTyKYB0b+FVKHDTy3gh9GuCM/0AZ2zQXh4XAoB1vqfUZAaC6zAd6WscDKwZk
	amzZwJRz9CG0+yTptEMxbgOX15UDTBiJRQr1HEED9JZoKY3r6AVUNjsgk/3A7dEN9gQ0
	3q8Q==
X-Gm-Message-State: AJcUukcXUnzUQGRf61GY8KdnUOVF+C7eiR8IWyqsPrAZrcLa8tMt1RHe
	x3RAt9R6oi1pMmlYUWKvP+7FEQ==
X-Google-Smtp-Source: ALg8bN5i0/Hjh3IRxJmKsU4J6iPvl32RFcbK8wOyTBirN8tCMKK5b0Aj/v+1TxBMqelv+ZYFMMgoJQ==
X-Received: by 2002:a5d:4b8b:: with SMTP id b11mr25043005wrt.180.1545997204373;
	Fri, 28 Dec 2018 03:40:04 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	w80sm32970573wme.38.2018.12.28.03.40.03
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Fri, 28 Dec 2018 03:40:03 -0800 (PST)
Message-ID: <b21e8888f599e9340e91b6a22e0e0c554748ef44.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: Zhaolong Zhang <zhangzl2013@126.com>, bruce.ashfield@windriver.com, 
	yocto@yoctoproject.org
Date: Fri, 28 Dec 2018 11:40:02 +0000
In-Reply-To: <f7a564.7f88.167f453d16d.Coremail.zhangzl2013@126.com>
References: <f7a564.7f88.167f453d16d.Coremail.zhangzl2013@126.com>
User-Agent: Evolution 3.30.2-1 
Mime-Version: 1.0
Subject: Re: Accelerate kernel module built in eSDK?
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
X-List-Received-Date: Fri, 28 Dec 2018 11:40:06 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2018-12-28 at 18:19 +0800, Zhaolong Zhang wrote:
> Hi Experts,
> 
> Building out-of-tree kernel modules in eSDK will trigger a new
> rebuilding of kernel, which consumes lots of time.
> Is it possible to cache the do_shared_workdir() task in sstate-cache
> and ship it within eSDK? And how?
> 
> Or is there other method to accelerate?
> 
> Thanks in advance.

It is possible but it means creating a tarball of all the kernel source
and build artefacts. Usually its just as quick to extract new kernel
source and build it than it is to store this and extract it. The sstate
object would be huge.

Cheers,

Richard



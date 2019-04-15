Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87F0FE00C43; Mon, 15 Apr 2019 01:45:07 -0700 (PDT)
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
	*      [209.85.221.53 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
	[209.85.221.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7342BE00798
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2019 01:45:06 -0700 (PDT)
Received: by mail-wr1-f53.google.com with SMTP id w10so20809289wrm.4
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2019 01:45:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=6EwlRXjDYrPyCbEvpbEbARsvLR+O0cpDTA0Sj5kLebw=;
	b=H/z2NwL9c2BAq74iR3tX6qwMYTqp83W940OpUjl0zlNvBlB4NfMDKbIE0lwMWpSSEr
	b6maa2hiy9bDqiEpaotUrUolD3YpD5U0bCF6KASVixHueM2L+JlXxOWNB27Q6XoRxktM
	+vcl8r0DfgG/X6r1JxdlXrtPQo5C/iGI5pTl8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=6EwlRXjDYrPyCbEvpbEbARsvLR+O0cpDTA0Sj5kLebw=;
	b=AXlFBePXevl89C1GNhIrzEJmB5G70E/1C6NLJpS40k+greb3FUrcFmaZKjAQTewBpN
	/JqSjByQfgrOZzhg3eRl0oFMb+co1VG/b4DLOOteTQjgdaWu7HMcJcgXvcxTKLS/27to
	ni7kYnfawdaaEo8YNak09ALMbvALvgNvBCGe784pheuQQ2rwYXD4PhUnufIE+8CLglFU
	lsnCL1I8XEx6t3+nA3wg0ekdE1FoVCju51NpvPN2Ll2dBBQ2SDUBlmWr4dIFVnVsCP0Y
	rP4P3CqxNfEFBOhGZitLnO5ZlG29sU0nq3dSojs+i8TzWLjQCC7NySjNFUdcRGLGUqQW
	FYNw==
X-Gm-Message-State: APjAAAVw+wZS5SBBjDVrQltJn2kqlQqfA7nkM64BzaJAIN6KAlNHZaze
	8+jtBFvUbg+FC8PDHEH1tOI78pWm+10=
X-Google-Smtp-Source: APXvYqzY3w1EmlM6SF+hFsFsSNM3+NaJwfMTvdDcpIMR4tkm22yVK5be5zZ5gSzeJ+F+bcsD9SUgnQ==
X-Received: by 2002:adf:9427:: with SMTP id 36mr47920816wrq.128.1555317905262; 
	Mon, 15 Apr 2019 01:45:05 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	d7sm18217558wmf.31.2019.04.15.01.45.03
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Mon, 15 Apr 2019 01:45:04 -0700 (PDT)
Message-ID: <30610bf2d5c82bdfb3cb95800a4646c3d1ed5db3.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: yocto@yoctoproject.org
Date: Mon, 15 Apr 2019 09:45:02 +0100
In-Reply-To: <20190414234841.5CB64601DAB8@centos7-ty-1.localdomain>
References: <20190414234841.5CB64601DAB8@centos7-ty-1.localdomain>
User-Agent: Evolution 3.32.1-2 
MIME-Version: 1.0
Cc: otavio@ossystems.com.br, aaron.chun.yew.chan@intel.com,
	akuster808@gmail.com
Subject: Re: QA notification for completed autobuilder build (yocto-2.7.rc2)
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
X-List-Received-Date: Mon, 15 Apr 2019 08:45:07 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2019-04-14 at 23:48 +0000, pokybuild@centos7-ty-1.localdomain
wrote:
> A build flagged for QA (yocto-2.7.rc2) was completed on the
> autobuilder and is available at:
> 
> 
>     https://autobuilder.yocto.io/pub/releases/yocto-2.7.rc2
> 
> 
> Build hash information: 
> 
> bitbake: cb185efe9e88cfb12b7a3fd08f3086ca0b69c8e2
> meta-gplv2: 106ba6d2a4d08a276205c305f8485d701fe8a8f3
> meta-intel: cd2c3bfca97655999cbde645b73be712675dba92
> meta-mingw: 10695afe8cd406844e0d0dd868c11677e07557d4
> oecore: f571b188177788d8ed0a7f3efe3569f153b1b0d3
> poky: 0e392026ffefee098a890c39bc3ca1f697bacb52

Note for QA:

I was able to add the automated oe-selftests for the different qemu
machines in this run as we discussed. This should reduce the amount of
tests QA need to run. There was one failure:

testseries | result_id : qemuppc | oeselftest_centos-7_qemuppc_20190414221329
    runqemu.QemuTest.test_qemu_can_shutdown

I believe this worked on the rc1 test run so it appears to be an
intermittent failure which I'd not block release on.

Cheers,

Richard



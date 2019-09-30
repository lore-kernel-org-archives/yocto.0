Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9EA83E00B33; Mon, 30 Sep 2019 13:45:31 -0700 (PDT)
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
	*      [209.85.214.182 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com
	[209.85.214.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F4CEE00972
	for <yocto@yoctoproject.org>; Mon, 30 Sep 2019 13:45:31 -0700 (PDT)
Received: by mail-pl1-f182.google.com with SMTP id w8so3891525plq.5
	for <yocto@yoctoproject.org>; Mon, 30 Sep 2019 13:45:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:autocrypt:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=e7/y3YlXW+FOQdhf0nSzX0ozL5bGMvQS6VLMUuJZmxQ=;
	b=Kpw3hLppFyQFS0bR0aIHTMORU72DSWT2ykVXdP4KJThpjhnNJD7snS7rrjvwrJGq+K
	RgmNsJkpwYUu8gNoUfsTUyi8IRLjyLZlqN6RJw9JrEPBdQ4rBlZYYSb04E9GLm+VP4l6
	ByZDw9sB8fJBBcCTS1ATlNNfNmAV30Bkx0yBvsaudJn5YTKoZEMiexywx5/M75KJS3P1
	P9hVaLdoHd2pSCXSVQOebbd89dSRD5kJd4vjZ5oTbiqtEIKcjgQPOeKNBEbK4YfyWsM9
	Tyhz8k9qPz6q6ff3VjEytrmSXYH1bQA6EMyW6U2Gnx0FjCX3mQrzg0xTyMMr9iZfWU4j
	KGuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
	:date:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=e7/y3YlXW+FOQdhf0nSzX0ozL5bGMvQS6VLMUuJZmxQ=;
	b=D7bWFBv2gDm0L2dM8tym2nIZ45mVzIiH6zmsCZBOA+Q8ORYkUGg4oFWewYu46acxtc
	R6LP/W9oNDcWns4+6KYHT2g+gNvp43p51800HUOeE28NSfBF4VgTRPl94aF9XLF/tjlv
	s8JUdtiLCd6bxnM0/d3Pq5id+YjoIBILzz7CLJqFaVP2c5S80F2yRI5jl4yfcnm34N8Z
	EpU/CO6aK5iDQtiOWLSZz+O4nLDHXlNEWp2ztW4CpTCGxgkI2u82Q7Iro9L+QpF29D6n
	lcfVm5l/1H6jzFKAM85F7wSuDnXGf1nBMYfM5Q3S5c1R0dcQ5ZVpuaZzXxIKaxyp0T2w
	LP1Q==
X-Gm-Message-State: APjAAAUVkiliwZ0uXZPBrnzMmLr9pZ32+2pqTbXCAAobFvl8eBLfa/IS
	1hNXT8hGxwn2j1NQRbXaL3U6AeSCsdw=
X-Google-Smtp-Source: APXvYqztz5+4/kwvW7SNRWq9Uaq30p2f55FD5hyK09Qxaj4l1+vyVzkzbDUAi5KbvXnNHUzVclUrgg==
X-Received: by 2002:a17:902:b083:: with SMTP id
	p3mr8329044plr.134.1569876330316; 
	Mon, 30 Sep 2019 13:45:30 -0700 (PDT)
Received: from ?IPv6:2601:646:8500:1c20::c343? ([2601:646:8500:1c20::c343])
	by smtp.gmail.com with ESMTPSA id
	a18sm14997273pgv.5.2019.09.30.13.45.29
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 30 Sep 2019 13:45:29 -0700 (PDT)
To: Stefano Cappa <stefano.cappa.ks89@gmail.com>, yocto@yoctoproject.org,
	zangrc.fnst@cn.fujitsu.com
References: <CAKRytNy3XoG8H1R4uZqGFC3Az5WGsE5+zYKRgUepgjBDYxvgXw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Autocrypt: addr=raj.khem@gmail.com; keydata=
	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
Message-ID: <35712e36-d517-2665-fd80-50f4b089b16b@gmail.com>
Date: Mon, 30 Sep 2019 13:45:27 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <CAKRytNy3XoG8H1R4uZqGFC3Az5WGsE5+zYKRgUepgjBDYxvgXw@mail.gmail.com>
Subject: Re: Cannot use "LICENSE_CREATE_PACKAGE = 1" when building the image with mdns
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
X-List-Received-Date: Mon, 30 Sep 2019 20:45:31 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 9/30/19 8:17 AM, Stefano Cappa wrote:
> I saw your last patch to upgrade mdns, so I'm sending this email also to
> you to try to get help.
> 
> mdns is working correctly, however, when I try to build my image with
> "LICENSE_CREATE_PACKAGE = "1"" in my local.conf as described
> here https://www.yoctoproject.org/docs/2.8/dev-manual/dev-manual.html#providing-license-text I
> get this error message:
> 
> ERROR: mydevice-image-1.0-r0 do_rootfs: Postinstall scriptlets of
> ['mdns'] have failed. If the intention is to defer them to first boot,
> then please place them into pkg_postinst_ontarget_${PN} ().
> Deferring to first boot via 'exit 1' is no longer supported.
> Details of the failure are in
> /home/user/git/poky/build/tmp/work/mydevice1-image-poky-linux-gnueabi/mydevice-image/1.0-r0/temp/log.do_rootfs.
> ERROR: mydevice-image-1.0-r0 do_rootfs: Function failed: do_rootfs
> ERROR: Logfile of failure stored in:
> /home/user/git/poky/build/tmp/work/mydevice1-poky-linux-gnueabi/mydevice-image/1.0-r0/temp/log.do_rootfs.14586
> ERROR: Task (MY CUSTOM LAYER
> PATH/recipes-core/images/mydevice-image.bb:do_rootfs) failed with exit
> code '1'
> NOTE: Tasks Summary: Attempted 4871 tasks of which 4654 didn't need to
> be rerun and 1 failed.
> 
> Do you have a solution? Why is it happening? 
> 

see mdns recipe especially

pkg_postinst_${PN} (), that function is not able to execute offline
during build. It could be that nsswitch.conf does not exist in your
image rootfs

> thank u.


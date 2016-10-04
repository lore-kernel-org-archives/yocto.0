Return-Path: <ionelbadisor@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF413E009C9; Tue,  4 Oct 2016 04:38:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ionelbadisor[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F59AE00953
	for <yocto@yoctoproject.org>; Tue,  4 Oct 2016 04:38:14 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id b184so19229808wma.3
	for <yocto@yoctoproject.org>; Tue, 04 Oct 2016 04:38:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:subject:to:references:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=KaeqLtK8+tlhVkZEi1eC9LD4I66rzDnE7P1UmCyTpcY=;
	b=MNl+mybH5mJ1sKPzcbGe2IyVs3WuVABGzTjSdEI6AhHbn08lCRf8DyhDACudXLTWcu
	z0XD/JkHqyhVxZBdU3QQo0MnIoi5mfSfkRJwtpuMWlACE7pSJytJYpJZ4bfdi2kQdzpW
	9vbd9qWi7zjjpWUdu4phgrNuLYq2BDmAn50I/hx8jqfkZrfbvE3gZD1uMQ/ql6uLJP+B
	d/8qnTBweNLkWoG/rhV2ce26fWphdw+wKIgy9KjIntzSJMDjrHkuXvsTZDYT1S32evDL
	+xaYL60gxF6KJf4JDypE3iI9y7sXHSdRGEixxqhlvjDdzZGdZZFwX6FHZchsLGz7mS38
	WAgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:subject:to:references:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=KaeqLtK8+tlhVkZEi1eC9LD4I66rzDnE7P1UmCyTpcY=;
	b=FCvqhBTKAZw77pJYRu1diE+JWSovTX5/4hgSAnUQ4Fhn7RE2XlfXmwXusxOTcgHX+G
	2QfKhB4A2xGtwHv0hpb+H47X35wBywVQQgTxjEfFzHVxuihyYhjLzB2IgBCXR0Q+fKOE
	bdtV0K9PceyQCyNap8RdWA9RqAj3Wk3HMqjMBs1nfunskoXWKj/fvDZJ4233YAIgncwJ
	xBHnkcoC5ZAltC6/I/ZtOJY6LJqxcIlIfp1FNV8ogwt421DgUVCbIUfvmt/F5Dz0R42F
	Xh7TA0Xdakh8vi0E2wc2ltWRDRTHY6qE+8nxUMpBLCtRhk2/yqQyCCMIV7UQgB8pKu1C
	KltQ==
X-Gm-Message-State: AA6/9RnZIazSVliDLTC+aLLIkN8IJUWOLBdEGAwl2VsBjpsW6hFt4CKjODDZzbS3gLvgvg==
X-Received: by 10.28.189.5 with SMTP id n5mr3036501wmf.25.1475581093215;
	Tue, 04 Oct 2016 04:38:13 -0700 (PDT)
Received: from [172.168.0.70] ([217.10.196.2])
	by smtp.googlemail.com with ESMTPSA id
	o196sm22909371wmg.8.2016.10.04.04.38.12 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 04 Oct 2016 04:38:12 -0700 (PDT)
From: Ionel Badisor <ionelbadisor@gmail.com>
X-Google-Original-From: Ionel Badisor <ionel.badisor@gmail.com>
To: yocto@yoctoproject.org
References: <trinity-02d343ba-ad0c-42e7-a7ed-aacfddc85929-1475056922373@3capp-gmx-bs26>
Message-ID: <0e0b7b7c-d750-9516-de02-bf3ad9a7f563@gmail.com>
Date: Tue, 4 Oct 2016 14:37:31 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <trinity-02d343ba-ad0c-42e7-a7ed-aacfddc85929-1475056922373@3capp-gmx-bs26>
Subject: Re: [meta-raspberry] No spi, i2c when booting with uboot (RPI 3)
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
X-List-Received-Date: Tue, 04 Oct 2016 11:38:18 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 09/28/2016 01:02 PM, romil1@gmx.de wrote:
> I noticed something strange in the boot messages:
> When bootings with u-boot i can see-> Machine model: Raspberry Pi 3 Model B
> Without u-boot it is-> Machine model: Raspberry Pi 3 Model B Rev 1.2
>
> Why is there a difference when Im using the same device-tree? Could this
> be the reason why spi and i2c is disabled?

quote from: 
https://www.raspberrypi.org/documentation/configuration/device-tree.md

 > The current implementation is not a pure Device Tree system - there
 > is still board support code that creates some platform devices - but 
 > the external interfaces (I2C, I2S, SPI), and the audio devices that
 > use them, must now be instantiated using a Device Tree Blob (DTB)
 > passed to the kernel by the loader (start.elf).

 From what I recall:
start.elf contains a default device tree blob. (dt-blob.bin)

Only a dt-blob.bin file will overwrite the device tree in second stage 
boot loader(start.elf)




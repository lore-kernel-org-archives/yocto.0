Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD550E009D4; Sun, 17 May 2015 22:02:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f43.google.com (mail-pa0-f43.google.com
	[209.85.220.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54297E00830
	for <yocto@yoctoproject.org>; Sun, 17 May 2015 22:02:24 -0700 (PDT)
Received: by pabts4 with SMTP id ts4so135652169pab.3
	for <yocto@yoctoproject.org>; Sun, 17 May 2015 22:02:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=QNiifhQLuxt0KiiYt8kUby3+aqgY63NscBARSsMZwQQ=;
	b=WrITNC7clumz7pEknSOaUQXqMXudvwYyEROWrtAlOSA9pm1+edOpRFkbOuL6vmrZSM
	jVXkeRS39CsXQIKqSim7Vdpw/vFxtQ2O46TIIHWrKlM4N9zx5zhq2U88PMFEV30XU9Po
	eyf6ds+QwqFPKTxJoZ/qRplHa8PoYQuoqkLXjtg99Q4rcAKpM6igbBKgbEsn+8pkqNSv
	dNVzlQuh8LBAJR2yrdLecFdLoMCD8Ie5LXCp8mWn7ypV+gKzI4qcFvSuq1axARv3A+oj
	nY8rTk90PZBBTSrVqt7Bp/muMlBaztP6T0kunGPkou24cqKH2KKqX9SaEYsKqn6PcwCX
	kHwA==
X-Received: by 10.70.24.130 with SMTP id u2mr41173240pdf.147.1431925344292;
	Sun, 17 May 2015 22:02:24 -0700 (PDT)
Received: from Akusters-laptop-2.local ([2601:c:a700:3ba7:35c0:577a:3030:37cb])
	by mx.google.com with ESMTPSA id ld1sm8561654pbc.26.2015.05.17.22.02.21
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 17 May 2015 22:02:23 -0700 (PDT)
Message-ID: <5559725A.6080806@gmail.com>
Date: Sun, 17 May 2015 22:02:18 -0700
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>, 
	OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>
Subject: meta-ci20
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
X-List-Received-Date: Mon, 18 May 2015 05:02:26 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Hello,

I have created a layer to support the Creator CI20 using Ingenic JZ478.

some board highlights:
* Ingenic JZ4780, dual-core 1.2 GHz MIPS32 processor, PowerVR SGX540
GPU, 32k I&D L1 cache, 512k L2 cache
* IEEE754 Floating Point Unit
* 8 GB Flash, 1 GB DDR3 memory
* Video playback up to 1080p
* AC97 audio, via 4-pin input/output jack and HDMI connector
* HDMI output up to 2K resolution
* 2 x USB – host and OTG
* 2 x UART, GPIO, SPI, I2C, ADC, expansion headers

the layer can be found: https://github.com/akuster/meta-ci20.

U-boot is currently a binary. U-boot requires soft-float and userland
building hard-float. Yeah, most likely multilib..

sdcard image is created.

xfce works fine and uses a 3.18.13 kernel.

enjoy,
Armin


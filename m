Return-Path: <incnews@jenslucius.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A605DE0087C; Fri,  6 Mar 2015 04:35:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [81.169.146.162 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 383 seconds by postgrey-1.32 at yocto-www;
	Fri, 06 Mar 2015 04:35:33 PST
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de
	[81.169.146.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37027E0086E
	for <yocto@yoctoproject.org>; Fri,  6 Mar 2015 04:35:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1425645331; l=951;
	s=domk; d=jenslucius.de;
	h=Content-Transfer-Encoding:Content-Type:Subject:To:MIME-Version:From:
	Date; bh=7v1p3N92x+LJI7MTfmloaiBQYVwBoDJ91VAT4t23Ajk=;
	b=OsVPgFAWPBODPrGogqHDhmGE7BKpJIGpaqG8I+/TQiqcvb2Hu0vgMID0t0hIrtfWbAT
	AH4rOPHl9KV4dyQb69ivcxaaccA8/vh5ocZWOKSgaDEPIxMJS8ooNYaOPvpM+kH2b1VQ6
	IMU4osEIWcoCGKxztY3IasvcChD3iJT+HTk=
X-RZG-AUTH: :JWIHe0W/aN/Hg12BLSzL3z7LlaxFnIKmofguyxtBBEzwL1PfgREHsiFrwAHms9nRTg==
X-RZG-CLASS-ID: mo00
Received: from [192.168.2.12] (p5B0E28A4.dip0.t-ipconnect.de [91.14.40.164])
	by smtp.strato.de (RZmta 37.3 DYNA|AUTH)
	with ESMTPSA id 3048e4r26CT8Ut4
	(using TLSv1.2 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client did not present a certificate) for <yocto@yoctoproject.org>;
	Fri, 6 Mar 2015 13:29:08 +0100 (CET)
Message-ID: <54F99D99.6090806@jenslucius.de>
Date: Fri, 06 Mar 2015 13:29:13 +0100
From: Jens Lucius <incnews@jenslucius.de>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Different u-boot recipes (machine names and provider)
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
X-List-Received-Date: Fri, 06 Mar 2015 12:35:37 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hello,

I am working on a custom machine layer, which until now has it´s own 
u-boot recipe for a custom u-boot.

I want to add a recipe for mainline u-boot additional to that. I have 
defined a PREFERRED_PROVIDER_u-boot and 
PREFERRED_PROVIDER_virtual/bootloader which point to the custom u-boot 
to not break the current build, which can be changed to the mainline 
u-boot if needed to build the mainline.

First question: Do I need to define both PREFERRED_PROVIDER (u-boot and 
virtual/bootloader)? I have seen different approaches in different layers.

Now the hard part: custom u-boot and mainline u-boot have different 
UBOOT_MACHINE values for the same hardware. Is it possible to define 
different values for different u-boot recipes? Right now they are 
defined in the machine configurations. Would it be possible (and 
advisable) to define them in the u-boot recipes themselves? Or is there 
another approach ?

Thanks,

Jens





Return-Path: <modemtec@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17AA5E00905; Thu,  6 Nov 2014 23:31:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (modemtec[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.53 listed in list.dnswl.org]
Received: from mail-wg0-f53.google.com (mail-wg0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C57E1E00863
	for <yocto@lists.yoctoproject.org>;
	Thu,  6 Nov 2014 23:31:27 -0800 (PST)
Received: by mail-wg0-f53.google.com with SMTP id b13so2943008wgh.26
	for <yocto@lists.yoctoproject.org>;
	Thu, 06 Nov 2014 23:31:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=W0KdxeVnO4jiT2AnLT+Nlylv5OdPAmLhn8a6fcehWQ4=;
	b=CWJGXu1Xno4MjW1nUlxHU+o7vc56+L/VQRyOclYXDnQtStuLKvkdW5ALkxTa5YFyko
	Fj58CeEAa/+GFvu++PZ82crJUb6iUn8F0Kk2StI1JvcqqM5Td/0vCl2THtTK3fNA7mzb
	KUEnJo0tIPdrRkJ1HRxkfGtt4H5VoOxjsGRqRlkN/oJNg3MaI99/sLkimv9xQg2LYUYH
	4U98DyJ/GxTign3tFHQnHvomFhIWeTUMmCIrtw6g54OAnFJDEd0bN1/oKUygHLXCgd85
	v+IHb070296MqSskEm0fP2lV2wAaQOcSzn1dky8hOTlfRArTTaytEwYDaEElpQQbaLvO
	4guQ==
X-Received: by 10.194.78.82 with SMTP id z18mr12026626wjw.120.1415345485900;
	Thu, 06 Nov 2014 23:31:25 -0800 (PST)
Received: from [127.0.0.1] (ip-94-112-189-217.net.upcbroadband.cz.
	[94.112.189.217])
	by mx.google.com with ESMTPSA id td9sm925019wic.15.2014.11.06.23.31.24
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 06 Nov 2014 23:31:25 -0800 (PST)
Message-ID: <545C7583.6060000@gmail.com>
Date: Fri, 07 Nov 2014 08:32:19 +0100
From: =?UTF-8?B?TGXFoWVrIEZyYW5law==?= <modemtec@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Patrice B <pbfwdlist@gmail.com>, yocto@lists.yoctoproject.org
References: <CALPAzDP+xkg_4m0cv9XdSRm6C2fw0==COxZ22kFHGGRH4t+bYg@mail.gmail.com>
In-Reply-To: <CALPAzDP+xkg_4m0cv9XdSRm6C2fw0==COxZ22kFHGGRH4t+bYg@mail.gmail.com>
X-Antivirus: avast! (VPS 141106-1, 06.11.2014), Outbound message
X-Antivirus-Status: Clean
Subject: Re: Meta-toolchain, do_populate_sdk, packagegroup-cross-canadian problem
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
X-List-Received-Date: Fri, 07 Nov 2014 07:31:38 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hello,
yes you are right. There is problem with an underscore in the machine 
name. After machine name change, do_populate_sdk works fine.
Thank you
Regards.
Lešek Franek
ModemTec s.r.o.

Dne 6.11.2014 21:37, Patrice B napsal(a):
> Hello,
>
>   I've just got the same problem and it was because there was
> underscore in the machine name. Rename your machine to socfpgacyclone5
> and it should work.
>
> BTW, I cannot anwser to the yocto list since I've subscribed after you
> sent your message. It might be a good thing to answer to yourself if
> it works for you.
>
>     Regards.
>
>            Patrice Bouchand
>
> ----------------------------------
> Hello,
>
> I ran into an error during do_populate_sdk in meta-toolchain for machine
> socfpga_cyclone5:
>
> ERROR: packagegroup-cross-canadian-socfpga_cyclone5 not found in the
> base feeds (i686-nativesdk noarch any all).
> List packages for example:
> binutils-cross-canadian-arm-2.24-r0@i686_nativesdk
> binutils-cross-canadian-arm-dbg-2.24-r0@i686_nativesdk etc
> ERROR: Function failed: do_populate_sdk
> ERROR: Logfile of failure stored in:
> /modemtec/linux/yocto-daisy/build-socfpga_cyclone5/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/meta-toolchain/1.0-r7/temp/log.do_populate_sdk.12635
> ERROR: Task 7
> (/modemtec/linux/yocto-daisy/meta/recipes-core/meta/meta-toolchain.bb
> <http://meta-toolchain.bb>, do_populate_sdk) failed with exit code '1'
>
> I tried to find an answer, but without success. I tried to compile
> nativesdk-packagegroup-sdk-host and it was already compiled.
>
> I was able to compile u-boot, kernel, kernel modules, dtb, rootfs and
> everythink works quite well, but now I'm stuck with this and have no
> clue how to solve this. If anyone knows how to make it working I would
> be very glad.
>
> Thank you very much
>
> Lesek Franek ModemTec s.r.o.
>
> Build Configuration:
> BB_VERSION        = "1.22.0"
> BUILD_SYS         = "i686-linux"
> NATIVELSBSTRING   = "LinuxMint-17"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "socfpga_cyclone5"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.6.1"
> TUNE_FEATURES     = "armv7a vfp neon"
> TARGET_FPU        = "vfp-neon"
> meta
> meta-yocto


---
Tato zpráva neobsahuje viry ani jiný škodlivý kód - avast! Antivirus je aktivní.
http://www.avast.com



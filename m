Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3772E0049B; Sun, 26 Jul 2015 11:04:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f179.google.com (mail-ig0-f179.google.com
	[209.85.213.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52552E003D7
	for <yocto@yoctoproject.org>; Sun, 26 Jul 2015 11:04:50 -0700 (PDT)
Received: by igbpg9 with SMTP id pg9so52064792igb.0
	for <yocto@yoctoproject.org>; Sun, 26 Jul 2015 11:04:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-type:content-transfer-encoding;
	bh=xb5lDwyMuN+/GHpA+MmD1y9/6eV4QwcteO/PVD7T2Zw=;
	b=ZfgPtBjhOhFHMhPDK1bqKTeFSAWzYmFwet/T4oMxoqUuNl7kdIlpVkl5XxVC/cLAAm
	Ya4F5P2rUF1N9Abf53OxkyML4rq8qOfRx8Is9nfkWiaDhQhymLrIRRhnTmG2zhB7c5aL
	CEAUm8LShYVqL49TSyv6+xb/+t+c4pzuTeNUK5Oicc0oMD/zsoctDTkS3OKUj+DUFWoD
	xan+/H+ymcxLzobBFuvja/ZtDaHbsxDXajMyP+CQwWFVkXvhy5CgStHuxa8w1ykLNrTA
	ZATDpEY8tj/MDS4buUd2z0A7sd6HSVFpkOI/msctrxBYUOreHyKbKeiTtD1FgW/VL94L
	HZRQ==
X-Received: by 10.50.64.147 with SMTP id o19mr12321626igs.33.1437933890359;
	Sun, 26 Jul 2015 11:04:50 -0700 (PDT)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	i123sm10121341ioi.13.2015.07.26.11.04.48 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 26 Jul 2015 11:04:49 -0700 (PDT)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Trevor Woerner <twoerner@gmail.com>
Message-ID: <55B5213D.9040604@gmail.com>
Date: Sun, 26 Jul 2015 14:04:45 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.1.0
MIME-Version: 1.0
Subject: include all kernel modules in image
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
X-List-Received-Date: Sun, 26 Jul 2015 18:04:52 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,

When I build my kernel, in packages-split, I end up with dozens of packages:

    kernel
    kernel-base
    kernel-dev
    kernel-firmware-boot
    kernel-firmware-boot2
    kernel-firmware-down
    kernel-firmware-down2
    kernel-firmware-down3
    kernel-firmware-keyspan-pda
    kernel-firmware-mts-cdma
    kernel-firmware-mts-edge
    kernel-firmware-mts-gsm
    kernel-firmware-new-code
    kernel-firmware-new-code-fix
    kernel-firmware-ti-3410
    kernel-firmware-ti-5052
    kernel-firmware-trigger-code
    kernel-firmware-trigger-code-fix
    kernel-firmware-whiteheat
    kernel-firmware-whiteheat-loader
    kernel-firmware-xircom-pgs
    kernel-image
    kernel-module-aircable
    kernel-module-ansi-cprng
    kernel-module-ark3116
    kernel-module-asix
    kernel-module-ax88179-178a
    kernel-module-belkin-sa
    kernel-module-catc
    kernel-module-cdc-acm
    kernel-module-cdc-eem
    kernel-module-cdc-ether
    kernel-module-cdc-mbim
    kernel-module-cdc-ncm
    kernel-module-cdc-subset
    kernel-module-cdc-wdm
    kernel-module-ch341
    kernel-module-cp210x
    kernel-module-cx82310-eth
    kernel-module-cyberjack
    ...

Is there a generic way to say "please include all of these packages"
instead of having to list each and every one of them in a
CORE_IMAGE_EXTRA_INSTALL variable? Adding "kernel-modules" to that
variable doesn't work (I get an error executing a python function -- No
such file or directory).

Best regards,
    Trevor


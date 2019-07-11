Return-Path: <pierluigi.greto@bisdn.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9464CE00D79; Thu, 11 Jul 2019 01:50:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx.bisdn.de (mx.bisdn.de [185.27.182.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78E22E00D45
	for <yocto@yoctoproject.org>; Thu, 11 Jul 2019 01:50:37 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.16.250.97])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx.bisdn.de (Postfix) with ESMTPSA id B8C66A46D0
	for <yocto@yoctoproject.org>; Thu, 11 Jul 2019 10:50:36 +0200 (CEST)
To: Yocto Project Discussion <yocto@yoctoproject.org>
From: Pierluigi Greto <pierluigi.greto@bisdn.de>
Message-ID: <b2bd0bf9-fea1-b60a-9686-309715948612@bisdn.de>
Date: Thu, 11 Jul 2019 10:50:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
Subject: Image not staring after upgrade from sumo to thud
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
X-List-Received-Date: Thu, 11 Jul 2019 08:50:39 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hi all,

I have several platforms and I have upgrade Yocto from sumo to thud. 
Most of them works fine after the upgrade, but some of them are not 
starting. Basically after I install the image and I have chose my OS in 
grub, the system reboot. But if I create the image using sumo, the image 
is working fine.
My system is a x86 arch. I have read the guide for migrating from sumo 
to thud and I was using COMPATIBLE_MACHINE for kernel multiconfig. I 
have fix this because it's known issue. But other than that, I don't 
know why it's not working (also because most of the other platforms are 
working as with sumo).
Any suggestions?
Thank you.

Best,
Pierluigi



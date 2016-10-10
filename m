Return-Path: <alfonso.ros-dos-santos@evosoft.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA80FE00932; Mon, 10 Oct 2016 03:26:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=BAYES_00, LOCALPART_IN_SUBJECT
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.1 LOCALPART_IN_SUBJECT Local part of To: address
	appears in Subject
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0012]
X-Greylist: delayed 177 seconds by postgrey-1.32 at yocto-www;
	Mon, 10 Oct 2016 03:26:05 PDT
Received: from DENBGMASH1SRV.evosoft.com (DENBGMASH1SRV.evosoft.com
	[193.158.17.58])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3295E00777
	for <yocto@yoctoproject.org>; Mon, 10 Oct 2016 03:26:05 -0700 (PDT)
X-TM-IMSS-Message-ID: <914f8b3a00047fa3@evosoft.com>
Received: from EVO01682.evosoft.com ([139.22.164.248]) by evosoft.com
	([193.158.17.58]) with ESMTP (TREND IMSS SMTP Service 7.5) id
	914f8b3a00047fa3 ; Mon, 10 Oct 2016 12:23:06 +0200
Received: from [139.25.8.168] (139.25.8.168) by evo01682.evosoft.com
	(139.22.164.248) with Microsoft SMTP Server (TLS) id 14.3.301.0;
	Mon, 10 Oct 2016 12:23:06 +0200
To: <yocto@yoctoproject.org>
From: alfonso <alfonso.ros-dos-santos@evosoft.com>
Message-ID: <d47350d4-c126-48ae-7286-2a602ad8c9d2@evosoft.com>
Date: Mon, 10 Oct 2016 12:23:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.3.0
MIME-Version: 1.0
X-Originating-IP: [139.25.8.168]
Subject: yocto - linaro's lava integration
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
X-List-Received-Date: Mon, 10 Oct 2016 10:26:07 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

Hello everyone,

I'm trying to integrate the testing of the resulting yocto images using 
Linaro's LAVA project.

For now I am only using qemux86 images.

Now, I am quite a newbie in both projects and maybe in general on the 
subject of images so I might be asking the wrong questions.

So far, to test a qemu image using LAVA it is required a .img file. That 
would be the simplest configuration. On the other hand, my yocto project 
produces a .bin kernel file + .ext4 filesystem file. I don't seem to 
find a proper configuration in LAVA for .bin + .ext4 file testing. I 
presume there is a way to configure yocto to produce a .img file out of 
these two guys but I don't seem to find how.

Would anyone have a recommendation?

Thanks in advance for your help :)

Best,
Alfonso


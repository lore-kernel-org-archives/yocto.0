Return-Path: <Fahad_Usman@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60047E0049B; Sun, 26 Jul 2015 10:25:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15634E003D7
	for <yocto@yoctoproject.org>; Sun, 26 Jul 2015 10:24:59 -0700 (PDT)
Received: from nat-ies.mentorg.com ([192.94.31.2]
	helo=SVR-IES-FEM-01.mgc.mentorg.com)
	by relay1.mentorg.com with esmtp 
	id 1ZJPfW-0001UK-93 from Fahad_Usman@mentor.com 
	for yocto@yoctoproject.org; Sun, 26 Jul 2015 10:24:58 -0700
Received: from [137.202.156.221] (137.202.0.76) by
	SVR-IES-FEM-01.mgc.mentorg.com (137.202.0.104) with Microsoft SMTP
	Server (TLS) id 14.3.224.2; Sun, 26 Jul 2015 18:24:56 +0100
Message-ID: <55B517E5.5080708@mentor.com>
Date: Sun, 26 Jul 2015 22:24:53 +0500
From: "Usman, Fahad" <Fahad_Usman@mentor.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
X-Originating-IP: [137.202.0.76]
Cc: "Khandavilli, Arun" <Arun_Khandavalli@mentor.com>
Subject: Using wic from a Bitbake task
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
X-List-Received-Date: Sun, 26 Jul 2015 17:25:04 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

Hello,
Is it possible to invoke 'wic create' command from a bitbake task. As 
currently it is implemented to be run as a standalone tool and if we 
invoke it from a task, the 'bitbake -e' command fails, since more than 
one instances of bitbake cannot be run from a single build directory.

We want to emit an SD card image as part of build artifacts when an 
image recipe is built. And we don't want to use the 
boot-directdisk.bbclass as it's going to be deprecated in favour of wic.

Thanks,
Fahad Usman.


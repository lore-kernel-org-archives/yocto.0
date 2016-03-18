Return-Path: <david.weisgerber@ms-gmbh.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36F0BE00C6F; Fri, 18 Mar 2016 02:16:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.227.126.133 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.133])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF8CEE00C64
	for <yocto@yoctoproject.org>; Fri, 18 Mar 2016 02:15:55 -0700 (PDT)
Received: from fourconnected.homeip.net ([91.63.241.122]) by
	mrelayeu.kundenserver.de (mreue002) with ESMTPSA (Nemesis) id
	0MDYoX-1ab7tK1guD-00GomY for <yocto@yoctoproject.org>; Fri, 18 Mar 2016
	10:15:51 +0100
Received: from port-212-202-162-14.static.qsc.de ([212.202.162.14]
	helo=valkyrie.localnet) by fourconnected.homeip.net with esmtpsa
	(TLS1.0:DHE_RSA_AES_256_CBC_SHA1:256) (Exim 4.80)
	(envelope-from <david.weisgerber@ms-gmbh.de>) id 1agqVY-0005mm-W6
	for yocto@yoctoproject.org; Fri, 18 Mar 2016 10:15:49 +0100
From: David Weisgerber <david.weisgerber@ms-gmbh.de>
To: Yocto list discussion <yocto@yoctoproject.org>
Date: Fri, 18 Mar 2016 10:15:39 +0100
Message-ID: <1704123.nFWplM32RM@valkyrie>
Organization: M&S GmbH
User-Agent: KMail/5.0.2 (Linux/4.2.0-27-generic; KDE/5.15.0; x86_64; ; )
MIME-Version: 1.0
X-Provags-ID: V03:K0:faizPGEuaQ/AsM5a2fblyXcS9Ra/izKckoWr39LLRJ2bg96wrhI
	X8cgFVFLpbwuM2G9hYJelaKXcFXb9y0qik9J0CSNjdTgoSS0d0aRTo3mGAgVRTFwpX5qKu6
	p+T1XrGqfpI/GBfS5vLW9dtUm6XXV8T8ndGV8QOTOBxJBrPIbhHOIiyfg+UJpjLHf5U+l5Q
	5wRlpaos5eP3fTJHGIffw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:y/f8tmPssro=:Y1/nq/AK2figMJ1hEAHhSP
	YwRfB4EKqWSKg/Mhk9cMfxun/HYpGf3WOcbdIIzyMDYyVfb1M1kNXg9hpDhDov1E5u9u5j7cs
	FksZ4pQYPJgW5zV2RikeHzZ5vIj+N5o7MuY29V/DqQLZFmpUP3aemkR12y1Tjs8lrNdk0866R
	Lg+FbNSdZFrt7Lc3DxouhBLrTzEBr/hta7dv2nR6EG8Zun68Vms2ZuO0Oxqig1Whf18+JOLvw
	GRzUBETPxu/CeizlWsVEEKxA/7OkmgBRMOTb7lnsqvY63062AeGQw7kbYg7ndrJW3Bi9anEdQ
	vBk4ciVeVJLA1zouUTOOWB3wSH22/46oXlsmRG3/Yuzna68XBBCUebGlkEaCc3lzupL/ReuNy
	vlGR2QLVRq0hgnN3Yw1XTPoFKjXYWTs5gkADI2VQ7tDPqA/sbvV2MrmpeVjn4m3fVCj0XvN2M
	INBg3MOMu66zsRwkrOhX9FtVuJ8bYGkAHuVfGvlS8O4aRMr54N8qaQtZ/jkn/n5a6krJFORm2
	o0s1jd64wCdKR7LN/IBQojvVypixyIobcRpbtk9wUqleKUHBvvhDJsj3SYb8WtL7qMdzYXsb/
	3kh4ZrVjCpCfpp/dyxhX54pHBrnsHjBYxHTW+dcKtUUryHiGJmn00pgCkT5kU+uLSj9xnqVPX
	3QKdZGD7Zu3h49YrSe9HaEw3MWwrFKrXWrfBGpHHgLWU0KhIV/QGxazykQuoWfuBVfUPHX51Z
	/15G3CvatjcZDOcZ
Subject: [meta-raspberry] Raspberry Pi 3
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
X-List-Received-Date: Fri, 18 Mar 2016 09:16:00 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi,
did anyone succeed in building an image that runs on Raspberry Pi 3? I set my 
conf/local.conf to

MACHINE ??= "raspberrypi3" 
GPU_MEM = "128" 
DISABLE_OVERSCAN = "1"

and built rpi-basic-image but when booting the Pi 3 up I only see 4 
raspberries in the top right but nothing else happens. The image works 
perfectly on a Pi 2 though.

Thanks for help,
David


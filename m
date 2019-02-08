Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6EE73E00C8A; Fri,  8 Feb 2019 08:02:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [62.149.156.116 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd11116.aruba.it (smtpcmd11116.aruba.it [62.149.156.116])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECFAFE00C8A
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2019 08:02:09 -0800 (PST)
Received: from [10.0.3.123] ([78.6.3.122])
	by smtpcmd11.ad.aruba.it with bizsmtp
	id aG271z00y2dwwGE01G28Zd; Fri, 08 Feb 2019 17:02:08 +0100
To: yocto@yoctoproject.org
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <da4152cf-2935-6862-55a3-9b4e37546c6b@faresoftware.it>
Date: Fri, 8 Feb 2019 17:02:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.0
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1549641728; bh=Ho4pcYrZI6m3+wJ0RBEKTDcuNnxqpU+rlzJm2fohW2A=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=MpuhGqwud/IO6krcEQf/O745nXR0KzlJvqeRKKrWpsiuTWpzMuHb/WrLiswU1v8cY
	c9s52A13ODv36bGK7BwpCs9gJj98iu4KyOT9xCFtMziymcAHaUJ7Z5v+I7CQ2C5sGd
	FP9ypyJ8C40DpKn3fJ51+lJPdHScZ5Jcd4RLLGprftGurgasQTaWavj3X2rX1L9VIo
	6lmZz6H+2cVBr7uzpikU/4lulMGw59dMA2Aqc2VAu8IhYAQUyYRY60zhmxfINSh17d
	vkieXT1lD2bJy4q7dtsRXMtKgSHXMF7EXN0tGhnbfHEq4E3X5nFAfppHD9tYZzcAQW
	HUf6amVE11BHw==
Subject: Update kernel by package-management
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
X-List-Received-Date: Fri, 08 Feb 2019 16:02:11 -0000
Content-Type: text/plain; charset=iso-8859-15
Content-Transfer-Encoding: 8bit
Content-Language: it

Hi all.

I know this is a VERY dangerous operation, but I'm curious.

Is it possible to upgrade the kernel & dtb from debian package in Yocto?


That is: there is a recipe  (which produce a deb package) to copy zImage
and imx6dl-sabresd.dtb directly in the boot partition?


I working on a imx6sabresd board.

The root partition is /dev/mmcblk2p1


Mauro



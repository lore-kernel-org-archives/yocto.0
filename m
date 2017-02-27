Return-Path: <jakob.hasse@smart-home-technology.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C740E009CF; Mon, 27 Feb 2017 06:35:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.26.49.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mxout012.mail.hostpoint.ch (mxout012.mail.hostpoint.ch
	[217.26.49.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23074E00970
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2017 06:35:01 -0800 (PST)
Received: from [10.0.2.46] (helo=asmtp013.mail.hostpoint.ch)
	by mxout012.mail.hostpoint.ch with esmtp (Exim 4.88 (FreeBSD))
	(envelope-from <jakob.hasse@smart-home-technology.ch>)
	id 1ciMOB-000D0H-VN
	for yocto@yoctoproject.org; Mon, 27 Feb 2017 15:34:59 +0100
Received: from [2a02:168:68bd:0:e5dc:ca3d:6657:c554]
	by asmtp013.mail.hostpoint.ch with esmtpa (Exim 4.88 (FreeBSD))
	(envelope-from <jakob.hasse@smart-home-technology.ch>)
	id 1ciMOB-000H2n-Tp
	for yocto@yoctoproject.org; Mon, 27 Feb 2017 15:34:59 +0100
X-Authenticated-Sender-Id: jakob.hasse@smart-home-technology.ch
To: Yocto List <yocto@yoctoproject.org>
From: Jakob Hasse <jakob.hasse@smart-home-technology.ch>
Message-ID: <53b791e3-6498-7493-43af-4ae89ec4f0c7@smart-home-technology.ch>
Date: Mon, 27 Feb 2017 15:34:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
Subject: add users doesn't work
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
X-List-Received-Date: Mon, 27 Feb 2017 14:35:05 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I tried to add a user to my image, like described in the FAQ here:
https://wiki.yoctoproject.org/wiki/FAQ:How_do_I_set_or_change_the_root_password

However, if I added that two lines to my recipe, it doesn't have any 
effect (still only root user available).
What else do I need to change to make this work? And is the recipe the 
right place for this line (FAQ doesn't mention this)?

Kind Regards,
Jakob

-- 
Jakob Hasse
Software Developement

E: jakob.hasse@smart-home-technology.ch
T: +41 44 552 02 66

Smart Home Technology GmbH
www.smart-home-technology.ch



Return-Path: <jakob.hasse@smart-home-technology.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BAF19E008D3; Fri, 27 Jan 2017 04:53:08 -0800 (PST)
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
X-Greylist: delayed 4199 seconds by postgrey-1.32 at yocto-www;
	Fri, 27 Jan 2017 04:53:04 PST
Received: from mxout012.mail.hostpoint.ch (mxout012.mail.hostpoint.ch
	[217.26.49.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B04FE0082E
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2017 04:53:04 -0800 (PST)
Received: from [10.0.2.46] (helo=asmtp013.mail.hostpoint.ch)
	by mxout012.mail.hostpoint.ch with esmtp (Exim 4.87_1 (FreeBSD))
	(envelope-from <jakob.hasse@smart-home-technology.ch>)
	id 1cX4vo-000PXe-KF
	for yocto@yoctoproject.org; Fri, 27 Jan 2017 12:43:04 +0100
Received: from [2a02:168:6918:0:e8c0:be9b:ce6b:fd88]
	by asmtp013.mail.hostpoint.ch with esmtpa (Exim 4.87_1 (FreeBSD))
	(envelope-from <jakob.hasse@smart-home-technology.ch>)
	id 1cX4vo-000C8j-Ie
	for yocto@yoctoproject.org; Fri, 27 Jan 2017 12:43:04 +0100
X-Authenticated-Sender-Id: jakob.hasse@smart-home-technology.ch
To: yocto@yoctoproject.org
From: Jakob Hasse <jakob.hasse@smart-home-technology.ch>
Message-ID: <4bf25102-0b23-f4dd-7688-bebf892946ab@smart-home-technology.ch>
Date: Fri, 27 Jan 2017 12:43:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
Subject: Where to find help for yocto application and and system development
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
X-List-Received-Date: Fri, 27 Jan 2017 12:53:08 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I'm beginning with Yocto.
I would like to know where to find general help (like a forum, or 
mailing lists) for my Yocto-related technical problems.
Right now I have problems just integrating a library into my build. 
Later I will also do system development.

If this helps, a further description of my most urgent problem:

I want to integrate the tr-50 library, available on github:

https://github.com/inhedron/libtr50

It is managed via autotools.
I built a new project subdirectory in my custom layer for the lib.
I built a basic recipe (with some tool) which, in principle should 
somehow recognize the autotools and build the project then. I changed 
the SCR_URI to the local .tar.gz file. But when I build, it comes down 
to this:
make: *** No rule to make target 'install'.  Stop.
I don't know if and which parameters I should change in the recipe.
Another problem is that the lib needs openssl-dev. I can't find how to 
include openssl-dev into the Yocto build.

Looking forward for your answers, best regards,
Jakob

-- 
Jakob Hasse
Software Developement

E: jakob.hasse@smart-home-technology.ch
T: +41 44 552 02 66

Smart Home Technology GmbH
www.smart-home-technology.ch



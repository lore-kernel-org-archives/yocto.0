Return-Path: <jakob.hasse@smart-home-technology.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07AE0E00BEF; Wed, 28 Mar 2018 04:41:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.26.49.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mxout013.mail.hostpoint.ch (mxout013.mail.hostpoint.ch
	[217.26.49.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1268E00529
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2018 04:41:34 -0700 (PDT)
Received: from [10.0.2.45] (helo=asmtp012.mail.hostpoint.ch)
	by mxout013.mail.hostpoint.ch with esmtp (Exim 4.90_1 (FreeBSD))
	(envelope-from <jakob.hasse@smart-home-technology.ch>)
	id 1f19SP-000JW3-Ba
	for yocto@yoctoproject.org; Wed, 28 Mar 2018 13:41:33 +0200
Received: from [2a02:168:68f1:1:759e:188f:335:42b0]
	by asmtp012.mail.hostpoint.ch with esmtpa (Exim 4.90_1 (FreeBSD))
	(envelope-from <jakob.hasse@smart-home-technology.ch>)
	id 1f19SP-000EAY-7Q
	for yocto@yoctoproject.org; Wed, 28 Mar 2018 13:41:33 +0200
X-Authenticated-Sender-Id: jakob.hasse@smart-home-technology.ch
To: Yocto List <yocto@yoctoproject.org>
From: Jakob Hasse <jakob.hasse@smart-home-technology.ch>
Message-ID: <4ac78687-69d5-a330-6b26-97aa5762e5b0@smart-home-technology.ch>
Date: Wed, 28 Mar 2018 13:41:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
Subject: Bitbake problems recognizing the latest version of a repo
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
X-List-Received-Date: Wed, 28 Mar 2018 11:41:36 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: de-DE

Hello,

Right now it's still a mystery for me when bitbake builds the latest 
version of a repository and why. I make changes in my code and whether I 
commit them or not, sometimes bitbake builds a package with the recent 
version, sometimes with an old version.
So my strategy is doing mock changes (adding whitespaces, "enhencing" 
documentation) and adding signed commits as well as forcing a PR in the 
recipe and re-running bitbake until it works somehow (I heard the 
bitbake prefers the signed commits somehow could not verify this yet).

Hence, I would like to know what I have to do to build only the latest 
version of a repository...
1. When it's local on my computer (with EXTERNALSRC_BUILD_pn-<package> = 
"/home/some/local/location/" in local.conf),
2. When I build from a github or any remote repository.

Thanks and Best Regards,
Jakob

-- 
Jakob Hasse
Software Developement

E: jakob.hasse@smart-home-technology.ch
T: +41 44 552 02 66

Smart Home Technology GmbH
www.smart-home-technology.ch



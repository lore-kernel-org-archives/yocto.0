Return-Path: <tsarrazin@otonomy-aviation.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B339EE00DFD; Thu, 25 Jan 2018 06:10:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.105.58.91 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 373 seconds by postgrey-1.32 at yocto-www;
	Thu, 25 Jan 2018 06:10:37 PST
Received: from 7.mo178.mail-out.ovh.net (7.mo178.mail-out.ovh.net
	[46.105.58.91])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5E2BE00D32
	for <yocto@yoctoproject.org>; Thu, 25 Jan 2018 06:10:37 -0800 (PST)
Received: from player715.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo178.mail-out.ovh.net (Postfix) with ESMTP id 9CA97733EF
	for <yocto@yoctoproject.org>; Thu, 25 Jan 2018 15:04:23 +0100 (CET)
Received: from [192.168.1.146]
	(LStLambert-658-1-124-250.w217-128.abo.wanadoo.fr [217.128.22.250])
	(Authenticated sender: tsarrazin@otonomy-aviation.com)
	by player715.ha.ovh.net (Postfix) with ESMTPSA id 5C3271C00FD
	for <yocto@yoctoproject.org>; Thu, 25 Jan 2018 15:04:23 +0100 (CET)
To: yocto@yoctoproject.org
From: Thibaut SARRAZIN <tsarrazin@otonomy-aviation.com>
Message-ID: <cf230c0b-0025-726c-5920-5c899dd0df65@otonomy-aviation.com>
Date: Thu, 25 Jan 2018 15:04:22 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.2
MIME-Version: 1.0
X-Ovh-Tracer-Id: 16422094567324420265
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedtvddrudelgdefvdculddtuddrgedtuddrtddtmdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemuceftddtnecu
Subject: log4cpp-1.1
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
X-List-Received-Date: Thu, 25 Jan 2018 14:10:40 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: fr


good morning everyone,

i have a problem with the recipe log4cpp, i added layer log4cpp-1.1.1.bb 
to my recipe. but when i look in my rootfs i have the log4cpp.so.5 
library but not the include ones.

I can integrate them manually but I would like to add them in a .bbappend

could you help me?

thank you in advance




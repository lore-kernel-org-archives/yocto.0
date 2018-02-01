Return-Path: <tsarrazin@otonomy-aviation.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3654E00DD1; Thu,  1 Feb 2018 08:42:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.105.34.1 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 2617 seconds by postgrey-1.32 at yocto-www;
	Thu, 01 Feb 2018 08:42:44 PST
Received: from 3.mo173.mail-out.ovh.net (3.mo173.mail-out.ovh.net
	[46.105.34.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 212D2E005A2
	for <yocto@yoctoproject.org>; Thu,  1 Feb 2018 08:42:44 -0800 (PST)
Received: from player791.ha.ovh.net (gw6.ovh.net [213.251.189.206])
	by mo173.mail-out.ovh.net (Postfix) with ESMTP id 5940EA5143
	for <yocto@yoctoproject.org>; Thu,  1 Feb 2018 16:59:06 +0100 (CET)
Received: from [192.168.1.146]
	(LStLambert-658-1-124-250.w217-128.abo.wanadoo.fr [217.128.22.250])
	(Authenticated sender: tsarrazin@otonomy-aviation.com)
	by player791.ha.ovh.net (Postfix) with ESMTPSA id 06461420093
	for <yocto@yoctoproject.org>; Thu,  1 Feb 2018 16:59:05 +0100 (CET)
To: yocto@yoctoproject.org
From: Thibaut SARRAZIN <tsarrazin@otonomy-aviation.com>
Message-ID: <e34aedae-8e1f-18f1-5370-a500b5c3390c@otonomy-aviation.com>
Date: Thu, 1 Feb 2018 16:59:04 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.2
MIME-Version: 1.0
X-Ovh-Tracer-Id: 4128112012392237225
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedtfedrtdeggdekiecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemuceftddtnecu
Subject: fsck fsck.ext4 no such file or directory
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
X-List-Received-Date: Thu, 01 Feb 2018 16:42:46 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: fr


Hi all,

when I try to use fsck tool, this one answer me,  fsck : fsck.ext4 no 
such file or directory. anyone have an idea whyt these files are not 
include automatically in the rootfs?


Thanks



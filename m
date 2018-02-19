Return-Path: <tsarrazin@otonomy-aviation.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C44A3E00E49; Mon, 19 Feb 2018 08:18:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.105.63.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 498 seconds by postgrey-1.32 at yocto-www;
	Mon, 19 Feb 2018 08:18:14 PST
Received: from 6.mo68.mail-out.ovh.net (6.mo68.mail-out.ovh.net
	[46.105.63.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5665E00D41
	for <yocto@yoctoproject.org>; Mon, 19 Feb 2018 08:18:14 -0800 (PST)
Received: from player750.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo68.mail-out.ovh.net (Postfix) with ESMTP id 03744CD237
	for <yocto@yoctoproject.org>; Mon, 19 Feb 2018 17:09:54 +0100 (CET)
Received: from [192.168.1.146]
	(LStLambert-658-1-124-250.w217-128.abo.wanadoo.fr [217.128.22.250])
	(Authenticated sender: tsarrazin@otonomy-aviation.com)
	by player750.ha.ovh.net (Postfix) with ESMTPSA id C0DE2180091
	for <yocto@yoctoproject.org>; Mon, 19 Feb 2018 17:09:54 +0100 (CET)
To: yocto@yoctoproject.org
From: Thibaut SARRAZIN <tsarrazin@otonomy-aviation.com>
Message-ID: <b5fb4901-f2ef-924c-2434-f5d1ca91f019@otonomy-aviation.com>
Date: Mon, 19 Feb 2018 17:09:52 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.2
MIME-Version: 1.0
X-Ovh-Tracer-Id: 17785277879395190953
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedtfedrgeehgdehjecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemuceftddtnecu
Subject: add a new partition during flash with mfgtools
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
X-List-Received-Date: Mon, 19 Feb 2018 16:18:15 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: fr


Hello everybody,


I don't find solution to add a new partition to my emmc directly during 
the flash. I don't know if I need to modify the u-boot-fslc recipe or if 
there is another solution.

board : mx6qroj


Thanks you all  for your help,



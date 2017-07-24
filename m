Return-Path: <karim@monespabidou.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8340CE00C1C; Mon, 24 Jul 2017 13:04:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_05,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [87.98.172.249 listed in list.dnswl.org]
	* -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0421]
X-Greylist: delayed 1001 seconds by postgrey-1.32 at yocto-www;
	Mon, 24 Jul 2017 13:04:46 PDT
Received: from 8.mo3.mail-out.ovh.net (8.mo3.mail-out.ovh.net [87.98.172.249])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EE39E00C19
	for <yocto@yoctoproject.org>; Mon, 24 Jul 2017 13:04:46 -0700 (PDT)
Received: from player732.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo3.mail-out.ovh.net (Postfix) with ESMTP id A1369123B08
	for <yocto@yoctoproject.org>; Mon, 24 Jul 2017 21:48:04 +0200 (CEST)
Received: from [192.168.1.16] (lpr83-1-88-168-110-28.fbx.proxad.net
	[88.168.110.28]) (Authenticated sender: karim@monespabidou.fr)
	by player732.ha.ovh.net (Postfix) with ESMTPSA id 3337520087
	for <yocto@yoctoproject.org>; Mon, 24 Jul 2017 21:48:04 +0200 (CEST)
To: yocto@yoctoproject.org
From: karim bernardet <karim@monespabidou.fr>
Message-ID: <e850a4af-9774-44e9-b42c-722f5f6ffde0@monespabidou.fr>
Date: Mon, 24 Jul 2017 21:48:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
X-Ovh-Tracer-Id: 5689172230971670697
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 50
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeelkedrheefgddugeegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecufedttdenucgoteefjeefqddtgeculdehtddm
Subject: Change keyboard layout
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
X-List-Received-Date: Mon, 24 Jul 2017 20:04:48 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: fr

Hi

I just begin to Yocto. I managed to build a system for a Raspberry Pi 0 
W using

https://github.com/jumpnow/meta-rpi

The wireless is ok, the GPIO are ok. But how to have a french keyboard 
(azerty) ?

Thanks for any info, link, ...

Karim



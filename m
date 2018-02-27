Return-Path: <tsarrazin@otonomy-aviation.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89E2FE00D91; Tue, 27 Feb 2018 00:59:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.105.34.219 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from 4.mo173.mail-out.ovh.net (4.mo173.mail-out.ovh.net
	[46.105.34.219])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B57C7E00D91
	for <yocto@yoctoproject.org>; Tue, 27 Feb 2018 00:59:13 -0800 (PST)
Received: from player791.ha.ovh.net (gw6.ovh.net [213.251.189.206])
	by mo173.mail-out.ovh.net (Postfix) with ESMTP id 170D9AFC59
	for <yocto@yoctoproject.org>; Tue, 27 Feb 2018 09:59:12 +0100 (CET)
Received: from [192.168.1.146]
	(LStLambert-658-1-124-250.w217-128.abo.wanadoo.fr [217.128.22.250])
	(Authenticated sender: tsarrazin@otonomy-aviation.com)
	by player791.ha.ovh.net (Postfix) with ESMTPSA id BB114420086
	for <yocto@yoctoproject.org>; Tue, 27 Feb 2018 09:59:11 +0100 (CET)
To: yocto@yoctoproject.org
From: Thibaut SARRAZIN <tsarrazin@otonomy-aviation.com>
Message-ID: <720343da-8758-af00-653c-9af0dd103a6b@otonomy-aviation.com>
Date: Tue, 27 Feb 2018 09:59:08 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.2
MIME-Version: 1.0
X-Ovh-Tracer-Id: 2152439147660282025
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedtfedriedvgdduvdehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecufedttdenuc
Subject: [ YOCTO ] [ WIC ] problem to compile
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
X-List-Received-Date: Tue, 27 Feb 2018 08:59:14 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: fr


Hello Everybody,

I met a problem to use WIC , with the error following :

ERROR: Nothing PROVIDES 'syslinux'
ERROR: syslinux was skipped: incompatible with host 
arm-poky-linux-gnueabi (not in COMPATIBLE_HOST)


I know that possible to compile syslinux for arm, but Idon't know why I 
can't do it.

My computer has Ubuntu 16.04, and I compile poky (branch Krogoth), 
(commit 5d11ed) (date 2016-05-03).

Hardware : IMX6 Quad, ROJ manufacturer

Have you an idea why the arm architecture aren't in the compatible host?


Thanks a lot,



Return-Path: <karim@monespabidou.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82F94E00C1C; Mon, 24 Jul 2017 13:54:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [87.98.150.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1129 seconds by postgrey-1.32 at yocto-www;
	Mon, 24 Jul 2017 13:54:39 PDT
Received: from 15.mo3.mail-out.ovh.net (15.mo3.mail-out.ovh.net
	[87.98.150.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7CCAE00C19
	for <yocto@yoctoproject.org>; Mon, 24 Jul 2017 13:54:39 -0700 (PDT)
Received: from player732.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo3.mail-out.ovh.net (Postfix) with ESMTP id 9AFBC122F21
	for <yocto@yoctoproject.org>; Mon, 24 Jul 2017 22:35:49 +0200 (CEST)
Received: from [192.168.1.16] (lpr83-1-88-168-110-28.fbx.proxad.net
	[88.168.110.28]) (Authenticated sender: karim@monespabidou.fr)
	by player732.ha.ovh.net (Postfix) with ESMTPSA id 714A620085
	for <yocto@yoctoproject.org>; Mon, 24 Jul 2017 22:35:49 +0200 (CEST)
To: yocto@yoctoproject.org
References: <e850a4af-9774-44e9-b42c-722f5f6ffde0@monespabidou.fr>
From: karim bernardet <karim@monespabidou.fr>
Message-ID: <9316535a-8f18-e5cd-58d5-f4dd1c9a41bb@monespabidou.fr>
Date: Mon, 24 Jul 2017 22:35:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <e850a4af-9774-44e9-b42c-722f5f6ffde0@monespabidou.fr>
X-Ovh-Tracer-Id: 6495598038552494249
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeelkedrheefgdduheegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecufedttdenuc
Subject: Re: Change keyboard layout
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
X-List-Received-Date: Mon, 24 Jul 2017 20:54:41 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: fr

Le 24/07/2017 à 21:48, karim bernardet a écrit :
> Hi
>
> I just begin to Yocto. I managed to build a system for a Raspberry Pi 
> 0 W using
>
> https://github.com/jumpnow/meta-rpi
>
> The wireless is ok, the GPIO are ok. But how to have a french keyboard 
> (azerty) ?
>
> Thanks for any info, link, ...
>
> Karim
>
Got it

Got a fr-latin9.map.gz from a Centos distribution and I did

root@rpi:~# loadkeys ./fr-latin9.map.gz




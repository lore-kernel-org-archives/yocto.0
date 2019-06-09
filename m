Return-Path: <yocto@emagii.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5CF12E0096F; Sun,  9 Jun 2019 15:17:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [213.80.101.71 listed in list.dnswl.org]
X-Greylist: delayed 362 seconds by postgrey-1.32 at yocto-www;
	Sun, 09 Jun 2019 15:17:43 PDT
Received: from ste-pvt-msa2.bahnhof.se (ste-pvt-msa2.bahnhof.se
	[213.80.101.71])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15873E00942
	for <yocto@yoctoproject.org>; Sun,  9 Jun 2019 15:17:43 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTP id 3D4003F234
	for <yocto@yoctoproject.org>; Mon, 10 Jun 2019 00:11:40 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
Received: from ste-pvt-msa2.bahnhof.se ([127.0.0.1])
	by localhost (ste-ftg-msa2.bahnhof.se [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id gikVKpZia57c for <yocto@yoctoproject.org>;
	Mon, 10 Jun 2019 00:11:32 +0200 (CEST)
Received: from [10.175.196.210] (h-169-62.A454.priv.bahnhof.se [37.123.169.62])
	(Authenticated sender: mb782575)
	by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id 7F0723F633
	for <yocto@yoctoproject.org>; Mon, 10 Jun 2019 00:11:32 +0200 (CEST)
To: yocto@yoctoproject.org
References: <AM0PR10MB2658E98F7B370BD2FAEE187EC3330@AM0PR10MB2658.EURPRD10.PROD.OUTLOOK.COM>
	<CAJTo0Lb2dGk4rdX1cm83aDyEr8WxapH3+nAL6oVgSeO-hFZbiQ@mail.gmail.com>
From: Ulf Samuelsson <yocto@emagii.com>
Message-ID: <7ebe65af-7756-eee5-ec9e-9d7f8637d761@emagii.com>
Date: Mon, 10 Jun 2019 00:11:24 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0Lb2dGk4rdX1cm83aDyEr8WxapH3+nAL6oVgSeO-hFZbiQ@mail.gmail.com>
Subject: Re: Multiple MACHINEs and DISTROs: When to use own build dir, SSTATE_DIR, DL_DIR ?
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
X-List-Received-Date: Sun, 09 Jun 2019 22:17:45 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: sv
Content-Transfer-Encoding: 7bit

Den 2019-05-09 kl. 11:56, skrev Burton, Ross:
> On Thu, 9 May 2019 at 10:47, Fabian Knapp <knapp@ambibox.de 
> <mailto:knapp@ambibox.de>> wrote:
> 
>     we have multiple MACHINEs and DISTROs and Im wondering for which
>     combinations I have to setup a dedicated build dir, SSTATE_DIR and
>     DL_DIR.
> 
>     Information in the form of:
> 
>     Each (change of) MACHINE needs its dedicated SSTATE_DIR and build
>     dir but can share DL_DIR.
> 
> 
> You can always share DL_DIR and SSTATE_DIR.
> 
> Ross
> 
When you have the same machine, and the recipes have variants
which are DISTRO dependent the SSTATE_DIR can be messed up

We never digged deep enough to find the cause,
but when we separated the SSTATE to only have one DISTRO
in the same SSTATE, the problem disappeared.

-- 
Best Regards
Ulf Samuelsson


Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA26EE00CFB; Mon, 14 Jan 2019 14:31:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3793FE00CE0
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2019 14:31:08 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x0EMUlFo002995
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2019 14:30:57 -0800
Received: from [172.25.44.4] (172.25.44.4) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.408.0;
	Mon, 14 Jan 2019 14:30:36 -0800
To: <yocto@yoctoproject.org>
References: <CAGMdoFn0jYK+nvkN34eePa2XAeRDRS8gUJCZUepeLm-+DK5d9A@mail.gmail.com>
	<CAJTo0LaWHfab=ED99tAOeKaZkZEji1nt6Wm4MBshNwTp1sJiZg@mail.gmail.com>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <8ea483bf-23d1-e3b6-a0c4-99fc795511a1@windriver.com>
Date: Mon, 14 Jan 2019 17:30:35 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <CAJTo0LaWHfab=ED99tAOeKaZkZEji1nt6Wm4MBshNwTp1sJiZg@mail.gmail.com>
X-Originating-IP: [172.25.44.4]
Subject: Re: Yocto distribution license
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
X-List-Received-Date: Mon, 14 Jan 2019 22:31:08 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

On 1/14/19 5:42 AM, Burton, Ross wrote:
> The license is the sum of the parts.
> 
> Ross

+1

It would be possible that the build system would
attempt to restrict usage but bitbake is GPLv2 licensed
and oe-core classes and recipes are mostly under MIT as
explained here:
    http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/LICENSE

../Randy


> 
> On Mon, 14 Jan 2019 at 06:35, Edward Wingate <edwingate8@gmail.com 
> <mailto:edwingate8@gmail.com>> wrote:
> 
>     I understand that a Linux distribution created with Yocto is composed
>     of various packages, each with their own license, and the obligations
>     of the licenses must be met.  But are there any
>     restrictions/obligations on the distribution itself when created with
>     Yocto? Or is the license of a Linux distribution created by Yocto
>     determined by whoever created it?
>     -- 
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
> 
> 


-- 
# Randy MacLeod
# Wind River Linux


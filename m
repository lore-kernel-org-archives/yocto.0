Return-Path: <yocto@emagii.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE56EE00CBA; Mon, 11 Feb 2019 11:40:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [79.136.2.42 listed in list.dnswl.org]
Received: from pio-pvt-msa3.bahnhof.se (pio-pvt-msa3.bahnhof.se [79.136.2.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3C15E00AB0
	for <yocto@yoctoproject.org>; Mon, 11 Feb 2019 11:40:22 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by pio-pvt-msa3.bahnhof.se (Postfix) with ESMTP id 1529F3F5BF
	for <yocto@yoctoproject.org>; Mon, 11 Feb 2019 20:40:21 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
Received: from pio-pvt-msa3.bahnhof.se ([127.0.0.1])
	by localhost (pio-pvt-msa3.bahnhof.se [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id 6yzVCYjIHZYV for <yocto@yoctoproject.org>;
	Mon, 11 Feb 2019 20:40:10 +0100 (CET)
Received: from [10.175.196.210] (h-169-62.A454.priv.bahnhof.se [37.123.169.62])
	(Authenticated sender: mb782575)
	by pio-pvt-msa3.bahnhof.se (Postfix) with ESMTPA id CD1D13F534
	for <yocto@yoctoproject.org>; Mon, 11 Feb 2019 20:40:10 +0100 (CET)
To: yocto@yoctoproject.org
References: <1507671003.9509.21.camel@collabora.co.uk>
From: Ulf Samuelsson <yocto@emagii.com>
Message-ID: <fa38064e-eea8-8301-cb78-5e846b1341f2@emagii.com>
Date: Mon, 11 Feb 2019 20:40:10 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.0
MIME-Version: 1.0
In-Reply-To: <1507671003.9509.21.camel@collabora.co.uk>
Subject: Re: How to use same user in two recipes?
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
X-List-Received-Date: Mon, 11 Feb 2019 19:40:24 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: sv
Content-Transfer-Encoding: 7bit

Den 2017-10-10 kl. 23:30, skrev Fabien Lahoudere:
> Hi
> 
> I want to use the same user in two different recipe.
> I create the user in recipe A.bb and it works fine.
> Now I want to use the same user in B.bb so I add DEPENDS = "A" thinking that sysroot will be
> populated with A.bb users.
> 
> But when I bitbake the recipe, user is not found.
> I conclude that I have to use USERADD_* in each recipe, right?
> 
> What happen if I use different USERADD_PARAM_${PN} in each recipe?
> 
> I also try to use EXTRA_USERS_PARAMS but without success?
> 
> Is there a way to populate sysroot with users?
> 
> Thanks
> 
Don't You need to RDEPEND on A?

-- 
Best Regards
Ulf Samuelsson


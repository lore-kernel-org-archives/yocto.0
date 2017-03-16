Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B0FCE00826; Thu, 16 Mar 2017 08:21:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4AC51E00777
	for <yocto@yoctoproject.org>; Thu, 16 Mar 2017 08:21:33 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v2GFLDEB006301
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 16 Mar 2017 08:21:14 -0700 (PDT)
Received: from soho-mhatle-m.local (172.25.36.230) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Thu, 16 Mar 2017 08:21:13 -0700
To: Pello Heriz <pello.heriz@alumni.mondragon.edu>, <yocto@yoctoproject.org>, 
	<joe_macdonald@mentor.com>, <flihp@twobit.us>
References: <CAFL6qn5mYjVrqmN7Wow4BVfBob5Bz8rckWOOAOYorA9OXsvEgg@mail.gmail.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <aeefe2af-7000-a117-c931-70ff54d2c1eb@windriver.com>
Date: Thu, 16 Mar 2017 10:21:12 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <CAFL6qn5mYjVrqmN7Wow4BVfBob5Bz8rckWOOAOYorA9OXsvEgg@mail.gmail.com>
Subject: Re: Selinux recipes related error when executing bitbake
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
X-List-Received-Date: Thu, 16 Mar 2017 15:21:35 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

On 3/16/17 3:31 AM, Pello Heriz wrote:
> Hi all,
> 
> I'm using Yocto master branch and I'm not able to compile a xen minimal image. I
> have experimented different errors, the last one is the next one:
> 
> pello@pello-VirtualBox:/opt/yocto_GE/yocto_master_v2/poky/build$ bitbake
> xen-image-minimal
> Loading cache: 100%
> |####################################################################################|
> Time: 0:00:01
> Loaded 2751 entries from dependency cache.
> Parsing recipes: 100%
> |##################################################################################|
> Time: 0:00:01
> Parsing of 1986 .bb files complete (1985 cached, 1 parsed). 2752 targets, 208
> skipped, 0 masked, 0 errors.
> ERROR: No recipes available for:
>  
> /opt/yocto_GE/yocto_master_v2/poky/meta-selinux/recipes-extended/findutils/findutils_4.2.31.bbappend

It looks like the upstream (oe-core) findutils is at a different version, so the
bbappend has nothing to point to.

We've not yet upreved selinux to current master.

Patches welcome...

--Mark

> Can any one help me with this?
> Best regards,
> Pello



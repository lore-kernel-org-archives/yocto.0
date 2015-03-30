Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03EEFE007A0; Mon, 30 Mar 2015 11:33:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81E26E00754
	for <yocto@yoctoproject.org>; Mon, 30 Mar 2015 11:33:27 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.9) with ESMTP id t2UIXLHQ001516
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 30 Mar 2015 11:33:22 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.224.2;
	Mon, 30 Mar 2015 11:33:21 -0700
Message-ID: <551996F0.5040607@windriver.com>
Date: Mon, 30 Mar 2015 14:33:20 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>, Yocto
	<yocto@yoctoproject.org>
References: <551989B0.7070907@dynamicdevices.co.uk>
In-Reply-To: <551989B0.7070907@dynamicdevices.co.uk>
Subject: Re: yocto master work-shared, kernel .config seems to have gone awol
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
X-List-Received-Date: Mon, 30 Mar 2015 18:33:31 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-03-30 01:36 PM, Alex J Lennon wrote:
> Hi,
>
> I'm updating to Yocto master and have been seeing that when I bitbake -c
> devshell virtual/kernel I go into a work-shared tree now.

There was a discussion on the list about this. See the patch from
Ross:

[OE-core] [PATCH] devshell: allow the starting directory to be overridden

Since there are those that want to be in the source dir, and those
that want to be in the build dir .. there's a variable to make that
change.

>
> (This is all with meta-fsl-arm)
>
> I'd normally change the kernel configuration with bitbake -c menuconfig
> virtual/kernel then pull out the .config and make my changes to
> defconfig as needed.

In this case, you need to be in the source tree, but have your output
pointing to the build dir.

That used to be set when you dropped into the devshell, check and see
if KBUILD_OUTPUT is set.

>
> But I can't seem to find it any more, either in work-shared or if I
> traverse to the work tree.
>
> No doubt my own stupidity here but where is it supposed to be nowadays?
>
> Could anybody point me to a discussion on how things are going to be
> broken out into work-shared and (presumably) work so I can get up to speed?

Most of the changes are documented in the commits that make the switch,
and you'll see them proposed on the oe-core mailing list by Richard,
with me following up with comments and details.

Bruce

>
> Not finding the configuration I thought I'd try generating a kernel
> fragment with bitbake  -c diffconfig virtual/kernel from the Yocto docs
> but I can't see a fragment.cfg anywhere in the tree
>
> I guess this could all be just that meta-fsl-arm isn't quick in sync
> with current the current master? (assuming it's not the more likely
> explanation that I just have this plain wrong)
>
> Thanks,
>
> Alex
>



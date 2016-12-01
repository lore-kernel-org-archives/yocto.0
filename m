Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77965E00D44; Thu,  1 Dec 2016 14:50:26 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A77CE00D3D
	for <yocto@yoctoproject.org>; Thu,  1 Dec 2016 14:50:24 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id uB1MoMxE028494
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 1 Dec 2016 14:50:22 -0800 (PST)
Received: from [128.224.21.150] (128.224.21.150) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.294.0;
	Thu, 1 Dec 2016 14:50:22 -0800
To: Trevor Woerner <twoerner@gmail.com>, Bruce Ashfield
	<bruce.ashfield@gmail.com>
References: <20161201200550.GA31925@openSUSE-i7.site>
	<CADkTA4OX9crgydX7FWBs6hQ1AYr3rOsGhokNPG+fdZNKef_-7w@mail.gmail.com>
	<20161201224415.GA4271@openSUSE-i7.site>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <ece5577e-1fa2-aa07-fca4-716875ec921b@windriver.com>
Date: Thu, 1 Dec 2016 17:50:21 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <20161201224415.GA4271@openSUSE-i7.site>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: yocto-kernel-tools and multiple users
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
X-List-Received-Date: Thu, 01 Dec 2016 22:50:26 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 12/01/2016 05:44 PM, Trevor Woerner wrote:
> On Thu 2016-12-01 @ 05:28:20 PM, Bruce Ashfield wrote:
>> Gah, that's my bad. I'm currently in transit for a trip to Europe, but I'll
>> fix this
>> to use mktmp and friends tomorrow and send out a patch.
>
> Great, thanks :-)
>
> I think there might be a second issue too.
>
> When scc-cmds/patch.cmd is run from the native sysroot, it errors out as
> follows:
>
> 	| /z/layerindex-master/raspi2-basic/tmp-glibc/sysroots/x86_64-linux/usr/bin/scc-cmds/patch.cmd: line 29: : No such file or directory
>
> Line 29 of patch.cmd looks like:
>
> 	eval echo "\"patches/${cbranch_name}/${relative_patch_dir}/${simple_patch_name}\"" >> "${branch_patch_queue}"
>
> I *think* it's complaining about "${branch_patch_queue}" but I can't be
> certain. Philip is also seeing this (second) issue too. Does that look like
> something you can figure out, or should I keep digging?

I can figure it out, it just looks like not all the parts of the
tools are being installed properly.

Can you just provide me the details of exactly how you are invoking
the build that triggers the error ?

Bruce

>



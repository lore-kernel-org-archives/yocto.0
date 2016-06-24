Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 475D7E00D1F; Fri, 24 Jun 2016 07:37:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C055E00C10
	for <yocto@yoctoproject.org>; Fri, 24 Jun 2016 07:37:02 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u5OEaw9X023355
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 24 Jun 2016 07:36:58 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Fri, 24 Jun 2016 07:36:58 -0700
To: Jake Swensen <jswensen@mmm.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <BY2PR0301MB21179A1F8E3485090A97527BC52D0@BY2PR0301MB2117.namprd03.prod.outlook.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <576D4589.3060402@windriver.com>
Date: Fri, 24 Jun 2016 10:36:57 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <BY2PR0301MB21179A1F8E3485090A97527BC52D0@BY2PR0301MB2117.namprd03.prod.outlook.com>
Subject: Re: question: yocto-bsp tool warnings
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
X-List-Received-Date: Fri, 24 Jun 2016 14:37:07 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-06-23 05:52 PM, Jake Swensen wrote:
> I've been looking into setting up my own BSP layer based on the
> standard/beaglebone branch and I've run into some warnings I wasn't familiar
> with. I created a test BSP with the yocto-bsp tool and set MACHINE=test,
> (which is the name of my meta layer) then ran it. This produced several
> warnings:
>
> WARNING: linux-yocto-4.4.10+gitAUTOINC+870134f4bf_13852755ec-r0.1 do_patch: After meta data application, the kernel tree branch is standard/test.
> WARNING: linux-yocto-4.4.10+gitAUTOINC+870134f4bf_13852755ec-r0.1 do_patch: The SRC_URI specified branch standard/base.
> WARNING: linux-yocto-4.4.10+gitAUTOINC+870134f4bf_13852755ec-r0.1 do_patch:
> WARNING: linux-yocto-4.4.10+gitAUTOINC+870134f4bf_13852755ec-r0.1 do_patch: The branch will be forced to standard/base, but this means the board meta data
> WARNING: linux-yocto-4.4.10+gitAUTOINC+870134f4bf_13852755ec-r0.1 do_patch: (.scc files) do not match the SRC_URI specification.
> WARNING: linux-yocto-4.4.10+gitAUTOINC+870134f4bf_13852755ec-r0.1 do_patch:
> WARNING: linux-yocto-4.4.10+gitAUTOINC+870134f4bf_13852755ec-r0.1 do_patch: The meta data and branch standard/base should be inspected to ensure the proper
> WARNING: linux-yocto-4.4.10+gitAUTOINC+870134f4bf_13852755ec-r0.1 do_patch: kernel is being built.
>
> I found the patch which enabled this warning, but I'm unsure how to alleviate
> it. I do intend to use the standard/test branch, but I'm not sure which
> SRC_URI is telling bitbake to build the standard/base.

I'm actively changing the code in this area, so what I'm about to
describe will be valid for about a month, and then it'll be simpler
to explain.

When you are building linux-yocto BSPs (as the yocto-bsp tool is
manipulating) there are two ways that what is build is specifiied:
the SRC_URI (bitbake, the fetcher, etc) and kernel meta-data (the
kernel-cache repository you see on the SRC_URI).

The SRC_URI must specify a branch and SRCREV, since the fetcher
requires it, and that is typically what is built (hence no warning).

But the kernel meta data also has a complete description of the
tree structure (the branching standard/base, standard/common-pc, etc),
since it validates and can re-construct the tree from scratch.

So if the recipe and meta-data disagree on the branch that is to
be built, that warning is displayed, just so there are no surprises.

It is completely valid to build something different than the kernel
meta data describes, which is why the flag KMETA_AUDIT was also
added. When it is set to a non-zero valid, the auditing happens, but
if you clear it in your bbappend, you'll no longer see the warning.

But that commit 1ce221da64e21b9ee0a743dc9372236ab22e21ba (poky), is
only in master. I should get it nominated for backporting to the
release branches. IF you cherry-pick and try it out, that would be
helpful.

Cheers,

Bruce


>
> Any idea where to start looking?
>
> Patch that enabled the warnings: http://lists.openembedded.org/pipermail/openembedded-core/2016-April/119808.html
>
>
>
>



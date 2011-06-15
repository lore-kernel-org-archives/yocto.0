Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id CE0234C800B3
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2011 08:21:30 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p5FDLUQ3003467
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 15 Jun 2011 06:21:30 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 15 Jun 2011 06:21:29 -0700
Message-ID: <4DF8B1D7.8050208@windriver.com>
Date: Wed, 15 Jun 2011 09:21:27 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Thunderbird/3.1.10 ThunderBrowse/3.3.5
MIME-Version: 1.0
To: Jingdong Lu <jingdong.lu@windriver.com>
References: <cover.1308133815.git.jingdong.lu@windriver.com>
In-Reply-To: <cover.1308133815.git.jingdong.lu@windriver.com>
Cc: yocto@yoctoproject.org, Darren Hart <dvhart@linux.intel.com>
Subject: Re: [PATCH 0/1] Enable to set RTC for beagleboard
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 15 Jun 2011 13:21:31 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 06/15/11 06:41, Jingdong Lu wrote:
> From: Jingdong Lu<jingdong.lu@windriver.com>
>
> Ensure msecure is mux'd to be able to set the RTC for beagleboard.
> Fixes bug [YOCTO #767]

Jingdong,

The fix looks reasonable to me, Darren has been refreshing
the beagleboard support as well, so I've cc'd him here to
see if we have this change present in the work in progress
trees.

What tests did you run to ensure that the RTC worked on
the beagleboard ? There was some debate around whether or
not you needed an add-on card to get this functionality
available ?

Also for for any beagleboard changes, we should:

   - check the various upstream trees and use their commits
     if possible. Or if you've checked and couldn't find
     anything. State that in the patch submission.

   - reference the test platform details. Rev of the board,
     the model, etc.

Thanks for the patch, we just need to do a bit more
checking on it before we can get it into the tree.

Cheers,

Bruce

>
> Jingdong Lu (1):
>    RTC: Enable to set RTC
>
>   arch/arm/mach-omap2/board-omap3beagle.c |    3 +++
>   1 files changed, 3 insertions(+), 0 deletions(-)
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



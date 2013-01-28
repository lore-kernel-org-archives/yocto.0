Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F94CE004FE
	for <yocto@yoctoproject.org>; Mon, 28 Jan 2013 10:02:03 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r0SI1xMt015278
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 28 Jan 2013 10:01:59 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.328.9;
	Mon, 28 Jan 2013 10:01:59 -0800
Message-ID: <5106BD15.8010504@windriver.com>
Date: Mon, 28 Jan 2013 13:01:57 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: <stephen.lawrence@renesas.com>
References: <OF44D69492.16138F01-ON80257B01.005DC646-80257B01.0061C0AD@eu.necel.com>
In-Reply-To: <OF44D69492.16138F01-ON80257B01.005DC646-80257B01.0061C0AD@eu.necel.com>
Cc: yocto@yoctoproject.org
Subject: Re: SRC_URI scope and kernel fragments in non-yocto kernel recipes
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
X-List-Received-Date: Mon, 28 Jan 2013 18:02:03 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-01-28 12:47 PM, stephen.lawrence@renesas.com wrote:
> Hi,
>
> I'm wondering if SRC_URI has some limitations as to where it will be
> expanded.
>
> I have a bsp with 2 kernel recipes. One for mainline, the other for the
> yocto kernel.
> The kernel may be used with some middleware that requires some further
> patches and kernel configuration.
> I hoped to isolate these into a separate file that could be easily
> commented in or out from the kernel bb file.
> This file would have a SRC_URI += for the patches and a kernel fragment
> .cfg, e.g:
> # Add some m/w patches
> SRC_URI += " file://some.patch"
>
> # Add some m/w kernel req
> SRC_URI += " file://mw-kernel-config.cfg"
>
> I first tried following the bsp tooling example and placed this within a
> scc file but the SRC_URI wasn't picked up.
> I most recently tried placing it in an include but had the same result.
>
> I finally tried adding two SRC_URIs directly into the kernel recipe.
> The one listing the patches was applied. The one listing the kernel
> fragment was not.
>
> I suspect the kernel fragment issue is down to the fact that a yocto
> kernel recipe is not being used,
> i.e. it relies on the yocto kernel meta data mechanism?

I can confirm this part. Your recipe must inherit kernel-yocto bbclass
if you want the fragment to be applied to the base config. But you can
use linux-yocto-custom, to build your mainline recipe AND have the
fragment work.

>
> Why is the SRC_URI containing the additional patches applied when
> referenced directly in the bb file,
> but not when referenced in an include or scc file?

Keeping the question isolated to just the patch on the SRC_URI is a
good idea to make sure we are talking about the simplest case.

Which type of recipe isn't having the patch applied, the mainline one ?
The linux-yocto one, or both ?

Bruce

>
> I suspect this has come up before, but I can't find anything in the doc or
> list archives.
>
> I'm using the poky master branch rev
> 93c04c16e45a3c8f60f8ffc0b26a78c24bda71da
>
> Thanks for any suggestions. My aim is to get to a point I can upstream the
> bsp.
>
> Cheers
>
> Steve
>
>
> Stephen  Lawrence, Senior Engineer, Systems, Linux/SDK, Renesas Electronics Europe Ltd, Dukes Meadow, Millboard Road, SL8 5FH, Bourne End, UK,  Phone:+44 1628 651-789, Fax:+44 1628 651-804, mailto:Stephen.Lawrence@renesas.com, http://www.renesas.eu
>
> This message is intended only for the use of the addressee(s) and may contain confidential and/or legally privileged information. If you are not the intended recipient, you are hereby notified that any dissemination of this email (including any attachments thereto) is strictly prohibited. If you have received this email in error, please notify the sender immediately by telephone or email  and permanently destroy the original without making any copy. Please note that any material and advice from this mail is provided free of charge and shall be used as an example for demonstration purposes only.
> RENESAS MAKES NO WARRANTIES THAT THE USAGE OF INFORMATION OR ADVICE FROM THIS E-MAIL WILL NOT INFRINGE ANY INTELLECTUAL PROPERTY RIGHTS (E.G. PATENTS, COPYRIGHTS). RENESAS CANNOT GUARANTEE BUG FREE OPERATION AND THE RECIPIENT WILL USE AND/OR DISTRIBUTE IT ONLY AT HIS OWN RISK. IN NO EVENT SHALL RENESAS BE LIABLE FOR ANY DAMAGE.  The communication with Renesas Electronics Europe Ltd does not amend any written agreement in place.
>
> Renesas Electronics Europe Ltd, Dukes Meadow, Millboard Road, Bourne End, Buckinghamshire, SL8 5FH, UK.  Registered in England & Wales under Registered No. 04586709.
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 136554C800C0
	for <yocto@yoctoproject.org>; Fri, 17 Jun 2011 12:28:34 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p5HHSX7f009750
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 17 Jun 2011 10:28:33 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 17 Jun 2011 10:28:33 -0700
Message-ID: <4DFB8EBF.1010303@windriver.com>
Date: Fri, 17 Jun 2011 13:28:31 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Thunderbird/3.1.10 ThunderBrowse/3.3.5
MIME-Version: 1.0
To: Jingdong Lu <jingdong.lu@windriver.com>
References: <cover.1308279734.git.jingdong.lu@windriver.com>
In-Reply-To: <cover.1308279734.git.jingdong.lu@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/1] arm: omap3: beagle: Ensure msecure is mux'd to	be able to set the RTC
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
X-List-Received-Date: Fri, 17 Jun 2011 17:28:34 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 06/16/11 23:26, Jingdong Lu wrote:
> From: Jingdong Lu<jingdong.lu@windriver.com>
>
> arm: omap3: beagle: Ensure msecure is mux'd to be able to set the RTC
> Fixes bug [YOCTO #767]

Thanks Jindong,

We'll make sure that this gets into the tree, either via
Darren's beagleboard update, or as an individual commit.

Cheers,

Bruce

>
> Alexander Holler (1):
>    arm: omap3: beagle: Ensure msecure is mux'd to be able to set the RTC
>
>   arch/arm/mach-omap2/board-omap3beagle.c |    3 +++
>   1 files changed, 3 insertions(+), 0 deletions(-)
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



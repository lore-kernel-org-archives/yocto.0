Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED54DE01213
	for <yocto@yoctoproject.org>; Fri,  9 Sep 2011 11:52:00 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p89Ipu3i016217
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 9 Sep 2011 11:51:56 -0700 (PDT)
Received: from [147.11.119.55] (147.11.119.55) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 9 Sep 2011 11:51:56 -0700
Message-ID: <4E6A604C.40304@windriver.com>
Date: Fri, 9 Sep 2011 14:51:56 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110516 Thunderbird/3.1.10
MIME-Version: 1.0
To: "Saxena, Rahul" <rahul.saxena@intel.com>
References: <4FF5AC937153B0459463C1A88EB478F2012E3F41BD@orsmsx505.amr.corp.intel.com>
In-Reply-To: <4FF5AC937153B0459463C1A88EB478F2012E3F41BD@orsmsx505.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@gmail.com>
Subject: Re: [PATCH 0/3] [KERNEL] Cover letter for seperating 10/100 LAN feature from 1G and 10G
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
X-List-Received-Date: Fri, 09 Sep 2011 18:52:01 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-09-08 07:30 PM, Saxena, Rahul wrote:
> Cover letter for separating 10/100 LAN feature from 1G and 10G.
> Typically a machine does not need both of 10/100 and 1G/10G drivers.

These look good now, but when I went to merge the patches I see they
are multipart, and html-ized. Which is causing me considerable pain
in getting them applied.

Can you resend the patches via git-send-email ? Or push them to a
contrib branch ? If you are not sure about how to do either of these,
we can help and Tom may have some practical tips to share.

Cheers,

Bruce

>
> Signed-off-by: Rahul SaxenaRahul.saxena@intel.com
> <mailto:Rahul.saxena@intel.com>
>
> Rahul Saxena (3):
>
> Remove 10/100 LAN support. 10/100 LAN will be configured by seperate
>
> files
>
> Added seperate feature for 10/100 LAN support
>
> Added e100 feature configuration to remaining boards
>
> .../kernel-cache/bsp/common-pc-64/common-pc-64.scc | 1 +
>
> meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc | 1 +
>
> meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc | 1 +
>
> meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc | 2 +-
>
> meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc | 1 +
>
> meta/cfg/kernel-cache/bsp/fri2/fri2.scc | 1 +
>
> meta/cfg/kernel-cache/bsp/romley/romley.scc | 1 +
>
> .../features/intel-e1xxxx/intel-e100.cfg | 2 ++
>
> .../features/intel-e1xxxx/intel-e100.scc | 1 +
>
> .../features/intel-e1xxxx/intel-e1xxxx.cfg | 1 -
>
> 10 files changed, 10 insertions(+), 2 deletions(-)
>
> create mode 100644
> meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e100.cfg
>
> create mode 100644
> meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e100.scc
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



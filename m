Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 034C8E00CEE; Wed, 17 Apr 2019 09:29:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDF2DE00CE5
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2019 09:29:54 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x3HGTfJU021806
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 17 Apr 2019 09:29:41 -0700 (PDT)
Received: from [128.224.22.226] (128.224.22.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.439.0;
	Wed, 17 Apr 2019 09:29:41 -0700
To: <yocto@yoctoproject.org>, "Burton, Ross" <ross.burton@intel.com>, "Phil
	Blundell" <pb@pbcl.net>, "Li, Changqing" <changqing.li@windriver.com>
References: <1548061778-253354-1-git-send-email-changqing.li@windriver.com>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <b36da33b-df9e-2991-5444-cd45a4c3e2d1@windriver.com>
Date: Wed, 17 Apr 2019 12:29:40 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1548061778-253354-1-git-send-email-changqing.li@windriver.com>
X-Originating-IP: [128.224.22.226]
Subject: Re: [PATCH V2 0/2] update-rc.d: support enable/disable function
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
X-List-Received-Date: Wed, 17 Apr 2019 16:29:56 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-GB

Add Ross and Phil who have been committers for update-rc.d.

The changes seem sensible to me but the commit logs need some polish
to be more clear. I'll help Sandy with that later if needed.

../Randy

On 1/21/19 4:09 AM, changqing.li@windriver.com wrote:
> These three patches are for support disable/enable function for update-rc.d
>
> change in V2:
> add some comments and fix commit message
>
> change in V1:
> * change of script update-rc.d is for support disable/enable of init script link
> * update-rc.d.bbclass remove preinst to make disable/enable can work after upgrade
> * fix the doc manual
>
> Changqing Li (2):
>    update-rc.d.bbclass: remove preinst and remove -f for postinst
>    ref-variables.xml: update manual page for update-rc.d
>
>   documentation/ref-manual/ref-variables.xml |  2 +-
>   meta/classes/update-rc.d.bbclass           | 28 ++++------------------------
>   2 files changed, 5 insertions(+), 25 deletions(-)
>

-- 
# Randy MacLeod
# Wind River Linux



Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A59FE0071A
	for <yocto@yoctoproject.org>; Thu,  1 Sep 2011 14:03:33 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p81L3SQW011846
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 1 Sep 2011 14:03:28 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.21.218) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Thu, 1 Sep 2011 14:03:28 -0700
Message-ID: <4E5FF31E.3080906@windriver.com>
Date: Thu, 1 Sep 2011 17:03:26 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.7; en-US;
	rv:1.9.2.21) Gecko/20110830 Thunderbird/3.1.13
MIME-Version: 1.0
To: "Saxena, Rahul" <rahul.saxena@intel.com>
References: <4FF5AC937153B0459463C1A88EB478F2012E1E5AEF@orsmsx505.amr.corp.intel.com>
In-Reply-To: <4FF5AC937153B0459463C1A88EB478F2012E1E5AEF@orsmsx505.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@gmail.com>
Subject: Re: [PATCH 0/2] [KERNEL] Cover letter for the delete duplicate statement and delete unused cfg fragment patches
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
X-List-Received-Date: Thu, 01 Sep 2011 21:03:33 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-09-01 4:41 PM, Saxena, Rahul wrote:
> Cover letter for the delete duplicate statement and delete unused cfg
> fragment patches
>

Thanks. These look good. I'm preparing a pull request right now, so I'll
merge these and include them in that update.

Bruce

> Rahul Saxena (2):
>
> Removed duplicate statement
>
> Removed unused cfg file
>
> meta/cfg/kernel-cache/bsp/fishriver/eg20t.cfg | 39 ---------------------
>
> meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc | 1 -
>
> 2 files changed, 0 insertions(+), 40 deletions(-)
>
> delete mode 100644 meta/cfg/kernel-cache/bsp/fishriver/eg20t.cfg
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



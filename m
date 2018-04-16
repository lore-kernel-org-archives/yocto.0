Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8BF62E009E2; Sun, 15 Apr 2018 19:26:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68D10E00843
	for <yocto@yoctoproject.org>; Sun, 15 Apr 2018 19:26:18 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	15 Apr 2018 19:26:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,457,1517904000"; d="scan'208";a="34509367"
Received: from anmitta2-mobl1.png.intel.com (HELO [10.221.21.1])
	([10.221.21.1])
	by orsmga006.jf.intel.com with ESMTP; 15 Apr 2018 19:26:15 -0700
To: Yi Zhao <yi.zhao@windriver.com>, yocto@yoctoproject.org,
	Adrian.Dudau@enea.com, alexandru.vaduva@linux.com, joe_macdonald@mentor.com
References: <1523843847-24868-1-git-send-email-yi.zhao@windriver.com>
	<1523843847-24868-2-git-send-email-yi.zhao@windriver.com>
From: Anuj Mittal <anuj.mittal@intel.com>
Message-ID: <01c55349-6375-9c4d-49f8-d2e580c09c5e@intel.com>
Date: Mon, 16 Apr 2018 10:26:14 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <1523843847-24868-2-git-send-email-yi.zhao@windriver.com>
Subject: Re: [meta-cgl][PATCH 2/3] pacemaker: refresh patches to fix QA warning
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
X-List-Received-Date: Mon, 16 Apr 2018 02:26:19 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Yi

On 04/16/2018 09:57 AM, Yi Zhao wrote:

> +
> +diff --git a/lib/common/mainloop.c b/lib/common/mainloop.c
> +index 385ca7d..c259c7c 100644
> +--- a/lib/common/mainloop.c
> ++++ b/lib/common/mainloop.c
>  @@ -32,6 +32,7 @@
>   #include <crm/common/xml.h>
>   #include <crm/common/mainloop.h>
>   #include <crm/common/ipcs.h>
>  +#include <qb/qbarray.h>
>   
> - struct mainloop_child_s {
> -     pid_t pid;
> + #include <qb/qbarray.h>
> + 

It looks like this patch is no longer required and is just adding the
same thing twice. Please check.


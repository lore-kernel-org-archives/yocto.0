Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1057BE00D83; Fri,  8 Dec 2017 00:38:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51203E00D7B
	for <yocto@yoctoproject.org>; Fri,  8 Dec 2017 00:38:36 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	08 Dec 2017 00:38:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,377,1508828400"; d="scan'208";a="10144383"
Received: from jlock-mobl3.ger.corp.intel.com ([10.252.19.44])
	by FMSMGA003.fm.intel.com with ESMTP; 08 Dec 2017 00:38:35 -0800
To: yocto@yoctoproject.org
References: <20171207185111.14402-1-limon.anibal@gmail.com>
	<20171207185111.14402-3-limon.anibal@gmail.com>
	<601e75fe-ab93-ebf8-a7de-d4e3af167c16@intel.com>
	<CAPS-YPCHFLbJtkaO630GdXgVq5v_BD_Oa8H6O6EbwA0rVXPVbg@mail.gmail.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
Message-ID: <959a04b3-0045-8786-5e35-42cc2289cae2@linux.intel.com>
Date: Fri, 8 Dec 2017 08:38:33 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CAPS-YPCHFLbJtkaO630GdXgVq5v_BD_Oa8H6O6EbwA0rVXPVbg@mail.gmail.com>
Subject: Re: [ptest-runner 3/3] README.md: Update to my current email
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
X-List-Received-Date: Fri, 08 Dec 2017 08:38:38 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit



On 07/12/17 22:11, Anibal Limón wrote:
> 
> 
> On Thu, Dec 7, 2017 at 4:00 PM, Joshua Lock <joshua.g.lock@intel.com 
> <mailto:joshua.g.lock@intel.com>> wrote:
> 
> 
> 
>     On 07/12/17 18:51, Aníbal Limón wrote:
> 
>         From: Aníbal Limón <anibal.limon@linaro.org
>         <mailto:anibal.limon@linaro.org>>
> 
>         Signed-off-by: Aníbal Limón <anibal.limon@linaro.org
>         <mailto:anibal.limon@linaro.org>>
>         ---
>            README.md | 2 +-
>            1 file changed, 1 insertion(+), 1 deletion(-)
> 
>         diff --git a/README.md b/README.md
>         index fedab04..22b36a4 100644
>         --- a/README.md
>         +++ b/README.md
>         @@ -50,7 +50,7 @@ $ mtrace ./ptest-runner $(MALLOC_TRACE)
>              For contribute please send a patch with subject prefix
>         "[ptest-runner]" to
>         yocto@yoctoproject.org <mailto:yocto@yoctoproject.org> and cc
>         the current maintainer that is Aníbal Limón
>         -<anibal.limon@linux.intel.com
>         <mailto:anibal.limon@linux.intel.com>>.
>         +<anibal.limon@linaro.org <mailto:anibal.limon@linaro.org>>.
> 
> 
>     I take this to mean that you'd still like to maintain ptest-runner?
> 
>     We have patches on the list which could use review from someone more
>     familiar with ptest-runner than me…
> 
> 
> Yes, i can look into that patches.

Thanks!

> Can you point me the patches?,

Thread of submissions from Jiwei at WR here:
https://lists.yoctoproject.org/pipermail/yocto/2017-September/038203.html

I provided high-level review of some patches:
https://lists.yoctoproject.org/pipermail/yocto/2017-October/038271.html
https://lists.yoctoproject.org/pipermail/yocto/2017-October/038272.html
https://lists.yoctoproject.org/pipermail/yocto/2017-October/038273.html
https://lists.yoctoproject.org/pipermail/yocto/2017-October/038274.html

Joshua

> Cheers,
> Anibal
> 
> 
>     Joshua
>     ---------------------------------------------------------------------
>     Intel Corporation (UK) Limited
>     Registered No. 1134945 (England)
>     Registered Office: Pipers Way, Swindon SN3 1RJ
>     VAT No: 860 2173 47
> 
>     This e-mail and any attachments may contain confidential material for
>     the sole use of the intended recipient(s). Any review or distribution
>     by others is strictly prohibited. If you are not the intended
>     recipient, please contact the sender and delete all copies.
> 
> 
> 
> 


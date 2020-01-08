Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.10181.1578500288509118632
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Jan 2020 08:18:08 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: 140.211.169.56, mailfrom: ross.burton@intel.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A189E014C6; Wed,  8 Jan 2020 08:18:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/, high
	*      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8F3BE014C4
	for <yocto@yoctoproject.org>; Wed,  8 Jan 2020 08:18:07 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Jan 2020 08:18:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,410,1571727600"; 
   d="scan'208";a="215997941"
Received: from lipu-mobl.ger.corp.intel.com (HELO rburton-mac01.local) ([10.252.50.168])
  by orsmga008.jf.intel.com with ESMTP; 08 Jan 2020 08:18:05 -0800
Subject: Re: [yocto][meta-gplv2][PATCH 2/2 v2] diffutils: musl has working malloc() and realloc()
To: Andr? Draszik <git@andred.net>, yocto@yoctoproject.org
References: <15E7F1D320E9D777.2841@lists.yoctoproject.org>
 <20200108161558.40180-1-git@andred.net>
From: "Ross Burton" <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <95d58b9a-555d-af0c-cb4f-812cc9e91d3c@intel.com>
Date: Wed, 8 Jan 2020 16:18:04 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200108161558.40180-1-git@andred.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 08/01/2020 16:15, Andr? Draszik wrote:
> +CACHED_CONFIGUREVARS_libc-musl = "\
> +    jm_cv_func_working_malloc=yes \
> +    jm_cv_func_working_realloc=yes \
> +"

Why is this musl-specific?  Does the configure explicitly detect glibc 
and know it's good, or should we do this for glibc too?

Ross

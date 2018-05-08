Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF2F6E00C59; Tue,  8 May 2018 12:21:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.136 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F8E1E0084D
	for <yocto@yoctoproject.org>; Tue,  8 May 2018 12:21:44 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	08 May 2018 12:21:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,379,1520924400"; d="scan'208";a="54247822"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga001.jf.intel.com with ESMTP; 08 May 2018 12:21:42 -0700
To: =?UTF-8?Q?Iv=c3=a1n_Castell?= <icastell@nayarsystems.com>,
	Yocto Project <yocto@yoctoproject.org>
References: <CAALXFYw5fYE+JBAO4hrXFO-L3wyE6DRzP-yFWbPvKX6S1eRePw@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <da5f1fde-171e-09cb-f51c-13a6e147c3ed@linux.intel.com>
Date: Tue, 8 May 2018 22:15:54 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <CAALXFYw5fYE+JBAO4hrXFO-L3wyE6DRzP-yFWbPvKX6S1eRePw@mail.gmail.com>
Subject: Re: Native curl and SSL CA certificates
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
X-List-Received-Date: Tue, 08 May 2018 19:21:44 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 05/08/2018 05:55 PM, Iván Castell wrote:
> Is this a bug related with curl or ca-certificates recipe? What should 
> be the right way to fix it?

Fetching and installing packages over the network during image creation 
is not supported or tested in YP. You need to build them locally, with 
recipes.


Alex


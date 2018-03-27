Return-Path: <stephano.cetola@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A73FE00C59; Tue, 27 Mar 2018 15:16:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86171E00B9C
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2018 15:16:31 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	27 Mar 2018 15:16:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,368,1517904000"; d="scan'208";a="41222899"
Received: from linux.intel.com ([10.54.29.200])
	by fmsmga004.fm.intel.com with ESMTP; 27 Mar 2018 15:16:30 -0700
Received: from pedrazax-mobl2.amr.corp.intel.com
	(pedrazax-mobl2.amr.corp.intel.com [10.254.188.164])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTPS id 74A9258046C;
	Tue, 27 Mar 2018 15:16:30 -0700 (PDT)
To: Karim ATIKI <karim_atiki@hotmail.com>
References: <AM5PR0101MB235431CDAF5A367491A3F20092AC0@AM5PR0101MB2354.eurprd01.prod.exchangelabs.com>
From: Stephano Cetola <stephano.cetola@linux.intel.com>
Message-ID: <d9839d9d-f7d5-01bc-0c96-2efd2b3d53da@linux.intel.com>
Date: Tue, 27 Mar 2018 15:16:33 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
	Gecko/20100101 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <AM5PR0101MB235431CDAF5A367491A3F20092AC0@AM5PR0101MB2354.eurprd01.prod.exchangelabs.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta layers for freescale IMX8 ?
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
X-List-Received-Date: Tue, 27 Mar 2018 22:16:32 -0000
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 3/27/18 6:03 AM, Karim ATIKI wrote:
> Hi all,
> 
> We just received some evaluation boards based on Freescale IMX8 Quad.
> We'll have to firstly build a custom linux image to test our products.
> I'm not experienced with freescales processors.
> 
> Is there some layers managing the recent IMX8 Freescale ?
> 
> Thanks .
> 
> K
> 

You'll want to ask this question on the meta-freescale mailing list:

https://lists.yoctoproject.org/listinfo/meta-freescale

Also, see the FSL Community BSP:

http://freescale.github.io/

--S


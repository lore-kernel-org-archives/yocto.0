Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA8A2E00B9E; Fri, 13 Apr 2018 12:18:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D74DE007E1
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 12:18:53 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	13 Apr 2018 12:18:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,446,1517904000"; d="scan'208";a="43143608"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga003.jf.intel.com with ESMTP; 13 Apr 2018 12:18:52 -0700
To: atulkumar singh <atul.singh008@gmail.com>, yocto@yoctoproject.org
References: <CAH21_vGcVkPs1rCMWKa6_B=Y_C2BBzrssoK4gqB_1JaifJ-fbg@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <f6f09746-88e0-eb92-e911-472f59ac94f0@linux.intel.com>
Date: Fri, 13 Apr 2018 22:12:38 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <CAH21_vGcVkPs1rCMWKa6_B=Y_C2BBzrssoK4gqB_1JaifJ-fbg@mail.gmail.com>
Subject: Re: Regarding support of machine learning algorithm/framework
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
X-List-Received-Date: Fri, 13 Apr 2018 19:18:54 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 04/12/2018 06:19 AM, atulkumar singh wrote:
> These days we are hearing a lot about artificial intelligence and now 
> every company whichever domain it belongs works in AI.
> Either it's about automotive(Autonomous driving), Surveillance(Object 
> detection) or IOT.
> So as the industry is moving towards AI, in that case, is there 
> something which is supported in our Yocto distribution to support the same?
> Basically, I am looking for the framework/algorithm which can support 
> convolutional neural network like tensor flow.
> 
> Please do let me know if we have some sort of already existing solution 
> to support or if there is any plan to add the support.

You can start a layer for this kind of use case on github or similar and 
place there the best available open source implementations. Before doing 
that, check layers.openembedded.org if something similar already exists.

Alex


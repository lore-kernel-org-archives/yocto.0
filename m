Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85063E00DD0; Fri,  2 Feb 2018 04:34:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29B41E00D41
	for <yocto@yoctoproject.org>; Fri,  2 Feb 2018 04:34:48 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	02 Feb 2018 04:34:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,448,1511856000"; d="scan'208";a="14516112"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga007.jf.intel.com with ESMTP; 02 Feb 2018 04:34:47 -0800
To: Colin Helliwell <colin.helliwell@ln-systems.com>, yocto@yoctoproject.org
References: <05b001d39c1f$b673d4c0$235b7e40$@ln-systems.com>
	<f03dfbe4-9f35-611c-c268-61f8fd39f68b@linux.intel.com>
	<142314981.52710.1517574653923@email.1and1.co.uk>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <c2c66ff9-27f0-6ef5-9e73-37592cc0e930@linux.intel.com>
Date: Fri, 2 Feb 2018 14:34:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <142314981.52710.1517574653923@email.1and1.co.uk>
Subject: Re: Getting a recipe's files from within an image recipe
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
X-List-Received-Date: Fri, 02 Feb 2018 12:34:49 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 02/02/2018 02:30 PM, Colin Helliwell wrote:
> Thanks Alex. I half-had that thought too, but was hoping to do it with the one 'src checkout' of the whole app rather than extra two. Not that that really matters, and it seems it may be the neatest and most robust solution.
> 

I believe source checkout is indeed performed only once, even if you 
have ten different recipes referring to the same SRC_URI. Just throw 
away the configure-compile-install steps, and focus only on installing 
the correct configs.

Alex


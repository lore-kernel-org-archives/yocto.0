Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D3CEE00D14; Fri, 24 Nov 2017 04:47:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6ED0EE00D0B
	for <yocto@yoctoproject.org>; Fri, 24 Nov 2017 04:47:48 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	24 Nov 2017 04:47:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,447,1505804400"; 
   d="scan'208";a="9052185"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga001.jf.intel.com with ESMTP; 24 Nov 2017 04:47:47 -0800
To: "Koehler, Yannick" <yannick.koehler@hpe.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CS1PR8401MB084071ADF580BCCD624BF26DED260@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <1c666fce-c37f-efd8-6ad8-4400e4650e8a@linux.intel.com>
Date: Fri, 24 Nov 2017 14:48:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CS1PR8401MB084071ADF580BCCD624BF26DED260@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
Subject: Re: Executing ptest using image test ?
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
X-List-Received-Date: Fri, 24 Nov 2017 12:47:50 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 11/24/2017 04:07 AM, Koehler, Yannick wrote:
> I have some ptest which I would like to run quickly inside qemux86.  I 
> see that the TEST_SUITES would allow me to do that, and that there is a 
> _ptest.py script which seems to interface with ptest-runner.  Yet, I am 
> unclear how it connects together if it does.
> 
> 
> If anyone know how this can be done, can you point me on some doc 
> related to this?

Here:
http://www.yoctoproject.org/docs/2.4/dev-manual/dev-manual.html#testing-packages-with-ptest


Alex


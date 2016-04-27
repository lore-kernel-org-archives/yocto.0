Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA91CE00D5F; Tue, 26 Apr 2016 19:55:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4DABE00D5A
	for <yocto@yoctoproject.org>; Tue, 26 Apr 2016 19:55:54 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga104.fm.intel.com with ESMTP; 26 Apr 2016 19:55:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,539,1455004800"; d="scan'208";a="963494643"
Received: from wlee9-mobl3.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.141.75])
	by orsmga002.jf.intel.com with ESMTP; 26 Apr 2016 19:55:51 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Wed, 27 Apr 2016 14:55:49 +1200
Message-ID: <50406615.yUiX1aTJki@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.4.7-300.fc23.x86_64; KDE/4.14.18; x86_64; ;
	)
In-Reply-To: <CA+M3ks4p7uBwDCDYPhLBbBJMSVWnbx0tAib1dQmGeteP3ESvxw@mail.gmail.com>
References: <CA+M3ks4p7uBwDCDYPhLBbBJMSVWnbx0tAib1dQmGeteP3ESvxw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, Brian Avery <brian.avery@intel.com>
Subject: Re: Yocto ADT eclipse plugin and devtool
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
X-List-Received-Date: Wed, 27 Apr 2016 02:55:56 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Benjamin,

On Mon, 25 Apr 2016 09:34:36 Benjamin Gaignard wrote:
> devtool usage is well documented in ADT manual:
> http://www.yoctoproject.org/docs/latest/adt-manual/adt-manual.html#using-dev
> tool-in-your-sdk-workflow but not explicit mention of how use it within
> Eclipse.
> 
> Do you know if we can use devtool, for example to compile and load new
> code, directly inside Eclipse ?

Not at present, however, offering devtool functionality within Eclipse is on 
our list of things we'd like to implement.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre


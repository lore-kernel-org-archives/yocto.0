Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CFBB1E00F45; Thu,  8 Feb 2018 23:19:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9999EE0082E
	for <yocto@yoctoproject.org>; Thu,  8 Feb 2018 23:19:16 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	08 Feb 2018 23:19:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,482,1511856000"; d="scan'208";a="16488483"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga007.fm.intel.com with ESMTP; 08 Feb 2018 23:19:14 -0800
To: Russell Peterson <bluehills7@comcast.net>
References: <1B4071C2-44F7-452F-A62A-EF163C7231BE@comcast.net>
	<5c999223-a181-fbb1-17fd-3e0dc81096dc@linux.intel.com>
	<6E6DB1C2-21E3-416A-A1C3-D29924FB13F1@comcast.net>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <8d3c8733-ab4e-08b3-836f-bb7a0f94ffdc@linux.intel.com>
Date: Fri, 9 Feb 2018 09:13:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <6E6DB1C2-21E3-416A-A1C3-D29924FB13F1@comcast.net>
Cc: yocto@yoctoproject.org
Subject: Re: dnf error
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
X-List-Received-Date: Fri, 09 Feb 2018 07:19:16 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 02/09/2018 02:25 AM, Russell Peterson wrote:
> The package I was adding had python scripts in it.  The make process
> for the package used the python distutils.core setup function.  I
> didn’t write the code… I’m just creating a recipe for it.  This in
> turn copies the scripts to various locations but in the process of
> doing that modifies the #! at the start of the script to use the
> hosttools path to python.  Not very cross-build friendly.  I simply
> patched the makefile to use the —executable=/usr/bin/python argument.
> All this does is prevent the #! modification.  Builds fine now.  Bit
> of a hack but I will speak with the developers to create a bit more
> cross build friendly options.
> 


This is actually a common issue, and we routinely patch python scripts 
after-the-fact to replace upstream's idea of where python is with 
something sane. I'd say you can almost always just hardcode

#!/usr/bin/en python3

in there.

Alex


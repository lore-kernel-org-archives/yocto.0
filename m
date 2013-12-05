Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6635E0078D
	for <yocto@yoctoproject.org>; Thu,  5 Dec 2013 09:49:04 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 05 Dec 2013 09:49:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,834,1378882800"; d="scan'208";a="445282655"
Received: from akagikob-mobl1.ger.corp.intel.com (HELO helios.localnet)
	([10.252.121.205])
	by fmsmga002.fm.intel.com with ESMTP; 05 Dec 2013 09:49:02 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>,
	Stefan Roese <stefan.roese@gmail.com>
Date: Thu, 05 Dec 2013 17:49:01 +0000
Message-ID: <1398865.OkXIqXG5JX@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <52A0AAF6.2000509@windriver.com>
References: <52A0A38E.7020903@gmail.com> <52A0A974.9080207@gmail.com>
	<52A0AAF6.2000509@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Board specific bbappend file
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
X-List-Received-Date: Thu, 05 Dec 2013 17:49:05 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 05 December 2013 11:33:58 Bruce Ashfield wrote:
> You can absolutely change the SRC_URI on a per-board basis. Just use
> the technique that I showed above, and do it in a bbappend to your
> linux recipe.
> 
> i.e. something like: SRC_URI_qemux86 += "file://myfancypatch.patch"

overrides and += do not play well. You must use _append in this case i.e.

SRC_URI_append_qemux86 = " file://myfancypatch.patch" 

(remembering leading spaces, as usual with _append and variables that are 
space-separated lists)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre


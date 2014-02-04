Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E146E0030B
	for <yocto@yoctoproject.org>; Tue,  4 Feb 2014 02:00:35 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 04 Feb 2014 02:00:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,778,1384329600"; d="scan'208";a="475681315"
Received: from gmacartn-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.123.79])
	by fmsmga002.fm.intel.com with ESMTP; 04 Feb 2014 02:00:32 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Ashish Dalela <ashish.dalela@gmail.com>
Date: Tue, 04 Feb 2014 10:00:31 +0000
Message-ID: <8095968.iRV8g0aUl9@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.11.5 (Linux/3.12.8-300.fc20.x86_64; KDE/4.11.5; x86_64; ; )
In-Reply-To: <CABhkJRd8K90o9_oiaTQ82uvGzoxBhC_qgK15k+XyTKLmVDoc_g@mail.gmail.com>
References: <CABhkJRd8K90o9_oiaTQ82uvGzoxBhC_qgK15k+XyTKLmVDoc_g@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Python recipe question
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
X-List-Received-Date: Tue, 04 Feb 2014 10:00:38 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Ashish,

On Tuesday 04 February 2014 14:50:29 Ashish Dalela wrote:
> I notice that many  python standard modules (e.g. cgi.py) are not getting
> packaged with the core-image-basic. I can't find a specific package that
> includes this although I can see the file being a part of the source
> archive. Any suggestion on how I can include all standard libraries?

Our python recipe splits out a number of modules into their own separate 
packages; cgi.py is in a package called "python-netserver". You can find which 
package standard modules are in by looking in 
tmp/work/<arch>/python/<version>/packages-split/ , or alternatively you can 
include the "python-modules" package in your image to get all of them 
installed.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre


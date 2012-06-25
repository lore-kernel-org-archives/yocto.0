Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FAB9E01453
	for <yocto@yoctoproject.org>; Mon, 25 Jun 2012 02:41:02 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 25 Jun 2012 02:41:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="184525082"
Received: from unknown (HELO helios.localnet) ([10.252.120.191])
	by fmsmga002.fm.intel.com with ESMTP; 25 Jun 2012 02:41:01 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: jfabernathy <jfabernathy@gmail.com>
Date: Mon, 25 Jun 2012 10:40:59 +0100
Message-ID: <15776359.Wfgxx8YxLm@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.3 (Linux/3.2.0-25-generic-pae; KDE/4.8.3; i686; ; )
In-Reply-To: <4FE73AF6.2060008@gmail.com>
References: <4FE73AF6.2060008@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: prerequisite tools for making documentation
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 25 Jun 2012 09:41:02 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Sunday 24 June 2012 12:06:14 jfabernathy wrote:
> I had a need to look at the bitbake manual in the
> poky/bitbake/doc/manual directory and tried to make pdf.  I had all the
> prerequisites listed in the QS guide.  However, I found the make failed
> due to a number of xml related tools being missing.  I installed those
> and got the pdf manual generated.
> 
> Should we add those xml tools to the prerequisites?  BTW, I'm using
> denzil branch and referring to the QS guide 1.2.

IMO, we should be separating out the prerequisites for building the 
documentation into a separate list, since most people don't need to build the 
documentation. That said, it would be nice if our documentation pre-requisites 
list was actually complete, so if the list is split I'm all for it :)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre


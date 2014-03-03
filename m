Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F43AE009F9
	for <yocto@yoctoproject.org>; Mon,  3 Mar 2014 09:25:42 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 03 Mar 2014 09:25:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,578,1389772800"; d="scan'208";a="492947364"
Received: from dmilliga-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.25])
	by orsmga002.jf.intel.com with ESMTP; 03 Mar 2014 09:25:01 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Rick Bianchi <bianchirickkutta@gmail.com>, yocto@yoctoproject.org
Date: Mon, 03 Mar 2014 17:25 +0000
Message-ID: <4303806.mO7WsDBPPN@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.2 (Linux/3.13.5-200.fc20.x86_64; KDE/4.12.2; x86_64; ; )
In-Reply-To: <2400828.naZC4e9eTT@peggleto-mobl5.ger.corp.intel.com>
References: <CAA7h+EqtOE2spfgtXi2CiogUFsytGxyb4EgqSAoanwTximA-+w@mail.gmail.com>
	<CAA7h+ErXKX-M=VsC2GDqe5DGNE-y_VtEPv0YdO+ws+HHGTa9FA@mail.gmail.com>
	<2400828.naZC4e9eTT@peggleto-mobl5.ger.corp.intel.com>
MIME-Version: 1.0
Subject: Re: WARNING: Failed to fetch URL http://downloads.sourceforge.net/openjade/openjade-0.6.14.tar.gz, attempting MIRRORS if available
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
X-List-Received-Date: Mon, 03 Mar 2014 17:25:43 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 03 March 2014 17:13:57 Paul Eggleton wrote:
> On Monday 03 March 2014 09:56:59 Rick Bianchi wrote:
> > undefined symbol: _ZN14OpenJade_Grove8ClassDef12sgmlDocumentE
> 
> This looks familiar - we've seen this issue before:
> 
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=2972
> 
> Unfortunately we were never able to reproduce it, despite numerous people
> running test builds on Ubuntu 12.04 / 12.10.

Rick - It's a stab in the dark, but would you be able to send me a list of 
packages you have installed on your machine? Maybe I can have another go at 
reproducing the problem here or at the very least comparing the list to what I 
have installed. The most comprehensive list would be produced with the 
following command:

dpkg-query -W -f='${Package}\t${Version}\t${Architecture}\n'

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre


Return-Path: <Peter.Seebach@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 650F04C80048
	for <yocto@yoctoproject.org>; Mon, 13 Dec 2010 12:29:36 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBDITYvG019358;
	Mon, 13 Dec 2010 10:29:34 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 13 Dec 2010 10:29:34 -0800
Received: from laptop-seebs-net.local ([172.25.40.237]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 13 Dec 2010 10:29:34 -0800
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Xu, Dongxiao"
	<dongxiao.xu@intel.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A317D6A87@shsmsx501.ccr.corp.intel.com>
Date: Mon, 13 Dec 2010 12:29:33 -0600
MIME-Version: 1.0
From: "Peter Seebach" <peter.seebach@windriver.com>
Organization: Wind River Systems
Message-ID: <op.vnn0bjvid4x2xs@laptop-seebs-net.local>
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A317D6A87@shsmsx501.ccr.corp.intel.com>
User-Agent: Opera Mail/10.63 (MacIntel)
X-OriginalArrivalTime: 13 Dec 2010 18:29:34.0136 (UTC)
	FILETIME=[B0A27B80:01CB9AF3]
X-Mailman-Approved-At: Mon, 13 Dec 2010 12:34:05 -0600
Cc: "Purdie, Richard" <richard.purdie@intel.com>
Subject: Re: Some simple tests about pseudo performance
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
X-List-Received-Date: Mon, 13 Dec 2010 18:29:36 -0000
Content-Type: text/plain; charset=utf-8; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

On Thu, 09 Dec 2010 21:09:36 -0600, Xu, Dongxiao <dongxiao.xu@intel.com>  
wrote:

>                 fp = fopen("/tmp/12321.txt", "w");

fakeroot doesn't intercept or alter fopen().  It'd be better to test  
something
that is actually affected by fakeroot for a comparison.  :)

fakeroot only traps things like stat and chmod, pseudo traps file system  
opens
in general.  So I would expect a pretty huge difference in this case.

Keep in mind that pseudo's overhead is all around opens, closes, and things
like stat/chmod; reads and writes are unaffected.  Most real-world  
programs that
manipulate files spend a lot more time reading or writing files than  
opening
them, so a huge impact on file open time is relatively small on actual  
execution
time.

-s
-- 
Listen, get this. Nobody, with a good compiler, needs to be justified.


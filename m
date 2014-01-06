Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBABBE00529
	for <yocto@yoctoproject.org>; Mon,  6 Jan 2014 05:58:04 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 06 Jan 2014 05:57:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,613,1384329600"; d="scan'208";a="434494437"
Received: from unknown (HELO helios.localnet) ([10.252.122.119])
	by orsmga001.jf.intel.com with ESMTP; 06 Jan 2014 05:57:47 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Tarek El-Sherbiny <tarek.elsherbiny@gmail.com>
Date: Mon, 06 Jan 2014 13:57:45 +0000
Message-ID: <1867359.xXuMmiy9d0@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-34-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CAB3sqtYOQ5qZ2qHQ_w-fkptbhCb_q9WhNXFP8dPx0jauMNHoDg@mail.gmail.com>
References: <CAB3sqtYOQ5qZ2qHQ_w-fkptbhCb_q9WhNXFP8dPx0jauMNHoDg@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Smart runtime package manager
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
X-List-Received-Date: Mon, 06 Jan 2014 13:58:05 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Tarek,

On Sunday 05 January 2014 14:20:40 Tarek El-Sherbiny wrote:
> I'm trying to learn how smart works. I've been successful to create a repo,
> update and install from it.
> Is there smart install option to force install all the more recent packages
> without having to type the package name for each individual package?
> Something like update all to bring the target up-to-date in single command.

"smart upgrade" should do this.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre


Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9310DE009AA
	for <yocto@yoctoproject.org>; Thu,  6 Mar 2014 09:02:15 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 06 Mar 2014 09:01:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,601,1389772800"; d="scan'208";a="467823281"
Received: from lbhoopat-mobl1.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.123.174])
	by orsmga001.jf.intel.com with ESMTP; 06 Mar 2014 09:00:51 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Rick Bianchi <bianchirickkutta@gmail.com>
Date: Thu, 06 Mar 2014 17:00:49 +0000
Message-ID: <1687242.35WvzdQ7Vj@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.3 (Linux/3.13.5-200.fc20.x86_64; KDE/4.12.3; x86_64; ; )
In-Reply-To: <CAA7h+EqQ0Jv1rz75E0owrG0k-b0w5fmgOuTzZhZz2-OSW8p6Rg@mail.gmail.com>
References: <CAA7h+EqQ0Jv1rz75E0owrG0k-b0w5fmgOuTzZhZz2-OSW8p6Rg@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: hwdata needed for usbip
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
X-List-Received-Date: Thu, 06 Mar 2014 17:02:18 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Rick,

On Thursday 06 March 2014 09:05:30 Rick Bianchi wrote:
> I have looked high and low for the hwdata package, usbip needs it to
> function. I don't see it with a bitbake -s | grep hwdata and it is not in
> smart repos.
> 
> Is this package include in another package? If, so which one?

If I understand correctly, "hwdata" is a Red Hat packaging convention and is 
composed of databases from several different source packages; we ship them via 
the recipes for their source packages. Thus the USB ID device database can be 
found in a usbutils-ids package (produced by the usbutils recipe), the PCI ID 
database in pciutils-ids (produced by the pciutils recipe), etc.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre


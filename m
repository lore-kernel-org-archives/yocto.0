Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2E3EE006AD
	for <yocto@yoctoproject.org>; Fri,  7 Feb 2014 01:57:01 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 07 Feb 2014 01:57:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,799,1384329600"; d="scan'208";a="479527027"
Received: from ryanpete-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.123.135])
	by orsmga002.jf.intel.com with ESMTP; 07 Feb 2014 01:56:15 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Kazuya Nishimura <kazuya.nisimura@gmail.com>
Date: Fri, 07 Feb 2014 09:56:14 +0000
Message-ID: <2211095.CLu8Hdfafg@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.2 (Linux/3.12.9-301.fc20.x86_64; KDE/4.12.2; x86_64; ; )
In-Reply-To: <CA+o05TzDjS2Xd=dDmu3nihuBUF3ZyqeKszOG8e=wynce-Xfb7A@mail.gmail.com>
References: <1391565679-15351-1-git-send-email-kazuya.nisimura@gmail.com>
	<2841839.SyqLMEXVIj@peggleto-mobl5.ger.corp.intel.com>
	<CA+o05TzDjS2Xd=dDmu3nihuBUF3ZyqeKszOG8e=wynce-Xfb7A@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] tune-arm1176jzfs-s.inc: Add hard float profile, arm1176jzfshf, in AVAILTUNES
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
X-List-Received-Date: Fri, 07 Feb 2014 09:57:04 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 07 February 2014 12:53:48 Kazuya Nishimura wrote:
> This tune-arm1176jzf-s.inc belongs to meta-raspberrypi layer, not an
> oe-core file.
> (Title missing [meta-raspberrypi]... this is my fault)

Ah, oops, I didn't see that, sorry for the confusion. I've added Andrei on CC 
so he can pick it up.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre


Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3654E004CF
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2011 08:52:07 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 12 Oct 2011 08:52:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="62250963"
Received: from unknown (HELO helios.localnet) ([10.252.120.213])
	by orsmga001.jf.intel.com with ESMTP; 12 Oct 2011 08:52:06 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Darren Hart <dvhart@linux.intel.com>
Date: Wed, 12 Oct 2011 16:52:05 +0100
User-Agent: KMail/1.13.6 (Linux/2.6.38-11-generic-pae; KDE/4.6.5; i686; ; )
References: <4E933C41.4000207@linux.intel.com> <4E94DCD5.2060200@balister.org>
	<4E95B544.2020907@linux.intel.com>
In-Reply-To: <4E95B544.2020907@linux.intel.com>
MIME-Version: 1.0
Message-Id: <201110121652.05343.paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: RFC: User configurable recipe features
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
X-List-Received-Date: Wed, 12 Oct 2011 15:52:07 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Wednesday 12 October 2011 16:41:56 Darren Hart wrote:
> Hrm... the micro distro? What's this?

http://cgit.openembedded.org/meta-micro/

It's maintained by Phil Blundell. I believe he's been pretty successful in 
reducing size of the resulting image whilst keeping the system fairly 
functional. He is using uclibc however.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre


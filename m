Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6537EE01489
	for <yocto@yoctoproject.org>; Mon,  2 Jul 2012 09:08:52 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 02 Jul 2012 09:08:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="118149065"
Received: from unknown (HELO helios.localnet) ([10.252.120.232])
	by AZSMGA002.ch.intel.com with ESMTP; 02 Jul 2012 09:08:51 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Darren Hart <dvhart@linux.intel.com>
Date: Mon, 02 Jul 2012 17:08:49 +0100
Message-ID: <3340911.JsQ6iRqCQu@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.3 (Linux/3.2.0-26-generic-pae; KDE/4.8.3; i686; ; )
In-Reply-To: <4FF1C475.9090502@linux.intel.com>
References: <cover.1341222778.git.paul.eggleton@linux.intel.com>
	<140b0d7e96a6b852346e415b91d26f1d41ac88ea.1341222778.git.paul.eggleton@linux.intel.com>
	<4FF1C475.9090502@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [yocto-docs] [PATCH 2/5] dev-manual: tidy up "How to Submit a Change" section
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
X-List-Received-Date: Mon, 02 Jul 2012 16:08:52 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 02 July 2012 08:55:33 Darren Hart wrote:
> On 07/02/2012 02:54 AM, Paul Eggleton wrote:
> > * Change some of the language and patch submission directions to
> > 
> >   correctly represent how we work together with OpenEmbedded (this
> >   changed with the introduction of OE-Core a few releases ago).
> > 
> > * Correct --help option to -h for pull request scripts
> 
> That fixes Bug 2671, consider adding the tag to the commit header.

Ah yes, I forgot there was a bug open for this. I've updated the branch to 
include the bug reference.

Thanks,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre


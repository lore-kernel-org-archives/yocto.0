Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id CCB1E4C80B70
	for <yocto@yoctoproject.org>; Wed, 24 Nov 2010 04:30:36 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 24 Nov 2010 02:30:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,247,1288594800"; d="scan'208";a="629862214"
Received: from unknown (HELO [10.255.16.138]) ([10.255.16.138])
	by fmsmga002.fm.intel.com with ESMTP; 24 Nov 2010 02:30:35 -0800
From: Joshua Lock <josh@linux.intel.com>
To: yocto@yoctoproject.org
In-Reply-To: <4CECE001.6050201@mlbassoc.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A302EA40F@shsmsx501.ccr.corp.intel.com>
	<4CECE001.6050201@mlbassoc.com>
Date: Wed, 24 Nov 2010 10:30:29 +0000
Message-ID: <1290594629.2799.0.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Subject: Re: FW: [oe] BitBake parallel parsing testing
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
X-List-Received-Date: Wed, 24 Nov 2010 10:30:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-11-24 at 02:50 -0700, Gary Thomas wrote:
> On 11/24/2010 01:45 AM, Xu, Dongxiao wrote:
> > FYI, bitbake parallel parsing is enabled, which can greatly reduce the file parsing time.
> > There are some data test result in OE's following mails.
> >
> > Bitbake 1.10: 3m2.185s
> > parallel-parsing (BB_NUM_PARSE_THREADS=num_cpu): 1m48.232s parallel-parsing (BB_NUM_PARSE_THREADS=2*num_cpu): 1m1.869s
> 
> To be clear - this is in the Poky main tree?  since what commit?

No, this is an RFC from one of the bitbake developers and currently only
resides in his personal branch of bitbake.

Cheers,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre



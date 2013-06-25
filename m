Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B015CE013E8
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 03:26:22 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 25 Jun 2013 03:26:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,935,1363158000"; d="scan'208";a="359185572"
Received: from unknown (HELO helios.localnet) ([10.252.122.97])
	by orsmga002.jf.intel.com with ESMTP; 25 Jun 2013 03:26:20 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Date: Tue, 25 Jun 2013 11:26:19 +0100
Message-ID: <62373316.pOpgFtACv5@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.3 (Linux/3.8.0-25-generic; KDE/4.10.3; i686; ; )
In-Reply-To: <1577969.2xYx7K97a2@helios>
References: <07EC680C643544CEB3DB605D0478EB01@PAULD>
	<1577969.2xYx7K97a2@helios>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: The simplest possible recipe
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
X-List-Received-Date: Tue, 25 Jun 2013 10:26:24 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 25 June 2013 11:17:47 Paul Eggleton wrote:
> > then the sample compile recipe sets S to ${WORKDIR}. Is that what one does
> > when one doesn't need to have a bunch of versioned subdirectories under
> > ${WORKDIR}? (I'm not sure why one would ever want that, or why that would
> > be the default.)
> 
> If you know you're not going to unpack an archive into a subdirectory, and
> for the single C file you aren't, then S can be set to ${WORKDIR} because
> that's where the C file will be copied to.

Or I should say, not just a C file as in the example but any kind of file that 
isn't being unpacked.

-- 

Paul Eggleton
Intel Open Source Technology Centre


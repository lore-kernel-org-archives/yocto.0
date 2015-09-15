Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0384E00D54; Tue, 15 Sep 2015 01:45:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5033BE00BC6
	for <yocto@yoctoproject.org>; Tue, 15 Sep 2015 01:45:02 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga103.jf.intel.com with ESMTP; 15 Sep 2015 01:45:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.17,534,1437462000"; d="scan'208";a="805422922"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com) ([10.252.2.210])
	by fmsmga002.fm.intel.com with ESMTP; 15 Sep 2015 01:45:01 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Date: Tue, 15 Sep 2015 09:45 +0100
Message-ID: <2359992.oyyONspMKy@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.6-100.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <A240ECF1A90D49B7ACC78379329FE808@PAULD>
References: <A240ECF1A90D49B7ACC78379329FE808@PAULD>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: I hate busybox!
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
X-List-Received-Date: Tue, 15 Sep 2015 08:45:03 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Paul,

On Tuesday 15 September 2015 01:26:20 Paul D. DeRocco wrote:
> My embedded system has enough room in it for full-featured command line
> tools, instead of the wretched busybox. Does the Yocto meta-data include a
> layer that provides such tools? Or does OE? And how would I disable
> busybox in order to use the better tools?

core-image-full-cmdline (and the packagegroup it uses, packagegroup-core-full-
cmdline) should give you the former, and the full tools will in almost all 
cases take precedence simply by being installed by virtue of the alternatives 
system. In order to actually remove busybox though you'd need to break apart 
packagegroup-core-boot (i.e. include its constituent parts separately into 
your image instead of the packagegroup itself).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre


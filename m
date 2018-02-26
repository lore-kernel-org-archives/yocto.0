Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE507E0074C; Mon, 26 Feb 2018 04:02:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58EE8E0074C
	for <yocto@yoctoproject.org>; Mon, 26 Feb 2018 04:02:12 -0800 (PST)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	26 Feb 2018 04:02:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.47,396,1515484800"; d="scan'208";a="34186939"
Received: from mbabyjoh-desk.fi.intel.com (HELO
	mbabyjoh-desk.ger.corp.intel.com) ([10.237.72.84])
	by orsmga001.jf.intel.com with ESMTP; 26 Feb 2018 04:02:11 -0800
Date: Mon, 26 Feb 2018 14:05:08 +0200
From: "Maxin B. John" <maxin.john@intel.com>
To: Stephano Cetola <stephano.cetola@linux.intel.com>
Message-ID: <20180226120507.GE8270@mbabyjoh-desk.ger.corp.intel.com>
References: <dcad044fec2b4e0ab2efbaea4043fe76@MXPA2FGAW.fgremc.it>
	<ddd36ecb-c3cf-e247-64a5-d11e4949f46b@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <ddd36ecb-c3cf-e247-64a5-d11e4949f46b@linux.intel.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: Problem in the building phase - Yocto 2.4.1 for Siemens IoT 2040 (Intel Quark)
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
X-List-Received-Date: Mon, 26 Feb 2018 12:02:13 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi,

On Sat, Feb 24, 2018 at 12:11:56PM -0800, Stephano Cetola wrote:
> On 2/22/18 3:59 AM, Pulizzotto Alessio (COMAU) wrote:
> > Hello,
> >
> > I’m writing you because I have some problems with the building of an
> > 2.4.1 image of the Yocto.
> >
> > I am using a Siemens IoT 2040 hardware witch have an intel quark cpu.
> > 
> > My error is the follow, in the “bitbake name-image”:
> > 
> > “ExpansionError during parsing
> > ***/poky/meta-java/recipies-extended/xmlpull/xmlpull_1.1.3.4c.bb”
> > 
> > And at the end:
> > 
> > “module bb.data has no attribute ‘getVar’”
> > 

Tried building xmlpull for qemux86 with oe-core master branch.

meta-java:
master branch
commit:     fbe0b0eb30d93f5fa2101fb015f20c1dc118b4a6

It builds fine. Could you build with "rocko" branch of meta-java
and see if that fixes this error ?

> I am currently building for a product using Quark + Java running YP
> 2.4.1. Here are the SHAs that are working for me:
> 
> meta-yocto-bsp
> yocto-2.4.1
> c2b641c8a0c4fd71fcb477d788a740c2c26cddce
> 
> meta-intel
> 8.0-rocko-2.4
> d68dda959b5bf6f90aa8e5c2f027be324bb68e14
> 
> meta-java
> master
> 03e35bf64f97980652ac532cca0ea96e730a551c
> 
> Cheers,
> Stephano
>

Best Regards,
Maxin


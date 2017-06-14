Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4D43E00B47; Wed, 14 Jun 2017 02:04:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9833CE00888
	for <yocto@yoctoproject.org>; Wed, 14 Jun 2017 02:04:49 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Jun 2017 02:04:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,340,1493708400"; d="scan'208";a="1160322172"
Received: from mbabyjoh-desk.fi.intel.com (HELO
	mbabyjoh-desk.ger.corp.intel.com) ([10.237.72.84])
	by fmsmga001.fm.intel.com with ESMTP; 14 Jun 2017 02:04:48 -0700
Date: Wed, 14 Jun 2017 12:04:37 +0300
From: "Maxin B. John" <maxin.john@intel.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Message-ID: <20170614090437.GB36175@mbabyjoh-desk.ger.corp.intel.com>
References: <BFC5B361F1B24D4CBD6CB3483A12B103@PAULD>
	<20170614082258.GA36175@mbabyjoh-desk.ger.corp.intel.com>
	<507163139FFF4A1B9F8B22CDB8BDD953@PAULD>
MIME-Version: 1.0
In-Reply-To: <507163139FFF4A1B9F8B22CDB8BDD953@PAULD>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: Image lacks libraries needed by SDK
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
X-List-Received-Date: Wed, 14 Jun 2017 09:04:53 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Wed, Jun 14, 2017 at 01:34:40AM -0700, Paul D. DeRocco wrote:
> > From: Maxin B. John [mailto:maxin.john@intel.com] 
> > 
> > Had a similar experience with respect to the availability of 
> > static libraries in the SDK.
> > 
> > https://bugzilla.yoctoproject.org/show_bug.cgi?id=5347
> > 
> > One way to fix this will be to include required static 
> > libraries in the image
> > before building SDK - eg: for glibc static development libraries:
> > 
> > IMAGE_INSTALL_append = " glibc-staticdev"
> 
> Does that include the .a files in the image or the SDK or both?
>

The corresponding .a files will be present in the image and SDK.

> 
> Ciao,               Paul D. DeRocco
> Paul                mailto:pderocco@ix.netcom.com
Warm Regards,
Maxin


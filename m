Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD321E00816; Mon, 19 Feb 2018 07:15:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B927FE00816
	for <yocto@yoctoproject.org>; Mon, 19 Feb 2018 07:15:38 -0800 (PST)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	19 Feb 2018 07:15:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,535,1511856000"; d="scan'208";a="21316578"
Received: from mbabyjoh-desk.fi.intel.com (HELO
	mbabyjoh-desk.ger.corp.intel.com) ([10.237.72.84])
	by fmsmga002.fm.intel.com with ESMTP; 19 Feb 2018 07:15:36 -0800
Date: Mon, 19 Feb 2018 17:18:19 +0200
From: "Maxin B. John" <maxin.john@intel.com>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20180219151819.GA38294@mbabyjoh-desk.ger.corp.intel.com>
References: <CAALXFYz4Zp4+FTj=VvNVNWOHqnK180YhOBykLEiZ2nTCLF6kig@mail.gmail.com>
	<CAALXFYy7nN1ZahoR_+mCLeD4U7z4zEoiNwv+mzwT8dEf+e-pmg@mail.gmail.com>
	<CAMKF1sqrDFkVB0brWidTvARLpsKGHC6NFCQhP-yF25vtS_WxYA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1sqrDFkVB0brWidTvARLpsKGHC6NFCQhP-yF25vtS_WxYA@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Removing busybox completely from the generated image
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
X-List-Received-Date: Mon, 19 Feb 2018 15:15:39 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi,

On Mon, Feb 19, 2018 at 02:17:38AM -0800, Khem Raj wrote:
> On Mon, Feb 19, 2018 at 12:35 AM, Iván Castell
> <icastell@nayarsystems.com> wrote:
> > I have tried breaking apart packagegroup-core-boot, making a copy in my
> > custom layer, removing the line referencing busybox:
> >
> >     ## VIRTUAL-RUNTIME_login_manager ?= "busybox"

Have you considered "toybox" ? It probably wouldn't work right-away. Still,
toybox was designed to provide a replacement for busybox. It is available
in "meta-oe"

http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-core/toybox/toybox_0.7.5.bb

> > But now bitbake complains with an error message:
> >
<snip>

Hope this helps,
Maxin


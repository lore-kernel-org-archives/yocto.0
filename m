Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86C34E00B43; Sun, 18 Nov 2018 12:47:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.126 listed in list.dnswl.org]
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25D32E00AD8
	for <yocto@yoctoproject.org>; Sun, 18 Nov 2018 12:47:34 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	18 Nov 2018 12:47:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.56,249,1539673200"; d="scan'208";a="105654644"
Received: from htan26-mobl1.gar.corp.intel.com (HELO localhost.localdomain)
	([10.255.168.55])
	by fmsmga002.fm.intel.com with ESMTP; 18 Nov 2018 12:47:31 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 19 Nov 2018 09:47:30 +1300
Message-ID: <41694628.BEkiBNE3Gc@localhost.localdomain>
Organization: Intel Corporation
In-Reply-To: <1542539495.3707.2.camel@gmail.com>
References: <545a7e8a-5ccd-c8b8-6b88-0b6f1723f794@gmail.com>
	<1542539495.3707.2.camel@gmail.com>
MIME-Version: 1.0
Subject: Re: Yocto layers missing thud branches
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
X-List-Received-Date: Sun, 18 Nov 2018 20:47:35 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday, 19 November 2018 12:11:35 AM NZDT Max Krummenacher wrote:
> Am Samstag, den 17.11.2018, 15:50 -0800 schrieb akuster808:
> > Can the maintainers of meta-qt3, meta-qt4, meta-selinux, and meta-cgl
> > please add a "Thud" branch
> > 
> While at it, the following patches declaring thud compatibility are not
> yet applied:
> https://lists.yoctoproject.org/pipermail/yocto/2018-October/042780.html
> https://lists.yoctoproject.org/pipermail/yocto/2018-October/042922.html
> https://lists.yoctoproject.org/pipermail/yocto/2018-October/042923.html

I have just taken care of meta-qt3 and meta-qt4, FWIW.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre




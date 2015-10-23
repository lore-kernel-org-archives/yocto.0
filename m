Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3AC28E00AA8; Fri, 23 Oct 2015 00:56:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15A1EE00A8C
	for <yocto@yoctoproject.org>; Fri, 23 Oct 2015 00:56:04 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 23 Oct 2015 00:56:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,185,1444719600"; d="scan'208";a="817666127"
Received: from scivlik-mobl.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.25.93])
	by fmsmga001.fm.intel.com with ESMTP; 23 Oct 2015 00:56:03 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Smith, Daniel W" <dwsmith@ball.com>
Date: Fri, 23 Oct 2015 08:56:02 +0100
Message-ID: <4727447.DAM9QQiVdc@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.8-100.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <167A17EDB344B047B2D335D8E4C5A2FAA4DE55BB@EX2010-CO-02.AERO.BALL.com>
References: <167A17EDB344B047B2D335D8E4C5A2FAA4DE55BB@EX2010-CO-02.AERO.BALL.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Alternate Terminal
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
X-List-Received-Date: Fri, 23 Oct 2015 07:56:10 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Daniel,

On Thursday 22 October 2015 22:18:12 Smith, Daniel W wrote:
> Does anyone know of an easy way to install xterm, gnome-terminal, or Konsole
> on Yocto.  I need a terminal window that has a -e option to  execute a
> program in the shell, which matchbox-terminal appears to not support.

FYI you can find an xterm recipe in meta-oe: 

  http://layers.openembedded.org/layerindex/branch/master/recipes/?q=xterm

It should be a matter of cloning the meta-openembedded repository, adding the 
meta-oe subdirectory of that to your bblayers.conf and then adding the xterm 
package to your image's IMAGE_INSTALL.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre


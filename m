Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3A3BE00AB6; Mon,  7 Dec 2015 11:50:33 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7D17E0082E
	for <yocto@yoctoproject.org>; Mon,  7 Dec 2015 11:50:29 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 07 Dec 2015 11:50:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,396,1444719600"; d="scan'208";a="855856953"
Received: from schan8-mobl7.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.144.63])
	by fmsmga001.fm.intel.com with ESMTP; 07 Dec 2015 11:50:26 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
Date: Tue, 08 Dec 2015 08:50:23 +1300
Message-ID: <2501407.zVkQ18lSQ3@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.2.6-301.fc23.x86_64; KDE/4.14.14; x86_64; ;
	)
In-Reply-To: <5665C66D.7060305@gmail.com>
References: <CAOsp8o_WfYUB2nBXmGdVTF27RmkjzbvYJrHrW+R-Lv-P8WzS3A@mail.gmail.com>
	<BN3PR0501MB109081CFF721741E6E0189EDBB0C0@BN3PR0501MB1090.namprd05.prod.outlook.com>
	<5665C66D.7060305@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Best practice for files copied directly into sysroot?
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
X-List-Received-Date: Mon, 07 Dec 2015 19:50:34 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Mon, 07 Dec 2015 12:48:29 Trevor Woerner wrote:
> On 12/04/15 09:03, Bryan Evenson wrote:
> > Although I am having issues with the license; I haven't figured out where
> > to put it and what to set LIC_FILES_CHKSUM to in the recipe so that
> > bitbake can find the license.  If anyone has a good answer for that, let
> > me know.
> You could try:
>     LICENSE = "CLOSED"
> 
> then you don't need a checksum line.

This is legitimate of course only when the source is in fact closed (and even 
then, there may be redistribution conditions that you might want to track).

There are several more appropriate ways to solve this issue:

1) The proper way is to point to a file in the fetched/unpacked sources. To do 
this, LIC_FILES_CHKSUM should specify one or more paths relative to ${S} (i.e. 
where the sources are unpacked to) each prefixed by file:// .

2) If there is no file in the sources describing the license, then add one in 
SRC_URI, or point to a common one in ${COMMON_LICENSE_DIR} if appropriate. 
These are then copied into ${WORKDIR} automatically and can be referred to in 
LIC_FILES_CHKSUM from there.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre


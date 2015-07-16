Return-Path: <rich.tollerton@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 778F2E009D7; Thu, 16 Jul 2015 11:20:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [130.164.80.23 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from ni.com (skprod2.natinst.com [130.164.80.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 322E2E009CC
	for <yocto@yoctoproject.org>; Thu, 16 Jul 2015 11:20:27 -0700 (PDT)
Received: from us-aus-mgwout1.amer.corp.natinst.com (nb-snip2-1338.natinst.com
	[130.164.19.135])
	by us-aus-skprod2.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	t6GIKOgL007324; Thu, 16 Jul 2015 13:20:24 -0500
Received: from weregild.amer.corp.natinst.com ([130.164.14.198])
	by us-aus-mgwout1.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2015071613202454-1316086 ;
	Thu, 16 Jul 2015 13:20:24 -0500 
From: Richard Tollerton <rich.tollerton@ni.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>, yocto@yoctoproject.org
In-Reply-To: <55A7F231.8050509@dynamicdevices.co.uk>
References: <cover.1437067107.git.rich.tollerton@ni.com>
	<21d68aa45a210d7ada5c87793ae90edb099e2f04.1437067107.git.rich.tollerton@ni.com>
	<55A7F231.8050509@dynamicdevices.co.uk>
User-Agent: Notmuch/0.20.1 (http://notmuchmail.org) Emacs/24.5.2
	(x86_64-unknown-linux-gnu)
Date: Thu, 16 Jul 2015 13:20:24 -0500
Message-ID: <87lhegvuaf.fsf@weregild.amer.corp.natinst.com>
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on US-AUS-MGWOut1/AUS/H/NIC(Release
	8.5.3FP6 HF1218|December 12, 2014) at 07/16/2015 01:20:24 PM,
	Serialize by Router on US-AUS-MGWOut1/AUS/H/NIC(Release 8.5.3FP6
	HF1218|December 12, 2014) at 07/16/2015 01:20:24 PM,
	Serialize complete at 07/16/2015 01:20:24 PM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2015-07-16_06:, , signatures=0
Subject: Re: [meta-mono] [PATCH 4/4] mono-xsp-3.x.inc: use autogen.sh
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
X-List-Received-Date: Thu, 16 Jul 2015 18:20:32 -0000
Content-Type: text/plain

Alex J Lennon <ajlennon@dynamicdevices.co.uk> writes:

> Many thanks for the updates, fixes, and cleanups Richard. Your
> patch-sets for mono-xsp, fsharp, mono-basic are applied.
>
> In future can you remove any trailing newlines from your patches
> please?

You're welcome! Yes, I will get those removed in future pull requests.


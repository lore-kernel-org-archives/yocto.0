Return-Path: <rich.tollerton@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2030E009E5; Fri, 17 Jul 2015 07:43:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [130.164.80.24 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from ni.com (skprod3.natinst.com [130.164.80.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B632E009C3
	for <yocto@yoctoproject.org>; Fri, 17 Jul 2015 07:43:47 -0700 (PDT)
Received: from us-aus-mgwout1.amer.corp.natinst.com (nb-snip2-1338.natinst.com
	[130.164.19.135])
	by us-aus-skprod3.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	t6HEhi6g029966; Fri, 17 Jul 2015 09:43:44 -0500
Received: from weregild.amer.corp.natinst.com ([130.164.14.198])
	by us-aus-mgwout1.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2015071709434440-1376474 ;
	Fri, 17 Jul 2015 09:43:44 -0500 
From: Richard Tollerton <rich.tollerton@ni.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>, yocto@yoctoproject.org
In-Reply-To: <55A912F7.7090501@dynamicdevices.co.uk>
References: <cover.1437083171.git.rich.tollerton@ni.com>
	<55A8C8B9.8020700@dynamicdevices.co.uk>
	<55A912F7.7090501@dynamicdevices.co.uk>
User-Agent: Notmuch/0.20.1 (http://notmuchmail.org) Emacs/24.5.2
	(x86_64-unknown-linux-gnu)
Date: Fri, 17 Jul 2015 09:43:44 -0500
Message-ID: <877fpyyhcv.fsf@weregild.amer.corp.natinst.com>
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on US-AUS-MGWOut1/AUS/H/NIC(Release
	8.5.3FP6 HF1218|December 12, 2014) at 07/17/2015 09:43:44 AM,
	Serialize by Router on US-AUS-MGWOut1/AUS/H/NIC(Release 8.5.3FP6
	HF1218|December 12, 2014) at 07/17/2015 09:43:44 AM,
	Serialize complete at 07/17/2015 09:43:44 AM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2015-07-17_07:, , signatures=0
Subject: Re: [meta-mono] [PATCH 00/11] Refactor common mono build bits into mono.bbclass
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
X-List-Received-Date: Fri, 17 Jul 2015 14:43:52 -0000
Content-Type: text/plain

Alex J Lennon <ajlennon@dynamicdevices.co.uk> writes:

> Richard,
>
> I'm having some trouble with builds here since that latest patch.
>
> Can you tell me, what version of Mono did you test against, and also did
> you have Mono installed out of tree on the host system?
> (I've had trouble in the past with the host mono being picked up
> incorrectly)

Sorry for the inconvenience :(

I've been building mono 4.0.2.4 with these changes. I tested the build
both on archlinux, with mono installed on the host, and inside an ubuntu
12.04 chroot, with mono not installed.


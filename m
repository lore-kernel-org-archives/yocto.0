Return-Path: <rich.tollerton@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7776E009C5; Mon, 20 Jul 2015 11:11:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [130.164.80.24 listed in list.dnswl.org]
Received: from ni.com (skprod3.natinst.com [130.164.80.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86963E008D4
	for <yocto@yoctoproject.org>; Mon, 20 Jul 2015 11:11:16 -0700 (PDT)
Received: from us-aus-mgwout1.amer.corp.natinst.com (nb-chan1-1338.natinst.com
	[130.164.19.134])
	by us-aus-skprod3.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	t6KIBDqh010384; Mon, 20 Jul 2015 13:11:13 -0500
Received: from weregild.amer.corp.natinst.com ([130.164.14.198])
	by us-aus-mgwout1.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2015072013111386-59215 ;
	Mon, 20 Jul 2015 13:11:13 -0500 
From: Richard Tollerton <rich.tollerton@ni.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>, yocto@yoctoproject.org
In-Reply-To: <55AA1C97.10704@dynamicdevices.co.uk>
References: <cover.1437151912.git.rich.tollerton@ni.com>
	<55A93AAF.7010601@dynamicdevices.co.uk>
	<87y4iewsku.fsf@weregild.amer.corp.natinst.com>
	<55A94D03.207@dynamicdevices.co.uk>
	<55AA1C97.10704@dynamicdevices.co.uk>
User-Agent: Notmuch/0.20.2 (http://notmuchmail.org) Emacs/24.5.2
	(x86_64-unknown-linux-gnu)
Date: Mon, 20 Jul 2015 13:11:14 -0500
Message-ID: <878uaar96l.fsf@weregild.amer.corp.natinst.com>
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on US-AUS-MGWOut1/AUS/H/NIC(Release
	8.5.3FP6 HF1218|December 12, 2014) at 07/20/2015 01:11:13 PM,
	Serialize by Router on US-AUS-MGWOut1/AUS/H/NIC(Release 8.5.3FP6
	HF1218|December 12, 2014) at 07/20/2015 01:11:13 PM,
	Serialize complete at 07/20/2015 01:11:13 PM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2015-07-20_03:, , signatures=0
Subject: Re: [meta-mono] [RFC] [PATCH 0/1] Force MONO_CFG_DIR
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
X-List-Received-Date: Mon, 20 Jul 2015 18:11:22 -0000
Content-Type: text/plain

Alex J Lennon <ajlennon@dynamicdevices.co.uk> writes:

> Out of image-full-mono these have problems without gmcs present,
>
> Looks like we need a solution for these three to use mcs instead of gmcs,
>
> mono-xsp_3.0.11.bb

I guess I'm the least concerned about this because of the fixes applied
in git. They still haven't cut a release yet so I'd guess we should just
create a mono-xsp_git.bb.

> dbus-sharp_0.8.0.bb

We might be able to work around this by setting $GMCS, judging from
configure.ac.

> mono-addins_1.1.bb

We might be able to work around this by setting $MCS, judging from
configure.ac.

Beyond that, I suppose the most OE-y way of solving this would be to
promote your script to a full-blown package that PROVIDES gmcs, such
that mono3 PROVIDES gmcs and mcs, but mono4 only PROVIDES mcs. Or
something like that.

> Cheers,
>
> Alex


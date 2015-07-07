Return-Path: <rich.tollerton@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6094BE00960; Tue,  7 Jul 2015 13:01:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [130.164.80.24 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from ni.com (skprod3.natinst.com [130.164.80.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24105E006EE
	for <yocto@yoctoproject.org>; Tue,  7 Jul 2015 13:01:52 -0700 (PDT)
Received: from us-aus-mgwout2.amer.corp.natinst.com (nb-snip2-1338.natinst.com
	[130.164.19.135])
	by us-aus-skprod3.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	t67K1lcK016803; Tue, 7 Jul 2015 15:01:47 -0500
Received: from weregild.amer.corp.natinst.com ([130.164.14.198])
	by us-aus-mgwout2.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2015070715014730-736354 ;
	Tue, 7 Jul 2015 15:01:47 -0500 
From: Richard Tollerton <rich.tollerton@ni.com>
To: Chris Morgan <chmorgan@gmail.com>,
	Alex J Lennon <ajlennon@dynamicdevices.co.uk>
In-Reply-To: <CAAPegz07fJ=rL2619-WZW1CUA4WNn6CEO8CT73B8GxESJYSX8Q@mail.gmail.com>
References: <CAAPegz1a+Jf=DaTNnGDnGUrwZiEGCfc7f4F2tPpNvFmF3=M6Jg@mail.gmail.com>
	<558AACF7.2090107@dynamicdevices.co.uk>
	<CAAPegz07fJ=rL2619-WZW1CUA4WNn6CEO8CT73B8GxESJYSX8Q@mail.gmail.com>
User-Agent: Notmuch/0.20.1 (http://notmuchmail.org) Emacs/24.5.2
	(x86_64-unknown-linux-gnu)
Date: Tue, 07 Jul 2015 15:01:47 -0500
Message-ID: <87d203ybx0.fsf@weregild.amer.corp.natinst.com>
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on US-AUS-MGWOut2/AUS/H/NIC(Release
	8.5.3FP6 HF1218|December 12, 2014) at 07/07/2015 03:01:47 PM,
	Serialize by Router on US-AUS-MGWOut2/AUS/H/NIC(Release 8.5.3FP6
	HF1218|December 12, 2014) at 07/07/2015 03:01:47 PM,
	Serialize complete at 07/07/2015 03:01:47 PM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2015-07-07_07:, , signatures=0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-mono: Issue building 4.0.2.4
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
X-List-Received-Date: Tue, 07 Jul 2015 20:01:56 -0000
Content-Type: text/plain

Chris Morgan <chmorgan@gmail.com> writes:

> /home/cmorgan/projects/yocto-cybex/build/tmp/work/x86_64-linux/mono-native/4.0.1.34-r0/image/home/cmorgan/projects/yocto-cybex/build/tmp/sysroots/x86_64-linux/usr/lib/mono/xbuild/Microsoft/VisualStudio/v11.0/WebApplications
> | /usr/bin/install: cannot create regular file
> '/home/cmorgan/projects/yocto-cybex/build/tmp/work/x86_64-linux/mono-native/4.0.1.34-r0/image/home/cmorgan/projects/yocto-cybex/build/tmp/sysroots/x86_64-linux/usr/lib/mono/xbuild/Microsoft/VisualStudio/v11.0/WebApplications/Microsoft.WebApplication.targets':
> File exists

Did you try disabling PARALLEL_MAKE? I found a flat-out race at -j6:

/usr/bin/install: cannot change permissions of
build/tmp-glibc/work/x86_64-linux/mono-native/4.0.2.4-r0/image/build/tmp-glibc/sysroots/x86_64-linux/usr/lib/mono/xbuild-frameworks/.NETFramework/v4.5/RedistList/FrameworkList.xml: No such file or
directory

... and FrameworkList.xml nevertheless existed once the failed build completed.


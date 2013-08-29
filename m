Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6286E01570
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 20:01:24 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 28 Aug 2013 20:01:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,980,1367996400"; d="scan'208";a="393706653"
Received: from unknown (HELO [10.255.15.14]) ([10.255.15.14])
	by fmsmga002.fm.intel.com with ESMTP; 28 Aug 2013 20:01:16 -0700
Message-ID: <1377745276.15376.100.camel@dvhart-mobl4.amr.corp.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Date: Wed, 28 Aug 2013 20:01:16 -0700
In-Reply-To: <B67A26A2-33DB-47F5-9EC9-1A56C79F6896@gmail.com>
References: <EE3AC7E0-3693-482F-94DB-278D1FD829D5@gmail.com>
	<521E38D9.8060102@windriver.com>
	<32CFCC88-EA28-4EFB-9F43-586780CAC54F@gmail.com>
	<521E3C60.6060309@windriver.com>
	<B67A26A2-33DB-47F5-9EC9-1A56C79F6896@gmail.com>
Organization: Intel
X-Mailer: Evolution 3.8.5 (3.8.5-2.fc19) 
Mime-Version: 1.0
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: How to work with linux-yocto kernel
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
X-List-Received-Date: Thu, 29 Aug 2013 03:01:27 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2013-08-28 at 22:22 +0400, Elvis Dowson wrote:
> On Aug 28, 2013, at 10:07 PM, Bruce Ashfield <bruce.ashfield@windriver.com> wrote:
> 
> > On 13-08-28 02:05 PM, Elvis Dowson wrote:
> >> Hi Bruce,
> >> 
> >> On Aug 28, 2013, at 9:52 PM, Bruce Ashfield <bruce.ashfield@windriver.com> wrote:
> >> 
> >>> There were some old bugs which caused the wrong board description to
> >>> be picked up, the seems similar.
> >>> 
> >>> But without seeing your exact changes, as they sit in the tree, I
> >>> can't be sure.
> >>> 
> >>> Did you also update the meta and machine branch SRCREVs ?
> >> 
> >> No, I didn't.
> >> 
> >> I've just done this now. It's only after you mentioned it
> >> that I noticed the SRCREV_meta variable in linux-yocto_3.8.bb
> >> 
> >> While obvious, once stated, it's better to explicitly document
> >> this step in the kernel development guide, so that people remember to
> >> do it:
> >> 
> >> http://www.yoctoproject.org/docs/current/kernel-dev/kernel-dev.html
> > 
> > If you have a moment, drop a quick bugzilla and we can make sure
> > that happens.
> 
> I've just done this now.
> 
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=5065
> 

Thank you for taking the time to file the bug. This is crucial feedback
and the only way for the documentation to improve is for people like you
to review and provide feedback. Thank you!

Please follow the bug as we may have questions for you to make sure we
address the issue.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel




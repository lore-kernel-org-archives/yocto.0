Return-Path: <scott.a.garman@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 177A7E0030B
	for <yocto@yoctoproject.org>; Tue,  1 May 2012 08:32:04 -0700 (PDT)
Received: from mail-pb0-f52.google.com ([209.85.160.52])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 01 May 2012 08:32:03 -0700
Received: by pbbro8 with SMTP id ro8so10213549pbb.25
	for <yocto@yoctoproject.org>; Tue, 01 May 2012 08:32:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:content-type:content-transfer-encoding:x-gm-message-state;
	bh=Vu7ZqIokqeBQATGHABgghm4DE7SEz+UFBdzT1HXPa8U=;
	b=OFQvHu0rfNkSO6LNVCisgcah557rHA45FJFdpeB7BwxgTL1NktxqM4rZF7TN2n7e/8
	mB4B2WveiE0Mov+DVNriNotRDCy9lCcRZShtotN8w+AsCfr/4cs3G7DnJp5NWDemF3F8
	bCwygxJjAlwAuQ19BMkf/wprQtPBo+zHRbGi1s3s+Bu7hk/f89JmzrwH+AwfJvcVrYC1
	K8onlozF8LzbdM6h1yPdQxHW0ShIUgsJmepuPsOURu2wzPWeJB2VmQWJR386steSbM29
	c8u7YyR4fahQ/70UvF8joPZK4U+7bDZJ0AzNQ1fkYrwwTug4ThMjTYYyLUBoAkNV7rUf
	Q+5w==
Received: by 10.68.218.7 with SMTP id pc7mr51475674pbc.4.1335886323001;
	Tue, 01 May 2012 08:32:03 -0700 (PDT)
Received: from [192.168.1.12] (c-76-105-137-48.hsd1.or.comcast.net.
	[76.105.137.48])
	by mx.google.com with ESMTPS id wf6sm19476122pbc.8.2012.05.01.08.32.00
	(version=SSLv3 cipher=OTHER); Tue, 01 May 2012 08:32:01 -0700 (PDT)
Message-ID: <4FA001F0.7010705@intel.com>
Date: Tue, 01 May 2012 08:32:00 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQnx8RlS6bKwaOwdP07p4uPm5s8WYmkqt/ELS1Mp9QRRFzBH0vtwfPyBk+MjuUmGxS9Zjbin
Cc: Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Yocto Project 1.2.1 release plan.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 01 May 2012 15:32:04 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi all,

I'm going to be the maintainer of the Yocto Project 1.2.1 release, and 
wanted to let everyone know some details about the current status of 
this release.

Richard has already started pulling in some patches from master into the 
denzil-next branch on oe-core:

http://git.openembedded.org/openembedded-core/log/?h=denzil-next

I'll be merging these on an ongoing basis into my sgarman/denzil-next 
branch in the poky-contrib repo:

http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=sgarman/denzil-next

The primary focus for getting patches into 1.2.1 is bugfixing, security 
updates, and making sure the recently released Ubuntu, Fedora, and 
OpenSUSE distros work with this release. All other kinds of patches 
(e.g, performance) will have a very high bar to reach for them to be 
accepted (i.e, it will have to be very clear they pose little risk to 
introducing more bugs or stability issues). And of course anything that 
breaks APIs or compatibility is off the table.

It would help me out greatly if in your pull requests you could mention 
when you want your commit to also be included in 1.2.1.

Our intention is currently to include bugfixes for these bugs in the 
eventual release of 1.2.1:

https://bugzilla.yoctoproject.org/buglist.cgi?query_format=advanced&list_id=4572&bug_status=NEW&bug_status=ACCEPTED&bug_status=REOPENED&bug_status=NEEDINFO&bug_status=WaitForUpstream&bug_status=RESOLVED&bug_status=VERIFIED&bug_status=CLOSED&target_milestone=1.2.1

This list is not set in stone and may change at any time. My very rough 
guesstimate is that we will start testing release candidates for 1.2.1 
in about 6-8 weeks.

Thanks, and I look forward to helping to ensure that 1.2.1 is a solid 
and well-tested release!

Scott

IRC: zenlinux

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center


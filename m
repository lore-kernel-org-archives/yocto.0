Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32516E0096A; Tue,  9 Jun 2015 02:52:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E957E00496
	for <yocto@yoctoproject.org>; Tue,  9 Jun 2015 02:52:10 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 09 Jun 2015 02:52:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,579,1427785200"; d="scan'208";a="740005678"
Received: from alefebvr-mobl.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.29.139])
	by fmsmga002.fm.intel.com with ESMTP; 09 Jun 2015 02:52:10 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: George Nita <george.nita@enea.com>
Date: Tue, 09 Jun 2015 10:52:09 +0100
Message-ID: <51210975.tdah2FpBI6@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.7 (Linux/4.0.4-202.fc21.x86_64; KDE/4.14.7; x86_64; ; )
In-Reply-To: <5576B633.5090201@enea.com>
References: <555D9B06.3050603@enea.com> <555EF85D.5080209@enea.com>
	<5576B633.5090201@enea.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: smart 1.4.1 unsolved problem
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
X-List-Received-Date: Tue, 09 Jun 2015 09:52:15 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 09 June 2015 12:47:31 George Nita wrote:
> On 05/22/2015 12:35 PM, George Nita wrote:
> > On 05/22/2015 11:43 AM, Paul Eggleton wrote:
> >> Hi George,
> >> 
> >> On Thursday 21 May 2015 11:44:54 George Nita wrote:
> >>> I've reproduced the https://bugs.launchpad.net/smart/+bug/1238492 issue
> >>> 
> >>> branch: dizzy
> >>> target: p2041rdb
> >>> 
> >>> Did any one hit this too?
> >> 
> >> Did you enable runtime package management (i.e., is
> >> "package-management" in
> >> IMAGE_FEATURES (or indirectly via EXTRA_IMAGE_FEATURES)?) If you're
> >> not sure,
> >> you can use bitbake -e to check.
> >> 
> >> If it isn't enabled, that would explain the behaviour because
> >> smart/rpm think
> >> that no packages are installed because there is no package database in
> >> the
> >> image.
> >> 
> >> Cheers,
> >> Paul
> > 
> > Hello Paul,
> > 
> > IMAGE_FEATURES="debug-tweaks ssh-server-dropbear package-management"
> > 
> > 
> > When committing the computed changeset smart attempts to install
> > packages that are in the dependency list but are already installed, and
> > fails because of it:
> > 
> > root@p2041rdb:~# smart install -y bc
> > Loading cache...
> > Updating cache...               ########################################
> > [100%]
> > 
> > Computing transaction...
> > 
> > Installing packages (7):
> >    bc-1.06-r2.0@ppce500mc
> >    busybox-1.22.1-r32.0@ppce500mc
> >    busybox-syslog-1.22.1-r32.0@ppce500mc
> >    busybox-udhcpc-1.22.1-r32.0@ppce500mc
> >    libc6-2.20-r0.0@ppce500mc
> >    update-alternatives-opkg-0.1.8+git0+eae0d8fa44-r0.0@ppce500mc
> >    update-rc.d-0.7-r5.0@all
> > 
> > 2.2MB of package files are needed. 4.4MB will be used.
> > 
> > Fetching packages...
> > ->
> > http://172.21.3.25/.../update-alternatives-opkg-0.1.8+git0+eae0d8fa44-r0.0
> > .ppce500mc.rpm
> > 
> > update-alternatives-opkg-0.1... ########################################
> > [ 14%]
> > -> http://.../rpm/all/update-rc.d-0.7-r5.0.all.rpm
> > ->
> > http://172.21.3.25/~geni/rpm/.../busybox-udhcpc-1.22.1-r32.0.ppce500mc.rpm
> > busybox-udhcpc-1.22.1-r32.0.p.. ########################################
> > [ 28%]
> > -> http://.../rpm/ppce500mc/bc-1.06-r2.0.ppce500mc.rpm
> > bc-1.06-r2.0.ppce500mc.rpm      ########################################
> > [ 42%]
> > -> http://.../rpm/.../busybox-syslog-1.22.1-r32.0.ppce500mc.rpm
> > busybox-syslog-1.22.1-r32.0.p.. ########################################
> > [ 57%]
> > update-rc.d-0.7-r5.0.all.rpm    ########################################
> > [ 71%]
> > -> http://.../rpm/ppce500mc/busybox-1.22.1-r32.0.ppce500mc.rpm
> > busybox-1.22.1-r32.0.ppce500m.. ########################################
> > [ 85%]
> > -> http://.../rpm/ppce500mc/libc6-2.20-r0.0.ppce500mc.rpm
> > libc6-2.20-r0.0.ppce500mc.rpm   ########################################
> > [100%]
> > 
> > 
> > 
> > Committing transaction...
> > Preparing...                    ########################################
> > [  0%]
> > error: package
> > update-alternatives-opkg-0.1.8+git0+eae0d8fa44-r0.0.ppce500mc is already
> > installed
> > error: package busybox-1.22.1-r32.0.ppce500mc is already installed
> > error: package update-rc.d-0.7-r5.0.all is already installed
> > ...
> > 
> > 
> > This seems consistent with the reported issue
> > https://bugs.launchpad.net/smart/+bug/1238492
> > 
> 
> Sorry, my error: I've removed the rpm-sys type channel, the one hosting
> installed packages. After recreating the rpm-sys type channel everything
> worked as expected.

Ah yes, that would do it... glad you managed to resolve the issue, I'll 
remember to ask about that in future :)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre


Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A343E00BF5; Wed,  9 Mar 2016 14:51:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB58FE00AAF
	for <yocto@yoctoproject.org>; Wed,  9 Mar 2016 14:51:44 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u29Mmt3i026406; Wed, 9 Mar 2016 22:51:39 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id M26J9FSq1pUz; Wed,  9 Mar 2016 22:51:39 +0000 (GMT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u29MpYMc026481
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Wed, 9 Mar 2016 22:51:35 GMT
Message-ID: <1457563893.2804.195.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Martin Jansa <martin.jansa@gmail.com>, "Burton, Ross"
	<ross.burton@intel.com>, openembedded-core@lists.openembedded.org
Date: Wed, 09 Mar 2016 22:51:33 +0000
In-Reply-To: <20160309225058.GM2542@jama>
References: <18448427.V3ACvxT67R@rjs-zotac.streifs.net>
	<CAJTo0La2CZAKw0Cd4_NpPLt=qXy3x3Arv36huhUMmCH3tV14YA@mail.gmail.com>
	<20160309225058.GM2542@jama>
X-Mailer: Evolution 3.16.5-1ubuntu3.1 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Rudolf J Streif <rudolf.streif@gmail.com>
Subject: Re: [OE-core] Wrong sstate signatures for cross toolchain Was: Building gdb-7.10 for arm with master
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
X-List-Received-Date: Wed, 09 Mar 2016 22:51:49 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2016-03-09 at 23:50 +0100, Martin Jansa wrote:
> On Sat, Mar 05, 2016 at 09:40:48PM +0000, Burton, Ross wrote:
> > On 5 March 2016 at 21:19, Rudolf J Streif <rudolf.streif@gmail.com>
> > wrote:
> > 
> > > compile fails with the following error message:
> > > 
> > > > make[2]: *** No rule to make target
> > > > '../readline/libreadline.a', needed
> > > by 'gdb'.  Stop.
> > > > make[2]: *** Waiting for unfinished jobs....
> > > 
> > > The reason seems to be a broken path to the built-in readline in
> > > the
> > > makefile as the default configuration is
> > > --without-system-readline. Enabling
> > > 
> > > PACKAGECONFIG_append_pn-dbg = " readline"
> 
> See http://patchwork.openembedded.org/patch/116843/ discussion, the
> patch from Ross mentioned bellow fixes it better and is already
> merged
> in master.
> 
> > The default is with system readline...
> > 
> > gdb-common.inc:PACKAGECONFIG ??= "readline"
> 
> BTW: this is causing gdb-cross-* to depend on target readline, which
> may
> have different signatures for different MACHINEs with the same arch.
> 
> E.g. after adding qemuarm7 MACHINE, you can easily get gdb-cross-arm
> being rebuilt/extracted-from-sstate after each MACHINE change.
> 
> I'm not sure why selftest didn't catch this, but it can be seen with:
> openembedded-core/scripts/sstate-diff-machines.sh --machines="qemuarm
> qemuarm7" --targets=gdb-cross-arm --tmpdir=tmp-glibc

Something has regressed. Do you know when this last passed? Looks like
we need to add some extra tests to selftest and get this fixed.

Sadly I'm drowning in problems to fix at the moment :(

Cheers,

Richard




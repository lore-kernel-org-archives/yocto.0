Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7DC7EE00CFC; Wed, 28 Sep 2016 08:15:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6638DE00B52
	for <yocto@yoctoproject.org>; Wed, 28 Sep 2016 08:15:26 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u8SFFLaP002783; Wed, 28 Sep 2016 16:15:21 +0100
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id Jft9IEPo0uNE; Wed, 28 Sep 2016 16:15:21 +0100 (BST)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u8SFFJOi002780
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Wed, 28 Sep 2016 16:15:20 +0100
Message-ID: <1475075719.30475.73.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Ioan-Adrian Ratiu <adi@adirat.com>, Juro Bystricky
	<juro.bystricky@intel.com>, yocto@yoctoproject.org
Date: Wed, 28 Sep 2016 16:15:19 +0100
In-Reply-To: <87r3845dbm.fsf@adirat.com>
References: <1471716241-7010-1-git-send-email-juro.bystricky@intel.com>
	<87r3845dbm.fsf@adirat.com>
X-Mailer: Evolution 3.18.5.2-0ubuntu3 
Mime-Version: 1.0
Subject: Re: [meta-mingw][PATCH 0/7] Updates for krogoth/master
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
X-List-Received-Date: Wed, 28 Sep 2016 15:15:28 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2016-09-28 at 17:06 +0300, Ioan-Adrian Ratiu wrote:
> On Sat, 20 Aug 2016, Juro Bystricky <juro.bystricky@intel.com> wrote:
> > 
> > Krogoth recipes fail to cross-compile for Windows using meta-mingw
> > layer.
> > In particular, the following should/used to work (jethro with meta-
> > mingw layer):
> > 
> > SDKMACHINE="i686-mingw32"
> > MACHINE="qemux86"
> > TCLIBC="baremetal"
> > bitbake gcc-cross-canadian-i586
> > 
> > SDKMACHINE="i686-mingw32"
> > MACHINE="qemux86"
> > bitbake meta-toolchain
> > 
> > This patchset updates meta-mingw layer so the above work for
> > krogoth as well.
> > There is no "krogoth" branch for meta-mingw, these patches should
> > go there once the
> > branch exists.
> > FWIW, I tested these patches with the current poky master as well,
> > and succeed in cross-compiling
> > of the most common recipes (for both SDKMACHINE=i686-mingw32 and
> > SDKMACHINE=x86_64-mingw32)
> > such as:
> >     bitbake gcc-cross-canadian-i586
> >     bitbake gdb-cross-canadian-i586
> >     bitbake meta-toolchain
> >     bitbake core-image-minimal -c populate_sdk
> > 
> > [YOCTO#10143]
> Ping? Any info when this series will be integrated?

I'd tried multiple times to untangle which set of patches this needed
to be applied on top of (several of Mark Hatle's). I think I've finally
figured it out and have pushed things.

Cheers,

Richard


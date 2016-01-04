Return-Path: <clemens.lang@bmw-carit.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23047E00CF8; Mon,  4 Jan 2016 01:01:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [62.245.222.98 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 155 seconds by postgrey-1.32 at yocto-www;
	Mon, 04 Jan 2016 01:01:00 PST
Received: from mail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F338CE0088C
	for <yocto@yoctoproject.org>; Mon,  4 Jan 2016 01:01:00 -0800 (PST)
Received: from exchange2010.bmw-carit.intra ([192.168.100.28]:45776
	helo=mail.bmw-carit.de)
	by mail.bmw-carit.de with esmtps (TLSv1:AES256-SHA:256)
	(Exim 4.82_1-5b7a7c0-XX) (envelope-from <Clemens.Lang@bmw-carit.de>)
	id 1aG0y6-0006YE-1e; Mon, 04 Jan 2016 09:58:22 +0100
Received: from localhost (172.20.20.163) by Exchange2010.bmw-carit.intra
	(192.168.100.28) with Microsoft SMTP Server (TLS) id 14.3.123.3;
	Mon, 4 Jan 2016 09:58:21 +0100
X-CTCH-RefID: str=0001.0A0C0202.568A342E.017A, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0
Date: Mon, 4 Jan 2016 09:58:21 +0100
From: Clemens Lang <clemens.lang@bmw-carit.de>
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <20160104085821.GB4807@ulm-bmuc496424.bmw-carit.de>
References: <CAAfyv378CR0-RFgLUp7V7HjuzdgEAjXVT2_nFTUvGCbRa2i76A@mail.gmail.com>
	<CAJTo0Lbx7BWsWQiYqsRgbjStZh9sN7-WOFacJTfvG9GeEfhxnA@mail.gmail.com>
	<3848CC51-54FB-4AA9-A548-95229C186560@binarylemon.com>
	<CAJTo0Lb9PkqWxb6rDGv=TvJsi4b0F3UPzH-qmTPQ8-KtqFOMKA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJTo0Lb9PkqWxb6rDGv=TvJsi4b0F3UPzH-qmTPQ8-KtqFOMKA@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Originating-IP: [172.20.20.163]
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: building on os x
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
X-List-Received-Date: Mon, 04 Jan 2016 09:01:03 -0000
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Mon, Dec 21, 2015 at 11:24:52AM +0000, Burton, Ross wrote:
> Well with El Capitan's improved security apparently crippling
> LD_PRELOAD (so I hear, unverified currently), Pseudo won't work, which
> means an alternative will need to be researched and implemented.

El Capitan has "System Integrity Protection", which is a flag on certain
files that now no longer can be changed, even with root privileges.
Pretty much all binaries in /usr/bin and /bin have this flag set, so it
does affect common things like the shell and compilers. The kernel
strips any variables affecting the loader (including
DYLD_INSERT_LIBRARIES, OS X' equivalent to LD_PRELOAD) when executables
with the SIP flag are started. So yes, this effectively kills library
preloading on OS X for anything but your own binaries.

I implemented a workaround in MacPorts, where we also use library
preloading for sanity checks that works by copying affected executables
(thus stripping the flag) and then running the copy instead. Of course,
this requires hooking execve(2) and posix_spawn(2), which I don't think
pseudo does at the moment.

The commit doing most of the grunt work is at
  http://trac.macports.org/changeset/141420
if somebody wants to give this a shot.


HTH,
Clemens
-- 
Clemens Lang • Development Specialist
BMW Car IT GmbH • Lise-Meitner-Str. 14 • 89081 Ulm • http://bmw-carit.com
-------------------------------------------------------------------------
BMW Car IT GmbH
Geschäftsführer: Michael Würtenberger und Reinhard Stolle
Sitz und Registergericht: München HRB 134810
-------------------------------------------------------------------------


Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 654AAE014DF
	for <yocto@yoctoproject.org>; Mon,  8 Apr 2013 05:47:37 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 08 Apr 2013 05:47:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,431,1363158000"; d="scan'208";a="283050433"
Received: from unknown (HELO helios.localnet) ([10.255.13.125])
	by azsmga001.ch.intel.com with ESMTP; 08 Apr 2013 05:47:35 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>, yocto@yoctoproject.org
Date: Mon, 08 Apr 2013 13:47:34 +0100
Message-ID: <13657913.npgBCsoM95@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.5.0-26-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <5162B84A.2020707@mlbassoc.com>
References: <5162A418.4070204@mlbassoc.com> <5162B84A.2020707@mlbassoc.com>
MIME-Version: 1.0
Subject: Re: GDB problems
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
X-List-Received-Date: Mon, 08 Apr 2013 12:47:37 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 08 April 2013 06:30:02 Gary Thomas wrote:
> On 2013-04-08 05:03, Gary Thomas wrote:
> > I'm trying to run GDB to debug code on my target.  Whenever I start
> > 
> > it up, I get this warning:
> >    warning: Unable to find libthread_db matching inferior's thread
> >    library, thread debugging will not be available.> 
> > and indeed, no thread debug commands will work.
> > 
> > I've found that the library /usr/lib/libthread_db.so is not being
> > installed in the rootfs.  However, just adding this library isn't
> > enough.  The file /lib/libpthread-2.60.so has been stripped on the
> > target and this also breaks GDB.  Installing a non-stripped version
> > of this library lets GDB do thread debugging.
> > 
> > Both of these libraries come from the eglibc package.  How can I
> > 
> > adjust that recipe to:
> >    * Install libthread_db.so
> >    * Avoid stripping libpthread-2.16.so

Does installing eglibc-dbg help with this? (Assuming you don't have this 
installed already.)

> > It looks like the libthread_db.so file(s) should be installed via
> > the 'eglibc-thread-db' package, but I can't find this package anywhere
> > on my system.
> 
> It's not clear to me why, but the files labelled as 'eglibc-thread-db' in
> the eglibc recipe end up in the 'libthread-db1' package, so that mystery
> is solved.

That is debian library package renaming (debian.bbclass).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre


Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF051E002A7
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2013 05:21:34 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 25 Nov 2013 05:17:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,768,1378882800"; d="scan'208";a="441256885"
Received: from akagikob-mobl.ger.corp.intel.com (HELO helios.localnet)
	([10.252.121.166])
	by orsmga002.jf.intel.com with ESMTP; 25 Nov 2013 05:21:30 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>,
	Todd Stellanova <tstellanova@gmail.com>
Date: Mon, 25 Nov 2013 13:21:29 +0000
Message-ID: <2925583.ItqHBfeJuJ@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CAP71Wjwim0JxpX01Zw+EXknG1cLC0xqVcf8ZwK=2=i2Bfswegg@mail.gmail.com>
References: <CACRzEudEBj6ZfdTyzCtBWCorDdPgPHHpWovbR5VJB5GuRVu8dA@mail.gmail.com>
	<CACRzEue6532CCMbAo=a43Hb1ycPmaTg60LfOH273Y4CW93kemQ@mail.gmail.com>
	<CAP71Wjwim0JxpX01Zw+EXknG1cLC0xqVcf8ZwK=2=i2Bfswegg@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: unbootable image produced with PACKAGE_CLASSES ?= "package_ipk", /etc missing
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
X-List-Received-Date: Mon, 25 Nov 2013 13:21:35 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Nicolas / Todd,

On Monday 25 November 2013 11:31:42 Nicolas Dechesne wrote:
> On Sun, Nov 24, 2013 at 3:51 AM, Todd Stellanova
> <tstellanova@gmail.com>wrote:
> > It appears that copying the files to the ext3 / sdcard image is failing in
> > *populate-extfs.sh*
> > I see a series of these errors:
> > 
> > *copy_file: Could not allocate block in ext2 filesystem*
> > 
> > Any idea what might cause this?  I've verified that the initial .tar
> > archive and the bz2 contain the right files.
> 
> can you try to create a new <build> folder (do not remove the current one
> for now) and reuse the downloads and sstate folder? i am wondering if there
> is a bug when trying to change PACKAGE_CLASSES in an existing <build>
> folder.

I do this not infrequently and never hit a problem like this, so I doubt this 
is the case.

Either there is a problem in how the filesystem is being set up (block sizes, 
etc.) or there is some kind of corruption occurring.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre


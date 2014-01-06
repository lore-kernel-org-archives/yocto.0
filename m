Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39590E00852
	for <yocto@yoctoproject.org>; Mon,  6 Jan 2014 09:40:39 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 06 Jan 2014 09:40:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,614,1384329600"; d="scan'208";a="460843100"
Received: from unknown (HELO helios.localnet) ([10.252.122.119])
	by fmsmga002.fm.intel.com with ESMTP; 06 Jan 2014 09:40:19 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Tarek El-Sherbiny <tarek.elsherbiny@gmail.com>
Date: Mon, 06 Jan 2014 17:40:18 +0000
Message-ID: <4512745.rGr4OXPTXM@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-34-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CAB3sqtbYhaF6_=WyiihN_kE5F7yRLL4p5-YH8B5VZMcLcSNMcA@mail.gmail.com>
References: <CAB3sqtYOQ5qZ2qHQ_w-fkptbhCb_q9WhNXFP8dPx0jauMNHoDg@mail.gmail.com>
	<1867359.xXuMmiy9d0@helios>
	<CAB3sqtbYhaF6_=WyiihN_kE5F7yRLL4p5-YH8B5VZMcLcSNMcA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Smart runtime package manager
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
X-List-Received-Date: Mon, 06 Jan 2014 17:40:40 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 06 January 2014 17:27:20 Tarek El-Sherbiny wrote:
> On Mon, Jan 6, 2014 at 1:57 PM, Paul Eggleton <paul.eggleton@linux.intel.com
> wrote:
> > On Sunday 05 January 2014 14:20:40 Tarek El-Sherbiny wrote:
> > > I'm trying to learn how smart works. I've been successful to create a
> > > repo, update and install from it. Is there smart install option to force
> > > install all the more recent packages without having to type the package
> > > name for each individual package?
> > > Something like update all to bring the target up-to-date in single
> > > command.
> > 
> > "smart upgrade" should do this.
>
> Thanks Paul.
> I have another question. For smart to detect a new package version is
> available I think I have to bump the PR of the recipe. If there is another
> package that depends on it "e.g statically linking the library" bitbake
> will rebuild it but it wont bump the PR automatically.  Is there a
> mechanism for bumping the PR not only for the modified package but also for
> all the packages that depends on it?

Yes, you should enable the PR service:

http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#working-with-a-pr-service

Cheers,
Paul

PS: Please keep replies on the mailing list - thanks.

-- 

Paul Eggleton
Intel Open Source Technology Centre


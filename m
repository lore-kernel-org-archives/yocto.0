Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05BA2E00785
	for <yocto@yoctoproject.org>; Tue, 10 Dec 2013 09:25:07 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 10 Dec 2013 09:21:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,866,1378882800"; d="scan'208";a="449975604"
Received: from unknown (HELO helios.localnet) ([10.252.122.53])
	by orsmga002.jf.intel.com with ESMTP; 10 Dec 2013 09:25:03 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Diego Sueiro <diego.sueiro@gmail.com>
Date: Tue, 10 Dec 2013 17:25:01 +0000
Message-ID: <1679390.Ppl8UCuaCK@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-34-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CAMCfZKGk2=hoKa48fRkDE-9bgiY424UT0_AZ5VmnjNDKfDY-Sg@mail.gmail.com>
References: <CAMCfZKHWGAQJ95K=T-0xpQRoO+RKvgvx9AWKMP9SUPMjAnTUDQ@mail.gmail.com>
	<20131210154634.GU31548@axis.com>
	<CAMCfZKGk2=hoKa48fRkDE-9bgiY424UT0_AZ5VmnjNDKfDY-Sg@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: busybox 1.21 ash bug?
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
X-List-Received-Date: Tue, 10 Dec 2013 17:25:08 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 10 December 2013 15:14:21 Diego Sueiro wrote:
> On Tue, Dec 10, 2013 at 1:46 PM, Olof Johansson 
<olof.johansson@axis.com>wrote:
> > That type of for loop is a bashism; as far as I know and can
> > tell, busybox ash does not support it (even with ASH_BASH_COMPAT=y).
> > 
> > The code that is executed when the parser finds a "for" token:
> > 
> > ash.c: parse_command(void)
> > 
> >     ...
> >     switch (readtoken()) {
> >     ...
> >     
> >     case TFOR:
> >         if (readtoken() != TWORD || quoteflag || !goodname(wordtext))
> >         
> >             raise_error_syntax("bad for loop variable");
> > 
> > Are you sure it's using busybox ash when it actually works? I can
> > reproduce the error message your are seeing in both busybox 1.20
> > and 1.21.
> > 
> > 
> > 
> > RANDOM is also an extension, but one that is supported by busybox
> > (or rather, can be). The default defconfig in oe-core does not
> > enable it, see ASH_RANDOM_SUPPORT.
> 
> I have a bbappend to enable it.
> 
> What a shame. I'm really sorry about the buzz.
> 
> I'm working based on Angstrom distribution setup-scripts, and for dylan
> version it is using bash as the default shell and for dora version it is
> using the ash from busybox.

Assuming that wasn't a deliberate change, it's likely that something that 
depended on bash was bringing it in before and either that something is no 
longer in the image, or it no longer depends on bash. (You can of course 
explicitly add bash to the image if that's what you want.)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre


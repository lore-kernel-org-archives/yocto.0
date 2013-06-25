Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B88FE01530
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 03:46:32 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 25 Jun 2013 03:46:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,936,1363158000"; d="scan'208";a="322217210"
Received: from unknown (HELO helios.localnet) ([10.252.122.97])
	by azsmga001.ch.intel.com with ESMTP; 25 Jun 2013 03:46:30 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: varun bhatnagar <varun292006@gmail.com>
Date: Tue, 25 Jun 2013 11:46:29 +0100
Message-ID: <1690360.8lqJBmT90c@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.3 (Linux/3.8.0-25-generic; KDE/4.10.3; i686; ; )
In-Reply-To: <CAGxOggH_6stRyaVVvY3ZrzZjOMZPQR17TMhbnnsY2RaOeH-vWQ@mail.gmail.com>
References: <CAGxOggHpJNSb6vetbD40+ww-iyVxS3cUaZVhOF1t_OFCfQ4zSw@mail.gmail.com>
	<CAGxOggH4UzCDOE5m=qFTPMDYmO1-jdtV1KtTn0XmyAnEd_pSfg@mail.gmail.com>
	<CAGxOggH_6stRyaVVvY3ZrzZjOMZPQR17TMhbnnsY2RaOeH-vWQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Yocto Layers not getting recognized by bitbake
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
X-List-Received-Date: Tue, 25 Jun 2013 10:46:35 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Sunday 23 June 2013 00:34:17 varun bhatnagar wrote:
> I am trying to compile my code using yocto. For that I have created two
> layers: "meta-networking" and "meta-oe". I have added these dependencies in
> bblayer.conf too. But these are not getting build. Can anyone please tell
> me what should I do to make this work.
> 
> //
> Varun
> 
> ----------
> From: *Gary Thomas* <gary@mlbassoc.com>
> Date: Mon, Jun 17, 2013 at 11:03 PM
> To: yocto@yoctoproject.org
> 
> 
> More details are needed to be able to help.
> 
> What do you mean "not getting built"?  Do you mean that if you
> try to build recipe XYZ which is in one of those layers that it's
> not being built?  Or perhaps you mean something else?
> 
> What do you mean "created two layers: ..."?  Did you just extract
> these from meta-openembedded?  or something else?
> 
> > I am building one of my application using yocto by giving bitbake -k
> > core-image-minimal command but I am facing some errors as this application
> > requires two libraries
> > *1) net-snmp*
> > *2) fuse*
> > *
> > 
> > *
> > I have one link where in they are asking to add these two libraries in the
> > form of layers and then execute bitbake -k core-image-minimal command.
> > 
> > I am pasting one screenshot below:
> > 
> > As you can I have added two layers meta-networking (contains net-snmp) and
> > meta-oe(contains fuse). After this I added these layers in
> > *build/conf/bblayer.conf.*
> > *
> > *
> > *
> > 
> > *
> > After this I again executed bitbake -k core-image-minimal command but I
> > faced the same error as before... :(
> > Is there anyway that these layers get recognized? Do I need to execute
> > some other command?
> 
> Obviously, this is a recipe that you made.
> 
> Does it show these dependencies?  e.g. a line like this in your recipe file:
> DEPENDS = "net-snmp fuse"
> (or whatever the *packages* that you need are)
> 
> Bitbake can't read your mind; it will only build the recipes you ask and the
> dependencies which are explicitly specified in that build chain.
> 
> If you still have trouble, try sending your recipe (.bb file and all other
> components you might have), bblayers.conf, etc to the list because we're not
> mind readers either :-)
> 
> > On Tue, Jun 18, 2013 at 2:32 AM, Sudhangathan B S
> > <sudhangathan@gmail.com<mailto:> 
> > sudhangathan@gmail.com**>> wrote:
> >     Can you please paste your command and it's output here..! If you don't
> > 
> > mind..!! Or explain with equivalent clarity. It
> > 
> >     l will good if you can also put in your directory structure.
> >     
> >     ------------------------------**---
> >     Sudhangathan BS
> >     Ph:(+91) 9731-905-205
> >     ------------------------------**---
> >     
> >     
> >     On Mon, Jun 17, 2013 at 11:33 PM, varun bhatnagar <
> > 
> > varun292006@gmail.com <mailto:varun292006@gmail.com>**> wrote:
> >         Actually the package which I am building is having some
> > 
> > dependencies on some libraries. So I provided those libraries with the
> > help of creating layers. I did not extract those from meta-openembedded,
> > instead, I manually created two layers and added them in bblayer.conf file.

Rather than creating these layers from scratch (which I think is the most 
likely source of the problem) I'd suggest starting by cloning the original 
meta-openembedded repository and building your recipe with the meta-networking 
and meta-oe layers enabled in your bblayers.conf file.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre


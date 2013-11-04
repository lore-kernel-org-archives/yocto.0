Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B02F7E01351
	for <yocto@yoctoproject.org>; Mon,  4 Nov 2013 07:46:55 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 04 Nov 2013 07:46:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,633,1378882800"; d="scan'208";a="427689219"
Received: from pauljbro-mobl.ger.corp.intel.com (HELO helios.localnet)
	([10.252.121.96])
	by fmsmga002.fm.intel.com with ESMTP; 04 Nov 2013 07:46:23 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Mon, 04 Nov 2013 15:46:19 +0000
Message-ID: <1536713.Ltcx6Vs6S8@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <alpine.DEB.2.02.1311041033001.11558@oneiric>
References: <alpine.DEB.2.02.1311030529100.31130@oneiric>
	<1450063.buI5QxrpXB@helios>
	<alpine.DEB.2.02.1311041033001.11558@oneiric>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, Scott Rifenbark <srifenbark@gmail.com>
Subject: Re: numerous questions about some ref manual variable glossary entries
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
X-List-Received-Date: Mon, 04 Nov 2013 15:46:57 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 04 November 2013 10:40:45 Robert P. J. Day wrote:
> On Mon, 4 Nov 2013, Paul Eggleton wrote:
> > On Sunday 03 November 2013 05:53:54 Robert P. J. Day wrote:
> > > http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-I
> > > NITS CRIPT_NAME
> > > 
> > >   reference to ${etcdir} ... how exactly does that differ from
> > > ${sysconfdir}? i've always understood that developers should use
> > > ${sysconfdir} in their recipe files.
> > 
> > I don't know where this came from but it is wrong. It should say
> > ${sysconfdir} instead.
> 
>   there's more to it than that -- there are a *number* of references
> to "etcdir" scattered across a number of layers:
> 
> meta-angstrom/recipes-angstrom/angstrom/angstrom-feed-configs.bb:    etcdir
> = bb.data.expand('${sysconfdir}/opkg', d)
> meta-angstrom/recipes-angstrom/angstrom/angstrom-feed-configs.bb:   
> do_split_packages(d, etcdir, '^locale-(.*)\.conf$',
> 'angstrom-locale-%s-config', 'Angstrom feed config for the %s locale',
> extra_depends='', allow_links=True)
> meta-openembedded/meta-oe/recipes-extended/zsh/zsh.inc:   
> --enable-etcdir=${sysconfdir} \
> oe-core/meta/conf/documentation.conf:INITSCRIPT_NAME[doc] = "The filename
> of the initscript as installed to ${etcdir}/init.d. The variable is
> mandatory and is used in recipes when using update-rc.d.bbclass."
> oe-core/meta/recipes-devtools/quilt/quilt/install.patch:-etcdir :=	$(subst
> /usr/etc,/etc,$(prefix)/etc)
> oe-core/meta/recipes-devtools/quilt/quilt/install.patch:+etcdir
> :=	@sysconfdir@ oe-core/meta/recipes-bsp/pcmciautils/pcmciautils.inc:export
> etcdir = "${sysconfdir}" oe-core/scripts/lib/mic/bootstrap.py:           
> etcdir = _path('/etc') oe-core/scripts/lib/mic/bootstrap.py:            if
> not os.path.exists(etcdir): oe-core/scripts/lib/mic/bootstrap.py:          
>      os.makedirs(etcdir)
> openembedded-core-contrib/meta/recipes-devtools/quilt/quilt/install.patch:-
> etcdir :=	$(subst /usr/etc,/etc,$(prefix)/etc)
> openembedded-core-contrib/meta/recipes-devtools/quilt/quilt/install.patch:+
> etcdir :=	@sysconfdir@
> openembedded-core-contrib/meta/recipes-bsp/pcmciautils/pcmciautils.inc:expo
> rt etcdir = "${sysconfdir}"
> yocto-docs/documentation/ref-manual/ref-variables.xml:                   
> The filename of the initscript as installed to
> <filename>${etcdir}/init.d</filename>.
> 
> so it's not like that's an isolated occurrence. i have no idea *what*
> to make of the above. is it all correct other than that single
> reference above?

None of those are trying to access an "etcdir" variable defined system-wide. 
There is no such variable, and most of the examples are unrelated to 
eachother.

> > > http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-R
> > > PROV IDES
> > > 
> > >   claims that a package's own name is already implicitly provided in
> > > 
> > > its RPROVIDES list. doesn't seem that way -- it's true for PROVIDES,
> > > but doesn't seem true for RPROVIDES. thoughts?
> > 
> > It was me who got Scott to add this - I did so after seeing a number
> > of people trying to do RPROVIDES_${PN} = "recipename" in the hope of
> > fixing some problem they were having; but this won't do anything.
> > What makes you think it isn't the case?
> 
>   i played with "bb show" to get the following (for the
> arbitrarily-chosen recipe zlib):
> 
> $ bb show -r zlib PROVIDES
> Parsing recipes..done.
> # PROVIDES=${PN}
> PROVIDES="zlib "
> $ bb show -r zlib RPROVIDES
> Parsing recipes..done.
> RPROVIDES=""
> $
> 
> where you can see that, for the example zlib recipe, PROVIDES contains
> the recipe name but RPROVIDES does not, so i assumed RPROVIDES didn't
> automatically provide the package's own name. am i misreading what i'm
> seeing above?

This is what I meant by "implicit". That doesn't mean printing out the 
variable will show that it explicitly contains the value.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre


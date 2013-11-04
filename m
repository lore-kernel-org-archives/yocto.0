Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC5D3E01351
	for <yocto@yoctoproject.org>; Mon,  4 Nov 2013 07:40:53 -0800 (PST)
Received: from [173.34.6.101] (port=45145 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1VdMGp-0001sv-7n; Mon, 04 Nov 2013 10:40:51 -0500
Date: Mon, 4 Nov 2013 10:40:45 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <1450063.buI5QxrpXB@helios>
Message-ID: <alpine.DEB.2.02.1311041033001.11558@oneiric>
References: <alpine.DEB.2.02.1311030529100.31130@oneiric>
	<1450063.buI5QxrpXB@helios>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
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
X-List-Received-Date: Mon, 04 Nov 2013 15:40:54 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 4 Nov 2013, Paul Eggleton wrote:

> Hi Robert,
>
> On Sunday 03 November 2013 05:53:54 Robert P. J. Day wrote:
> >   wasn't sure what to do about some of these so i'd appreciate
> > some clarification. and away we go, mostly in alphabetical order
> > ...
> >
> > http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-BBLAY
> > ERS_NON_REMOVABLE
> >
> >   that entry *really* implies you need the meta-yocto and
> > meta-yocto-bsp layers for a successful build, which clearly isn't
> > true as lots of layers work with simply oe-core. can/should that
> > explanation be reworded to not be quite so emphatic?
>
> Yes, agreed. The entry should mention that this variable is only
> actually used by Hob as well.

  at the risk of sounding lazy, i'll let someone more comfortable with
this topic tweak that text.

> > http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-INITS
> > CRIPT_NAME
> >
> >   reference to ${etcdir} ... how exactly does that differ from
> > ${sysconfdir}? i've always understood that developers should use
> > ${sysconfdir} in their recipe files.
>
> I don't know where this came from but it is wrong. It should say
> ${sysconfdir} instead.

  there's more to it than that -- there are a *number* of references
to "etcdir" scattered across a number of layers:

meta-angstrom/recipes-angstrom/angstrom/angstrom-feed-configs.bb:    etcdir = bb.data.expand('${sysconfdir}/opkg', d)
meta-angstrom/recipes-angstrom/angstrom/angstrom-feed-configs.bb:    do_split_packages(d, etcdir, '^locale-(.*)\.conf$', 'angstrom-locale-%s-config', 'Angstrom feed config for the %s locale', extra_depends='', allow_links=True)
meta-openembedded/meta-oe/recipes-extended/zsh/zsh.inc:    --enable-etcdir=${sysconfdir} \
oe-core/meta/conf/documentation.conf:INITSCRIPT_NAME[doc] = "The filename of the initscript as installed to ${etcdir}/init.d. The variable is mandatory and is used in recipes when using update-rc.d.bbclass."
oe-core/meta/recipes-devtools/quilt/quilt/install.patch:-etcdir :=	$(subst /usr/etc,/etc,$(prefix)/etc)
oe-core/meta/recipes-devtools/quilt/quilt/install.patch:+etcdir :=	@sysconfdir@
oe-core/meta/recipes-bsp/pcmciautils/pcmciautils.inc:export etcdir = "${sysconfdir}"
oe-core/scripts/lib/mic/bootstrap.py:            etcdir = _path('/etc')
oe-core/scripts/lib/mic/bootstrap.py:            if not os.path.exists(etcdir):
oe-core/scripts/lib/mic/bootstrap.py:                os.makedirs(etcdir)
openembedded-core-contrib/meta/recipes-devtools/quilt/quilt/install.patch:-etcdir :=	$(subst /usr/etc,/etc,$(prefix)/etc)
openembedded-core-contrib/meta/recipes-devtools/quilt/quilt/install.patch:+etcdir :=	@sysconfdir@
openembedded-core-contrib/meta/recipes-bsp/pcmciautils/pcmciautils.inc:export etcdir = "${sysconfdir}"
yocto-docs/documentation/ref-manual/ref-variables.xml:                    The filename of the initscript as installed to <filename>${etcdir}/init.d</filename>.

so it's not like that's an isolated occurrence. i have no idea *what*
to make of the above. is it all correct other than that single
reference above?

> > http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-RPROV
> > IDES
> >
> >   claims that a package's own name is already implicitly provided in
> > its RPROVIDES list. doesn't seem that way -- it's true for PROVIDES,
> > but doesn't seem true for RPROVIDES. thoughts?
>
> It was me who got Scott to add this - I did so after seeing a number
> of people trying to do RPROVIDES_${PN} = "recipename" in the hope of
> fixing some problem they were having; but this won't do anything.
> What makes you think it isn't the case?

  i played with "bb show" to get the following (for the
arbitrarily-chosen recipe zlib):

$ bb show -r zlib PROVIDES
Parsing recipes..done.
# PROVIDES=${PN}
PROVIDES="zlib "
$ bb show -r zlib RPROVIDES
Parsing recipes..done.
RPROVIDES=""
$

where you can see that, for the example zlib recipe, PROVIDES contains
the recipe name but RPROVIDES does not, so i assumed RPROVIDES didn't
automatically provide the package's own name. am i misreading what i'm
seeing above?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


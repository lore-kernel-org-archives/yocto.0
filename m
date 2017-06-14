Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4676CE00B83; Wed, 14 Jun 2017 10:38:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE93AE00B43
	for <yocto@yoctoproject.org>; Wed, 14 Jun 2017 10:38:17 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga104.jf.intel.com with ESMTP; 14 Jun 2017 10:38:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,341,1493708400"; d="scan'208";a="99500223"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.128.119])
	by orsmga002.jf.intel.com with ESMTP; 14 Jun 2017 10:38:16 -0700
Message-ID: <1497462434.29576.13.camel@linux.intel.com>
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: Laurent Gauthier <laurent.gauthier@soccasys.com>
Date: Wed, 14 Jun 2017 12:47:14 -0500
In-Reply-To: <CAGbd71R8RRyuS+mDnfUsjriShpju=9VFrDNtxfWFWevs5YMhfQ@mail.gmail.com>
References: <8af3780d8f5d43e988f8161ec69d5965@DEBEMAIL002.kostal.int>
	<CAGbd71R8RRyuS+mDnfUsjriShpju=9VFrDNtxfWFWevs5YMhfQ@mail.gmail.com>
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: useradd and one sysroot per recipe in pyro
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
X-List-Received-Date: Wed, 14 Jun 2017 17:38:19 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2017-06-14 at 18:12 +0200, Laurent Gauthier wrote:
> Hi Christian,
> 
> In pyro the creation of users and group (using the useradd class) is
> done during the package pre-installation.
> 
> So my best guess is that you could move the owner/group change in the
> package post-installation as follows:
> 
> do_install () {
>             (…)
>             install -d ${D}${sysconfdir}/myappl
>             install -d ${D}${localstatedir}/lib/myappl
> }
> 
> pkg_postinst_${PN} () {
>             chown -R myuser:mygroup ${D}${sysconfdir}/myappl
>             chown -R myuser:mygroup ${D}${localstatedir}/lib/myappl
> }
> 
> I hope this helps.

also, at the oe-core repo, you can find a recipe example


meta-skeleton/recipes-skeleton/useradd/useradd-example.bb


> 
> Laurent.
> 
> On Wed, Jun 14, 2017 at 5:57 PM, Andersen, Christian
> <c.andersen@kostal.com> wrote:
> > Any ideas how to use „useradd“ bbclass with pyro?
> >
> > If I move useradd to my recipe my-appl.bb, it works. But there are more
> > recipes depending on the added user, so I want to add this user in a
> > base-recipe and just depend on it using (DEPENDS/RDEPENDS).
> >
> > Regards
> > Christian
> >
> >
> >
> > Von: Andersen, Christian
> > Gesendet: Dienstag, 13. Juni 2017 18:10
> > An: 'yocto@yoctoproject.org' <yocto@yoctoproject.org>
> > Betreff: useradd and one sysroot per recipe in pyro
> >
> >
> >
> > Hello,
> >
> >
> >
> > currently I am trying the newest Yocto release (pyro). It seems I have a
> > problem with useradd and the new concept of one sysroot per recipe.
> >
> >
> >
> > I have a base recipe (let’s call it my-base.bb) which inherits useradd and
> > creates a new user (let’s call him myuser):
> >
> >
> >
> > inherit useradd
> >
> >
> >
> > USERADD_PACKAGES = "${PN}"
> >
> > USERADD_PARAM_${PN} = " \
> >
> >     --uid 1200 \
> >
> >     --gid 1200 \
> >
> >     --system \
> >
> >     --shell /bin/bash \
> >
> >     --create-home \
> >
> >     --home-dir /home/myuser \
> >
> >     --groups mygroup,video,input \
> >
> >     myuser"
> >
> > GROUPADD_PARAM_${PN} = "-g 1200 mygroup"
> >
> >
> >
> > do_install () {
> >
> > install -d ${D}/home/myuser
> >
> >             chown -R myuser:mygroup ${D}/home/myuser
> >
> > }
> >
> >
> >
> > Other recipes depend on this base recipe (via DEPENDS and RDEPENDS), because
> > they require this user, e.g. in recipe my-appl.bb (in this case python only,
> > so no configure or compile):
> >
> >
> >
> > DEPENDS = "puck-base"
> >
> > RDEPENDS_${PN} = "puck-base python3-dbus python3-sqlite3 python3-netclient
> > python3-requests"
> >
> >
> >
> > do_configure[noexec] = "1"
> >
> > do_compile[noexec] = "1"
> >
> >
> >
> > do_install () {
> >
> >             (…)
> >
> >
> >
> > install -d ${D}${sysconfdir}/myappl
> >
> >             chown -R myuser:mygroup ${D}${sysconfdir}/myappl
> >
> >
> >
> > install -d ${D}${localstatedir}/lib/myappl
> >
> >             chown -R myuser:mygroup ${D}${localstatedir}/lib/myappl
> >
> > }
> >
> >
> >
> > Unfortunately I get an error when building the recipe my-appl.bb
> >
> >
> >
> > | chown: invalid user: ‘myuser:mygroup’
> >
> > | WARNING: exit code 1 from a shell command.
> >
> > | ERROR: Function failed: do_install (log file is located at …)
> >
> > ERROR: Task (…/my-appl.bb:do_install) failed with exit code '1'
> >
> >
> >
> > In morty the user was created in the shared sysroot. But using pyro the user
> > is not created in the recipe-sysroot.
> >
> >
> >
> > What am I doing wrong and is there a way to solve this?
> >
> >
> >
> > Thanks in advance!
> >
> > Regards
> >
> > Christian
> >
> > KOSTAL Industrie Elektrik GmbH - Sitz Lüdenscheid, Registergericht Iserlohn
> > HRB 3924 - USt-Id-Nr./Vat No.: DE 813742170
> > Postanschrift: An der Bellmerei 10, D-58513 Lüdenscheid * Telefon: +49 2351
> > 16-0 * Telefax: +49 2351 16-2400
> > Werksanschrift: Lange Eck 11, D-58099 Hagen * Tel. +49 2331 8040-800 * Fax
> > +49 2331 8040-602
> > Geschäftsführung: Axel Zimmermann, Dipl.-Ing. Marwin Kinzl, Dipl.-Oec.
> > Andreas Kostal
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
> 
> 
> 
> -- 
> Laurent Gauthier
> Phone: +33 630 483 429
> http://soccasys.com




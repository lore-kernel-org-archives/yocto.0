Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E349CE00B3D; Wed,  7 Jun 2017 10:27:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [212.227.17.24 listed in list.dnswl.org]
X-Greylist: delayed 454 seconds by postgrey-1.32 at yocto-www;
	Wed, 07 Jun 2017 10:27:38 PDT
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65609E00B01
	for <yocto@yoctoproject.org>; Wed,  7 Jun 2017 10:27:38 -0700 (PDT)
Received: from oxbaltgw14.schlund.de ([172.19.246.20]) by
	mrelayeu.kundenserver.de (mreue102 [212.227.15.179]) with ESMTPSA
	(Nemesis)
	id 0MKaKl-1dKZoz1zs7-0021Dq; Wed, 07 Jun 2017 19:14:58 +0200
Date: Wed, 7 Jun 2017 18:14:58 +0100 (BST)
From: Colin Helliwell <colin.helliwell@ln-systems.com>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <873555290.245809.1496855698348@email.1and1.co.uk>
In-Reply-To: <CAMKF1srvA65ghO9g2dVW-xqfCVO=KtONaEQiEyVqgKCJ8zMLbg@mail.gmail.com>
References: <165f01d2dfac$6b374940$41a5dbc0$@ln-systems.com>
	<CAMKF1srvA65ghO9g2dVW-xqfCVO=KtONaEQiEyVqgKCJ8zMLbg@mail.gmail.com>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.2-Rev34
X-Originating-Client: open-xchange-appsuite
X-Provags-ID: V03:K0:FKvogKNwI5MMJsE566NqkKwMQBC35FBufLWCDkZLEUtjFyQblOd
	bQHLNZlrkwOHD1wWqYn8cssnwdbXgGIVHUw9pVD1gCATqpLzhv4r/cnRpsZpfaIF3UA5xr8
	LPwjrnl2UsyffHnq4g1xmSfbUBKKGpSecT1ISjO/dtAXyef2cdAddyW/dUq/O2vghHgM+Dc
	UDzKPa894+Mo7mvIJV0NQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:IbovOb5SFio=:iF7iT7/urT4QHriXebhhFZ
	flqGtm7o+ybrCvCWxL+kh71+seZLNWb2so+JqUfE73nmlRNZ3X5t7U6FeGFuHcRKoIxEjKNF/
	u12HcBMZBORRMnZNUKZ6LvCJBVqZtbhp8lgV4zRvLkl1HsKxnJoVIpG4Z/tmAvALdf0tXJpmY
	5Sjj+Bdq/2eQjRncugWAix76meCtXu31PdoyP42fYgJ30mUON7zHoArGQYmWWYDJqrXZqhsP1
	bLEAoIy+MuJ6n8/MiebBRI5RkHQyO1yCM4Sy7VoTAuAmnvl7sJ+vgSbwEiROQir4cE+3dUeFY
	qlQsgAbkd3XcFQ/SyzE8+vcfcVviamYMuISkOYj95lUlRaMWsGkPTcZWlsMbsv7urcmeMvXFo
	fAks/JYjpwwNdPjIlpSFsM2c0vSrhw1CZmh5LNFxSvaxW3/55kJFEa3WUg9hAfGihV0NjqyZs
	2AsWZtKP1iG5tHL+cAYM6TQVIbsM7dMvAuJD/GzH7ZkXDpyRDwkLLZm4uYcmbLHnBk54uyoZQ
	lQhgEYC+3BSU8bD3GrHdASXPF1u3NWY7XpPUNvXoafH0zu4q+FEeG8FiyxXVuKB31GbRd11pd
	qq8ggMY2ZwtW4ZuDuvguX2PBVhAp0P6WiOzgl02K9XhKLsg6/RVlK6DPnR95AbNefXW+p93TN
	3kWWqta3BGubhOBuVpMPY2IoXCXnscjf2FvcAARaO/b5P5Uc0eH2DoelVvoYon3UUeqFLiu6j
	Eu9Sej0/h8x5l/Ct
Cc: yocto@yoctoproject.org
Subject: Re: Getting linker -l into a bbappend
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Colin Helliwell <colin.helliwell@ln-systems.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 07 Jun 2017 17:27:44 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


> On 07 June 2017 at 18:12 Khem Raj <raj.khem@gmail.com> wrote:
> 
> On Wed, Jun 7, 2017 at 9:37 AM, <colin.helliwell@ln-systems.com> wrote:
> 
> > I have an autotools (C++) app which builds fine with my default recipe. But
> > for a particular platform an additional (C) library is needed, so I have a
> > bbappend.
> > I can add in the additional compiler flag here, but I'm struggling to
> > specify the additional library linkage - I think it's because the ordering
> > on the linker command line is wrong.
> > 
> > If I add '-lfoo' to the base Makefile.am then it builds fine (though
> > strangely, "-lfoo" isn't anywhere in the linker command line?).
> > But I'm trying to put this into just the 'append' rather than altering the
> > base [non-platform-specific] Makefile.
> > 
> > I've tried
> >  EXTRA_OEMAKE += " LDFLAGS+="-lfoo" "
> > and
> >  LDFLAGS+="-lrfctrl"
> > but these don't seem to construct the correct linkage order (functions from
> > the library are undefined references)
> > 
> > Is there a way to append this in the right way?
> 
> it depends on components build systems some are more accommodating of
> the env passed to them some are not. So in many
> cases you have to patch the make system of the component to
> allow it to accept changes to variables passed from bitbake env
> from what you explain it seems you might have to look into
> component's build system to accommodate it.
> 

Thanks Khem. I *could* patch the Makefile.am, if there's no other way


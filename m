Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0FE39E006EE; Tue, 22 Jul 2014 06:53:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-ig0-f179.google.com (mail-ig0-f179.google.com
	[209.85.213.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 445AFE004FF
	for <yocto@yoctoproject.org>; Tue, 22 Jul 2014 06:53:17 -0700 (PDT)
Received: by mail-ig0-f179.google.com with SMTP id h18so240601igc.12
	for <yocto@yoctoproject.org>; Tue, 22 Jul 2014 06:53:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=t/2AEQMBfxb62TkXzeUI+1nZVtWIwk6TUO+NDLnkXEE=;
	b=U09PcQMHid+5Z1BsD6qhXfanXTyT1JCTxCikoST+UQBmuHrBOORqCX1KnK0FXIgfVl
	0wJ6gJvKE49MHBTrJoi2U2N+p8zE3nlrzPPt6B+Q6HPJtFkgS/xZtE45WIkkFKe/DlnV
	BqxswLl8aLH+PnvBDrWa3FoaQzP5A0ldx455jWIaOAmOf8xpyzpVj+NrZKuDmUkzJqJQ
	WRnEoMT8Wvv4tEFDAYDd15Fju9HfDKrANpw/1blBro19d/2kKInQl1pkoUH6Exw7Jwz0
	x+Xcs0+I5143oTLZbMXSqdDHsLbdEJlE2m1ykGqCivXFaR6uz2yDHRAhwGTM+eEQTnwd
	CkHQ==
X-Gm-Message-State: ALoCoQm0ip9LfFxi1QnCg8XGyLgDhQ8QMBTuObCFGjbGvms1rQZThfxcf8dmZkzM4UVhbbyKIFO5
X-Received: by 10.50.124.227 with SMTP id ml3mr16693275igb.46.1406037196142;
	Tue, 22 Jul 2014 06:53:16 -0700 (PDT)
Received: from skynet (24-246-4-250.cable.teksavvy.com. [24.246.4.250])
	by mx.google.com with ESMTPSA id l9sm15295643ige.2.2014.07.22.06.53.14
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 22 Jul 2014 06:53:14 -0700 (PDT)
Received: by skynet (Postfix, from userid 1000)
	id 7B6041685E3; Tue, 22 Jul 2014 09:53:13 -0400 (EDT)
Date: Tue, 22 Jul 2014 09:53:13 -0400
From: Joe MacDonald <joe@deserted.net>
To: Alexandru Vaduva <Alexandru.Vaduva@enea.com>
Message-ID: <20140722135311.GA8801@deserted.net>
References: <6B17198E316BD04DBB6F6DD263019AE125573C4A@SESTOEX04.enea.se>
	<2D55BFC2C836774DB0F2FE17BECC006C28993A30@SESTOEX04.enea.se>
	<D7AB900AA081FD46B179E331E9F703E8908E42@SESTOEX04.enea.se>
	<DDB0C57E45663A458C5CACB7B5688BC21D6C5C0D@SESTOEX04.enea.se>
	<D7AB900AA081FD46B179E331E9F703E8908E9C@SESTOEX04.enea.se>
	<DDB0C57E45663A458C5CACB7B5688BC21D6C8818@SESTOEX04.enea.se>
	<CA+YB3rY8TifZWKrm5FJc871WMtzP-ZeiCZJS9ceSa3uUoR9TGA@mail.gmail.com>
	<DDB0C57E45663A458C5CACB7B5688BC21D6CAE0B@SESTOEX04.enea.se>
	<CANBf+V17Q0P98d7632+FX3_W1RsT3ZR=ZR4W1mG4iDJ-CRLnZw@mail.gmail.com>
	<DDB0C57E45663A458C5CACB7B5688BC21D6D3410@SESTOEX04.enea.se>
MIME-Version: 1.0
In-Reply-To: <DDB0C57E45663A458C5CACB7B5688BC21D6D3410@SESTOEX04.enea.se>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [OE-core] Carrier Grade layer proposal
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
X-List-Received-Date: Tue, 22 Jul 2014 13:53:24 -0000
X-Groupsio-MsgNum: 20668
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="9jxsPFA5p3P2qPhR"
Content-Disposition: inline

--9jxsPFA5p3P2qPhR
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex

[RE: [yocto] [OE-core] Carrier Grade layer proposal] On 14.07.22 (Tue 10:52=
) Alexandru Vaduva wrote:

> Hello Joe,
>=20
> Here at Enea we are preparing the steps needed for publishing the layer o=
n the open embedded meta layers initiative: http://layers.openembedded.org/=
layerindex/branch/master/layers/
> For this we started working at a web page that should contain all the rel=
evant information regarding meta-cgl. It will be available in a couple of w=
eeks. Until then the layer will be available internally and the patches sho=
uld=20
> be submitted as the README states: on the enealinux@lists.enea.com mailin=
g list. We will try to make the switch to Open Embedded mailing list as qui=
ck as possible.
>=20
> Regarding the other B, C and D packages  that we will try to add into the=
 meta-cgl layer, I will post this information below, but keep in mind that =
this information will also be available on the web page.
> 	Category B packages:=20
> 		- ifenslave
> 		- evlog
> 		- crash
> 		- mipv6-daemon-umip
> 		- openl2tp
> 	Category C&D packages:
> 		- drbd
> 		- grsecurity
> 		- logcheck
> 		- makedumpfile
> 		- numactl
> 		- ocfs2-tools
> 		- pam_passwdqc
> 		- samhain
> 		- ltt-usertrace
> 		- ftrace
> The above lists correspond with only the P1 requirements that we try to f=
ulfill for the moment. If there are any questions and/or suggestions regard=
ing this CGL initialtive please address them to me and I will try to offer =
a response in the
> shortest time possible.

Thanks, that is really helpful, actually.  So a couple of other things,
though.  I think I remember that early on you were intending to take
your yocto-based system with meta-cgl (and, I imagine based on the
contents of the README, the additional dependent layers) through a CGL
registration.  Really, that's great if you still are, but it sounds like
maybe now you're planning a staged approach and are only targeting a
subset of the CGL P1s for the end of the year / start of next year.  Is
that accurate, or are you looking at full P1 compliance by that date?

I ask mostly because I know doing a CGL distribution is a big
effort (I've been down this road before) and it may be that you don't
need to have the system complete before you can move it to the
openembedded.org location and "get into the system" so to speak.  Your
team is pretty active, though, so I'm sure you'll also notice if things
are going into other layers that can save you some time (e.g. the
submission of a numactl recipe to meta-oe last week).

That, and if I've got an idea of where you're going, I'll be happy to
take an early look at what you've got in terms of it's CGL-ness and
hopefully make the eventual registration (if you go that route) move
along quickly.

-J.

>=20
>=20
> Thanks,
> Alex=20
>=20
> -----Original Message-----
> From: Joe MacDonald [mailto:joe@deserted.net]=20
> Sent: Monday, July 21, 2014 10:58 PM
> To: Alexandru Vaduva
> Cc: Jeff Osier-Mixon; yocto@yoctoproject.org
> Subject: Re: [yocto] [OE-core] Carrier Grade layer proposal
>=20
> Hey Alex,
>=20
> I've been away from this for a bit but now I'm getting time to look at it=
 again and I was wondering if you had any deeper level of detail you could =
share about the work going on in meta-cgl.  Obviously since this is a new r=
egistration and one that will look rather different from all of the other C=
GL registrations currently, those of us in the CGL workgroup were quite int=
erested to see this happen.  Personally I'm also interested in this since i=
t's the kind of thing I've been doing for a long time now and if I can, I'd=
 like to help out.  In particular, if you've got a list of, say, the catego=
ry B+ items, that might be something I can do that will be independent of y=
our work on the more active cat-A stuff.  OTOH, cat-A is easy to work on si=
nce those are the items I saw when I was working with meta-cgl a month or s=
o back.  I know you guys are focused on your part of it, but if you had sor=
t of a "here's how to help us" guide, that'd be awesome.
>=20
> Also, I probably missed it, but is the intent to use either the yocto lis=
t or the oe list for all meta-cgl discussions, or do you have a dedicated l=
ist we can sign up for?  I see you have guidance for sending submissions to=
 meta-cgl, but is that a list that's open to the community, or is it an int=
ernal alias / distribution list for Enea?
>=20
> Thanks,
> -J.
>=20
>=20
> On Mon, Jul 7, 2014 at 2:43 PM, Alexandru Vaduva <Alexandru.Vaduva@enea.c=
om> wrote:
> > Hello Jeff,
> >
> > The errors are package related.
> > Meta-cgl can be seen as a non BSP specific layer (it can be viewed as t=
he LSB from poky).
> > I already started fixing a number, of the already existing errors and t=
he patches will be added upstream after proper testing.
> > I will continue the bug fixing and package integration (into the=20
> > core-image-cgl image) process and after that is finished I will continu=
e with the Category B packages.
> >
> > I will also try to keep you guys informed about the latest updates,=20
> > mainly on the YPTM, but for those who cannot wait that much, there is=
=20
> > the Git repository with which they can interact:=20
> > http://git.enea.com/git/?p=3Dlinux/meta-cgl.git;a=3Dsummary
> >
> >
> > Have a good day,
> > Alex
> >
> >
> > -----Original Message-----
> > From: jefro.net@gmail.com [mailto:jefro.net@gmail.com] On Behalf Of=20
> > Jeff Osier-Mixon
> > Sent: Monday, July 07, 2014 9:22 PM
> > To: Alexandru Vaduva
> > Subject: Re: [OE-core] Carrier Grade layer proposal
> >
> > Thanks, Alex.
> >
> > Others on the mailing lists, if you have any comments on the contents o=
f this new layer, please mention them on this thread.
> >
> > Re compilation errors, were they specific to a BSP or were they general=
 errors in the packages?
> >
> > thanks
> >
> > On Mon, Jun 30, 2014 at 8:01 AM, Alexandru Vaduva <Alexandru.Vaduva@ene=
a.com> wrote:
> >> Hello Jeff,
> >>
> >>
> >>
> >> The available layer is a work in progress.
> >>
> >> For the moment we have done an internal mapping of the packages=20
> >> needed inside meta-cgl layer. The mapping is done as following:
> >> A. Requirement that map against package/packages with recipes that=20
> >> already exists in Yocto
> >>   A1. Requirement that map against package/packages with recipes=20
> >> already existing in meta-enea
> >>   A2. Requirement that map against package/packages with recipes that=
=20
> >> exists in Yocto (but not in meta-enea) B. Requirement that map=20
> >> against package/packages without any recipe C. Requirement does not=20
> >> directly map against package/packages and needs some investigation.
> >> D. Requirement that no solution have been found after a more detailed=
=20
> >> investigation.
> >>
> >>
> >>
> >> When the release was made available on the public repository, the=20
> >> packages from the A1 and A2 were integrated, a bunch of them with comp=
ilation errors:
> >>
> >> -          lksctp-tools
> >>
> >> -          openais
> >>
> >> -          pacemaker
> >>
> >> -          openhpi
> >>
> >> -          open-iscsi-user
> >>
> >> -          open-iscsi-kernel
> >>
> >> -          libcap-ng
> >>
> >> -          cluster-glue
> >>
> >> -          cluster-resource-agents
> >>
> >> The activity on the meta-cgl was resumed today and those build and=20
> >> integration errors will be dealt next.
> >>
> >>
> >>
> >> On the longer run we will try to create recipes and/or fulfill all=20
> >> the other requirements from the class B, C, and D.
> >>
> >> Please do not hesitate to contact me if you have further questions.
> >>
> >>
> >>
> >>
> >>
> >> Alex
> >>
> >>
> >>
> >> From: Jon Aldama
> >> Sent: Friday, June 27, 2014 1:07 PM
> >> To: Alexandru Vaduva; Cosmin Moldoveanu; Jenny Andersson; David=20
> >> Nystr=F6m
> >> Cc: Daniel Bornaz; Adrian Dudau
> >> Subject: RE: Carrier Grade layer proposal
> >>
> >>
> >>
> >> Roger that! Thanks Alexandru!
> >>
> >>
> >>
> >>
> >>
> >> From: Alexandru Vaduva
> >> Sent: den 27 juni 2014 11:43
> >> To: Jon Aldama; Cosmin Moldoveanu; Jenny Andersson; David Nystr=F6m
> >> Cc: Daniel Bornaz; Adrian Dudau
> >> Subject: RE: Carrier Grade layer proposal
> >>
> >>
> >>
> >> Hello Jon,
> >>
> >>
> >>
> >> We will first have an internal meeting on Monday and after that I=20
> >> will offer an answer to Jeff.
> >>
> >>
> >>
> >>
> >>
> >> Alex
> >>
> >>
> >>
> >> From: Jon Aldama
> >> Sent: Friday, June 27, 2014 12:32 PM
> >> To: Cosmin Moldoveanu; Jenny Andersson; David Nystr=F6m
> >> Cc: Alexandru Vaduva; Daniel Bornaz; Adrian Dudau
> >> Subject: RE: Carrier Grade layer proposal
> >>
> >>
> >>
> >> Thank you Cosmin,
> >>
> >>
> >>
> >> Alexandru, could you please respond Jeff at the mailing list? (see=20
> >> down
> >> below)
> >>
> >>
> >>
> >> Cheers
> >>
> >> Jon
> >>
> >>
> >>
> >> From: Cosmin Moldoveanu
> >> Sent: den 27 juni 2014 10:59
> >> To: Jenny Andersson; Jon Aldama; David Nystr=F6m
> >> Cc: Alexandru Vaduva; Daniel Bornaz; Adrian Dudau
> >> Subject: RE: Carrier Grade layer proposal
> >>
> >>
> >>
> >> Hi,
> >>
> >>
> >>
> >> Alexandru Vaduva will be main responsible for interfacing with=20
> >> community on meta-cgl topic. He will also attend Yocto Technical=20
> >> Meetings whenever necessary from now on.
> >>
> >>
> >>
> >> BR,
> >>
> >> /Cosmin
> >>
> >>
> >>
> >> From: Jenny Andersson
> >> Sent: Friday, June 27, 2014 10:32 AM
> >> To: Jon Aldama; David Nystr=F6m; Cosmin Moldoveanu
> >> Cc: Valentin Cobelea
> >> Subject: RE: Carrier Grade layer proposal
> >>
> >>
> >>
> >> Hi Cosmin,
> >>
> >>
> >>
> >> How took over after Valentin left Enea? Could someone in your team res=
pond.
> >>
> >>
> >>
> >> Thanks,
> >>
> >> Jenny
> >>
> >>
> >>
> >> From: Jon Aldama
> >> Sent: den 27 juni 2014 09:28
> >> To: David Nystr=F6m; Jenny Andersson
> >> Cc: Valentin Cobelea
> >> Subject: FW: Carrier Grade layer proposal
> >>
> >>
> >>
> >> David, Jenny,
> >>
> >>
> >>
> >> Will any of you answer this?
> >>
> >>
> >>
> >> BTW, have you managed to file the Yocto compatibility application?
> >>
> >>
> >>
> >> Regards
> >>
> >> Jon
> >>
> >>
> >>
> >> From: Osier-mixon, Jeffrey [mailto:jeffrey.osier-mixon@intel.com]
> >> Sent: den 26 juni 2014 20:36
> >> To: David Nystr=F6m; davide.ricci@windriver.com; challinan@gmail.com;=
=20
> >> teodor.bobornilo@windriver.com; Valentin Cobelea;=20
> >> chase.maupin@ti.com; Jon Aldama; philip.balister@gmail.com;=20
> >> kevin_mccombe@mentor.com; akuster@mvista.com;=20
> >> jason.wessel@windriver.com; richard.purdie@linuxfoundation.org;=20
> >> hui.geng@huawei.com; john_cherry@mentor.com;=20
> >> jeffrey.osier-mixon@intel.com
> >> Cc: Philip Balister
> >> Subject: YP: Carrier Grade layer proposal
> >>
> >>
> >>
> >> Hi all - this is a simple followup to our meeting at ELC regarding a=
=20
> >> meta-cgl layer, proposed by Enea.
> >>
> >>
> >>
> >> The plan was to create a list of recipes to be included, and to start=
=20
> >> a discussion on the mailing list.There is a thread on the list from=20
> >> back in April, but I don't see anything more recent than that. Has=20
> >> there been any progress?
> >>
> >>
> >>
> >> thanks
> >>
> >>
> >> --
> >> _______________________________________________
> >> Openembedded-core mailing list
> >> Openembedded-core@lists.openembedded.org
> >> http://lists.openembedded.org/mailman/listinfo/openembedded-core
> >>
> >
> >
> >
> > --
> > Jeff Osier-Mixon @Intel
> > Yocto Project Community Manager http://yoctoproject.org
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>=20
>=20
>=20
> --
> Joe MacDonald
> :wq

--=20
-Joe MacDonald.
:wq

--9jxsPFA5p3P2qPhR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlPObMcACgkQwFvcllog0Xxe9QCeIcQV43jhKozarWncjpgPDN4c
bA0An0XloCt3WP/xMfOpt9cMRVydva+t
=8hTX
-----END PGP SIGNATURE-----

--9jxsPFA5p3P2qPhR--

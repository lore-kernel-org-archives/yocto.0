Return-Path: <matt.schuckmann@planar.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F4BEE0087D; Wed, 26 Nov 2014 09:21:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [63.128.21.105 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from us-smtp-delivery-105.mimecast.com
	(us-smtp-delivery-105.mimecast.com [63.128.21.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 166EFE007B9
	for <yocto@yoctoproject.org>; Wed, 26 Nov 2014 09:21:01 -0800 (PST)
Received: from msxbvt03.planar.net (199.244.171.48 [199.244.171.48]) by
	us-mta-10.us.mimecast.lan; Wed, 26 Nov 2014 12:20:59 -0500
Received: from MSXBEBVT12.planar.net ([::1]) by msxbvt03.planar.net ([::1])
	with mapi; Wed, 26 Nov 2014 09:20:57 -0800
From: Matt Schuckmann <Matt.Schuckmann@planar.com>
To: Jim Rafert <jimr@spectralogic.com>, Mike Looijmans
	<mike.looijmans@topic.nl>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Wed, 26 Nov 2014 09:20:56 -0800
Thread-Topic: [yocto] Support for writable files with a read-only root file
	system
Thread-Index: AQHQCYbLE1Di5vzMKkKxWjvwnaNwZpxzFqQWgAAMwwA=
Message-ID: <4B07ADD556F70043925DA2E9C5D4346D2FDB561C51@MSXBEBVT12.planar.net>
References: <4B07ADD556F70043925DA2E9C5D4346D2FDB561BFD@MSXBEBVT12.planar.net>,
	<5475E5E2.7090805@topic.nl>
	<86196249137E0843B2E0673D4F731E0C0108E25842@reactor.sldomain.com>
In-Reply-To: <86196249137E0843B2E0673D4F731E0C0108E25842@reactor.sldomain.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-MC-Unique: QTyZCvj9QaiSh08eWOmG-Q-2
Subject: Re: Support for writable files with a read-only root file system
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
X-List-Received-Date: Wed, 26 Nov 2014 17:21:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Jim Rafert
> Sent: Wednesday, November 26, 2014 8:33 AM
> To: Mike Looijmans; yocto@yoctoproject.org
> Subject: Re: [yocto] Support for writable files with a read-only root
> file system
>=20
> Hi Mike,
>=20
> It sounds like using volatiles is the opposite of what you want.
> Unless I miss the point, what you want is to have your root file system
> mounted read-only with only select files being writable, and
> persistent.  Volatiles are by definition not persistent. Volatiles may
> be a part of your solution for files that can be non-persistent, but
> can't be the whole solution.

>=20
> If you can make a small number of entire directory hierarchies writable
> (like /etc, /mnt), you can make small partitions that are mounted by
> /etc/fstab.  If you want to be more selective, you need to have a
> writable file system where the writable files will reside, with links
> in the root file system that point to them.
>=20

Hi Jim,=20

Yes you are correct I want a small number of files into to reside in a writ=
eable partition with links in the root file system to point to them. I gues=
s I latched on to the volatiles mechanism because it seems close to meeting=
 my needs.

Making entire directory hierarchies like /etc writeable seems risky, things=
 that you never want changed could get changed. Furthermore it makes it har=
der to deal with setting up default versions of files.=20

Is there really no mechanism for this type of thing in OE? It seems like su=
ch a common thing for anybody creating a system with a ro root file system =
to need or am I missing something.=20

If there is not such a mechanism then I will probably recreate the VOLATILE=
_BINDS mechanism that was in the MentorEmbedded layer and maybe call it PER=
SISTENT_BINDS or some such. I'm pretty new to OE so whatever I come up with=
 will be pretty rough but I'd be willing to share my solution if there was =
interest.=20

Thanks,
Matt S.=20


> -Jim-
> ________________________________________
> From: Mike Looijmans [mike.looijmans@topic.nl]
> Sent: Wednesday, November 26, 2014 7:38 AM
> To: yocto@yoctoproject.org
> Subject: Re: [yocto] Support for writable files with a read-only root
> file system
>=20
> The one-size-fits-all solution is to use an unionfs, and a writable
> part in RAM or mounted elsewhere, e.g. in flash (typically a tiny jffs2
> partition).
>=20
> It requires quite some scripting to get right, you have to boot the
> system and then mount the overlay, the unionfs to join it with the
> rootfs, and then "pivot" it to make it the new root.
>=20
> After that you get a root where you can modify any file, and even
> persist that change (if you use a persistent overlay).
>=20
>=20
>=20
> On 11/26/2014 08:51 AM, Matt Schuckmann wrote:
> > I've been investigating the support for read only root file systems
> and trying to suss out how to support persistent writeable files in my
> image where the root file system is read only, this seems like a very
> common thing for an embedded Linux system to need but I'm not seeing
> the support for it.
> >
> > I should note that I'm working off of the Dylan branch, I'm not sure
> if things have changed in a newer branch.
> >
> > So far I've had to read the code to figure out as much as I have, and
> I haven't found any documentation for this, am I missing something?
> >
> > It appears that my recipe(s) are supposed to install a volatiles file
> under ${D}${sysconfdir}/default/volatiles/ that lists out the volatile
> directories, links and files that need to be created in the image.
> >
> > For writeable persistent files I would presume that I should specify
> links that point to some place on a write partition.
> >
> > What I don't see is any sort of mechanism for setting up the default
> files on that writeable partition, am I on my own for this or is there
> some other recommended mechanism.
> >
> > In my early research I found the MentorEmbedded/meta-ro-rootfs layer
> that had a nifty way of specifying VOLATILE_BINDS to create a list of
> binds that should occur at boot up and in the process creating the
> mounts if the target of the bind didn't exist a copy was made from the
> read only location, this appears to have provided a sort of default to
> go into the writeable location. Was this functionality abandoned when
> support for ro-rootfs was brought into oe-core? If so why?
> >
> > A good example for the kind of writeable persistent file that I
> intend
> > to have is /etc/network/interfaces How do I go about letting the
> init_ifupdown recipe install it normally and then have another recipe
> or even the image configure it to be either a link or a bind mount at
> another location while still preserving the default contents.
> >
> > I hope I'm making sense here.
> >
> > Thanks,
> > Matt S.
> >
>=20
>=20
>=20
> Met vriendelijke groet / kind regards,
>=20
> Mike Looijmans
> System Expert
>=20
>=20
> TOPIC Embedded Systems
> Eindhovenseweg 32-C, NL-5683 KH Best
> Postbus 440, NL-5680 AK Best
> Telefoon: (+31) (0) 499 33 69 79
> Telefax:  (+31) (0) 499 33 69 70
> E-mail: mike.looijmans@topic.nl
> Website: www.topic.nl
>=20
> Please consider the environment before printing this e-mail
>=20
> Topic zoekt gedreven (embedded) software specialisten!
> http://topic.nl/vacatures/topic-zoekt-software-engineers/
>=20
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



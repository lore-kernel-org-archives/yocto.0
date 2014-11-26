Return-Path: <jimr@spectralogic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59CD3E00860; Wed, 26 Nov 2014 08:32:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.spectralogic.com (mail5.spectralogic.com [192.30.190.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEF3CE007B9
	for <yocto@yoctoproject.org>; Wed, 26 Nov 2014 08:32:48 -0800 (PST)
From: Jim Rafert <jimr@spectralogic.com>
To: Mike Looijmans <mike.looijmans@topic.nl>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Support for writable files with a read-only root file
	system
Thread-Index: AQHQCYbLE1Di5vzMKkKxWjvwnaNwZpxzFqQW
Date: Wed, 26 Nov 2014 16:32:47 +0000
Message-ID: <86196249137E0843B2E0673D4F731E0C0108E25842@reactor.sldomain.com>
References: <4B07ADD556F70043925DA2E9C5D4346D2FDB561BFD@MSXBEBVT12.planar.net>,
	<5475E5E2.7090805@topic.nl>
In-Reply-To: <5475E5E2.7090805@topic.nl>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.254.6]
MIME-Version: 1.0
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
X-List-Received-Date: Wed, 26 Nov 2014 16:32:51 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Mike,=0A=
=0A=
It sounds like using volatiles is the opposite of what you want.  Unless I =
miss the point,=0A=
what you want is to have your root file system mounted read-only with only =
select files being=0A=
writable, and persistent.  Volatiles are by definition not persistent. Vola=
tiles may be a part of your=0A=
solution for files that can be non-persistent, but can't be the whole solut=
ion.=0A=
=0A=
If you can make a small number of entire directory hierarchies writable (li=
ke /etc, /mnt), you can make=0A=
small partitions that are mounted by /etc/fstab.  If you want to be more se=
lective, you need to have =0A=
a writable file system where the writable files will reside, with links in =
the root file system that point =0A=
to them.=0A=
=0A=
-Jim-=0A=
________________________________________=0A=
From: Mike Looijmans [mike.looijmans@topic.nl]=0A=
Sent: Wednesday, November 26, 2014 7:38 AM=0A=
To: yocto@yoctoproject.org=0A=
Subject: Re: [yocto] Support for writable files with a read-only root file =
system=0A=
=0A=
The one-size-fits-all solution is to use an unionfs, and a writable part in=
=0A=
RAM or mounted elsewhere, e.g. in flash (typically a tiny jffs2 partition).=
=0A=
=0A=
It requires quite some scripting to get right, you have to boot the system =
and=0A=
then mount the overlay, the unionfs to join it with the rootfs, and then=0A=
"pivot" it to make it the new root.=0A=
=0A=
After that you get a root where you can modify any file, and even persist t=
hat=0A=
change (if you use a persistent overlay).=0A=
=0A=
=0A=
=0A=
On 11/26/2014 08:51 AM, Matt Schuckmann wrote:=0A=
> I've been investigating the support for read only root file systems and t=
rying to suss out how to support persistent writeable files in my image whe=
re the root file system is read only, this seems like a very common thing f=
or an embedded Linux system to need but I'm not seeing the support for it.=
=0A=
>=0A=
> I should note that I'm working off of the Dylan branch, I'm not sure if t=
hings have changed in a newer branch.=0A=
>=0A=
> So far I've had to read the code to figure out as much as I have, and I h=
aven't found any documentation for this, am I missing something?=0A=
>=0A=
> It appears that my recipe(s) are supposed to install a volatiles file und=
er ${D}${sysconfdir}/default/volatiles/ that lists out the volatile directo=
ries, links and files that need to be created in the image.=0A=
>=0A=
> For writeable persistent files I would presume that I should specify link=
s that point to some place on a write partition.=0A=
>=0A=
> What I don't see is any sort of mechanism for setting up the default file=
s on that writeable partition, am I on my own for this or is there some oth=
er recommended mechanism.=0A=
>=0A=
> In my early research I found the MentorEmbedded/meta-ro-rootfs layer that=
 had a nifty way of specifying VOLATILE_BINDS to create a list of binds tha=
t should occur at boot up and in the process creating the mounts if the tar=
get of the bind didn't exist a copy was made from the read only location, t=
his appears to have provided a sort of default to go into the writeable loc=
ation. Was this functionality abandoned when support for ro-rootfs was brou=
ght into oe-core? If so why?=0A=
>=0A=
> A good example for the kind of writeable persistent file that I intend to=
 have is /etc/network/interfaces=0A=
> How do I go about letting the init_ifupdown recipe install it normally an=
d then have another recipe or even the image configure it to be either a li=
nk or a bind mount at another location while still preserving the default c=
ontents.=0A=
>=0A=
> I hope I'm making sense here.=0A=
>=0A=
> Thanks,=0A=
> Matt S.=0A=
>=0A=
=0A=
=0A=
=0A=
Met vriendelijke groet / kind regards,=0A=
=0A=
Mike Looijmans=0A=
System Expert=0A=
=0A=
=0A=
TOPIC Embedded Systems=0A=
Eindhovenseweg 32-C, NL-5683 KH Best=0A=
Postbus 440, NL-5680 AK Best=0A=
Telefoon: (+31) (0) 499 33 69 79=0A=
Telefax:  (+31) (0) 499 33 69 70=0A=
E-mail: mike.looijmans@topic.nl=0A=
Website: www.topic.nl=0A=
=0A=
Please consider the environment before printing this e-mail=0A=
=0A=
Topic zoekt gedreven (embedded) software specialisten!=0A=
http://topic.nl/vacatures/topic-zoekt-software-engineers/=0A=
=0A=
=0A=


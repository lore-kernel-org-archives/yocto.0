Received: from esa2.mentor.iphmx.com (esa2.mentor.iphmx.com [68.232.141.98])
 by mx.groups.io with SMTP id smtpd.web10.37255.1595249606491115911
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Jul 2020 05:53:26 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: deserted.net, ip: 68.232.141.98, mailfrom: joe@deserted.net)
IronPort-SDR: XIClG+LKpD+bxX9ffjuKwU5cPV9tmCRQTGCh6UM5SrPdUMIpzjug/XBswmC+0iTz97rzhuQrWu
 xBiEAnkmTLjlejpHLN+mm5eywbCobwMs61DRx2AWfvK7pojf0KRnyoE0+Np01O4a8KghBQ9K2H
 Gjhbfbz4L/fAIFMFnBzeV212TDIe5DseDj+RFGO+fWQuzg/xFgK9Kgzv7K6GBYAzOChova+MiA
 OO/PuqGpoHkUZbj8h3y+vpmB3z9CqWg+O8csRHWtqoVHsp4K9IDyu3ZVFrvr+CO+pHnBU69Ca9
 P4s=
X-IronPort-AV: E=Sophos;i="5.75,375,1589270400"; 
   d="asc'?scan'208";a="51094344"
Received: from orw-gwy-02-in.mentorg.com ([192.94.38.167])
  by esa2.mentor.iphmx.com with ESMTP; 20 Jul 2020 04:53:25 -0800
IronPort-SDR: 5MQx9umzNykTumgcNNg7ET16rHPz4jZfn9lF4LZQCHXtnMM4ta6NGWcSw1DXBKq7qB+ju7cXtW
 U8cHk2pnmeWyBxEbDhpzpWjbEwcQsimiApgo2vLdUzHv6xvMryQYDdbDl9YuG1MOlIaka39GqI
 lsfj433jIg+sv7ng37IpgyK6TunC1pI5hleA4ViXrv3dzmT4o1/0RP8R0mODx8QDsdpO/9+Zbp
 SBOOftLa4CFWVFZDJtJETHF70RRSRjC61nL+x0tr1DIRhVmDbOikD4L0mbHnnBymnR08CtUcbq
 m00=
Date: Mon, 20 Jul 2020 08:53:20 -0400
From: "Joe MacDonald" <joe@deserted.net>
To: Scott Murray <scott.murray@konsulko.com>
CC: Yi Zhao <yi.zhao@windriver.com>, <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [meta-selinux][PATCH 0/4] refpolicy: update to 20200229+git
Message-ID: <20200720125319.GA21145@deserted.net>
References: <20200707082914.30094-1-yi.zhao@windriver.com>
 <alpine.LFD.2.23.451.2007141131280.11165@godzilla.spiteful.org>
 <2629bc61-5450-4c6f-6241-6599077e0a86@windriver.com>
 <alpine.LFD.2.23.451.2007150526540.11165@godzilla.spiteful.org>
 <16221DF6FCA5F22B.32158@lists.yoctoproject.org>
 <ddb11ee5-c687-7ca9-a936-b0b2ad93f661@windriver.com>
 <alpine.LFD.2.23.451.2007171201030.11165@godzilla.spiteful.org>
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.23.451.2007171201030.11165@godzilla.spiteful.org>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
User-Agent: Mutt/1.10.1 (2018-07-13)
Return-Path: joe@deserted.net
X-Groupsio-MsgNum: 50001
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="6c2NcOVqGQ03X4Wi"
Content-Disposition: inline

--6c2NcOVqGQ03X4Wi
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[Re: [yocto] [meta-selinux][PATCH 0/4] refpolicy: update to 20200229+git] O=
n 20.07.17 (Fri 12:05) Scott Murray wrote:

> On Thu, 16 Jul 2020, Yi Zhao wrote:
>=20
> >
> > On 7/16/20 11:27 AM, Yi Zhao wrote:
> > >
> > > On 7/15/20 6:38 PM, Scott Murray wrote:
> > >> On Wed, 15 Jul 2020, Yi Zhao wrote:
> > >>
> > >>> On 7/15/20 12:19 AM, Scott Murray wrote:
> > >>>> On Tue, 7 Jul 2020, Yi Zhao wrote:
> > >>>>
> > >>>>> Here is the changelog for this is patchset:
> > >>>>>
> > >>>>> * Drop refpolicy 2.20190201
> > >>>>> =A0=A0=A0 If we still keep two versions of refpolicy, it is diffi=
cult to
> > >>>>> maintain
> > >>>>> =A0=A0=A0 two huge local patchsets. So drop this version and only=
 keep the git
> > >>>>> =A0=A0=A0 version.
> > >>>>>
> > >>>>> * Add patches to make systemd/sysvinit can work with all policy t=
ypes.
> > >>>>>
> > >>>>> Here are the results with this patcheset:
> > >>>>>
> > >>>>> Machine: qemux86-64
> > >>>>> Image: core-image-selinux
> > >>>>> Init manager: sysvinit and systemd
> > >>>>> Policy types: minimum, targeted, standard, mcs, mls
> > >>>>> Boot command: runqemu qemux86-64 kvm nographic bootparams=3D"seli=
nux=3D1
> > >>>>> enforcing=3D1" qemuparams=3D"-m 1024"
> > >>>>>
> > >>>>> 1. All refpolicy type can be built without problems.
> > >>>>>
> > >>>>> 2. With parameter selinux=3D1 & enforcing=3D1
> > >>>>> The qemu can boot up and login with all policy types.
> > >>>> [snip]
> > >>>>
> > >>>> I suspect I'm really missing something, but I'm unable to successf=
ully
> > >>>> make this work with poky + meta-selinux and its meta-openembedded
> > >>>> dependencies with either sysvinit or systemd; I see denials on boo=
t and
> > >>>> cannot log in due to denials on reading /etc/passwd.=A0 That's als=
o the
> > >>>> behavior I see without this update, so I'm wondering if I'm just d=
oing
> > >>>> something significantly wrong with respect to configuration.=A0 My
> > >>>> local.conf additions for testing are just:
> > >>>>
> > >>>> DISTRO_FEATURES_append =3D " selinux"
> > >>>
> > >>> Please set the following DISTRO_FEATURES:
> > >>>
> > >>> DISTRO_FEATURES_append =3D " acl xattr pam selinux"
> > >> Ah, poky is missing "pam", I somehow missed that when I checked
> > >> previously.=A0 I can get logged in when I add it and rebuild.=A0 It =
likely
> > >> would make sense to use the check_features class in e.g.
> > >> core-image-selinux to catch this.=A0 Would you be okay with a patch =
that
> > >> does so?
> > >
> > > Thanks. It makes sense. I can send a patch later or you can also do i=
t.
> > >
> > >>
> > >>> If you see some AVC denials for {map} like below:
> > >>>
> > >>> avc:=A0 denied=A0 { map } for=A0 pid=3D249 comm=3D"dbus-daemon" pat=
h=3D"/etc/passwd"
> > >>> dev=3D"vda" ino=3D345 scontext=3Dsystem_u:system_r:system_dbusd_t:s=
0-s0:c0.c1023
> > >>> tcontext=3Dsystem_u:object_r:etc_t:s0 tclass=3Dfile permissive=3D0
> > >>> avc:=A0 denied=A0 { map } for=A0 pid=3D319 comm=3D"avahi-daemon" pa=
th=3D"/etc/passwd"
> > >>> dev=3D"vda" ino=3D345 scontext=3Dsystem_u:system_r:avahi_t:s0
> > >>> tcontext=3Dsystem_u:object_r:etc_t:s0 tclass=3Dfile permissive=3D0
> > >>> avc:=A0 denied=A0 { map } for=A0 pid=3D379 comm=3D"login" path=3D"/=
etc/passwd"
> > >>> dev=3D"vda"
> > >>> ino=3D345 scontext=3Dsystem_u:system_r:local_login_t:s0-s0:c0.c1023
> > >>> tcontext=3Dsystem_u:object_r:etc_t:s0 tclass=3Dfile permissive=3D0
> > >>>
> > >>> They are harmless.
> > >> Having spurious denials seems like it would make using them for dete=
cting
> > >> actual bad behavior harder, I'll likely start looking at the policy =
to
> > >> see if some of this can be fixed.
> >
> > You can install auditd into the rootfs and startup the daemon to let the
> > denials messages write to audit.log rather than print to the console.
>=20
> Yes, but ideally I'd like to not have to filter a bunch of spam from the
> auditd logs to have them be useful for potential incident detection.  As I
> mentioned on my other reply, I plan to look into it further and likely
> will just carry a policy patch locally if it's reasonable to work out one.

I tend to agree.  My goal with the policy has always been to have a
clean boot in a 'standard' configuration for exactly the reason you
state here.  Having warnings that are harmless should be avoided as much
as possible because it makes it harder to detect real problems if
there's a bunch of noise.

So if you do get a change you'd like to propose sharing back, we'd
definitely want to consider merging it.


--=20
-Joe MacDonald.
:wq

--6c2NcOVqGQ03X4Wi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRjqRhJknEwCqrWVXzAW9yWWiDRfAUCXxWTpQAKCRDAW9yWWiDR
fNFTAJwPrtRm14wWi0r4sfrkBt14ngUgXwCgsPyLXTlexgoXGaX228CJHNmLhqs=
=bEL/
-----END PGP SIGNATURE-----

--6c2NcOVqGQ03X4Wi--

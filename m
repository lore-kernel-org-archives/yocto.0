Return-Path: <joe@deserted.net>
Received: from mail-oa0-f52.google.com (mail-oa0-f52.google.com
	[209.85.219.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23945E00B76
	for <yocto@yoctoproject.org>; Thu, 24 Apr 2014 11:19:13 -0700 (PDT)
Received: by mail-oa0-f52.google.com with SMTP id l6so3078977oag.11
	for <yocto@yoctoproject.org>; Thu, 24 Apr 2014 11:19:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=a8hzleX01MFljuqH81eDyShQzoV5rDkU9kvr0dFukbo=;
	b=cbpk6Z43YaaUsZlWl+LgpEd+VKOULyoj76Bgmc5eddDIh4u23SV5iF25I+oc128Rzx
	0vpdi0BxyGzFhw9sX29ssQ2LdfTEGhm3wmvwBQ8FxUgx+0m0fOv8JO+zPCpUvQvUugBi
	pblShQ2n2e7QVehLtFZ9JTeA3lkw7p3J98H2NG8Apgw0QfE/tIGPjCbfHIbGdJ/XJy9T
	2CJ8nYLmb9izTCQt5Hkw8KnTiWrxZ0StyQRCyueOwm1xq+64S4Z5KtZIMgp63Fz9LnP1
	kBw9Oq1R5P9FTUs6eI0Uc8YckZoKJE9c52YanZJ85tJNtV4jmyA0xLIMLXgeFo7q6kiD
	RYnQ==
X-Gm-Message-State: ALoCoQn0kEBQ8ObEjGEvQl7wnJtP/lTl8hrmQxaOVTLkrqZuXfss6YMW/uL8qoGJkE8v35jbTG9Z
X-Received: by 10.60.144.200 with SMTP id so8mr2699396oeb.31.1398363553019;
	Thu, 24 Apr 2014 11:19:13 -0700 (PDT)
Received: from deserted.net (24-246-4-250.cable.teksavvy.com. [24.246.4.250])
	by mx.google.com with ESMTPSA id
	dh8sm20564902oeb.10.2014.04.24.11.19.11 for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Thu, 24 Apr 2014 11:19:12 -0700 (PDT)
Date: Thu, 24 Apr 2014 14:19:09 -0400
From: Joe MacDonald <joe@deserted.net>
To: Pascal Ouyang <xin.ouyang@windriver.com>
Message-ID: <20140424181906.GA10115@deserted.net>
References: <cover.1395709062.git.wenzong.fan@windriver.com>
	<20140403192027.GM4075@deserted.net>
	<533E57CD.8010202@windriver.com> <533E65E5.9040707@windriver.com>
MIME-Version: 1.0
In-Reply-To: <533E65E5.9040707@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH 0/4] add targeted/minimum policy and some updates
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
X-List-Received-Date: Thu, 24 Apr 2014 18:19:14 -0000
X-Groupsio-MsgNum: 19197
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="SUOF0GtieIMvvwua"
Content-Disposition: inline

--SUOF0GtieIMvvwua
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey guys,

Sorry about the delayed response on these, I merged them today with a
minor update to the targeted description based on the explanation below.

Thanks,
-J.

[Re: [yocto] [meta-selinux][PATCH 0/4] add targeted/minimum policy and some=
 updates] On 14.04.04 (Fri 15:57) Pascal Ouyang wrote:

> =E4=BA=8E 14-4-4 =E4=B8=8B=E5=8D=882:57, Pascal Ouyang =E5=86=99=E9=81=93:
> >=E4=BA=8E 14-4-4 =E4=B8=8A=E5=8D=883:20, Joe MacDonald =E5=86=99=E9=81=
=93:
> >>Hey Wenzong,
> >>
> >>I merged two of these four.
> >>
> >>[[yocto] [meta-selinux][PATCH 0/4] add targeted/minimum policy and
> >>some updates] On 14.03.24 (Mon 21:07) wenzong.fan@windriver.com wrote:
> >>
> >>>From: Wenzong Fan <wenzong.fan@windriver.com>
> >>>
> >>>Changes:
> >>>* backport tmpfs_t patch from upstream;
> >>>* add rules for /var/log symlink on poky;
> >>
> >>These both went in.  These:
> >>
> >>>* add targeted policy type
> >>>* add minimum targeted policy
> >>
> >>I'm less clear on.  They both look like significant changes to
> >>refpolicy-* behaviour, which is fine, but in that case I think it'd be
> >>better to give them a different name.  Or one that differentiates them
> >>significantly.  For example the "minimum" policy has users unconfined
> >>and applications confined?  Or neither?  I'm not sure what the value is
> >>of these.
> >>
> >>If they really are just specialized versions of the standard reference
> >>policy, they should at least be ported to use the refpolicy_common
> >>infrastructure Phil set up a while back.
> >
> >Hi Joe&Wenzong,
> >
> >According to the origin design, both policy types are targeted policies.
> >
> >For targeted policies,
> >* Users will login into shells on unconfined domain.
> >* For applications with no policy module or with policy module disabled,
> >they will also run on unconfined domain.
> >* For applications "targeted", they would have policy module enabled,
> >with rules to do domtrans from unconfined/init* domain to their own doma=
in.
> >
> >The result will be:
> >- standard/mls :
> >   un-ruled applications(usually bin_t) will run on unconfined domain,
> >so operations will *not* be blocked.
>=20
> s#standard/mls#targeted/minimum#
>=20
> >- targeted/minimum
> >   un-ruled applications will run on user's current domain, such as
> >user_t,sysadm_t, so most privileged operations will be blocked.
> >
>=20
> s#targeted/minimum#standard/mls#
>=20
> :-;
>=20
> - Pascal
>=20
> >
> >Difference between refpolicy-minium&refpolicy-targeted
> >* refpolicy-minium =3D targeted policy with only core policies
> >   It should just be used for admins to defined their own policy.
> >   For example, a httpd server could just use refpolicy-minium + httpd
> >module. Actually, I have thought to use refpolicy-targeted-minium as its
> >name, but not in the end.
> >* refpolicy-targeted =3D targeted policy with all 300+ modules
> >
> >Thanks. :)
> >
> >- Pascal
> >
> >>
> >>Thanks,
> >>-J.
> >>
> >>>
> >>>The following changes since commit
> >>>a6079a43719e79e12a57e609923a0cccdba06916:
> >>>
> >>>   refpolicy: fix real path for su.shadow (2014-02-13 10:52:07 -0500)
> >>>
> >>>are available in the git repository at:
> >>>
> >>>   git://git.pokylinux.org/poky-contrib wenzong/ref-minimum
> >>>
> >>>http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dwenzong/ref-mi=
nimum
> >>>
> >>>
> >>>Wenzong Fan (4):
> >>>   refpolicy: associate tmpfs_t (shm) to device_t (devtmpfs) file
> >>>     systems
> >>>   refpolicy: add rules for /var/log symlink on poky
> >>>   refpolicy: add targeted policy type
> >>>   refpolicy: add minimum targeted policy
> >>>
> >>>  ...associate-tmpfs_t-shm-to-device_t-devtmpf.patch |   30 +++
> >>>  ...ky-policy-add-rules-for-syslogd_t-symlink.patch |   30 +++
> >>>  ...rules-for-var-log-symlink-audisp_remote_t.patch |   29 +++
> >>>  .../refpolicy/refpolicy-minimum_2.20130424.bb      |   46 +++++
> >>>  ...olicy-fix-optional-issue-on-sysadm-module.patch |   60 ++++++
> >>>  .../refpolicy-unconfined_u-default-user.patch      |  198
> >>>++++++++++++++++++++
> >>>  .../refpolicy/refpolicy-targeted_2.20130424.bb     |   18 ++
> >>>  .../refpolicy/refpolicy_2.20130424.inc             |    3 +
> >>>  8 files changed, 414 insertions(+)
> >>>  create mode 100644
> >>>recipes-security/refpolicy/refpolicy-2.20130424/filesystem-associate-t=
mpfs_t-shm-to-device_t-devtmpf.patch
> >>>
> >>>  create mode 100644
> >>>recipes-security/refpolicy/refpolicy-2.20130424/poky-policy-add-rules-=
for-syslogd_t-symlink.patch
> >>>
> >>>  create mode 100644
> >>>recipes-security/refpolicy/refpolicy-2.20130424/poky-policy-add-rules-=
for-var-log-symlink-audisp_remote_t.patch
> >>>
> >>>  create mode 100644
> >>>recipes-security/refpolicy/refpolicy-minimum_2.20130424.bb
> >>>  create mode 100644
> >>>recipes-security/refpolicy/refpolicy-targeted/refpolicy-fix-optional-i=
ssue-on-sysadm-module.patch
> >>>
> >>>  create mode 100644
> >>>recipes-security/refpolicy/refpolicy-targeted/refpolicy-unconfined_u-d=
efault-user.patch
> >>>
> >>>  create mode 100644
> >>>recipes-security/refpolicy/refpolicy-targeted_2.20130424.bb
> >>>
> >
> >
>=20
>=20
--=20
-Joe MacDonald.
:wq

--SUOF0GtieIMvvwua
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlNZVZAACgkQwFvcllog0XxxNwCfcHkoG+xfu7WbY9yqf7XZVVaX
trMAnjLfMhFihH862dIuf1wIR4ljgQBN
=41/D
-----END PGP SIGNATURE-----

--SUOF0GtieIMvvwua--

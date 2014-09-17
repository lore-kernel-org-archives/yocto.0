Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04206E0084D; Wed, 17 Sep 2014 06:09:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-ig0-f177.google.com (mail-ig0-f177.google.com
	[209.85.213.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36802E00786
	for <yocto@yoctoproject.org>; Wed, 17 Sep 2014 06:09:27 -0700 (PDT)
Received: by mail-ig0-f177.google.com with SMTP id hn18so78163igb.4
	for <yocto@yoctoproject.org>; Wed, 17 Sep 2014 06:09:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=shsgHAK8IMwhnRGND3/Gcc07IwXMSmVF56tUj7mPHq0=;
	b=bZc/19im00YTUHTs2kBbNjLzA/o1K+DMN1uK+rF6zUaSEtC84YP/Ts8i77RLQ1bqi/
	OTHgkrp6k0oZ4xvFVsMn2R1AwqJzDuzdFx/d/Cu+xzfuwp6lsEHKheEOsoA0FQa7bkzy
	Dat/9Wnl+4PcC6+ji7yhDGKc05jSZKwqeFvDYh59EdvRih8iGo8xl8hDDwDrc9/NL3WK
	wuUIF1gAXILCJYvgxlcGken3Jq4x/r0O6AHoU38KDrfyOYZutBF2MPF1URjXgP/0k0OD
	Q84B9Je1mstBwFPsKVVCR5zjxJv/NPyxfrWpyUiXAzZy1pzmPT7LIb8Htf2BGpnxoac4
	Mgmg==
X-Gm-Message-State: ALoCoQmUBw2V3ZZdwhYsdYy5kCa/BWq+bTKRtt4BwSe747kAwDmSn5CC/qgUIoWBQTwrxkaLO4Sr
X-Received: by 10.42.39.142 with SMTP id h14mr5585591ice.32.1410959366350;
	Wed, 17 Sep 2014 06:09:26 -0700 (PDT)
Received: from deserted.net (24-246-4-250.cable.teksavvy.com. [24.246.4.250])
	by mx.google.com with ESMTPSA id
	qo8sm4268534igb.7.2014.09.17.06.09.24 for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Wed, 17 Sep 2014 06:09:25 -0700 (PDT)
Date: Wed, 17 Sep 2014 09:09:22 -0400
From: Joe MacDonald <joe@deserted.net>
To: Pascal Ouyang <xin.ouyang@windriver.com>
Message-ID: <20140917130922.GB7912@deserted.net>
References: <1410810395-16786-1-git-send-email-joe_macdonald@mentor.com>
	<541950EF.2070100@windriver.com>
MIME-Version: 1.0
In-Reply-To: <541950EF.2070100@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH] selinux-userspace: update userspace SRC_URI and checksums
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
X-List-Received-Date: Wed, 17 Sep 2014 13:09:38 -0000
X-Groupsio-MsgNum: 21496
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="xXmbgvnjoT4axfJE"
Content-Disposition: inline

--xXmbgvnjoT4axfJE
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Pascal,

[Re: [yocto] [meta-selinux][PATCH] selinux-userspace: update userspace SRC_=
URI and checksums] On 14.09.17 (Wed 17:14) Pascal Ouyang wrote:

> =E4=BA=8E 14-9-16 =E4=B8=8A=E5=8D=883:46, Joe MacDonald =E5=86=99=E9=81=
=93:
> >diff --git a/recipes-security/selinux/selinux_20131030.inc b/recipes-sec=
urity/selinux/selinux_20131030.inc
> >index 2cb35d5..01cc52f 100644
> >--- a/recipes-security/selinux/selinux_20131030.inc
> >+++ b/recipes-security/selinux/selinux_20131030.inc
> >@@ -1,5 +1,5 @@
> >  SELINUX_RELEASE =3D "20131030"
> >
> >-SRC_URI =3D "http://userspace.selinuxproject.org/releases/${SELINUX_REL=
EASE}/${BPN}-${PV}.tar.gz"
> >+SRC_URI =3D "https://github.com/SELinuxProject/selinux/archive/${BPN}-$=
{PV}.tar.gz"
>=20
>=20
> Hi Joe,
>=20
> I have tested and want to change the SRC_URI to:
> https://raw.githubusercontent.com/wiki/SELinuxProject/selinux/files/relea=
ses/${SELINUX_RELEASE}/${BPN}-${PV}.tar.gz
> so we can get separate tarballs and no checksum changes.

I'd already pushed this change by the time you'd sent out this email,
but we could revise it if you felt really strongly about it.  I don't
think that's really necessary though.  I knew about the
raw.githubusercontent.com link, they're actually the links you get
pointed at for the refpolicy releases, which I'm currently updating, but
if you follow the 'releases' link on the SELinuxProject github page for
'selinux', you get pointed at the release tarballs I've referenced in my
commit.  I think in this case it's best to follow the most official
sources for the release.

This also fits well with the next logical step of using the single
release tarball of the official sources:

   https://github.com/SELinuxProject/selinux/releases

which is what I'm planning to do for the userspace update I'm working on
now.

What do you think?

-J.

--=20
-Joe MacDonald.
:wq

--xXmbgvnjoT4axfJE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlQZiAIACgkQwFvcllog0XwOzwCeJxG6ZeukTaCVzYaHY3XQpcnU
c9AAnRGtcGXH7hIi7RF7r0H0UDEPzsE/
=x2aV
-----END PGP SIGNATURE-----

--xXmbgvnjoT4axfJE--

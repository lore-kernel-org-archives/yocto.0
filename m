Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7753FE00A5B; Fri,  7 Aug 2015 12:47:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.170 listed in list.dnswl.org]
Received: from mail-ig0-f170.google.com (mail-ig0-f170.google.com
	[209.85.213.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F6D6E009F0
	for <yocto@yoctoproject.org>; Fri,  7 Aug 2015 12:47:01 -0700 (PDT)
Received: by igfj19 with SMTP id j19so18523616igf.1
	for <yocto@yoctoproject.org>; Fri, 07 Aug 2015 12:47:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=fuESoSDagLOfjR6D+bFymyEbkzAxryvCh35eCs9RkqQ=;
	b=Y1t/s7uw2Qhy/OTwge4w4aJJatF8IbWFc1i5prrgy8+wId+bIvEsWaE+qcshHE/33I
	lVJkwR/5ca11wOzIdWeNPMlE+HUxBVbJVBtIjBDBErtzF4oPqNbuxtuAMHYDjf1/ut3U
	MhfSqCMrAWIfgc4tw9TrlKrOurpXbD8+ubT4L8bxREn7gdadFgD5fPVh505fIhN6h6qN
	g9map5eygh+aBfRH0trGqZ+DJzyrNFm3FG7GXuxTgL466k2F7OTSWf+tv6U01JT1cdjj
	FeYxxGw+B2V5b888DM3EOz87GcYaB232TeMOM+lTs9pIqiH9ZjdIW+ZUXA35U2NCKyZG
	gOEg==
X-Gm-Message-State: ALoCoQm9CZedu1/lWsfNd74nnexm0SB6cNXFVWpDVuRBUDWhorTLlD0tlPMFf7ItU+71dCfYVLNk
X-Received: by 10.50.78.99 with SMTP id a3mr5403598igx.29.1438976820937;
	Fri, 07 Aug 2015 12:47:00 -0700 (PDT)
Received: from deserted.net ([23.233.31.74])
	by smtp.gmail.com with ESMTPSA id 15sm7518409iop.3.2015.08.07.12.46.59
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 07 Aug 2015 12:47:00 -0700 (PDT)
Date: Fri, 7 Aug 2015 15:46:19 -0400
From: Joe MacDonald <joe@deserted.net>
To: wenzong fan <wenzong.fan@windriver.com>
Message-ID: <20150807194619.GA13217@deserted.net>
References: <1427941583-22684-1-git-send-email-rongqing.li@windriver.com>
	<55B1FC87.2080807@windriver.com>
MIME-Version: 1.0
In-Reply-To: <55B1FC87.2080807@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-704 http://www.vim.org
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH][meta-selinux] findutils/gnulib:drop the error output of 'ls' command
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
X-List-Received-Date: Fri, 07 Aug 2015 19:47:05 -0000
X-Groupsio-MsgNum: 25932
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="J/dobhs11T7y2rNN"
Content-Disposition: inline

--J/dobhs11T7y2rNN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[Re: [yocto] [PATCH][meta-selinux] findutils/gnulib:drop the error output o=
f 'ls' command] On 15.07.24 (Fri 16:51) wenzong fan wrote:

> Ping ...

This one clearly got lost in the mail somewhere (I'm working on making
sure that doesn't happen anymore) but it also doesn't look applicable to
the current findutils.  If it is, please re-submit it.

-J.

>=20
> On 04/02/2015 10:26 AM, rongqing.li@windriver.com wrote:
> >From: Roy Li <rongqing.li@windriver.com>
> >
> >The ls command is used to check if the file exists, and it is normal that
> >the checked file does not exist, so drop the ls error ouput:
> >	 ls: cannot access ./doc/fdl.texi: No such file or directory
> >
> >Signed-off-by: Roy Li <rongqing.li@windriver.com>
> >---
> >  .../drop-the-error-output-of-ls-command.patch      | 29 ++++++++++++++=
++++++++
> >  .../findutils/findutils_4.4.2.bbappend             |  1 +
> >  2 files changed, 30 insertions(+)
> >  create mode 100644 recipes-extended/findutils/findutils-4.4.2/drop-the=
-error-output-of-ls-command.patch
> >
> >diff --git a/recipes-extended/findutils/findutils-4.4.2/drop-the-error-o=
utput-of-ls-command.patch b/recipes-extended/findutils/findutils-4.4.2/drop=
-the-error-output-of-ls-command.patch
> >new file mode 100644
> >index 0000000..069be41
> >--- /dev/null
> >+++ b/recipes-extended/findutils/findutils-4.4.2/drop-the-error-output-o=
f-ls-command.patch
> >@@ -0,0 +1,29 @@
> >+[PATCH] drop the error output of 'ls' command
> >+
> >+Upstream-Status: pending
> >+
> >+ls is used to check if the file exists, and it is normal that
> >+the checked file does not exist, so drop the ls error
> >+	 ls: cannot access ./doc/fdl.texi: No such file or directory
> >+
> >+Signed-off-by: Roy Li <rongqing.li@windriver.com>
> >+---
> >+ gnulib-tool | 2 +-
> >+ 1 file changed, 1 insertion(+), 1 deletion(-)
> >+
> >+diff --git a/gnulib-tool b/gnulib-tool
> >+index 354b1f0..beb81ba 100755
> >+--- a/gnulib-tool
> >++++ b/gnulib-tool
> >+@@ -602,7 +602,7 @@ else
> >+   {
> >+     # Use two sed invocations. A single sed -n -e 's,^.* -> \(.*\)$,\1=
,p'
> >+     # would do the wrong thing if the link target contains " -> ".
> >+-    LC_ALL=3DC ls -l "$1" | sed -e 's, -> ,#%%#,' | sed -n -e 's,^.*#%=
%#\(.*\)$,\1,p'
> >++    LC_ALL=3DC ls -l "$1" 2>/dev/null | sed -e 's, -> ,#%%#,' | sed -n=
 -e 's,^.*#%%#\(.*\)$,\1,p'
> >+   }
> >+ fi
> >+
> >+--
> >+1.9.1
> >+
> >diff --git a/recipes-extended/findutils/findutils_4.4.2.bbappend b/recip=
es-extended/findutils/findutils_4.4.2.bbappend
> >index 3245e5c..e174888 100644
> >--- a/recipes-extended/findutils/findutils_4.4.2.bbappend
> >+++ b/recipes-extended/findutils/findutils_4.4.2.bbappend
> >@@ -5,6 +5,7 @@ FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}-${PV}:"
> >  SRC_URI +=3D "git://git.savannah.gnu.org/gnulib.git;protocol=3Dgit;rev=
=3D0e0635af0b23826911dc456bd0da40dcb19247de"
> >  SRC_URI +=3D "file://findutils-with-selinux.patch"
> >  SRC_URI +=3D "file://findutils-with-selinux-gnulib.patch"
> >+SRC_URI +=3D "file://drop-the-error-output-of-ls-command.patch;patchdir=
=3D../git/"
> >
> >  inherit with-selinux
> >
> >
--=20
-Joe MacDonald.
:wq

--J/dobhs11T7y2rNN
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAlXFCvYACgkQwFvcllog0XyBWQCeMikqLfxZh7HucwXCrwVWm7C5
uM8AmwThbsj9qM3UKzIYDx1GlpzuH/fN
=j4Kq
-----END PGP SIGNATURE-----

--J/dobhs11T7y2rNN--

Return-Path: <joe@deserted.net>
Received: from mail-qg0-f51.google.com (mail-qg0-f51.google.com
	[209.85.192.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6996AE00B57
	for <yocto@yoctoproject.org>; Mon,  7 Apr 2014 06:54:51 -0700 (PDT)
Received: by mail-qg0-f51.google.com with SMTP id q108so6173304qgd.38
	for <yocto@yoctoproject.org>; Mon, 07 Apr 2014 06:54:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=+VTIY9qbZBZ9NMYw7O/2OaV280xUEJZOh3k9Ooss5eY=;
	b=JSIq1b+nepZ3TK//XsK+xWWQWjssaxry33ehvW74E8DHPYCGAOkZaVo5Ak6DnL8a/I
	UAFBwIjvjVtC18qJdybUHG5nnG++Xsw/Ce6UUZukpE9bbCCCMe7b3n87mzcd/PQ2d740
	Ugr6BDnwPN00oGyZLkcEo4e/L61eUZ8N/NXbXTlPCwsE3D1muRIMWidRiNEei0a2xxxh
	k2vJdTOwbtYbymD/9ENf0kc2gOC/Kpa5Z3/Nc4sab9qyr9RPgzxq3nxXNrh82tmtlYwQ
	+hjAKoBDaXH6HBWQxofxbaVhXpoA1AnEI6WZPeysJ92Gb7dzPM+3eO2/DC/prWuoLjn7
	A+cg==
X-Gm-Message-State: ALoCoQlPXr0p9gJOfGPHjx+owznj5sTKIXSyBpbpj0OTQfCe8YkJ2upTpa3u71GhsZPVA/Twaek4
X-Received: by 10.229.179.65 with SMTP id bp1mr15111758qcb.11.1396878891106;
	Mon, 07 Apr 2014 06:54:51 -0700 (PDT)
Received: from deserted.net ([128.224.252.2]) by mx.google.com with ESMTPSA id
	p68sm23176715qga.18.2014.04.07.06.54.49 for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Mon, 07 Apr 2014 06:54:49 -0700 (PDT)
Date: Mon, 7 Apr 2014 09:54:47 -0400
From: Joe MacDonald <joe@deserted.net>
To: Mark Hatle <mark.hatle@windriver.com>
Message-ID: <20140407135445.GA5044@deserted.net>
References: <1396652972-28046-1-git-send-email-mark.hatle@windriver.com>
MIME-Version: 1.0
In-Reply-To: <1396652972-28046-1-git-send-email-mark.hatle@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH] audit: Fix lack of a default audit.rules
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
X-List-Received-Date: Mon, 07 Apr 2014 13:54:52 -0000
X-Groupsio-MsgNum: 18867
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ZPt4rx8FFjLCG7dd"
Content-Disposition: inline

--ZPt4rx8FFjLCG7dd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[[meta-selinux][PATCH] audit: Fix lack of a default audit.rules] On 14.04.0=
4 (Fri 18:09) Mark Hatle wrote:

> Various components were failing, and upon investigation it was noted
> that the audit.rules file referenced by the initscript wasn't available.
>=20
> There was however a copy under the rules.d directory.  Investigating
> the audit.spec file (which in the upstream source) showed that it was
> expected that the version in the rules.d should be copied into
> /etc/audit.

It's expected that you'd actually generate the audit.rules file using
augenrules, but this is a reasonable approximation of that.  :-)

> Do this and correct the systemd services file to use the same file.

Also the right thing to do here.

Merging.
-J.

>=20
> Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
> ---
>  recipes-security/audit/audit/auditd.service | 2 +-
>  recipes-security/audit/audit_2.3.2.bb       | 5 +++++
>  2 files changed, 6 insertions(+), 1 deletion(-)
>=20
> diff --git a/recipes-security/audit/audit/auditd.service b/recipes-securi=
ty/audit/audit/auditd.service
> index 6daa056..adf4d3b 100644
> --- a/recipes-security/audit/audit/auditd.service
> +++ b/recipes-security/audit/audit/auditd.service
> @@ -14,7 +14,7 @@ ExecStart=3D/sbin/auditd -n
>  ## Then copy existing rules to /etc/audit/rules.d/
>  ## Not doing this last step can cause loss of existing rules
>  #ExecStartPost=3D-/sbin/augenrules --load
> -ExecStartPost=3D-/sbin/auditctl -R /etc/audit/rules.d/audit.rules
> +ExecStartPost=3D-/sbin/auditctl -R /etc/audit/audit.rules
>  ExecReload=3D/bin/kill -HUP $MAINPID
> =20
>  [Install]
> diff --git a/recipes-security/audit/audit_2.3.2.bb b/recipes-security/aud=
it/audit_2.3.2.bb
> index 4a9c954..ae6556f 100644
> --- a/recipes-security/audit/audit_2.3.2.bb
> +++ b/recipes-security/audit/audit_2.3.2.bb
> @@ -67,6 +67,8 @@ FILES_${PN}-dbg +=3D "${libdir}/python${PYTHON_BASEVERS=
ION}/*/.debug"
>  FILES_${PN}-python =3D "${libdir}/python${PYTHON_BASEVERSION}"
>  FILES_${PN}-dev +=3D "${base_libdir}/*.so ${base_libdir}/*.la"
> =20
> +CONFFILES_auditd +=3D "${sysconfdir}/audit/audit.rules"
> +
>  do_install_append() {
>  	rm -f ${D}/${libdir}/python${PYTHON_BASEVERSION}/site-packages/*.a
>  	rm -f ${D}/${libdir}/python${PYTHON_BASEVERSION}/site-packages/*.la
> @@ -91,4 +93,7 @@ do_install_append() {
> =20
>  	chmod 750 ${D}/etc/audit ${D}/etc/audit/rules.d
>  	chmod 640 ${D}/etc/audit/auditd.conf ${D}/etc/audit/rules.d/audit.rules
> +
> +	# Based on the audit.spec "Copy default rules into place on new install=
ation"
> +	cp ${D}/etc/audit/rules.d/audit.rules ${D}/etc/audit/audit.rules
>  }
--=20
-Joe MacDonald.
:wq

--ZPt4rx8FFjLCG7dd
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlNCrg4ACgkQwFvcllog0XzYPACfaJ68KbYAxm0oubIcSPClcYYY
BisAn2wIyiBf1uWx4DBQsLiqxwuTODLH
=atl2
-----END PGP SIGNATURE-----

--ZPt4rx8FFjLCG7dd--

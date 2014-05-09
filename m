Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87306E00B6A; Fri,  9 May 2014 06:23:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.174 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-qc0-f174.google.com (unknown [209.85.216.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADF66E00B66
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 06:22:58 -0700 (PDT)
Received: by mail-qc0-f174.google.com with SMTP id x13so4554304qcv.33
	for <yocto@yoctoproject.org>; Fri, 09 May 2014 06:22:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=VCQVKwtmOs8xZLxSr4EbZV8hGVjbN+JwLYGceWzzIfw=;
	b=C1TTPtOlDcfkaIhJI3aAj4S6C/i5z1Qua5oSBzNTeX19H/8O1L5T69e4sN2aLCgog8
	A0jkLpS0UdF5QzIhfaWoQqnSVQxXfPKhyTJegaxncVqdpBNYu5gF9gFw+m/9soNpS/y4
	e1jxIn+1O+yWDfzPt+WdKlxReZVXFWZBo97SJvMnhiaos2XewXsSL0NhE3YIUKwUd56X
	154sxDMMLEbsRX7OVAaTleEfQqn3/ZQxwMfWmz1Jx4d/jeSaf+oUQ9N3TxIBuBYIgvjW
	RM3HRIds0bHk6Xu9iM0oD3IWrzphfKitAsdBsFi824TxWW1Gdh4vmWNAP99ux+M18mye
	k6Mg==
X-Gm-Message-State: ALoCoQltQDcvnUNUorV/NUfTGe6xGxoCoSvy264pDQPuSNJS61am/6hkT7UKwiSWiH89FTMrNYoR
X-Received: by 10.224.103.129 with SMTP id k1mr14623293qao.62.1399641777773;
	Fri, 09 May 2014 06:22:57 -0700 (PDT)
Received: from deserted.net ([128.224.252.2])
	by mx.google.com with ESMTPSA id 60sm1348768qgr.29.2014.05.09.06.22.56
	for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Fri, 09 May 2014 06:22:56 -0700 (PDT)
Date: Fri, 9 May 2014 09:22:54 -0400
From: Joe MacDonald <joe@deserted.net>
To: jackie.huang@windriver.com
Message-ID: <20140509132252.GA3770@deserted.net>
References: <1399629018-9192-1-git-send-email-jackie.huang@windriver.com>
MIME-Version: 1.0
In-Reply-To: <1399629018-9192-1-git-send-email-jackie.huang@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH] initscripts/checkroot.sh: restore file contexts for /run
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
X-List-Received-Date: Fri, 09 May 2014 13:23:02 -0000
X-Groupsio-MsgNum: 19510
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="vtzGhvizbBRQ85DL"
Content-Disposition: inline

--vtzGhvizbBRQ85DL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Merged, thanks Jackie.

-J.

[[yocto] [meta-selinux][PATCH] initscripts/checkroot.sh: restore file conte=
xts for /run] On 14.05.09 (Fri 05:50) jackie.huang@windriver.com wrote:

> From: Jackie Huang <jackie.huang@windriver.com>
>=20
> The file contexts for /run is incorrect while running checkroot.sh
> in boot time which causes mount fail to create new dir and file
> in /run, so restore the security contexts in it.
>=20
> Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
> ---
>  recipes-core/initscripts/initscripts_1.0.bbappend |    2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/recipes-core/initscripts/initscripts_1.0.bbappend b/recipes-=
core/initscripts/initscripts_1.0.bbappend
> index 7ec66ea..367cd6b 100644
> --- a/recipes-core/initscripts/initscripts_1.0.bbappend
> +++ b/recipes-core/initscripts/initscripts_1.0.bbappend
> @@ -5,4 +5,6 @@ do_install_append () {
>  touch /var/log/lastlog
>  test ! -x /sbin/restorecon || /sbin/restorecon -RF /var/volatile/ /var/l=
ib /run
>  EOF
> +	sed -i '/mount -n -o remount,$rootmode/i\test ! -x /sbin/restorecon || =
/sbin/restorecon -RF /run' \
> +	    ${D}${sysconfdir}/init.d/checkroot.sh
>  }
> --=20
> 1.7.9.5
>=20
--=20
-Joe MacDonald.
:wq

--vtzGhvizbBRQ85DL
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlNs1pQACgkQwFvcllog0XwEWACfd2Jw6ajxHCrRF4L1edr03yWp
+lsAoIGdhQaKtNRA49iv6Lbjb6hPlV91
=l87V
-----END PGP SIGNATURE-----

--vtzGhvizbBRQ85DL--

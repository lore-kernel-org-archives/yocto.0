Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28152E00D42; Fri, 17 Nov 2017 15:16:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EFFD6E00CF1
	for <yocto@yoctoproject.org>; Fri, 17 Nov 2017 15:16:18 -0800 (PST)
Received: by mail-wm0-f65.google.com with SMTP id 128so722440wmo.3
	for <yocto@yoctoproject.org>; Fri, 17 Nov 2017 15:16:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=5o97k7J2dsZEJBc6rUj9iJVSNnL1E2Ggplud/6EhkVs=;
	b=PIq1jywYWNA+Cym6T5tqDDTsw/x1qz7fJIHvn+SUYHhIRC8IknBBMbdsRPcJI8Bu7/
	yazxfBjYf6em4ZagtRQGunT9ODRtWFBXQWnSZm5fw1mOinBT7YAdbcYsbyQxleoJE16A
	ArdnueAHd6M14wMg+4x5HBP6PqwHEX8mvSZDU6HG7qVkiSO/u7iG5gbqbOQp3o0n0YVz
	rO2MXmo+BdT24suqxbbmwogdupL9HOu9THHHut4CUay1GFa9q0WvyRmdllKqUDj/yF5i
	0pGGTs2n+EUbX5D3gVVwQ07pH9Hij5Tm8Qz9aRoaAumXRLuZg+zvcgODTszK0MsCZCFk
	77UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=5o97k7J2dsZEJBc6rUj9iJVSNnL1E2Ggplud/6EhkVs=;
	b=ibP7MjSVT4wsBU6ElBHVBo2nALtm45gsfUuCHkYgAK9X7EmBntUe3F6Ug4sLvaH/5N
	L/EixlE1iUiThKfUvJ1XbxQf4CuJz74hS27N5aa4mANpMakVqvrNR9ZwwLy7d/po6jov
	iAMU4o8MxikWx3ynnopO8vijS14wueaycWjMHUhY95qcG3+T/KkuVThlWKlwsuhxNsoo
	twwcmf6nk1TdW20fpmyYI8dpuQIyOl6dvz3yXMS7E7eIKq7gQYwEmiCuLBncVkaEdRfk
	lLPnhHbeUQ4wAqubtT9/s9qvMKQ+aDyg8LOK+0MRVLqFOKF/GiC0Cg1nQSLUvSlMYuzt
	aWsg==
X-Gm-Message-State: AJaThX6ZxnUAmfhqqVTQdkpsD3Ic+Haj82wXWNaZPT/704fds07nYZlY
	j7ij2HrRgcmnZxdneZAwGflcHpNcdK/Ab/dTBj4=
X-Google-Smtp-Source: AGs4zMZpPt3sCdgh1q8vLn4EPzzSntP8aVD8VOm9eyBeS5QyBj0AeVQovMdAwZOIRV1qmqfFOEZ39AogqlpQd9CdfSs=
X-Received: by 10.28.127.197 with SMTP id a188mr5312987wmd.138.1510960577578; 
	Fri, 17 Nov 2017 15:16:17 -0800 (PST)
MIME-Version: 1.0
Received: by 10.223.133.98 with HTTP; Fri, 17 Nov 2017 15:16:16 -0800 (PST)
In-Reply-To: <1510199136-11656-1-git-send-email-armccurdy@gmail.com>
References: <1510199136-11656-1-git-send-email-armccurdy@gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Fri, 17 Nov 2017 15:16:16 -0800
Message-ID: <CAJ86T=WzN4oLZwJ=xkDokj7raEEfrM=rxn+8No8ciDSr6-+kig@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-gplv2][PATCH] gnutls: update 3.3.27 -> 3.3.28
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
X-List-Received-Date: Fri, 17 Nov 2017 23:16:20 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Nov 8, 2017 at 7:45 PM, Andre McCurdy <armccurdy@gmail.com> wrote:
> * Version 3.3.28 (released 2017-07-04)
>
> ** libgnutls: Fixed issue when rehandshaking without a client certificate in
>    a session which initially used one. Reported by Frantisek Sumsal.
>
> ** libgnutls: fix issue in RSA-PSK client callback which resulted in no username
>    being sent to the peer. Patch by Nicolas Dufresne.
>
> ** libgnutls: no longer parse the ResponseID field of the status response
>    TLS extension. The field is not used by GnuTLS nor is made available to
>    calling applications. That addresses a null pointer dereference on server
>    side caused by packets containing the ResponseID field. Reported
>    by Hubert Kario. [GNUTLS-SA-2017-4]
>
> ** libgnutls: Handle specially HSMs which request explicit authentication.
>    There are HSMs which return CKR_USER_NOT_LOGGED_IN on the first private key
>    operation. Detect that state and try to login.
>
> ** libgnutls: the GNUTLS_PKCS11_OBJ_FLAG_LOGIN will force a login on HSMs.
>    That is, even in tokens which do not have a CKF_LOGIN_REQUIRED flag
>    a login will be forced. This improves operation on certain Safenet HSMs.
>
> ** libgnutls: do not set leading zeros when copying integers on HSMs.
>    PKCS#11 defines integers as unsigned having most significant byte
>    first, e.g., 32768 = 0x80 0x00. This is interpreted literraly by
>    some HSMs which do not accept an integer with a leading zero. This
>    improves operation with certain Atos HSMs.
>
> ** libgnutls: Backported PKCS#11 key generation functionality for DSA keys.
>
> ** libgnutls: Improve check for /dev/urandom uniqueness. Ensure that when
>    gnutls_global_init() is called for a second time that /dev/urandom is
>    re-opened when the inode or device ID has changed.
>
> ** API and ABI modifications:
> No changes since last version.

Ping. CCing Ross.

> Signed-off-by: Andre McCurdy <armccurdy@gmail.com>
> ---
>  recipes-support/gnutls/gnutls.inc       |  9 ++++-----
>  recipes-support/gnutls/gnutls_3.3.27.bb | 17 -----------------
>  recipes-support/gnutls/gnutls_3.3.28.bb |  8 ++++++++
>  3 files changed, 12 insertions(+), 22 deletions(-)
>  delete mode 100644 recipes-support/gnutls/gnutls_3.3.27.bb
>  create mode 100644 recipes-support/gnutls/gnutls_3.3.28.bb
>
> diff --git a/recipes-support/gnutls/gnutls.inc b/recipes-support/gnutls/gnutls.inc
> index 4a5c3df..4cf375f 100644
> --- a/recipes-support/gnutls/gnutls.inc
> +++ b/recipes-support/gnutls/gnutls.inc
> @@ -8,9 +8,8 @@ LICENSE_${PN}-xx = "LGPLv2.1+"
>  LICENSE_${PN}-bin = "GPLv3+"
>  LICENSE_${PN}-openssl = "GPLv3+"
>
> -LIC_FILES_CHKSUM = "file://LICENSE;md5=71391c8e0c1cfe68077e7fce3b586283 \
> -                    file://doc/COPYING;md5=d32239bcb673463ab874e80d47fae504 \
> -                    file://doc/COPYING.LESSER;md5=a6f89e2100d9b6cdffcea4f398e37343"
> +LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504 \
> +                    file://COPYING.LESSER;md5=a6f89e2100d9b6cdffcea4f398e37343"
>
>  DEPENDS = "nettle gmp virtual/libiconv"
>  DEPENDS_append_libc-musl = " argp-standalone"
> @@ -21,9 +20,8 @@ SRC_URI = "ftp://ftp.gnutls.org/gcrypt/gnutls/v${SHRT_VER}/gnutls-${PV}.tar.xz"
>
>  inherit autotools texinfo binconfig pkgconfig gettext lib_package gtk-doc
>
> -PACKAGECONFIG ??= "libidn zlib"
> +PACKAGECONFIG ??= "zlib"
>
> -PACKAGECONFIG[libidn] = "--with-idn,--without-idn,libidn"
>  PACKAGECONFIG[libtasn1] = "--with-included-libtasn1=no,--with-included-libtasn1,libtasn1"
>  PACKAGECONFIG[p11-kit] = "--with-p11-kit,--without-p11-kit,p11-kit"
>  PACKAGECONFIG[tpm] = "--with-tpm,--without-tpm,trousers"
> @@ -31,6 +29,7 @@ PACKAGECONFIG[zlib] = "--with-zlib,--without-zlib,zlib"
>
>  EXTRA_OECONF = " \
>      --enable-doc \
> +    --disable-crywrap \
>      --disable-libdane \
>      --disable-guile \
>      --disable-rpath \
> diff --git a/recipes-support/gnutls/gnutls_3.3.27.bb b/recipes-support/gnutls/gnutls_3.3.27.bb
> deleted file mode 100644
> index a1dcdb5..0000000
> --- a/recipes-support/gnutls/gnutls_3.3.27.bb
> +++ /dev/null
> @@ -1,17 +0,0 @@
> -require gnutls.inc
> -
> -LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504 \
> -                    file://COPYING.LESSER;md5=a6f89e2100d9b6cdffcea4f398e37343"
> -
> -SRC_URI += " \
> -    file://configure.ac-fix-sed-command.patch \
> -    file://use-pkg-config-to-locate-zlib.patch \
> -"
> -SRC_URI[md5sum] = "8ee8cebd7f7575b11f232766a21c31d3"
> -SRC_URI[sha256sum] = "8dfda16c158ef5c134010d51d1a91d02aa5d43b8cb711b1572650a7ffb56b17f"
> -
> -# This version doesn't support this option added in newer gnutls
> -# ERROR: gnutls-3.3.27-r0 do_configure: QA Issue: gnutls: configure was passed unrecognised options: --with-idn [unknown-configure-option]
> -PACKAGECONFIG[libidn] = ""
> -# but it still has the libidn dependency, without this option
> -EXTRA_OECONF += "--disable-crywrap"
> diff --git a/recipes-support/gnutls/gnutls_3.3.28.bb b/recipes-support/gnutls/gnutls_3.3.28.bb
> new file mode 100644
> index 0000000..1b23369
> --- /dev/null
> +++ b/recipes-support/gnutls/gnutls_3.3.28.bb
> @@ -0,0 +1,8 @@
> +require gnutls.inc
> +
> +SRC_URI += " \
> +    file://configure.ac-fix-sed-command.patch \
> +    file://use-pkg-config-to-locate-zlib.patch \
> +"
> +SRC_URI[md5sum] = "e19718d97cee5279edf3f3b9318f926c"
> +SRC_URI[sha256sum] = "608f63441abc209c5bd5f61e35f2b6128c22e06fa2ad6248a08d8a643feeb807"
> --
> 1.9.1
>


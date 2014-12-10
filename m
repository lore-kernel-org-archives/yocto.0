Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E883E0087C; Wed, 10 Dec 2014 14:39:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f182.google.com (mail-pd0-f182.google.com
	[209.85.192.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D870E0080C
	for <yocto@yoctoproject.org>; Wed, 10 Dec 2014 14:39:22 -0800 (PST)
Received: by mail-pd0-f182.google.com with SMTP id p10so3678797pdj.13
	for <yocto@yoctoproject.org>; Wed, 10 Dec 2014 14:39:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=NIKcQ/ZW35Jj3vtzZTZq1kPBTMEQmEUX63CkPrKVxqk=;
	b=WemKdRuKMQmrgSA5fxCsVxgdC7KV37SEqQSJzkQ+b7ZvCq5Y4Qug5FiBnxcD6wiOvx
	ykSb224UjhbYp2L5Qr1b6FxjDbnrvg2IcK1O4PIYfRTM6DAJgCQfL7/SXupx8yuW+Tgj
	SgZA3KO8bsYbm0ZZlu/jmFszckvg0Hk9BlZvDwcPGc9dGotL+u5jVMCmyYAt9hPBVRhL
	OWK2Qu/rLpQKuP7u3KEkwkh92Ms1SK3pgSR+YVBZ4B1msFWMTB0eTUJDEIqX8NH+65tU
	z738rkDwxeVPEInpZvkpzqmpuyN4VgjYpvmYboau/3Ce5Ut55YlHYjiKvV4nbnFW3aN3
	N6dQ==
X-Received: by 10.66.155.225 with SMTP id vz1mr10797283pab.133.1418251162185; 
	Wed, 10 Dec 2014 14:39:22 -0800 (PST)
Received: from 10.177.195.168-ra01.everett.wa.seattle.comcast.net
	(fw01.everett.wa.seattle.comcast.net. [69.241.105.242])
	by mx.google.com with ESMTPSA id ko4sm5158693pdb.31.2014.12.10.14.39.21
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 10 Dec 2014 14:39:21 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 8.1 \(1993\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CACzyEJ9bhV0iZWR7Tdis_n+oDB8yKzjM=J0M7e+YY+ZPz0ZufQ@mail.gmail.com>
Date: Wed, 10 Dec 2014 14:39:19 -0800
Message-Id: <D2ABFB01-ED92-4251-8B39-F89A9D178C72@gmail.com>
References: <CACzyEJ9bhV0iZWR7Tdis_n+oDB8yKzjM=J0M7e+YY+ZPz0ZufQ@mail.gmail.com>
To: Insop Song <insop.song@gmail.com>
X-Mailer: Apple Mail (2.1993)
Cc: Yocto Project Discussion <yocto@yoctoproject.org>, P@draigbrady.com
Subject: Re: add a process memory check utility (ps_mem)
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
X-List-Received-Date: Wed, 10 Dec 2014 22:39:29 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


> On Dec 10, 2014, at 1:33 PM, Insop Song <insop.song@gmail.com> wrote:
>=20
> Hi Khem,
>=20
> I've been using this memory check utility (ps_mem) and wrote a bb file
> to include it in our yocto image.
>=20
> I thought it'd nice to include this in yocto upstream as well.
>=20
> - It's called ps_mem, "A utility to accurately report the in core
> memory usage for a program"
> - https://github.com/pixelb
>=20
> Could you consider to include ps_mem in upstream? and let me know what
> and where to put if is okay? I can follow up.

sure, please post it for meta-openembedded/meta-oe

>=20
>=20
> Thank you,
>=20
> Insop
>=20
>=20
> - this is my bb file as an example
>=20
> diff --git a/recipes-gs/ps_mem/psmem.bb b/recipes-gs/ps_mem/psmem.bb
> new file mode 100644
> index 0000000..d408298
> --- /dev/null
> +++ b/recipes-gs/ps_mem/psmem.bb
> @@ -0,0 +1,26 @@
> +#
> +# ps_mem
> +#
> +SUMMARY =3D "A utility to accurately report the in core memory usage
> for a program"
> +HOMEPAGE =3D "https://github.com/pixelb/ps_mem"
> +LICENSE =3D "LGPLv2"
> +LIC_FILES_CHKSUM =3D =
"file://LICENSE;md5=3Dc05fdef0c0d05f619748e9bb0fb41b21"
> +
> +PR =3D =E2=80=9Cr0"

remove this

> +
> +SRC_URI =3D =
"git://github.com/pixelb/ps_mem.git;branch=3Dmaster;protocol=3Dgit"
> +SRCREV =3D "702b461d16062f14a9f4191bc731adcf48b51489"
> +
> +S =3D "${WORKDIR}/git"
> +
> +do_compile () {
> + echo "No compile needed"
> +}
> +
> +do_install () {
> + install -d ${D}${bindir}
> + install -m 0755 ${S}/ps_mem.py ${D}${bindir}/ps_mem

you need a dependency on python atlas

> +}
> +
> +FILES_${PN} +=3D "/*=E2=80=9D

why is this needed may be you want www to go under /var

> +FILES_${PN}-dbg +=3D "/www/pages/.debug=E2=80=9D

this could go into /var/www

> --=20
> 1.7.9.5



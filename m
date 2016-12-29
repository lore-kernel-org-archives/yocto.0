Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B34AE0071C; Thu, 29 Dec 2016 10:20:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDA0BE006E3
	for <yocto@yoctoproject.org>; Thu, 29 Dec 2016 10:20:19 -0800 (PST)
Received: by mail-wm0-f65.google.com with SMTP id m203so67575712wma.3
	for <yocto@yoctoproject.org>; Thu, 29 Dec 2016 10:20:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=/rmkcCQTgPEDsosMd5lAmqUtFkc49lzMBBonvofcwSk=;
	b=GuvMhoGD1kMrr0MF9UpP8FQOni8QUQ5U1r0Or7LA+xnaAm9mp7ECzEVBw78nxZlgao
	V7ND2o9pXYaIPQXb/6FkS45yX3tOwy0c4tua2Vl64BXjCnqKAut5/KvgeiBlzUkiEB2c
	ntaOKu4tnrF2hV3NV0WUIipy5uSjKm08ujTX+lSSfQ2q8i30GJvNGI+Zoob5fb2xB3Dt
	RjqRiL6uXJXrMtteoGYsiULhy3y7/GMVzr2BC7R5PtP+cebCuq5GbTQia6a2rFPfxaJ7
	lqUr0PanYbcLizQfU4a9C/BiXQlyeMAvvNS/2s69W1j+0776CZRLiMztUvbUTtPdjOZ0
	YUgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=/rmkcCQTgPEDsosMd5lAmqUtFkc49lzMBBonvofcwSk=;
	b=cW1p8wIHuDDYWh2EB0M235iVP2X/n6tLQZUtp1Jk9c/TJro8V47pl26igXLiSfbWcg
	2u6lnw010MUf7BFRhapKoRTwSXydrs/JYwzwV9fp3WRVtlHTUu2kUerfrY8X1lEduoXH
	MKIqQl7LRfjYMvsn4yoBvxDOaKzgS0/Gszg0EDr73xOIwKhv2oZCrKOOMthg+dli0d8c
	aos0dcDCfXXFu2n02M4dETc5HoMP9zqdDXVJ/J2fb6cD7y4G8jyH6uuj2gs1JB2wPf0V
	QvNBAzAKtmUp1ct7nvhN8UvLut/kpIONiJH6ipK0N67p4YfJUOcW4kVcRC35YccKmQ9m
	idOA==
X-Gm-Message-State: AIkVDXItiqHhzrasT4rV0/jKArQbFLUchfLXPRcPaNrkarPoxjPSGb9RtmdZYoJPb7F+YA==
X-Received: by 10.28.221.11 with SMTP id u11mr35933301wmg.91.1483035618832;
	Thu, 29 Dec 2016 10:20:18 -0800 (PST)
Received: from carbonA (cpc96910-walt25-2-0-cust629.13-2.cable.virginm.net.
	[82.22.166.118]) by smtp.gmail.com with ESMTPSA id
	e188sm66709659wma.21.2016.12.29.10.20.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 29 Dec 2016 10:20:17 -0800 (PST)
Date: Thu, 29 Dec 2016 18:20:15 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20161229182015.GE26059@carbonA>
References: <1481796330-13908-1-git-send-email-piotr.lewicki@elfin.de>
	<1481796330-13908-2-git-send-email-piotr.lewicki@elfin.de>
	<7304ACDB-B05D-472D-8FF5-FC5CE402E88E@gmail.com>
MIME-Version: 1.0
In-Reply-To: <7304ACDB-B05D-472D-8FF5-FC5CE402E88E@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/1] linux-rpi: clean .config in before do_configure step
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
X-List-Received-Date: Thu, 29 Dec 2016 18:20:21 -0000
X-Groupsio-MsgNum: 33596
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="AjmyJqqohANyBN/e"
Content-Disposition: inline

--AjmyJqqohANyBN/e
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Dec 16, 2016 at 08:58:22AM -0800, Khem Raj wrote:
>
> > On Dec 15, 2016, at 2:05 AM, Piotr Lewicki <piotr.lewicki@elfin.de> wrote:
> >
> > Signed-off-by: Piotr Lewicki <piotr.lewicki@elfin.de>
> > ---
> > recipes-kernel/linux/linux-rpi.inc | 11 +++++++++--
> > 1 file changed, 9 insertions(+), 2 deletions(-)
> >
> > diff --git a/recipes-kernel/linux/linux-rpi.inc b/recipes-kernel/linux/linux-rpi.inc
> > index 95a9530..c665b9f 100644
> > --- a/recipes-kernel/linux/linux-rpi.inc
> > +++ b/recipes-kernel/linux/linux-rpi.inc
> > @@ -34,11 +34,13 @@ kernel_configure_variable() {
> >     fi
> > }
> >
> > -do_configure_prepend() {
> > +do_rpi_kconfig_clean() {
> >     # Clean .config
> > -    echo "" > ${B}/.config
> > +    echo -n "" > ${B}/.config
> >     CONF_SED_SCRIPT=""
> > +}
> >
> > +do_configure_prepend() {
> >     # oabi / eabi support
> >     kernel_configure_variable AEABI y
> >     if [ "${ARM_KEEP_OABI}" = "1" ] ; then
> > @@ -124,8 +126,11 @@ do_configure_prepend() {
> >     # Keep this the last line
> >     # Remove all modified configs and add the rest to .config
> >     sed -e "${CONF_SED_SCRIPT}" < '${WORKDIR}/defconfig' >> '${B}/.config'
> > +    # Clean variable- useful when calling configure step multiple times
> > +    CONF_SED_SCRIPT=""
> >
> >     yes '' | oe_runmake oldconfig
> > +
> > }
> >
> > # Automatically depend on lzop-native if CONFIG_KERNEL_LZO is enabled
> > @@ -146,3 +151,5 @@ python () {
> >
> >     configfile.close()
> > }
> > +
> > +addtask rpi_kconfig_clean before do_configure after do_populate_lic
>
> we should investigate the kernel tooling from OE-Core and use that IMO

I'm all for this. We should get rid of this and unify with oe-core
tooling.

@Piotr Would you like to work on this and remove completely this while
reworking on the kernel fragments configuration support? I'll take a
look on the old patches too.

> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--
Andrei Gherzan

--AjmyJqqohANyBN/e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYZVPfAAoJEHO76Gt+erfPgCIQAMMAsczh/WBbLBigu+owyDx1
uoh+0D07qVxS/vKrl79fX074RJ7wZAftB8R3AUornbV66dCZNvNjcYVKsWOglBGJ
4eJj5/yDhLMDxbn3oqcXk3+Ju3q9ekiQHyAgrSeSnVLgQum6B+4310OvE/WpE323
k4IKS6Y3tdkfuvcrIBIj4WpJQaPV7Mn6whOZXTVtoTVCDZB8UiUsSZJkdK0xLW5j
PRYBnpQXdyUIwx69Di2AWlS0P6ZA7rSXZ2etcFoBWJ4atmn6qhuAhCzdoshHqjzZ
F2DVRLUmdxUFeKbcN8kIAs3Eg+RyJSmRqMzlRlRJ5z4+RxWEM7aqhG2wuSsjmros
E4jbUpNt/4yFP7scz0zUEJW4E35zrFnbesm3Eq4TPjARngVdlD7p/Stf8QmORe8b
8EF2QNUi+XR5uShBBGPJmOcfMp65MaJ0Rbvdw1budS2tGvPg2zzXhAhIEdD38vLp
o2Uo4sM2yaehsujFi2QM61P1A7YLX8rw7cpv2gP1hoLXjAPPy7nAxmRpRWoMkqNW
+t31nqmjsa8+5dE/W3TC4Kt4dz0G+tC5QkvVKWKX7T7kVnMIjrQmomi29TFfWILn
mPSwkMoidJxL6HpJXtqLWl4LAe9DZfAbc/MFkT2ajcXKmC10awjX+jcOOx83S0Ha
9YsnFMEsgZe9Q8SBLt0g
=46E7
-----END PGP SIGNATURE-----

--AjmyJqqohANyBN/e--

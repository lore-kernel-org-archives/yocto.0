Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D03DDE01055; Mon,  5 Oct 2015 09:14:08 -0700 (PDT)
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
	*      [209.85.213.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f171.google.com (mail-ig0-f171.google.com
	[209.85.213.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29F8AE00B5D
	for <yocto@yoctoproject.org>; Mon,  5 Oct 2015 09:14:06 -0700 (PDT)
Received: by igcrk20 with SMTP id rk20so64569310igc.1
	for <yocto@yoctoproject.org>; Mon, 05 Oct 2015 09:14:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=Og5J1bzQI2MT+Ia2s/w0/Dz08tEE+Jd1jvvRJBG3lZA=;
	b=vDRb9P/dYUa2bwyiGU2FdITSS72N16NBnedMwsDIrt5HFEm+tY//ot9frAuX2DOyNW
	iO8uUQJRqMK2ra/En8pSnND7AnwmZ430HabeHM1+EE8AMdT7vR0mFxXsN0YQpz2KHGWg
	vZ2/1drU/HPQEuj7nYPHwekpOKnNfoxi4RGkzwoQv9z7+kvVPl65R/eo3Pdg6YK6nv+r
	vryKNcUOAb0EFTa/30ssMouWL/0LEasV+AT73rbB7LlR/JtYT6swv1drUP1GdoTmuCLT
	JFtPIZhwVlDOnblX0H0SpE962BtOP/MswCmAQIBwsL/x9Ce2C+ZAzO5tnvOKE8EeOsZH
	CF1w==
X-Received: by 10.50.55.68 with SMTP id q4mr11132619igp.77.1444061646238; Mon,
	05 Oct 2015 09:14:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.142.130 with HTTP; Mon, 5 Oct 2015 09:13:36 -0700 (PDT)
In-Reply-To: <560B8F1B.8030701@iseg-hv.de>
References: <560B8F1B.8030701@iseg-hv.de>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 5 Oct 2015 09:13:36 -0700
Message-ID: <CAMKF1srjUiR3c5jX9KxMhhO+eDz4E23=cGKh5fEr5KYSu+iDxw@mail.gmail.com>
To: =?UTF-8?Q?Lukas_B=C3=B6hm?= <lukas.boehm@iseg-hv.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: busybox udhcpd service file
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
X-List-Received-Date: Mon, 05 Oct 2015 16:14:08 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 30, 2015 at 12:28 AM, Lukas B=C3=B6hm <lukas.boehm@iseg-hv.de> =
wrote:
> Hello,
>
> I want to use the busybox udhcpd server in conjunction with systemd. As
> there is no service file included in the recipe (v1.22.1) and no udhcpd.c=
onf
> I made a bbappend to add this. Unfortunatelly the service file is not add=
ed
> to the final image but the conf-file.
> My busybox_%.bbappend looks as follows:
>
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
> SRC_URI +=3D " \
>                 file://udhcpd.conf \
>                 file://udhcpd.service \
>         "
> SYSTEMD_PACKAGES +=3D " \
>                 ${PN}-udhcpd \
>         "
> SYSTEMD_SERVICE_${PN}-udhcpd =3D "udhcpd.service"
> FILES_${PN}-udhcpd +=3D "${systemd_unitdir}/system/udhcpd.service
> ${sysconfdir}/udhcpd.conf"
>
> do_install_append () {
>   install -d ${D}${systemd_unitdir}/system
>   install -d ${D}${sysconfdir}
>   install -m 0644 ${WORKDIR}/udhcpd.conf ${D}${sysconfdir}
>   install -m 0644 ${WORKDIR}/udhcpd.service
> ${D}${systemd_unitdir}/system/udhcpd.service
> }
> -----------------------------
> The strange thing is, that the service file is installed to
> ${WORKDIR}/image/lib/systemd/system but not to the final image.
>
> Any hints how to make it will be highly appreciated.

Did you inherit systemd ?


> Thanks
>
> Lukas B=C3=B6hm
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


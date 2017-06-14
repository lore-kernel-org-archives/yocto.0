Return-Path: <laurent.gauthier@soccasys.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 636D2E00B87; Wed, 14 Jun 2017 09:13:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f172.google.com (mail-ot0-f172.google.com
	[74.125.82.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E688CE00B8A
	for <yocto@yoctoproject.org>; Wed, 14 Jun 2017 09:13:40 -0700 (PDT)
Received: by mail-ot0-f172.google.com with SMTP id s7so4028056otb.3
	for <yocto@yoctoproject.org>; Wed, 14 Jun 2017 09:13:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=soccasys-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=nldWwtgr9SpLcfeqqmC5Adf1B3z6vWF1+CXJOmV1jHs=;
	b=Xx0kyXDXCeDrbEbwgBVFfyC5mOl+eKskJpKpldnJ/ZPNOix+LhMNJB0l4oRBg35Mvl
	K2wp5371Rt9Llh2iWoixLSwCcIEPsZlJsI981uy2xRBGghuUa68URkOMJrlFz9VUXytA
	lkY4RjlLWEyv9og25fvxBretaCboPIF0JhpJRmFxIzt9RznmwaI84XxITb1ei+c7xv/r
	oZ8REN/IE552SEC+cn/uRjWOhq6kzcdFIjWc/CY1DjTp96gLC66HmCQyqZHEicr8nZqv
	OBUlmSDahm6SJmICsnuzxEcbv60ncRr58UlEG/yqdV4+aC3rLfQsrn5otX85l/rDxmyi
	u17g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=nldWwtgr9SpLcfeqqmC5Adf1B3z6vWF1+CXJOmV1jHs=;
	b=U4c5Db1umRU05brPPohQ6zFhsxQx0y9UhBWxDmu50yKQY7O31AkjNe2MvpXHFGB+y2
	0sy4caN9tyfJYJNGYbjHqICk47i3y7ebTLtxRUeCydfNnYUROtOhWXhzkcE8WL1bCjBI
	NBoYY1iKJZCK+0g4lLH8JHOnYn3pZtv2/KfN29nkBe+Bw5rcXeExZVh4DQurYCBtwKOP
	MXAeQQWAbyRYuDlHBMpYINpHCeTyxXsZmTwbfc5eGQymP6/YE0QDHMvNTVcvSaXhFZQ/
	NM1rlPHu1xi45PFf17/+LnqWneOJA6I2lMDIfZLihd4Y4Jf0QZgXFvc2m1N0TnyMz+IV
	fwtw==
X-Gm-Message-State: AKS2vOzljgsC5lVfPxN7J2RIROIWShq2D0yrt2heBsgXNdgTKlnMedk3
	HQbNPNVZhSWY/E5JqXkrK/bLH6DUVBES
X-Received: by 10.157.26.83 with SMTP id u19mr647020otu.224.1497456819716;
	Wed, 14 Jun 2017 09:13:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.74.144.146 with HTTP; Wed, 14 Jun 2017 09:12:59 -0700 (PDT)
In-Reply-To: <8af3780d8f5d43e988f8161ec69d5965@DEBEMAIL002.kostal.int>
References: <8af3780d8f5d43e988f8161ec69d5965@DEBEMAIL002.kostal.int>
From: Laurent Gauthier <laurent.gauthier@soccasys.com>
Date: Wed, 14 Jun 2017 18:12:59 +0200
Message-ID: <CAGbd71R8RRyuS+mDnfUsjriShpju=9VFrDNtxfWFWevs5YMhfQ@mail.gmail.com>
To: "Andersen, Christian" <c.andersen@kostal.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: useradd and one sysroot per recipe in pyro
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
X-List-Received-Date: Wed, 14 Jun 2017 16:13:42 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Christian,

In pyro the creation of users and group (using the useradd class) is
done during the package pre-installation.

So my best guess is that you could move the owner/group change in the
package post-installation as follows:

do_install () {
            (=E2=80=A6)
            install -d ${D}${sysconfdir}/myappl
            install -d ${D}${localstatedir}/lib/myappl
}

pkg_postinst_${PN} () {
            chown -R myuser:mygroup ${D}${sysconfdir}/myappl
            chown -R myuser:mygroup ${D}${localstatedir}/lib/myappl
}

I hope this helps.

Laurent.

On Wed, Jun 14, 2017 at 5:57 PM, Andersen, Christian
<c.andersen@kostal.com> wrote:
> Any ideas how to use =E2=80=9Euseradd=E2=80=9C bbclass with pyro?
>
> If I move useradd to my recipe my-appl.bb, it works. But there are more
> recipes depending on the added user, so I want to add this user in a
> base-recipe and just depend on it using (DEPENDS/RDEPENDS).
>
> Regards
> Christian
>
>
>
> Von: Andersen, Christian
> Gesendet: Dienstag, 13. Juni 2017 18:10
> An: 'yocto@yoctoproject.org' <yocto@yoctoproject.org>
> Betreff: useradd and one sysroot per recipe in pyro
>
>
>
> Hello,
>
>
>
> currently I am trying the newest Yocto release (pyro). It seems I have a
> problem with useradd and the new concept of one sysroot per recipe.
>
>
>
> I have a base recipe (let=E2=80=99s call it my-base.bb) which inherits us=
eradd and
> creates a new user (let=E2=80=99s call him myuser):
>
>
>
> inherit useradd
>
>
>
> USERADD_PACKAGES =3D "${PN}"
>
> USERADD_PARAM_${PN} =3D " \
>
>     --uid 1200 \
>
>     --gid 1200 \
>
>     --system \
>
>     --shell /bin/bash \
>
>     --create-home \
>
>     --home-dir /home/myuser \
>
>     --groups mygroup,video,input \
>
>     myuser"
>
> GROUPADD_PARAM_${PN} =3D "-g 1200 mygroup"
>
>
>
> do_install () {
>
> install -d ${D}/home/myuser
>
>             chown -R myuser:mygroup ${D}/home/myuser
>
> }
>
>
>
> Other recipes depend on this base recipe (via DEPENDS and RDEPENDS), beca=
use
> they require this user, e.g. in recipe my-appl.bb (in this case python on=
ly,
> so no configure or compile):
>
>
>
> DEPENDS =3D "puck-base"
>
> RDEPENDS_${PN} =3D "puck-base python3-dbus python3-sqlite3 python3-netcli=
ent
> python3-requests"
>
>
>
> do_configure[noexec] =3D "1"
>
> do_compile[noexec] =3D "1"
>
>
>
> do_install () {
>
>             (=E2=80=A6)
>
>
>
> install -d ${D}${sysconfdir}/myappl
>
>             chown -R myuser:mygroup ${D}${sysconfdir}/myappl
>
>
>
> install -d ${D}${localstatedir}/lib/myappl
>
>             chown -R myuser:mygroup ${D}${localstatedir}/lib/myappl
>
> }
>
>
>
> Unfortunately I get an error when building the recipe my-appl.bb
>
>
>
> | chown: invalid user: =E2=80=98myuser:mygroup=E2=80=99
>
> | WARNING: exit code 1 from a shell command.
>
> | ERROR: Function failed: do_install (log file is located at =E2=80=A6)
>
> ERROR: Task (=E2=80=A6/my-appl.bb:do_install) failed with exit code '1'
>
>
>
> In morty the user was created in the shared sysroot. But using pyro the u=
ser
> is not created in the recipe-sysroot.
>
>
>
> What am I doing wrong and is there a way to solve this?
>
>
>
> Thanks in advance!
>
> Regards
>
> Christian
>
> KOSTAL Industrie Elektrik GmbH - Sitz L=C3=BCdenscheid, Registergericht I=
serlohn
> HRB 3924 - USt-Id-Nr./Vat No.: DE 813742170
> Postanschrift: An der Bellmerei 10, D-58513 L=C3=BCdenscheid * Telefon: +=
49 2351
> 16-0 * Telefax: +49 2351 16-2400
> Werksanschrift: Lange Eck 11, D-58099 Hagen * Tel. +49 2331 8040-800 * Fa=
x
> +49 2331 8040-602
> Gesch=C3=A4ftsf=C3=BChrung: Axel Zimmermann, Dipl.-Ing. Marwin Kinzl, Dip=
l.-Oec.
> Andreas Kostal
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



--=20
Laurent Gauthier
Phone: +33 630 483 429
http://soccasys.com


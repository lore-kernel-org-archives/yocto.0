Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8FB4E009EB; Mon,  4 Feb 2019 08:27:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f196.google.com (mail-it1-f196.google.com
	[209.85.166.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00B1AE00754
	for <yocto@yoctoproject.org>; Mon,  4 Feb 2019 08:27:28 -0800 (PST)
Received: by mail-it1-f196.google.com with SMTP id i145so1112694ita.4
	for <yocto@yoctoproject.org>; Mon, 04 Feb 2019 08:27:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=4T0ym/PidX6ftmWoWkytqIEm4JGL+Y2flvTkGyFVJNE=;
	b=XXQKmDFwF9iOvmssaZVH/l2Cic1HU/0CXglRzJyMX8Q5cSqwZIhyMp24hRiNIiejLK
	+fIkw2d/gMI1vNeDz9J/QS+OkZR5tvpfg3lkhiciOIsz1om+Lq+hlPlC2gGN45RninYT
	3j2r3Nx8SZBatNESGPBAp8DAw2DAq5OAcUJfWGcbIzxXP6YhL866y5VHV/5lh7FCcaYe
	3w890bCxMoRZF2mL7QnvPxs+Hwb8jv+gfgdUwg8fqI2ZwIkGe7L1pIKSYR2mq5s14U8m
	GKh9wE19XrZZt8il0NNs3+dlnZ62axMtAnTcJ2v/XlV0GB8CHizAb+R/K1OLuXRe8rjr
	s1Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=4T0ym/PidX6ftmWoWkytqIEm4JGL+Y2flvTkGyFVJNE=;
	b=bkllrKJKVZthHjrdD7hgEgaebVVWmWxa97hQCjmCkceEf9R21kYf/jGIIkVRug3b2W
	4BKRjChdsQKoeWEED+QXr2eQt4xCKwfUpIA4oKTQCksH1UEOfn0ajPntQjL3BscGxxh8
	OsCIKXeDrkKUBQ4/UKG/ZlPG4BK6WRtKjJgnD0bwCIkwlVfTUw2FhLKA0G3WMMyCh6TX
	sUb+oaDmxZNLUlM7HeoaEwpgllR70I7V1DCrk4eCBielzT+Is/P8kSFPDYXM0omvQWO/
	9ygivFa2OVxXpwmG5hgdMYCrf3XcSZ0BJU9RILteM8SawQgFvw2XE97x8AmVaCeoug/s
	nCQg==
X-Gm-Message-State: AHQUAubnd9VJEk+inNMK+Ot3idnZucs1bzOfQGVCXve9pm4WHL/irp75
	Lj6Bn/fpG34eh24sDWitDXg8277TpIW2du4Qhh0kjakf
X-Google-Smtp-Source: AHgI3IZGVfIAiNaYtB9jqYNQiedPAky8m+XNWkRuTUoQ1B3otwx3vcvxhB2nyoK1egwUo6T241PBQTlaypUks1zlRvA=
X-Received: by 2002:a6b:f70a:: with SMTP id k10mr125572iog.270.1549297648447; 
	Mon, 04 Feb 2019 08:27:28 -0800 (PST)
MIME-Version: 1.0
References: <7289CA52-0B42-4481-93B7-350AE353DC1C@yellowtec.com>
	<CAJTo0LY=A+4CRLoQnxyOYz-=UkbUOxd=ax7FRRDSM1vXXcDX0w@mail.gmail.com>
	<A829632F-9B64-4A3C-B259-C33CC5F8950C@yellowtec.com>
	<CAJTo0La9Fu3xjykguaNQxwCtzcOBazBLzxPW=85x8qJOqCAGoA@mail.gmail.com>
	<F89498CF-842A-41E5-B569-DD2179BED03B@yellowtec.com>
In-Reply-To: <F89498CF-842A-41E5-B569-DD2179BED03B@yellowtec.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 4 Feb 2019 16:27:17 +0000
Message-ID: <CAJTo0LaYWuvr2PYa=7tT9SQUuBZ6d79MtZ1cP+PB5gGXJsoqEw@mail.gmail.com>
To: David Zimmermann <dzimmermann@yellowtec.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: How to archive only packages contained in a certain image
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
X-List-Received-Date: Mon, 04 Feb 2019 16:27:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Those recipes are special: the gcc-source recipe fetches and and
unpacks the GCC source tree, and gcc builds it.  So gcc has no
source...  Add gcc-source explicitly to your list and you'll be
sorted.

Ross

On Mon, 4 Feb 2019 at 16:23, David Zimmermann <dzimmermann@yellowtec.com> w=
rote:
>
> Thanks for your helpful hints Ross !
>
> I now have a script in place which:
> - extracts package names from image manifest
> - translates package names to recipe names
> - grabs the source packages for those recipes (from what the archiver ext=
racted according to it=E2=80=99s config)
>
> For two recipes, referenced by the manifest file, the archiver does extra=
ct no source packages:
> - libgcc
> - gcc-runtime
> Why is that ?
>
> Regards,
> David
>
> > Am 31.01.2019 um 15:46 schrieb Burton, Ross <ross.burton@intel.com>:
> >
> > Please remember to keep the list on CC.
> >
> > The reason is that those recipes are built for the target so they'll
> > be archived, the archiver doesn't distinguish what recipes go into
> > what image.
> >
> > It's relatively simple to filter the list after the build if you want
> > to produce just what is in a specific image, take the image manifest
> > and use oe-pkgdata-util to turn the package names into recipes.
> >
> > Ross
> >
> > On Thu, 31 Jan 2019 at 14:01, David Zimmermann
> > <dzimmermann@yellowtec.com> wrote:
> >>
> >> Hi Ross,
> >>
> >> and thanks for your reply.
> >> I do bake an image based on core-image-minimal with additional package=
s like openssh and qt (-base, -declarative, -quickcontrols).
> >> My folder =E2=80=99tmp/deploy/sources/arm-poky-linux-gnueabi=E2=80=99 =
e.g. contains:
> >> perl, pulseaudio and python
> >>
> >> Even though those might be dependencies I inherited by other recipes -=
 python e.g. is not contained / will be installed to my image.
> >> As a countercheck I see what licenses will be placed in the image (COP=
Y_LIC_DIRS =3D 1 && COPY_LIC_MANIFEST =3D 1) which reflects the limited num=
ber of packages I do expect.
> >>
> >> Regards,
> >> David
> >>
> >>> Am 31.01.2019 um 11:11 schrieb Burton, Ross <ross.burton@intel.com>:
> >>>
> >>> Does it not just contain the packages used to build the entire image,
> >>> so build-time dependents.  Can you give an example of a recipe that i=
s
> >>> archived but shouldn't be?
> >>>
> >>> Ross
> >>>
> >>> On Thu, 31 Jan 2019 at 08:46, David Zimmermann
> >>> <dzimmermann@yellowtec.com> wrote:
> >>>>
> >>>> Hi List,
> >>>>
> >>>> I use Yocto Krogoth and the following configuration for the archiver=
:
> >>>>
> >>>> INHERIT +=3D =E2=80=9Earchiver=E2=80=9C
> >>>> COPYLEFT_RECIPE_TYPES =3D =E2=80=99target=E2=80=99
> >>>>
> >>>> But the =E2=80=9Atmp/deploy/sources/=E2=80=A6/=E2=80=9A folder for m=
y target architecture contains much more packages then those =E2=80=9Aused=
=E2=80=98 to build my image.
> >>>> Is there a way to extract / archive / isolate only those package sou=
rces used for a certain image (kernel + rootfs) ?
> >>>>
> >>>> Thanks for your help,
> >>>> David
> >>>> --
> >>>> _______________________________________________
> >>>> yocto mailing list
> >>>> yocto@yoctoproject.org
> >>>> https://lists.yoctoproject.org/listinfo/yocto
> >>
>


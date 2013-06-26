Return-Path: <erik.boto@pelagicore.com>
Received: from mail-oa0-f47.google.com (mail-oa0-f47.google.com
	[209.85.219.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87068E01562
	for <yocto@yoctoproject.org>; Wed, 26 Jun 2013 04:16:17 -0700 (PDT)
Received: by mail-oa0-f47.google.com with SMTP id m1so14546061oag.6
	for <yocto@yoctoproject.org>; Wed, 26 Jun 2013 04:16:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding:x-gm-message-state;
	bh=gXzvMmM8Uc7ype/HoQsH39VmqMPdl/xml/F1u2kiMTM=;
	b=Z2QlKRHH1VpGBP1EehUcmQIOh5MvnwMGLFgr75q8N0gHLV38YkgYWS3rCMVk6fIFOA
	1OfgO8MZp4C0aj+hu5n9iZ4eIG1mdDlAn1TBF1ZPe/0e+u88MfZ0q7mfac4lCbhjXBD+
	g8TN0aL8SKeubU5l+SFYnzhU6yx5CvASWWPzrN384gvqUrjxjfGt2C66/vryyrisMnkx
	3b+0r70QNgovG//2WPZaATOIaz/Y1wl3gk32DE+veBRq21hfBU7shN6WQ6/X9iqSFSam
	ZY+9eIH7+XpUEiUPjox4J2cu1wuXuzQTM15lZNY/l0t0BXe/92SiLFlt4lc3xXq+PL+k
	5Quw==
MIME-Version: 1.0
X-Received: by 10.182.19.168 with SMTP id g8mr1548153obe.21.1372245376884;
	Wed, 26 Jun 2013 04:16:16 -0700 (PDT)
Received: by 10.76.81.66 with HTTP; Wed, 26 Jun 2013 04:16:16 -0700 (PDT)
In-Reply-To: <CAFMfyz+axp0LwFE=KDG4thmcZ22R8hqYERsHOJbQou2HK_fq=g@mail.gmail.com>
References: <CAFMfyzLWjR6s7B_XYqU-5QJZTv3dMf0KeZgvGsfAPUisdiwXKg@mail.gmail.com>
	<2169568.OdCe6aKEne@helios>
	<CAFMfyz+y6yEJqQao26EJ3beQhjFZmv7DiJ_BA9EKrQKrGt5+RQ@mail.gmail.com>
	<7888643.66nBCjdCFc@helios>
	<CAFMfyz+axp0LwFE=KDG4thmcZ22R8hqYERsHOJbQou2HK_fq=g@mail.gmail.com>
Date: Wed, 26 Jun 2013 13:16:16 +0200
Message-ID: <CA+AhUGxVY0GiS5TO0VHNVFcDjTiR8piJjCtA3dGZD2mzUfNWgw@mail.gmail.com>
From: =?ISO-8859-1?Q?Erik_Bot=F6?= <erik.boto@pelagicore.com>
To: DAMARLA Satya Swaroop <satyaswaroop.damarla@gmail.com>
X-Gm-Message-State: ALoCoQnrHuYpkY1flpx46JIkhoARVCZwVLSF7Abauv3AkTbhQ96+ADlhXqzHoXtBxyRZbukLrngY
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Installing .deb file in Build
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
X-List-Received-Date: Wed, 26 Jun 2013 11:16:18 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 26, 2013 at 11:16 AM, DAMARLA Satya Swaroop
<satyaswaroop.damarla@gmail.com> wrote:
> Ok I did remove the stuff and I modified as you mentioned... I have two a=
ims
> here,
>
> 1. To start the bootstraper at the start of the boot, it means it has to =
be
> in every runlevel and I am successfull in that.
>
> 2. To install a /opt directory which I am faling at..
>
> I don't have any install errors but please tell me why the /opt directory=
 no
> more exists in the rootfs
>
> SUMMARY =3D "Bootstrapper from Skidata"
> DESCRIPTION =3D "For the moment it just installs the .deb file"
> LICENSE =3D "CLOSED"
>
> SRC_URI[md5sum] =3D "7835334732d1704765e52168994b09a6"
> SRC_URI[sha256sum] =3D
> "11bda24a487da08ef6d3133cc0bf55862e6ae75891c7d08433341f2f3a0dc740"
>
>
> SRC_URI =3D
> "file:///home/damarla/openYocto/downloads/skidata-bootstraploader-1.0.0.1=
4.deb"
>
> inherit bin_package pkgconfig update-rc.d
>
> INITSCRIPT_PACKAGES =3D "${PN}"
> INITSCRIPT_NAME_${PN} =3D "bootstraploader"
> INITSCRIPT_PARAMS_${PN} =3D "defaults 85"
>
> do_install() {
>
>  install -d ${D}${sysconfdir}/init.d/
>  install -m 0755 ${WORKDIR}/etc/init.d/bootstraploader
> ${D}${sysconfdir}/init.d/bootstraploader
>
>  install -d ${D}/opt/skidata/bootstraploader/
>  echo -e ${D}
>  for f in ${WORKDIR}/opt/skidata/bootstraploader/*.pm
>  do
>      install -m 0755 $f ${D}/opt/skidata/bootstraploader/
>  done
>
>  for ff in ${WORKDIR}/opt/skidata/bootstraploader/*.sh
>  do
>      install -m 0755 ${ff} ${D}/opt/skidata/bootstraploader/
>  done
>
>
> }
>
> FILES_${PN} =3D "${base_libdir}/udev ${systemd_unitdir}"
> FILES_${PN} +=3D "${sysconfdir}/init.d/bootstraploader"
> FILES_${PN} +=3D "${D}/opt/skidata/bootstraploader/*.sh
> ${D}/opt/skidata/bootstraploader/*.pm"
>
> Any reasons why its failing is deeply appreciated

You still have ${D} in FILES_${PN}, so the files in /opt is not
included in the package.

Cheers,
Erik Bot=F6

>
> Greets,
> Satya
>
>
> On Tue, Jun 25, 2013 at 5:16 PM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
>>
>> On Tuesday 25 June 2013 15:20:19 DAMARLA Satya Swaroop wrote:
>> > I am trying to install .deb file and the recipe is as follows... may I
>> > ask
>> > you what is the mistake that is not allowing it to build it into the
>> > rootfilesystem....
>> >
>> > *UMMARY =3D "Bootstrapper from Skidata"*
>> > *DESCRIPTION =3D "For the moment it just installs the .deb file"*
>> > *LICENSE =3D "CLOSED"*
>> > *
>> > *
>> > *SRC_URI[md5sum] =3D "7835334732d1704765e52168994b09a6"*
>> > *SRC_URI[sha256sum] =3D
>> > "11bda24a487da08ef6d3133cc0bf55862e6ae75891c7d08433341f2f3a0dc740"*
>> > *
>> > *
>> > *
>> > *
>> > *SRC_URI =3D
>> >
>> > "file:///home/damarla/openYocto/downloads/skidata-bootstraploader-1.0.=
0.14.d
>> > eb" *
>> > *
>> > *
>> > *inherit bin_package*
>> > *
>> > *
>> > *INITSCRIPT_PACKAGES =3D "${PN}-bsd"*
>> > *INITSCRIPT_NAME_${PN}-bsp =3D "bootstraploader"*
>> > *INITSCRIPT_PARAMS_${PN}-bsp =3D "defaults 90"*
>>
>> You have a mismatch here, "bsp" in the last two lines and "bsd" everywhe=
re
>> else.
>>
>> > *PACKAGES =3D+ "${PN} ${PN}-bsd"*
>> > *
>> > *
>> > *FILES_${PN}-bsd =3D "${sysconfdir}/init.d/bootstraploader"*
>> > *FILES_${PN} =3D "${D}/usr/skidata/bootstraploader/*.sh
>> > ${D}/usr/skidata/bootstraploader/*.pm"*
>>
>> You should not include ${D} in FILES values. Because of the invalid path
>> the
>> desired files are not being picked up.
>>
>> The reason you're likely getting an error at do_rootfs is that because o=
f
>> the
>> above, the package is empty and therefore is not produced, thus it can't
>> be
>> found when it comes to installing it into the image.
>>
>> Cheers,
>> Paul
>>
>> --
>>
>> Paul Eggleton
>> Intel Open Source Technology Centre
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


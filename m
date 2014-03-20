Return-Path: <jonatan.magnusson@gmail.com>
Received: from mail-lb0-f170.google.com (mail-lb0-f170.google.com
	[209.85.217.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12C38E008D6
	for <yocto@yoctoproject.org>; Thu, 20 Mar 2014 06:33:22 -0700 (PDT)
Received: by mail-lb0-f170.google.com with SMTP id s7so617909lbd.29
	for <yocto@yoctoproject.org>; Thu, 20 Mar 2014 06:33:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date
	:content-transfer-encoding:message-id:references:to;
	bh=x9jI46veRMJv/NKsKpxfjBbzJ0S0lMHL0pCXhFcEYC4=;
	b=EGgns+o7RL05yCi5lyanXDkiVikvitIvGS2TbYOozFgTNBV9e69jhRBStKl7R0jdqq
	dgbgYy1NHKxalgqRgYRxs6SqNkHjNmaA7YGpPiaH5vPg77lI9aJuv1pWEeoef6X4vrTu
	6pJN+1TiczxjkClZk1plM1VKWXFnjWFH6EFtWGBBg5NDo1r5fYVCzfHs3gw2VCE0+mzS
	LG/X0d9P0Z7XyK36LxcXA2eI2MYKQgWz3A/ntfK7n3TxKJ+dUTHdVk2l5LouJm00vW4p
	5bfUAyuPQ6Gmh9+ZlxhAWDu8kELKMqYNhzW4y66sRw10m4f+1o4psERWEbzVGZ55MCJa
	+rgg==
X-Received: by 10.152.205.98 with SMTP id lf2mr362127lac.60.1395322400652;
	Thu, 20 Mar 2014 06:33:20 -0700 (PDT)
Received: from [10.11.100.103] ([83.233.227.60])
	by mx.google.com with ESMTPSA id lc3sm1273720lbb.21.2014.03.20.06.33.19
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 20 Mar 2014 06:33:19 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 7.2 \(1874\))
From: Jonatan Magnusson <jonatan.magnusson@gmail.com>
In-Reply-To: <CA+AhUGyVf3pwu64dTXxG3t9YufhPAHqyRPH_icZzXPAHoJE82w@mail.gmail.com>
Date: Thu, 20 Mar 2014 14:33:17 +0100
Message-Id: <AE444B81-2AF3-4B30-BB28-B3D9F5C1CD27@gmail.com>
References: <AF739ED9-7B40-42DC-8D62-350F9A36AC3D@gmail.com>
	<CABcZANkXsmFYfXvUp3C+fGosLvFOb7LVKJsG1jyLt6BkNfYtig@mail.gmail.com>
	<7EE0660E-1C5A-426E-BD76-48DF12321D51@gmail.com>
	<CABcZANmUrLVHyJ-QkO=dw7KgkwF+dZq5XEUwqynSkE5CKWyV4g@mail.gmail.com>
	<CAPEiAtTDvXZio9yOecFWLzHyYnedvT-czb_S=n8mM7VrWSVOeQ@mail.gmail.com>
	<CA+AhUGyVf3pwu64dTXxG3t9YufhPAHqyRPH_icZzXPAHoJE82w@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Mailer: Apple Mail (2.1874)
Subject: Re: Missing Python modules on target
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
X-List-Received-Date: Thu, 20 Mar 2014 13:33:33 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable


Hi,

Thanks, but unfortunately it still doesn=92t work... wsgiref does not =
get installed on the image.

Regards,
Jonatan



20 mar 2014 kl. 13:22 skrev Erik Bot=F6 <erik.boto@pelagicore.com>:

> Hi Jonatan,
>=20
> I believe it should be in python-misc package, so if you add that to
> IMAGE_INSTALLS or as a RDEPEND of some other installed packaged it
> should work.
>=20
> There's a section in python_2.7.3.bb which is a catch all for stuff
> not packaged by python-2.7-manifest:
>=20
> # catch all the rest (unsorted)
> PACKAGES +=3D "${PN}-misc"
> FILES_${PN}-misc =3D "${libdir}/python${PYTHON_MAJMIN}"
>=20
> Cheers,
> Erik
>=20
> On Wed, Mar 19, 2014 at 11:35 PM, Jonatan Magnusson
> <jonatan.magnusson@gmail.com> wrote:
>>=20
>> (I replied to Chris personal email by mistake. Our conversation is =
pasted
>> below.)
>>=20
>> I tried to investigate how the Python installer works, and there are =
still
>> many parts I am not sure about.
>> But as far as I understand the manifest file =
(python-2.7-manifest.inc) *is*
>> responsible for telling bitbake which Python modules to install. It =
contains
>> a bunch of FILES_${PN}-<package> definitions like this:
>>=20
>> FILES_${PN}-numbers=3D"${libdir}/python2.7/decimal.*
>> ${libdir}/python2.7/numbers.* "
>>=20
>> If I add "${libdir}/python2.7/wsgiref" to one of these and rebuild =
the image
>> the module gets installed on the image.  This solves my problem, but =
I
>> wonder why it is not included by default?
>>=20
>> Anyone who can shed som light on this?
>>=20
>> Regards,
>> Jonatan Magnusson



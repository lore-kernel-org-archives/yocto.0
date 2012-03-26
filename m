Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D001AE00596
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2012 12:42:03 -0700 (PDT)
Received: by pbbjt11 with SMTP id jt11so7732143pbb.35
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2012 12:42:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=YDynV5mfAVsKl8/2n2n45W5lgxlngZaKEnwrrEEegxM=;
	b=ha7lYnkUtidIMlHVBJAOyYsG5tUDJlWxWL+D0grXLoIViG4EopnJjM07OhyhgbOhN+
	qIql1znqy0HC/E8gJLu6y/dG8lub8FMrkANb8+Kbo1ZOSmNnaVx4mFVvRG2wUHCMExld
	gWCEPr3+zfS1eZOMx9AIajyz3nVn9n4j7aRDwVvRIgFWr1oZL/EwCbMBBCcaFS2jGK1C
	il/iZ1GPFwEld4tueRGdTgXSflGtkr9H/ceFhjZqN3ioV6p2ieWXvoQilIV6TQRujNGB
	QyZR81vY2NK2W/pxOASpnNLVQ+OPrvCyHXGUfwkiC7tUOzXyQXs5VnJ5riPeVqTTLHsG
	suGg==
MIME-Version: 1.0
Received: by 10.68.190.42 with SMTP id gn10mr55827805pbc.94.1332790923643;
	Mon, 26 Mar 2012 12:42:03 -0700 (PDT)
Sender: rstreif@linuxfoundation.org
Received: by 10.143.29.18 with HTTP; Mon, 26 Mar 2012 12:42:03 -0700 (PDT)
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237945175E22@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1203240525230.22364@oneiric>
	<1332589972.27577.1.camel@ted>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237945175E22@ORSMSX101.amr.corp.intel.com>
Date: Mon, 26 Mar 2012 12:42:03 -0700
X-Google-Sender-Auth: QJaqKfsDhpXfSj2RrESg-ui2NoU
Message-ID: <CA+gsK-raRiKQ7GHLSy4tAJHJmDardhr8by0A9FGJ7diCYo00Uw@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@linux.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQk7useWyXIohcYBdfuFG1+rpkfIxhUN9NSAAZEo1zSZ00onIBDHvi20LQB6U1HAcqytOfbX
Subject: Re: tentative list of vars to be dropped from variable glossary
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 26 Mar 2012 19:42:03 -0000
Content-Type: multipart/alternative; boundary=e89a8ff1cb26904c8a04bc2a9129

--e89a8ff1cb26904c8a04bc2a9129
Content-Type: text/plain; charset=ISO-8859-1

Another variable that seems to be dropped from the latest 1.1.1 revision of
the Reference Manual is BBMASK. In previous versions of the manual it was
explained that this variable can be used to remove packages from images.
However, that did not work for me and it did not surprise me either.

To include a package with an image you will have to make it a dependency of
that image. If you then hide the recipe of the package using BBMASK then
you are breaking the dependency and the Bitbake will complain with "Nothing
provides <package>" because the dependency is still there.

I could not think of any other use case for BBMASK in the way it is
implemented. Are there any?

Rudi

--e89a8ff1cb26904c8a04bc2a9129
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Another variable that seems to be dropped from the latest 1.1.1 revision of=
 the Reference Manual is BBMASK. In previous versions of the manual it was =
explained that this variable can be used to remove packages from images. Ho=
wever, that did not work for me and it did not surprise me either.
<div><br></div><div>To include a package with an image you will have to mak=
e it a dependency of that image. If you then hide the recipe of the package=
 using BBMASK then you are breaking the dependency and the Bitbake will com=
plain with &quot;Nothing provides &lt;package&gt;&quot; because the depende=
ncy is still there.</div>
<div><br></div><div>I could not think of any other use case for BBMASK in t=
he way it is implemented. Are there any?</div><div><br></div><div>Rudi</div=
>

--e89a8ff1cb26904c8a04bc2a9129--

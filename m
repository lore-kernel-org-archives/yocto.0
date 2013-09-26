Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CD5DE01640
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2013 03:48:20 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 26 Sep 2013 03:48:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,984,1371106800"; d="scan'208";a="407440003"
Received: from unknown (HELO helios.localnet) ([10.252.120.50])
	by fmsmga002.fm.intel.com with ESMTP; 26 Sep 2013 03:48:04 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Hans =?ISO-8859-1?Q?Beck=E9rus?= <hans.beckerus@gmail.com>
Date: Thu, 26 Sep 2013 11:48:03 +0100
Message-ID: <1675887.iRGCGyzpnN@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-30-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CAFyqS9q54HXgcCPvhUodqYXLZ9oqmZA4+mhOX958CyeG7VL3Gg@mail.gmail.com>
References: <CAFyqS9pb0aXUVgKH7vANiNxhrXMtfVxGRd9FDVj8Y1Rk=0XgFw@mail.gmail.com>
	<15510684.X3bYELTYuV@helios>
	<CAFyqS9q54HXgcCPvhUodqYXLZ9oqmZA4+mhOX958CyeG7VL3Gg@mail.gmail.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to combine BBCLASSEXTEND and variable export
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
X-List-Received-Date: Thu, 26 Sep 2013 10:48:21 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Thursday 26 September 2013 12:38:13 Hans Beck=E9rus wrote:
> On Thu, Sep 26, 2013 at 12:13 PM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
> > On Wednesday 25 September 2013 17:39:04 Hans Beck=E9rus wrote:
> >> Hi. I have a recipe that use BBCLASSEXTEND to extend native. For t=
he
> >> normal/base version I wish to set/export an environment variable t=
o be
> >> picked up by configure.
> >> But I do not wish this variable to be set by the native package. H=
ow
> >> would I accomplish that? It was ok before when I had a package-nat=
ive
> >> recipe but since that is obsolete in favor for BBCLASSEXTEND I wis=
h to
> >> remove it. I think I covered all the other caveats like DEPEND and=

> >> PACKAGE/FILES. But this one is not as straight forward, or is it?
> >=20
> > If I'm understanding the requirements correctly think you could do
> > something like:
> >=20
> > do_configure_prepend_class_target() {
> >=20
> >         export VARIABLE=3Dvalue
> >=20
> > }
>=20
> Yes, I believe I tried that, but then the export does not persist ove=
r
> do_configure(), does it?
> It is only alive during the scope of do_configure_prepend() or?

The _prepend is just prepended to the function before running it, so it=
 will=20
be applied for the entire function. If you have a look at=20
temp/run.do_configure.* in the workdir for the recipe, you'll be able t=
o verify=20
this.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre


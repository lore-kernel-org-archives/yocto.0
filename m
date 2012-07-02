Return-Path: <jessica.zhang@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83D8BE006AD
	for <yocto@yoctoproject.org>; Mon,  2 Jul 2012 13:18:13 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 02 Jul 2012 13:18:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="187652640"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga002.fm.intel.com with ESMTP; 02 Jul 2012 13:18:12 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 2 Jul 2012 13:18:08 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.125]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.96]) with mapi id
	14.01.0355.002; Mon, 2 Jul 2012 13:18:08 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Manuel Bessler <manuel.bessler@gmail.com>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] how does one use a prebuilt toolchain from the
	toolchain/ directory?
Thread-Index: AQHNWI2TZGaDHm2TbUaoFyBl8wi5kZcWa7oQ
Date: Mon, 2 Jul 2012 20:18:08 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C46A874F6@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1206260424590.22400@oneiric>
	<CAKSdS8JfwcMZpXej0jykpquWvAN8vPyJPrmq3u_Y6i47iYdzZA@mail.gmail.com>
In-Reply-To: <CAKSdS8JfwcMZpXej0jykpquWvAN8vPyJPrmq3u_Y6i47iYdzZA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: how does one use a prebuilt toolchain from the	toolchain/ directory?
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
X-List-Received-Date: Mon, 02 Jul 2012 20:18:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

See my comments below...

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Manuel Bessler
Sent: Monday, July 02, 2012 1:02 PM
To: Yocto discussion list
Subject: Re: [yocto] how does one use a prebuilt toolchain from the toolcha=
in/ directory?

I'm in a similar situation and have been wondering about the same questions=
 Robert is raising...

I'd love to see others chime in with any insight they might have.

Thanks,
Manuel

On Tue, Jun 26, 2012 at 4:51 AM, Robert P. J. Day <rpjday@crashcourse.ca> w=
rote:
>
>   it sounds like a trivial question whose answer should be easy to
> find, but surprisingly, it isn't.  if a user wants to save all that
> toolchain-building time and take advantage of an existing toolchain,
> what to do?
>
>   the ADT user's guide *sort of* addresses that, but in a somewhat
> confusing way:
>
> http://www.yoctoproject.org/docs/current/adt-manual/adt-manual.html
>
>   first, the ADT guide, in section 2.1.2, talks about how to do this,
> but only after the more complicated and involved recipe for using the
> ADT installer.  this strikes me as backwards -- a set of alternatives
> would make sense going from simplest to most complicated.  using a
> prebuilt toolchain would seem to be the *first* thing that should be
> explained.
>
>   next, that section 2.1.2 in the ADT guide opens reasonably by
> explaining how to find and download the appropriate toolchain and
> then, for no apparent reason, takes this massive sidestep in a "Note"
> to ask the reader to consider using bitbake to build it instead.  um
> ... no.  in the midst of explaining something really simple, it's
> totally counter-productive to suddenly ask the reader to consider
> something noticeably more complex and unnecessary in the context of
> the current explanation.
>
>   finally, after the Note is over, the instructions return to point
> 3., correctly telling the reader to unload the tarball at the root
> directory, then vaguely referring to some "environment setup files"
> without explaining what to do with them or when to run them or what
> effect they'll have on the build process from then on. should one run
> the appropriate env setup file *before* invoking oe-init-build-env?
> after?  does it matter?
>
>   so to clarify this issue, here's a set of questions to which i know
> *some* of the answers and would like to know the rest.
>
> 1) i want to save buckets of time in my builds by using a pre-built
> toolchain appropriate for my architecture.  can i always use one of
> the toolchains at
> http://downloads.yoctoproject.org/releases/yocto/yocto-1.2/toolchain/?
> is there any downside to doing that?  if so, what?
>

[JZ] you can always use the pre-built toolchain from there.

> 2) do those pre-built toolchains always need to be installed under
> /opt/poky?  it seems pretty obvious that they do, given that the
> environment setup scripts hardcode references to /opt/poky.
>

[JZ] As you've found, yes, currently all the toolchains, either extracted f=
rom pre-built tar ball or through adt-installer will always go under /opt/p=
oky.  For 1.3, there's a feature request to make toolchain reloadable.

> 3) can i install multiple toolchains at the same time?  it seems so --
> the common native content in the toolchains seems identical so i don't
> see any issue with having two or more toolchains installed at the same
> time.

[JZ] yes you can, actually the directory structure is designed that way.

>
> 4) once i install a toolchain, how do i use it?  say i install the arm
> toolchain, and want to build a beagleboard image.  at what point do i
> source the arm toolchain environment setup file?  is that all it
> takes?  will the bitbake build process automatically recognize what
> i've done and use that toolchain?

[JZ] Please note this toolchain is meant to be used by application develope=
rs not image builders.  This toolchain is meant for cross development that =
allows you to develop target application on your host machines.  Once you s=
ource the environment-setup script, it'll setup your path correctly that ma=
kes it able to find all the cross development tools, e.g. /opt/poky/1.2/sys=
roots/i686-pokysdk-linux/usr/bin/i586-poky-linux/i586-poky-linux-gcc will b=
e used for compiling your programs.
>
>   and so on, and so on.  thoughts?
>
> rday
>
> --
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> =3D=3D Robert P. J. Day                                 Ottawa, Ontario,
> CANADA
>                         http://crashcourse.ca
>
> Twitter:
> http://twitter.com/rpjday
> LinkedIn:
> http://ca.linkedin.com/in/rpjday
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> =3D=3D _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


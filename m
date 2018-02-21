Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99BDCE00DF8; Tue, 20 Feb 2018 19:01:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C01EE00DAE
	for <yocto@yoctoproject.org>; Tue, 20 Feb 2018 19:01:32 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	20 Feb 2018 19:01:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,542,1511856000"; d="scan'208";a="176835063"
Received: from yyeensan-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.164.243])
	by orsmga004.jf.intel.com with ESMTP; 20 Feb 2018 19:01:28 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: =?ISO-8859-1?Q?Iv=E1n?= Castell <icastell@nayarsystems.com>
Date: Wed, 21 Feb 2018 16:01:26 +1300
Message-ID: <9932000.ggXYnGUaR3@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <CAALXFYxaYh=cEaNGOzZsjN50zVd-6MsUNKySwiDc+isCKgsBVQ@mail.gmail.com>
References: <CAALXFYz4Zp4+FTj=VvNVNWOHqnK180YhOBykLEiZ2nTCLF6kig@mail.gmail.com>
	<de7a5512-c5bf-8a67-f454-a85c788ef2b6@prevas.dk>
	<CAALXFYxaYh=cEaNGOzZsjN50zVd-6MsUNKySwiDc+isCKgsBVQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Removing busybox completely from the generated image
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
X-List-Received-Date: Wed, 21 Feb 2018 03:01:33 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Tuesday, 20 February 2018 9:26:49 PM NZDT Iv=E1n Castell wrote:
> 2018-02-20 7:45 GMT+01:00 Martin Hundeb=F8ll <mnhu@prevas.dk>:
> >> Thank you for the information, I will take into account that tool for
> >> future embedded projects. However, the focus of this issue was to remo=
ve
> >> completely busybox from the image, not replacing it by another
> >> application box.
> >>
> >> I have created a bbappend with a fragment of the busybox configuration
> >> disabling syslog and udhcpc applets. It works. However the busybox bin=
ary
> >> and a lot of applets are still there (adduser, unzip, fbset, tracerout=
e,
> >> and more).
> >>
> >> Disabling all different applets and installing native tools instead co=
uld
> >> be the right way to procede. Not a nice solution, but at least it shou=
ld
> >> work...
> >>
> >
> > Here's what we have in our distro config to disable busybox:
> >
> > > # Disable busybox
> > > VIRTUAL-RUNTIME_base-utils =3D ""
> > > ALTERNATIVE_PRIORITY_pn-busybox =3D "1"
> >
> > The priority setting make bitbake pull in alternatives from util-linux /
> > coreutils when appropriate.
>=20
> Yes!! That was the trick. It works like a charm!! Thank you so much Mr.
> Martin!! :-)

I will note that the priority currently set in busybox.inc is 50, which is=
=20
lower than coreutils 100 (or 90 for hostname), so that part shouldn't be=20
needed for coreutils. There are one or two other recipes that set a priorit=
y=20
lower than 50 for reasons that are not immediately clear to me.=20

Additionally, ALTERNATIVE_PRIORITY won't do anything to control what goes i=
nto=20
the image - it only controls which binary is selected at runtime when more=
=20
than one providing the same binary is installed. Thus I can only assume tha=
t=20
it was the VIRTUAL-RUNTIME_base-utils =3D "" that finally removed the packa=
ges=20
you wished removed.

Cheers,
Paul

=2D-=20

Paul Eggleton
Intel Open Source Technology Centre




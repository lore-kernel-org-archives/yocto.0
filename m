Return-Path: <B29882@freescale.com>
Received: from tx2outboundpool.messaging.microsoft.com
	(tx2ehsobe004.messaging.microsoft.com [65.55.88.14])
	(using TLSv1 with cipher AES128-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id DA44EE00348
	for <yocto@yoctoproject.org>; Thu, 28 Feb 2013 20:21:43 -0800 (PST)
Received: from mail81-tx2-R.bigfish.com (10.9.14.237) by
	TX2EHSOBE010.bigfish.com (10.9.40.30) with Microsoft SMTP Server id
	14.1.225.23; Fri, 1 Mar 2013 04:21:42 +0000
Received: from mail81-tx2 (localhost [127.0.0.1])	by mail81-tx2-R.bigfish.com
	(Postfix) with ESMTP id A44386012D;
	Fri,  1 Mar 2013 04:21:42 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -2
X-BigFish: VS-2(zz98dI9371I1432Izz1f42h1ee6h1de0h1202h1e76h1d1ah1d2ahzz8275bhz2dh2a8h668h839h8e2h8e3h947hd25hf0ah10d2h1288h12a5h12a9h12bdh137ah13b6h1441h1537h153bh15d0h162dh1631h1758h18e1h1946h19b5h19ceh1ad9hbe9i1155h)
Received: from mail81-tx2 (localhost.localdomain [127.0.0.1]) by mail81-tx2
	(MessageSwitch) id 1362111700920031_13409;
	Fri,  1 Mar 2013 04:21:40 +0000 (UTC)
Received: from TX2EHSMHS042.bigfish.com (unknown [10.9.14.233])	by
	mail81-tx2.bigfish.com (Postfix) with ESMTP id D251332004E;
	Fri,  1 Mar 2013 04:21:40 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by TX2EHSMHS042.bigfish.com
	(10.9.99.142) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Fri, 1 Mar 2013 04:21:40 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.221]) by
	039-SN1MMR1-004.039d.mgd.msft.net ([::1]) with mapi id 14.02.0328.011;
	Fri, 1 Mar 2013 04:22:41 +0000
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Thread-Topic: [yocto] Newbie trying to get started
Thread-Index: AQHOFjRpJMxVZDuwe0SPIz2Q/qtEOA==
Date: Fri, 1 Mar 2013 04:22:38 +0000
Message-ID: <70CC66F5C30A414DADDA6973E4CA391A893FEA@039-SN1MPN1-001.039d.mgd.msft.net>
References: <D5D8A4D8397140AB98A5568853482737@PAULD>
In-Reply-To: <D5D8A4D8397140AB98A5568853482737@PAULD>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Newbie trying to get started
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: McClintock Matthew-B29882 <B29882@freescale.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 01 Mar 2013 04:21:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <E6519AAF10E9AA4693E2A8209C2B58F4@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 28, 2013 at 5:54 PM, Paul D. DeRocco <pderocco@ix.netcom.com> w=
rote:
> I've been working with a Gumstix, and have successfully built both the
> console and GUI version of their distro. So now I have two directories,
> yocto/poky containing everything that was downloaded, and yocto/build
> containing the stuff that was built. So far, so good.
>
> Now, I need to do a completely unrelated project, based on an Intel Atom.
> I've downloaded the BSP (the N2600/N2800/D2550), and the directions told =
me
> to unpack it so that it's all contained in yocto/meta-intel. Does this me=
an
> that this BSP isn't related to Poky? My yocto/poky directory is full of
> other meta-blahblah stuff, so I would think that meta-intel would go in
> there, one level down.

Not sure about the Intel BSPs but they may contain just their layer
and/or poky + meta-intel. It does not really matter where meta-intel
lives on your file system though. It can be referenced directly in
your 'conf/bblayers.conf' file in your build folder.

> Then, the directions say to edit bblayers.conf, and possibly local.conf. =
The
> only place I find these files are in my yocto/build/conf directory, but I
> would think that doing a build for a different machine would involve sett=
ing
> up a different build directory, e.g., yocto/buildatom. Is that correct? B=
ut
> isn't the build directory set up by running the oe-init-build-env script,
> which comes afterwards in the instructions?

Different build folders are not an explicit requirement for different
MACHINES (or in some cases unless there are some conflicts that are
unknown diferrent distros - don't go out of your way to do this
though). In fact if two MACHINES are the same ARCH you can reuse
components between and save a lot of build time. That or use
sstate-cache between two build folders which won't be quite as fast
but almost...

> Also, those instructions imply that I should run that script in the
> yocto/poky directory, since that's where the script is located, but the
> meta-intel is "upstairs" from that, which seems odd.

Should not matter, you add meta-intel to 'conf/bblayers/conf' later.
Unless this is possibly done for you via script - but I don't think
any scripts in poky do this for you. Either way you can checkup on
things layer to make sure the require layers are included.

> I'm confused by all this, but more to the point, I'm afraid of doing the
> wrong thing, and clobbering the Gumstix stuff, which took a day and a hal=
f
> to build. I expect the Atom build will also take a long time, but I don't
> want to have to do it two more times.

You are mixing gumstix and poky distros in one build folder? That
could work as mentioned above, but it might encounter issues. I don't
think it's regularly tested though so YMMV. My suggest would be to
share the sstate-cache between the two build environments. So if one
package has already been built it's reused (and the signatures match -
which just means it's deemed compatible between machines)

It's also quite likely you won't save much build time since gumstix
and poky will be using different ARCHs and all the recipes will be
rebuilt anyways. Again not really that familiar with gumstix so some
statements above could be a bit off.

-M=



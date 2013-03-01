Return-Path: <B29882@freescale.com>
Received: from va3outboundpool.messaging.microsoft.com
	(va3ehsobe010.messaging.microsoft.com [216.32.180.30])
	(using TLSv1 with cipher AES128-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id CB478E00348
	for <yocto@yoctoproject.org>; Thu, 28 Feb 2013 22:39:52 -0800 (PST)
Received: from mail188-va3-R.bigfish.com (10.7.14.229) by
	VA3EHSOBE002.bigfish.com (10.7.40.22) with Microsoft SMTP Server id
	14.1.225.23; Fri, 1 Mar 2013 06:39:51 +0000
Received: from mail188-va3 (localhost [127.0.0.1])	by
	mail188-va3-R.bigfish.com (Postfix) with ESMTP id 9DAB12005D;
	Fri,  1 Mar 2013 06:39:51 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -3
X-BigFish: VS-3(zz98dI9371I1432I1453Izz1f42h1ee6h1de0h1202h1e76h1d1ah1d2ahzz8275bhz2dh2a8h668h839h8e2h8e3h947hd25hf0ah10d2h1288h12a5h12a9h12bdh137ah13b6h1441h1537h153bh15d0h162dh1631h1758h18e1h1946h19b5h19ceh1ad9hbe9i1155h)
Received: from mail188-va3 (localhost.localdomain [127.0.0.1]) by mail188-va3
	(MessageSwitch) id 1362119989502167_12775;
	Fri,  1 Mar 2013 06:39:49 +0000 (UTC)
Received: from VA3EHSMHS003.bigfish.com (unknown [10.7.14.242])	by
	mail188-va3.bigfish.com (Postfix) with ESMTP id 74AC63600DC;
	Fri,  1 Mar 2013 06:39:49 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by VA3EHSMHS003.bigfish.com
	(10.7.99.13) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Fri, 1 Mar 2013 06:39:49 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.221]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.02.0328.011; Fri, 1 Mar 2013 06:39:56 +0000
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Thread-Topic: [yocto] Newbie trying to get started
Thread-Index: AQHOFjRpJMxVZDuwe0SPIz2Q/qtEOA==
Date: Fri, 1 Mar 2013 06:41:25 +0000
Message-ID: <70CC66F5C30A414DADDA6973E4CA391A8941C9@039-SN1MPN1-001.039d.mgd.msft.net>
References: <D5D8A4D8397140AB98A5568853482737@PAULD>
	<70CC66F5C30A414DADDA6973E4CA391A893FEA@039-SN1MPN1-001.039d.mgd.msft.net>
	<334AC94BF95946418CA0230883C97349@PAULD>
In-Reply-To: <334AC94BF95946418CA0230883C97349@PAULD>
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
X-List-Received-Date: Fri, 01 Mar 2013 06:39:53 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <8F819BBE167A894AB91647F0A040873F@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 1, 2013 at 12:20 AM, Paul D. DeRocco <pderocco@ix.netcom.com> w=
rote:
>> From: McClintock Matthew-B29882
>>
>> Not sure about the Intel BSPs but they may contain just their layer
>> and/or poky + meta-intel. It does not really matter where meta-intel
>> lives on your file system though. It can be referenced directly in
>> your 'conf/bblayers.conf' file in your build folder.
>>
>> > Then, the directions say to edit bblayers.conf, and
>> possibly local.conf. The
>> > only place I find these files are in my yocto/build/conf
>> directory, but I
>> > would think that doing a build for a different machine
>> would involve setting
>> > up a different build directory, e.g., yocto/buildatom. Is
>> that correct? But
>> > isn't the build directory set up by running the
>> oe-init-build-env script,
>> > which comes afterwards in the instructions?
>>
>> Different build folders are not an explicit requirement for different
>> MACHINES (or in some cases unless there are some conflicts that are
>> unknown diferrent distros - don't go out of your way to do this
>> though). In fact if two MACHINES are the same ARCH you can reuse
>> components between and save a lot of build time. That or use
>> sstate-cache between two build folders which won't be quite as fast
>> but almost...
>>
>> > Also, those instructions imply that I should run that script in the
>> > yocto/poky directory, since that's where the script is
>> located, but the
>> > meta-intel is "upstairs" from that, which seems odd.
>>
>> Should not matter, you add meta-intel to 'conf/bblayers/conf' later.
>> Unless this is possibly done for you via script - but I don't think
>> any scripts in poky do this for you. Either way you can checkup on
>> things layer to make sure the require layers are included.
>>
>> > I'm confused by all this, but more to the point, I'm afraid
>> of doing the
>> > wrong thing, and clobbering the Gumstix stuff, which took a
>> day and a half
>> > to build. I expect the Atom build will also take a long
>> time, but I don't
>> > want to have to do it two more times.
>>
>> You are mixing gumstix and poky distros in one build folder? That
>> could work as mentioned above, but it might encounter issues. I don't
>> think it's regularly tested though so YMMV. My suggest would be to
>> share the sstate-cache between the two build environments. So if one
>> package has already been built it's reused (and the signatures match -
>> which just means it's deemed compatible between machines)
>>
>> It's also quite likely you won't save much build time since gumstix
>> and poky will be using different ARCHs and all the recipes will be
>> rebuilt anyways. Again not really that familiar with gumstix so some
>> statements above could be a bit off.
>
> That's what I thought. You can't really share much of anything between a
> Gumstix and an Atom, so I'm using a separate build tree.
>
> But it's not working. The instructions tell me to set MACHINE to
> "cedartrail" or "cedartrail-nopvr" in local.conf, so I chose the latter
> since I'm doing a GUI-less system. And then it tells me to run "bitbake
> core-image-sato" which seems strange, since "sato" refers to a desktop
> manager or something graphical. After a lot of DEBUG output, I get the
> following error message:
>
>     ERROR:  OE-core's config sanity checker detected a potential
>         misconfiguration.
>         Either fix the cause of this error or at your own risk disable th=
e
>         checker (see sanity.conf).
>         Following is the list of potential problems / advisories:
>         Please set a valid MACHINE in your local.conf or environment
>
> Also, I notice among the debug output, early on:
>
>     DEBUG: CONF file 'conf/machine/cedartrail-nopvr.conf' not found
>
> even though that file exists in poky/meta-intel.

Is the layer that contains this file in conf/bblayers.conf?

> Is the problem that I'm making the wrong image for a GUI-less system? Whe=
re
> are targets like "core-image-sato" defined? I don't see any file of that
> name, with a .bb or any other extension, other than a prebuilt image.
>
> I get the feeling I'm missing something.

What about just building core-image-minimal (this image has no gui)?

> By the way, I'm using the poky tree that was downloaded as a result of my
> Gumstix build, except for the meta-intel subdirectory. Is that wrong?

It could be.... you should check the differences between the two trees
each one is expecting (e.g. they could be based on different releases)

-M=



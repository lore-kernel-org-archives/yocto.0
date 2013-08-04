Return-Path: <martiert@gmail.com>
Received: from mail-la0-f51.google.com (mail-la0-f51.google.com
	[209.85.215.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F68FE00747
	for <yocto@yoctoproject.org>; Sun,  4 Aug 2013 14:23:40 -0700 (PDT)
Received: by mail-la0-f51.google.com with SMTP id fp13so1562915lab.38
	for <yocto@yoctoproject.org>; Sun, 04 Aug 2013 14:23:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=references:mime-version:in-reply-to:content-type
	:content-transfer-encoding:message-id:cc:x-mailer:from:subject:date
	:to; bh=0QyuRO4/IAl47j/TCmzGA/rpIIDDp5so+nrogncpcN0=;
	b=zR98N/Y40us901Mtjf7acTGsve8KrL73lc126XOVuJhtWatNAg/cj/+QecEbTROGMP
	Uxvml0dG2U+Uru3SBK2z/Sy4qAhrQts57G01GHtHyCvnePJ1/4+jxtWOlv+m9+UNkrsi
	WSCWLARmR3XavXQG0Q37+/c7XA5gMoPXf5SslEzmuGIq5meD9nXj+KnA1w2n7UGmTybX
	toT86w/gJHjL9SGlhC4dMXdoQy21mMz3F9Q1ku63xkvG+v+fCijvCKY5dL3f5RIVpohI
	n7ZYErGWWYHcg0SUdn70A1dQDoT9fVOyV9b9OlAB8t2tOTSnod81VLKEZ8rSHQ4ZJaSu
	D6yQ==
X-Received: by 10.152.115.146 with SMTP id jo18mr7260646lab.56.1375651419328; 
	Sun, 04 Aug 2013 14:23:39 -0700 (PDT)
Received: from [192.168.1.140] (59.37-191-128.fiber.lynet.no. [37.191.128.59])
	by mx.google.com with ESMTPSA id 8sm7743384lbq.4.2013.08.04.14.23.37
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 04 Aug 2013 14:23:38 -0700 (PDT)
References: <51F8BAE8.3090805@gmail.com>
	<CAAQYJAvPts390fqheZoHPN1XF3VtSZ8YaNuFp5P8f3fp_5r=ag@mail.gmail.com>
	<51F8EDB2.4020001@gmail.com>
	<CADkTA4NbutoU4AXyfQ84VQNCUmYv1PZwTFhYDBX8ENbOhCL0Gw@mail.gmail.com>
Mime-Version: 1.0 (1.0)
In-Reply-To: <CADkTA4NbutoU4AXyfQ84VQNCUmYv1PZwTFhYDBX8ENbOhCL0Gw@mail.gmail.com>
Message-Id: <8FA37C33-DF65-4B96-BD90-4D3B784E4A57@gmail.com>
X-Mailer: iPad Mail (10B329)
From: martiert@gmail.com
Date: Sun, 4 Aug 2013 23:23:36 +0200
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building linux-yocto kernel in own bsp layer
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
X-List-Received-Date: Sun, 04 Aug 2013 21:23:43 -0000
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable



On 31. juli 2013, at 14:42, Bruce Ashfield <bruce.ashfield@gmail.com> wrote:=


> On Wed, Jul 31, 2013 at 6:57 AM, Martin Ertsaas <martiert@gmail.com> wrote=
:
>> On 07/31/13 10:57, Andrea Adami wrote:
>>> On Wed, Jul 31, 2013 at 9:21 AM, Martin Ertsaas <martiert@gmail.com> wro=
te:
>>>> Hi.
>>>>=20
>>>> I'm creating my own bsp layer for omap4 chips (Yes, I know of meta-ti,
>>>> but I want to learn how to do this myself :)). I'm trying to use the
>>>> linux-yocto 3.4 kernel,
>>>> and have gotten it to work locally. I then made a
>>>> linux-yocto_3.4.bbappend which contains the following:
>>>>=20
>>>> COMPATIBLE_MACHINE_pandaboard =3D "pandaboard"
>>>>=20
>>>> SRCREV_machine_pandaboard ?=3D "7eb5fbf903d9db90c3cf371b65e1f2a68d5676d=
7"
>>>>=20
>>>> THISDIR :=3D "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
>>>> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}-3.4"
>>=20
>> The defconfig is found. I can see a defconfig in ${WORKDIR} with zero
>> diff to my defconfig. It is, however, not copied from there into
>> ${WORKDIR}/linux.
>=20
> If you are looking in ${WORKDIR}/linux, you'll never see the defconfig. Ev=
en
> in the base kernel class it is copied to the build directory, which is
> linux-$MACHINE-build.
>=20
> Even after the copy, it is pulled into a secondary set of
> configuration steps that
> allow configuration fragments to be processed and layered on top of
> that baseline
> configuration.
>=20
> Are you determining that it isn't being used by the existence or non
> existence of a
> file, or are you seeing other issues with the resulting .config ?

What I see is that I have a ${WORKDIR}/defconfig. The .config in linux-${MAC=
HINE}-build is for a different architecture (x86) than my defconfig, the sam=
e holds for the .config.old in the same place. Tried adding B=3D${WORKDIR}/l=
inux-${MACHINE}-build to my append, but no difference.

>=20
> Technically you don't even need a defconfig, you can just use a .cfg
> with h/w options
> for the board, but that's a different topic.
>=20
> Cheers,
>=20
> Bruce
>=20
>>=20
>> I changed it so it uses the colon though, and removed THISDIR as
>> suggested by Paul, but didn't help. I still don't get the config copied
>> in, and if I add the do_configure_prepend myself to do this, I get a
>> message from the kernel building saying my folder is unclean.
>>=20
>> - Martin
>>=20
>>> Martin,
>>>=20
>>> the code in kernel.bbclass does already copy defonfig to .config, see
>>> http://cgit.openembedded.org/openembedded-core/tree/meta/classes/kernel.=
bbclass#n216
>>>=20
>>> I think your problem is the deconfig is not found,  you miss a colon at t=
he end.
>>> Use something like
>>>=20
>>> FILESEXTRAPATHS_prepend :=3D
>>> "${THISDIR}/${PN}-3.4:${THISDIR}/${PN}:${THISDIR}/files:"
>>>=20
>>> Cheers
>>>=20
>>> Andrea
>>>=20
>>>=20
>>>> SRC_URI +=3D "file://defconfig"
>>>>=20
>>>> do_configure_prepend() {
>>>>        cp ${WORKDIR}/defconfig ${S}/.config
>>>> }
>>>>=20
>>>> Problem I get is, without this configure_prepend, my defconfig is not
>>>> copied into .config the kernel folder. With this however, I get a
>>>> complaint from the kernel that the kernel directory is not clean and I
>>>> have to run make mrproper.
>>>>=20
>>>> I would greatly appreciate any pointer/help/explanations as to what I
>>>> have done wrong here, and how to fix it. Have been struggling for this
>>>> for a while now, and have no idea what I have done wrong.
>>>>=20
>>>> Best regards
>>>> Martin Ertsaas
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>=20
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>=20
>=20
>=20
> --=20
> "Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end"


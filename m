Return-Path: <nathan@nathan.to>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4AE92E0079A; Thu, 28 Jan 2016 10:34:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.72.237.35 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from sasl.smtp.pobox.com (pb-smtp0.int.icgroup.com [208.72.237.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5E26E0079A
	for <yocto@yoctoproject.org>; Thu, 28 Jan 2016 10:34:00 -0800 (PST)
Received: from sasl.smtp.pobox.com (unknown [127.0.0.1])
	by pb-smtp0.pobox.com (Postfix) with ESMTP id 8533D3E4BC;
	Thu, 28 Jan 2016 13:33:59 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=content-type
	:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to; s=sasl; bh=
	nQoQ5fCHyHtTVfpkjyNPC2BViU8=; b=VJfTBoczSmFg6zIvOoc+1tL3yo3h5oZF
	pfNipizhay8g8bzix7gMbN6S6DLSX0WZx/DEAHvBsLa/KSOknPCpUO3OXrP2lz+9
	7aUx0AYobb/zDJvPdcErfdhNK4TBrmcWGLUvaAY2RJtJgra4+FytlnOUKwIU8sZ7
	giucVA2+ppM=
Received: from pb-smtp0.int.icgroup.com (unknown [127.0.0.1])
	by pb-smtp0.pobox.com (Postfix) with ESMTP id 7C9E33E4BB;
	Thu, 28 Jan 2016 13:33:59 -0500 (EST)
Received: from [10.41.136.109] (unknown [79.154.252.102])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pb-smtp0.pobox.com (Postfix) with ESMTPSA id A87403E4B9;
	Thu, 28 Jan 2016 13:33:58 -0500 (EST)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3119\))
From: Nathan Sowatskey <nathan@nathan.to>
In-Reply-To: <CAMKF1sosva3Xc-3OAD6b-Vbfg6Ng0OmGEXST6UZDcvg1Hax8TQ@mail.gmail.com>
Date: Thu, 28 Jan 2016 19:33:56 +0100
Message-Id: <37AEF0C9-A6BC-41F4-A46D-844564AE3815@nathan.to>
References: <45932BCC-6F6D-4F6B-841A-66F81E442828@nathan.to>
	<CAMKF1sosva3Xc-3OAD6b-Vbfg6Ng0OmGEXST6UZDcvg1Hax8TQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.3119)
X-Pobox-Relay-ID: B20593A6-C5ED-11E5-B63A-80A36AB36C07-96844961!pb-smtp0.pobox.com
Cc: yocto@yoctoproject.org
Subject: Re: Qt5 on qemux86-64 core-image-full-cmdline
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
X-List-Received-Date: Thu, 28 Jan 2016 18:34:02 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Many thanks. I just need to figure out how to get the layers onto the =
Build Appliance now =E2=80=A6

Regards

Nathan

> On 28 Jan 2016, at 19:30, Khem Raj <raj.khem@gmail.com> wrote:
>=20
>=20
> On Jan 28, 2016 1:24 PM, "Nathan Sowatskey" <nathan@nathan.to> wrote:
> >
> > Hi
> >
> > I am using the Yocto Build Appliance to build an image using a =
profile of qemux86-64, and recipe of core-image-full-cmdline.
> >
> > The application I need to run on that image has a dependency on Qt5 =
libs.
> >
> > It seems that only Qt4 libs are available in the packages on the =
build appliance.
> >
> > Can anyone help me with adding the Qt5 packages please?
>=20
> Use meta-qt5 layer
> Always search layer index for additional recipes at =
layers.openembedded.org
> >
> > Many thanks
> >
> > Nathan
> >
> > =E2=80=94
> > Nathan John Sowatskey
> > Consulting Engineer - Programmable Infrastructure, DevOps, IoT and =
SDN
> > nathan@nathan.to
> > www.linkedin.com/in/nathandevops
> > XMPP: nathandotto@im.koderoot.net
> > Google: nathanjohnsowatskey@gmail.com
> > Skype: nathan_sowatskey
> > Twitter: NathanDotTo
> > GitHub: https://github.com/DevOps4Networks
> > http://www.kipling.org.uk/poems_if.htm
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto



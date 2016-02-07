Return-Path: <nathan@nathan.to>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 776E1E00D56; Sun,  7 Feb 2016 02:51:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, MIME_QP_LONG_LINE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [208.72.237.35 listed in list.dnswl.org]
Received: from sasl.smtp.pobox.com (pb-smtp0.int.icgroup.com [208.72.237.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BE1BE00B37
	for <yocto@yoctoproject.org>; Sun,  7 Feb 2016 02:51:21 -0800 (PST)
Received: from sasl.smtp.pobox.com (unknown [127.0.0.1])
	by pb-smtp0.pobox.com (Postfix) with ESMTP id 30A01405F6;
	Sun,  7 Feb 2016 05:51:18 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=content-type
	:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to; s=sasl; bh=
	OmYhY7OwEvuBpA36Hx0dhsVstAY=; b=VmugLq4HH/2zvPzhqbuXlzw2F5WBF6jY
	Eq7zijqav4Lu7FXdH05DBfRQz9QOHot2atUPTrQFkAYSKhIPtjT9LjKgowl9/NZZ
	1EcBlTzqfqWNLV/lzTPu9T5BKr04e0wxn2zcB5jNa2jVnJOb4j/B9ElitI69DOWP
	BZdPMyOxocs=
Received: from pb-smtp0.int.icgroup.com (unknown [127.0.0.1])
	by pb-smtp0.pobox.com (Postfix) with ESMTP id 28266405F5;
	Sun,  7 Feb 2016 05:51:18 -0500 (EST)
Received: from [10.41.136.109] (unknown [79.153.217.219])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pb-smtp0.pobox.com (Postfix) with ESMTPSA id 5AC07405EE;
	Sun,  7 Feb 2016 05:51:12 -0500 (EST)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3119\))
From: Nathan Sowatskey <nathan@nathan.to>
In-Reply-To: <CANNuj8wK7W7Ns_YuKRfA_=8pqxNr=F-2sVuRberwjaQzvcksjg@mail.gmail.com>
Date: Sun, 7 Feb 2016 11:51:05 +0100
Message-Id: <6854FCC8-85C7-42C9-90F4-2D349FFA8115@nathan.to>
References: <CANNuj8z_WVtPWtf=addnrNLtWNOx6EPPN8ua920tHsvVS52MFw@mail.gmail.com>
	<FE742A86-BFF3-4756-8571-2FB0E5AB236F@nathan.to>
	<CANNuj8wK7W7Ns_YuKRfA_=8pqxNr=F-2sVuRberwjaQzvcksjg@mail.gmail.com>
To: Gilar Dwitresna <gilardwitresna@gmail.com>
X-Mailer: Apple Mail (2.3119)
X-Pobox-Relay-ID: B426BDE8-CD88-11E5-8BE4-79226BB36C07-96844961!pb-smtp0.pobox.com
Cc: yocto@yoctoproject.org
Subject: Re: [Qemu-discuss] how to install qemu KVM 1.4.0 release
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
X-List-Received-Date: Sun, 07 Feb 2016 10:51:26 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Gilar

I think that you have a minor typo below, where you say =E2=80=9C13.04=E2=80=
=9D in lieu of =E2=80=9C14.04=E2=80=9D.=20

To help us help you, we need to be able to recreate what you have done =
already, ideally using CLI commands.

The screenshot you sent shows that you are installing something, but not =
whether there are any issues with that install, or, if there are issues, =
what those issues might be.

If you can reproduce your issue with CLI commands using software =
versions and tools that we can all access to, then it will be easier for =
us to help you.

As matters stand now, we cannot see what your issue is.

Regards

Nathan


> On 7 Feb 2016, at 11:40, Gilar Dwitresna <gilardwitresna@gmail.com> =
wrote:
>=20
> I have installed KVM package on my Ubuntu 14.04, and virt-manager for =
management VM..
> but my undergraduate thesis must be work on qemu/kvm 1.4.0 release =
version.
> then, I have installed Qemu/KVM 1.4.0 on my Ubuntu 13.04, but I can't =
connect the qemu/kvm 1.4.0 to the virt-manager/ other vm manager.
> can you give me  solutions?
>=20
> On Fri, Feb 5, 2016 at 10:02 PM, Nathan Sowatskey <nathan@nathan.to> =
wrote:
> Gilar
>=20
> Please tell us what you have tried so far, and what has happened. Show =
CLI output if you can please.
>=20
> Many thanks
>=20
> Nathan
>=20
> > On 5 Feb 2016, at 10:16, Gilar Dwitresna <gilardwitresna@gmail.com> =
wrote:
> >
> > Dear,
> > My name is Gilar Dwitresna, from Telkom University, Indonesia.
> > i'm interested with live migration on qemu kvm 1.4.0 release, but i =
have a problems in the installation of qemu kvm 1.4.0.
> > can i get the tutorial of installing kvm qemu 1.4.0? and what =
version of ubuntu that i can install qemu kvm1.4.0?
> > I intend to implement the live migration algorithm for my =
undergraduate thesis at Telkom University.
> > Thank you for your attention and help .
> >
> >
> > Best Regards,
> > Gilar Dwitresna
> > Telkom University
> > Indonesia
> >
>=20
>=20
> <qemu.JPG>



Return-Path: <andrew@aj.id.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 479AEE00CA5; Wed, 18 May 2016 01:14:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [69.163.253.7 listed in list.dnswl.org]
X-Greylist: delayed 111521 seconds by postgrey-1.32 at yocto-www;
	Wed, 18 May 2016 01:14:08 PDT
Received: from homiemail-a13.g.dreamhost.com (sub3.mail.dreamhost.com
	[69.163.253.7])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46FC4E00C1F
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 01:14:08 -0700 (PDT)
Received: from homiemail-a13.g.dreamhost.com (localhost [127.0.0.1])
	by homiemail-a13.g.dreamhost.com (Postfix) with ESMTP id 8E285334076;
	Wed, 18 May 2016 01:14:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=aj.id.au; h=message-id
	:subject:from:reply-to:to:cc:date:in-reply-to:references
	:content-type:mime-version; s=aj.id.au; bh=lViFlmHTPWpzB8Yuw+OWF
	64OF8Q=; b=j3HJZJBOrbSgtt3FOf49rq/crcjkl8leI7EcSkgQFB25Zh4Jfp/sv
	4W4PTNDXwaIerA71iJw3kTJshpMrnHAML0aAlO16a21tUmTh0FuD7PTmlVNrmJIy
	ohXROTZ/Np0kzGeBK/SzFgSsNZh+5Cq4pZhblGgqdOzdET75bXvBGM=
Received: from keelia (unknown [203.0.153.9])
	(using TLSv1 with cipher AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: andrew@aj.id.au)
	by homiemail-a13.g.dreamhost.com (Postfix) with ESMTPSA id 743C7334075; 
	Wed, 18 May 2016 01:14:05 -0700 (PDT)
Message-ID: <1463559230.2703.118.camel@aj.id.au>
From: Andrew Jeffery <andrew@aj.id.au>
To: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 18 May 2016 17:43:50 +0930
In-Reply-To: <CAJTo0LbX7qrAc5e0OSJzTJ=ish7rLuGzm9LA7LbKF4DK+jy+PA@mail.gmail.com>
References: <1463447715.2703.112.camel@aj.id.au>
	<CAJTo0LbX7qrAc5e0OSJzTJ=ish7rLuGzm9LA7LbKF4DK+jy+PA@mail.gmail.com>
Organization: IBM OzLabs
X-Mailer: Evolution 3.18.5.2-0ubuntu1 
Mime-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>, OpenBMC <openbmc@lists.ozlabs.org>,
	Patrick Williams <patrick@stwcx.xyz>
Subject: Re: Extending runqemu/runqemu-internal with new machines
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: andrew@aj.id.au
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 18 May 2016 08:14:11 -0000
X-Groupsio-MsgNum: 30024
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-1IaYjFqGZjdMFM3fQtVv"

--=-1IaYjFqGZjdMFM3fQtVv
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Ross,

On Tue, 2016-05-17 at 14:20 +0100, Burton, Ross wrote:
>=20
> On 17 May 2016 at 02:15, Andrew Jeffery <andrew@aj.id.au> wrote:
> > Is there a better way to work that might avoid these issues?
> > Alternatively, should we start looking at reworking the
> > runqemu/runqemu-internal scripts such that we don't have to patch
> > them
> > to support our use-case? If so, what sort of approach would the
> > community be happy with?
> >=20
> Dig back a few weeks and you'll a RFC series by Robert Yang
> refactoring runqemu for exactly this problem.=C2=A0 I've not yet looked a=
t
> it myself but if you could see if that solves your problems then that
> would be much appreciated.

Thanks for the pointer. Is this the patchset you're referring to?

http://lists.openembedded.org/pipermail/openembedded-core/2016-March/118982=
.html

A brief look suggests it might get us some of the way there, but I'll
take a more detailed look in the next day or so.

Andrew

--=-1IaYjFqGZjdMFM3fQtVv
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCgAGBQJXPCQ+AAoJEJ0dnzgO5LT5brkQAJaObLVIrRnT/+H1lDX6o7yG
8d44sg7tdi60XRZcb1QsKRtbCSttYo0X8SipoUqkwCQDdIUe8K9vm0XlFtHtIrBr
4G3/tkOfkZZp5o0XeNoq9wcDL1RIx03HBNRPlIc2sjD2s+IcVAX7BVAeGwNX2GIT
zv0WAxOa3SuL+VhzPvLgtBry9doGqd92B6Ii2Aspn17prrdWUUELFM3S0QCQr5HB
mMt1U/bR4Qw+gl6DQ981aS+crzzOMhTyMigAcQos2HEoh6RsP3S5kobxBOWaM45g
3fViPf0+A+RdAGVIlY8Bj5YBzDdM/840Z1sDlelujAIOMUruAPP0KpK1Bogb3P28
DJ1xFYzQu6pS/IcM3v6x9xfwvTdv0rfU/q27vHVRkJ2Q9e46awljJN9v/GPMQr5l
MOsba3FgaZPKihkEyBsFPKIEk85M4w/5GOAqaQNJGkNGR3F/FAawlll11DSmyXg+
JH1qB8WXgnykkhk6kqo1NuSWuqtdHWK8/K3OqynsTjvNdjv1bskYXm7lN/B96XxZ
/eQzQfRDWze30VY4D2PB2o2HrGcsgCGzdkDLuYV7NjzNVBVutS/CtTddwEDty7Ui
/4zE8giPYCgeO+QPh7FnF2Dx+3/jo5I8yuK4GcmPcqPCrXDi9GDbtsWYFTk/oH37
PKw3/OlEA8tAMIvNLn/6
=SLs6
-----END PGP SIGNATURE-----

--=-1IaYjFqGZjdMFM3fQtVv--

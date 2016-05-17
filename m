Return-Path: <andrew@aj.id.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 412DBE00CF0; Tue, 17 May 2016 06:15:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [66.33.216.122 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 43216 seconds by postgrey-1.32 at yocto-www;
	Tue, 17 May 2016 06:15:44 PDT
Received: from hapkido.dreamhost.com (hapkido.dreamhost.com [66.33.216.122])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCB20E00CE6
	for <yocto@yoctoproject.org>; Tue, 17 May 2016 06:15:44 -0700 (PDT)
Received: from homiemail-a17.g.dreamhost.com (sub3.mail.dreamhost.com
	[69.163.253.7])
	by hapkido.dreamhost.com (Postfix) with ESMTP id ECB58ABED1
	for <yocto@yoctoproject.org>; Mon, 16 May 2016 18:15:27 -0700 (PDT)
Received: from homiemail-a17.g.dreamhost.com (localhost [127.0.0.1])
	by homiemail-a17.g.dreamhost.com (Postfix) with ESMTP id EB6A92B206E;
	Mon, 16 May 2016 18:15:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=aj.id.au; h=message-id
	:subject:from:reply-to:to:cc:date:content-type:mime-version; s=
	aj.id.au; bh=07f7ec+2s3MCshwDrDT4LbxMnUA=; b=b4tUxsUCXjJchmEGiOl
	OvfJ+d++9HwEw9ZeuYw7Xs+H6cavGWciILKu0aLUkgGZvVN/oPMazb2TOqtdOEmE
	B5ReasdOwMSd0woa3pj+9Lt+hCLOGiFx/RodVEZDStQLcmjCaN4eRmLprDQ0THcW
	2lJnbZutCoM+ZkyIW5Izgtyw=
Received: from keelia (unknown [203.0.153.9])
	(using TLSv1 with cipher AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: andrew@aj.id.au)
	by homiemail-a17.g.dreamhost.com (Postfix) with ESMTPSA id 168E42B2065; 
	Mon, 16 May 2016 18:15:24 -0700 (PDT)
Message-ID: <1463447715.2703.112.camel@aj.id.au>
From: Andrew Jeffery <andrew@aj.id.au>
To: Yocto Project <yocto@yoctoproject.org>
Date: Tue, 17 May 2016 10:45:15 +0930
Organization: IBM OzLabs
X-Mailer: Evolution 3.18.5.2-0ubuntu1 
Mime-Version: 1.0
Cc: Patrick Williams <patrick@stwcx.xyz>, OpenBMC <openbmc@lists.ozlabs.org>
Subject: Extending runqemu/runqemu-internal with new machines
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
X-List-Received-Date: Tue, 17 May 2016 13:15:46 -0000
X-Groupsio-MsgNum: 30012
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-pUkIokhvVy5Imflxox41"

--=-pUkIokhvVy5Imflxox41
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

I'm interested in how to best extend the runqemu/runqemu-internal
scripts to add support for more specific machine types. The OpenBMC
project[1] (which uses Yocto) has been working on upstreaming support
for the Aspeed AST2400 and AST2500 SoCs[3] in the kernel and qemu, and
we'd like to run the same configuration in qemu as we do on hardware.

As it stands the qemuarm configuration runs a versatilepb machine, but
as we have more relevant machine types in upstream qemu (e.g. palmetto-
bmc) we'd like to invoke them instead.

In the OpenBMC repo we have Yocto as a subtree to which we apply
updates from upstream. Given that, it's best if we have no changes to
the subtree so that upstream patches apply without fuss. If we want to
provide additional machine types in runqemu/runqemu-internal it seems
that we cannot avoid carrying patches to the scripts, which will need
to be reworked when we apply the upstream patches.

Is there a better way to work that might avoid these issues?
Alternatively, should we start looking at reworking the
runqemu/runqemu-internal scripts such that we don't have to patch them
to support our use-case? If so, what sort of approach would the
community be happy with?

Cheers,

Andrew

[1]=C2=A0https://github.com/openbmc/docs#openbmc-goals
[2]=C2=A0https://github.com/openbmc/openbmc/
[3]=C2=A0http://www.aspeedtech.com/products.php?fPath=3D20

--=-pUkIokhvVy5Imflxox41
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCgAGBQJXOnCjAAoJEJ0dnzgO5LT53sEQAI0tLg8W0hfqMFhQdaiVElsF
sdVZEQGlj7nZFvLS+WCrADs6+mxiJtpmAnw57fN7SkDAwkPrjC6bYR+286NqarmA
jj67hkgBr7tjKPCnNkeVmjzwgG/qcRU/UmDtHAPIlGIRtIZw16Nlx5mjbxjW/ErU
0G3NYpw6SLeQIyL2JxWoGaO34dxOnktODsUg2myxFiFwvzx88pjl2AISai9V/eTn
4wCjNCOjxu9m9JaCx6k7/ktdRHVS/ZSxNh9xwmpJXnGoahsMkHuQEj1t5f16wDd5
/thYYQDACeiAK4Kg5wD+AyhXd2vFKZS1AIOui29vZ5srb2jUikZTDaNfEKVPLlDq
9ow4eQyvCABlVFv86/ghKON0jVACu92yTW9N8PZR2k7WZThY2rGBQn5dYbQo4nqM
1AFuefwYP4sibFxkWCu/RPWZzQi1xjHqfBD0ps3jBRlULeZEecyaRs/WaQcERYZ2
Tdwcb9zepB2buZRjVXIoRvUpuLQTdezP+n7i8qY+TE0ZxDK26vHJhYyKZBmUcOI+
v21km0mcNTTF8qcr1hnHo1GA0Y5aAeFmAvr++SKCBsB0gnvJIYzZtOX9OT1C+w/P
oiFKG6kovNjGHL+jO5ZSAR3w5tWkpLnfj3MGxXfr/awsSAj4NL4EYH0sgj98Z/Sj
XKsrpPciYq3h/Kfx+hW1
=fIxi
-----END PGP SIGNATURE-----

--=-pUkIokhvVy5Imflxox41--

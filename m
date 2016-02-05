Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4EDCAE00CE1; Thu,  4 Feb 2016 22:29:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f170.google.com (mail-pf0-f170.google.com
	[209.85.192.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18DC2E00CCD
	for <yocto@yoctoproject.org>; Thu,  4 Feb 2016 22:29:40 -0800 (PST)
Received: by mail-pf0-f170.google.com with SMTP id n128so63110048pfn.3
	for <yocto@yoctoproject.org>; Thu, 04 Feb 2016 22:29:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=in3xmrGpiO9ttuxt1LoEn8w9yTZlVZ/p+ivjYxQ/xHA=;
	b=gN8zQixWG27G/cpO1Kea8wRERS/vZ/sAZ2jcFf2NA1c4iP74B1dCcHtplIysspDa2g
	KJ1rB7oBevCsZcJOL93wci40aBFggosqtE1K2txorQ3SivW0Jw5OD0RHRXtZJKC8FYZz
	jV8IbgsFSCQXKwyc2/ceD3+Kl4GSr2s9PFhex9ZqrB4o5PXf/Y+Tl/u6biOqXIfr/4CM
	y6zjO6a9JxPNIS7w3okhmksuKZY0j1EHkXMrKEdhzpfxs93V8VPM6aN4lzp6Cy3H7u4Z
	TlvEpWm2keLtCqW2TbVyy5SYpZVYs1DZFH6Z5ta+yJSL13dXbZM7PXuk5YGI5Y/F7ATL
	1hqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:content-type:from
	:in-reply-to:date:cc:message-id:references:to;
	bh=in3xmrGpiO9ttuxt1LoEn8w9yTZlVZ/p+ivjYxQ/xHA=;
	b=BECnyX77GRH1QVRmZVoH/x/6DVivIZHXDlQ2E4NW2KGykZQlc6WW/3JGxFPz3fevgC
	vp8b86Zk1ndhkj9n6FTfPg5K3Ox4GfzBG5gRlGrD7DutMV6ufnkTjSd8pO8roVuXwi8n
	2BQt48uKjFEELha9SetQ3IMJImdrdXDd82B2cU0QOQnpUkQRhJkxnzMERKgXLu6bLTXO
	pjLcXDlXzwAoJzoCjEkV0b082MSsOFN0GXnGvmUyLQekUpcTYVrni+SDls65q4OZ97IE
	5C/b7It5l62gHYj2oQyGyFJ8QYOXPatPZbpNu8N8y0+M+9dBId1lwGs7vCewj0UZD6Pq
	XVyw==
X-Gm-Message-State: AG10YORt+GZao1os1YNKIgvDtQCIUqZcy9e3ESb954GFflz+IGg5xzsuGCZqaxlMBdEX9w==
X-Received: by 10.98.65.148 with SMTP id g20mr17416005pfd.21.1454653780119;
	Thu, 04 Feb 2016 22:29:40 -0800 (PST)
Received: from ?IPv6:2601:646:8802:5d5c:3cb8:3ee2:28b1:6617?
	([2601:646:8802:5d5c:3cb8:3ee2:28b1:6617])
	by smtp.gmail.com with ESMTPSA id
	by2sm21558778pab.6.2016.02.04.22.29.38
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 04 Feb 2016 22:29:38 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
X-Priority: 3
In-Reply-To: <BAY173-DS15454BC9EF91180F69AC74C1D20@phx.gbl>
Date: Thu, 4 Feb 2016 22:29:33 -0800
Message-Id: <D12630D6-B84D-43C6-B9C3-8B5AAFC95B08@gmail.com>
References: <BAY173-DS15454BC9EF91180F69AC74C1D20@phx.gbl>
To: Josias Inacio da Silva Filho <josiasinacio@hotmail.com>
X-Mailer: Apple Mail (2.3112)
Cc: yocto@yoctoproject.org
Subject: Re: Execute recipe only after kernel is built and rootfs file is created in deploy folder
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
X-List-Received-Date: Fri, 05 Feb 2016 06:29:44 -0000
X-Groupsio-MsgNum: 28287
Content-Type: multipart/signed;
	boundary="Apple-Mail=_0351DE60-253C-4958-825E-8000EDF3D4AC";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_0351DE60-253C-4958-825E-8000EDF3D4AC
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_F0F5B77A-DF5E-4A01-B52A-171855825CE8"

--Apple-Mail=_F0F5B77A-DF5E-4A01-B52A-171855825CE8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Feb 4, 2016, at 10:07 PM, Josias Inacio da Silva Filho =
<josiasinacio@hotmail.com> wrote:
>=20
> Hi guys,
>=20
> I=E2=80=99m trying to run a recipe that has dependencies in the =
generation of the roofts and kernel image files. Without those two files =
already in the deploy folder, I cannot start running my recipe.
>=20
> Some suggested that I should add the task in a class and make that =
dependent of do_rootfs. Then, inherit that class in a recipe. But I =
haven=E2=80=99t been successful with that. Here=E2=80=99s what I have:
>=20
> myclass.bbclass:
>=20
> do_work() {
>         #main work done here
> }
> addtask work after do_rootfs
>=20
> ##### end of class
>=20
> myrecipe.bb:
>=20
> inherit myclass
>=20
> do_deploy() {
>     do_work
> }
> addtask do_deploy
>=20
> ##### end of recipe
>=20
>=20
> This must be very wrong, as the do_deploy task of my recipe is being =
executed before do_rootfs happens, so it fails because do_work needs =
files that haven=E2=80=99t been created in the deploy folder yet.
>=20
> How can I fix this? Do I really need a class and recipe, or can I get =
away with just having one or the other?

actually its better for you to latch onto image recipe via additional =
task defined in bbappend


something like below


addtask mytask after do_rootfs before do_build
do_mytask[depends] +=3D "${PN}:do_rootfs"
do_mytask[depends] +=3D "virtual/kernel:do_deploy"
# We want to build updater everytime we build image
do_mytask[nostamp] =3D =E2=80=9C1"

do_mytask() {
}


--Apple-Mail=_F0F5B77A-DF5E-4A01-B52A-171855825CE8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Feb 4, 2016, at 10:07 PM, Josias Inacio da Silva Filho =
&lt;<a href=3D"mailto:josiasinacio@hotmail.com" =
class=3D"">josiasinacio@hotmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D"">
<div dir=3D"ltr" class=3D"">
<div dir=3D"ltr" class=3D"">
<div style=3D"font-family: Arial; font-size: 10pt;" class=3D"">
<div style=3D"font-style: normal; display: inline; font-family: Calibri; =
font-size: small; font-weight: normal; text-decoration: none;" class=3D"">=

<div dir=3D"ltr" class=3D"">
<div style=3D"font-family: Arial; font-size: 10pt;" class=3D"">
<div class=3D"">Hi guys,</div>
<div class=3D"">&nbsp;</div>
<div class=3D"">I=E2=80=99m trying to run a recipe that has dependencies =
in the generation of the=20
roofts and kernel image files. Without those two files already in the =
deploy=20
folder, I cannot start running my recipe.</div>
<div class=3D"">&nbsp;</div>
<div class=3D"">Some suggested that I should add the task in a class and =
make that=20
dependent of do_rootfs. Then, inherit that class in a recipe. But I =
haven=E2=80=99t been=20
successful with that. Here=E2=80=99s what I have:</div>
<div class=3D"">&nbsp;</div>
<div class=3D""><strong class=3D""><u =
class=3D"">myclass.bbclass:</u></strong></div>
<div class=3D"">&nbsp;</div>
<div class=3D"">do_work() {</div>
<div class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #main work =
done here</div>
<div class=3D"">}</div>
<div class=3D"">addtask work after do_rootfs</div>
<div class=3D"">&nbsp;</div>
<div class=3D"">##### end of class </div>
<div class=3D"">&nbsp;</div>
<div class=3D""><strong class=3D""><u =
class=3D"">myrecipe.bb:</u></strong></div>
<div class=3D"">&nbsp;</div>
<div class=3D"">inherit myclass</div>
<div class=3D"">&nbsp;</div>
<div class=3D"">do_deploy() {</div>
<div class=3D"">&nbsp;&nbsp;&nbsp; do_work</div>
<div class=3D"">}</div>
<div class=3D"">addtask do_deploy</div>
<div class=3D"">&nbsp;</div>
<div class=3D"">##### end of recipe</div>
<div class=3D"">&nbsp;</div>
<div class=3D"">&nbsp;</div>
<div class=3D"">This must be very wrong, as the do_deploy task of my =
recipe is being=20
executed before do_rootfs happens, so it fails because do_work needs =
files that=20
haven=E2=80=99t been created in the deploy folder yet.</div>
<div class=3D"">&nbsp;</div>
<div class=3D"">How can I fix this? Do I really need a class and recipe, =
or can I get away=20
with just having one or the =
other?</div></div></div></div></div></div></div></div></blockquote><div><b=
r class=3D""></div><div>actually its better for you to latch onto image =
recipe via additional task defined in bbappend</div><div><br =
class=3D""></div><div><br class=3D""></div><div>something like =
below</div><div><br class=3D""></div><div><br =
class=3D""></div><div><div>addtask mytask after do_rootfs before =
do_build</div><div>do_mytask[depends] +=3D =
"${PN}:do_rootfs"</div><div>do_mytask[depends] +=3D =
"virtual/kernel:do_deploy"</div><div># We want to build updater =
everytime we build image</div><div>do_mytask[nostamp] =3D =
=E2=80=9C1"</div><div><br class=3D""></div><div>do_mytask() =
{</div><div>}</div><div><br class=3D""></div></div></div></body></html>=

--Apple-Mail=_F0F5B77A-DF5E-4A01-B52A-171855825CE8--

--Apple-Mail=_0351DE60-253C-4958-825E-8000EDF3D4AC
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAla0QVEACgkQuwUzVZGdMxT8jQCggbiAKj/WgSr7e5WHIKxGzk1O
fFQAn2iopabUZd0LZQYL8+B4Dw+vnra6
=QJKb
-----END PGP SIGNATURE-----

--Apple-Mail=_0351DE60-253C-4958-825E-8000EDF3D4AC--

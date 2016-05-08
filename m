Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1505EE00D7E; Sun,  8 May 2016 10:09:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.49 listed in list.dnswl.org]
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com
	[209.85.220.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DC27E00736
	for <yocto@yoctoproject.org>; Sun,  8 May 2016 10:09:24 -0700 (PDT)
Received: by mail-pa0-f49.google.com with SMTP id r5so65692088pag.1
	for <yocto@yoctoproject.org>; Sun, 08 May 2016 10:09:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=fRGVSLbVYKWCEPmGrZB5PmI/MX3hTcQjsPYiYEr8JUU=;
	b=HISh+e8ietFtgutWCMZiefqD7Fjg8+txazDD7nEp+S2jwsxw+SL6/kJ+WSqPeMoAt0
	TWjZcmwfG1Un7nvMOCuBOuGemilXEXZ6qEV6SSs28mXqVmzwqG+7hmkazxIevJX5/KXO
	70+JR5IXkA+Az9YA1fFw8UZXi70GNPUSIWGo0nvlqEE2+bAFXzxL3EladxgmHje8lNY/
	lMTpUhfyodU4pV3RqyOnowJqCRcPxYwaWepzw0mrmtNiJ26FvQrvcBXneq2NcijOyMcp
	T3RqxqrwC/IKnNmoxpIkNOi5LUmY7TbmpGfjYuxZjrmKJzuy0gmfDeyg0oRqW1Q9pMZV
	/7Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=fRGVSLbVYKWCEPmGrZB5PmI/MX3hTcQjsPYiYEr8JUU=;
	b=WvKafmCqICKSsrZMYMTa24+4cYS96G4ss5FTuZuACkoZCHKc+qC5IvyvYkODfxkys9
	+RchuCrxpSuOwhL0iKmZs4Ty0MrbNM9VJZdtsHGCcjAMpzELArWy5HX8eDpWrjQiMusy
	FtfyaIjcGEoudSy0/n8/YoR1t0oh095Eq5Em5KT69BAfwLiR/OGPbc8OxZyYJg4sgKpp
	xDobn8Co++tnBlUgKyerM4sczh+YksM6DYOs2yRWanJ1DLOzu50vX00wbOBl5bbldkK3
	XK60DInReYVrvOx0X+pVsqdbzjZ3jdxtUGcOGaArbq9hKsQVpCvnJnGXZAjgDpGHnn4g
	AUFw==
X-Gm-Message-State: AOPr4FWSFvEovsVj2wcSSdVaC2QX7TbbwtEH83ZNxQ9ycM7HrL0LXErJl+fViCf8JlMsBQ==
X-Received: by 10.66.246.165 with SMTP id xx5mr44330741pac.87.1462727364230;
	Sun, 08 May 2016 10:09:24 -0700 (PDT)
Received: from ?IPv6:2601:646:8800:5a9a:9836:6670:b773:dd6c?
	([2601:646:8800:5a9a:9836:6670:b773:dd6c])
	by smtp.gmail.com with ESMTPSA id f9sm4997142pfd.56.2016.05.08.10.09.23
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 08 May 2016 10:09:23 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CABfz71et_oJJH1TM-HTHeW4UO2qJGtPH1nhDsyzcFqbqE6truQ@mail.gmail.com>
Date: Sun, 8 May 2016 10:09:29 -0700
Message-Id: <DF27FF27-F925-4CC9-A2D4-E07FF0704B7F@gmail.com>
References: <CABfz71et_oJJH1TM-HTHeW4UO2qJGtPH1nhDsyzcFqbqE6truQ@mail.gmail.com>
To: Paul Knopf <pknopf@medxchange.com>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: Using multiple versions of package (PACKAGECONFIG) in the same bitbake
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
X-List-Received-Date: Sun, 08 May 2016 17:09:27 -0000
X-Groupsio-MsgNum: 29893
Content-Type: multipart/signed;
	boundary="Apple-Mail=_31A37A66-0697-4907-B337-CE38BBF5A10D";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_31A37A66-0697-4907-B337-CE38BBF5A10D
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_064A3BF8-DD4B-4238-94D0-D9DA7D15CB36"

--Apple-Mail=_064A3BF8-DD4B-4238-94D0-D9DA7D15CB36
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On May 8, 2016, at 6:50 AM, Paul Knopf <pknopf@medxchange.com> wrote:
>=20
> I have two rootfs. My main image, and the initramfs image for the =
kernel (INITRAMFS_IAMGE and INITRAMFS_IMAGE_BUNDLE).
>=20
> I need to provide different fstab files for each build.
>=20
> I have added a .bbappend for the base-files recipe to use a customized =
fstab.
>=20
> In the bbappend file, I'd like to add PACKAGECONFIG support to the =
package to customize it for each rootfs.
>=20
> However, it seems that I can only PACKAGECONFIG for a recipe in the =
local.conf. How do I add features to a package at a "image-recipe.bb =
<http://image-recipe.bb/>" level?
>=20
> Maybe I should create a separate recipe all together that overwrite =
fstab? Then, I can include this "base-files-overrite-fstab" in the =
appropriate image recipe?

you can write a shell function doing this in image recipe and then hook =
it up to tweak the rootfs after its created during image build.

your_func() {
=E2=80=A6..
}

ROOTFS_POSTPROCESS_COMMAND +=3D =E2=80=9Cyour_functon;=E2=80=9D

>=20
> Thanks,
> Paul Knopf
> Software Engineer
> Med X Change, Inc
> pknopf@medxchange.com <mailto:pknopf@medxchange.com>--
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_064A3BF8-DD4B-4238-94D0-D9DA7D15CB36
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On May 8, 2016, at 6:50 AM, Paul Knopf &lt;<a =
href=3D"mailto:pknopf@medxchange.com" =
class=3D"">pknopf@medxchange.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D""><div class=3D"">I have two rootfs. My main image, and the =
initramfs image for the kernel (INITRAMFS_IAMGE and =
INITRAMFS_IMAGE_BUNDLE).</div><div class=3D""><br class=3D""></div><div =
class=3D"">I need to provide different fstab files for each =
build.</div><div class=3D""><br class=3D""></div><div class=3D"">I have =
added a .bbappend for the base-files recipe to use a customized =
fstab.</div><div class=3D""><br class=3D""></div><div class=3D"">In the =
bbappend file, I'd like to add PACKAGECONFIG support to the package to =
customize it for each rootfs.</div><div class=3D""><br =
class=3D""></div><div class=3D"">However, it seems that I can only =
PACKAGECONFIG for a recipe in the local.conf. How do I add features to a =
package at a "<a href=3D"http://image-recipe.bb/" =
class=3D"">image-recipe.bb</a>" level?</div><div class=3D""><br =
class=3D""></div><div class=3D"">Maybe I should create a separate recipe =
all together that overwrite fstab? Then, I can include this =
"base-files-overrite-fstab" in the appropriate image =
recipe?</div></div></div></blockquote><div><br class=3D""></div><div>you =
can write a shell function doing this in image recipe and then hook it =
up to tweak the rootfs after its created during image =
build.</div><div><br class=3D""></div><div>your_func() =
{</div><div>=E2=80=A6..</div><div>}</div><div><br =
class=3D""></div><div>ROOTFS_POSTPROCESS_COMMAND +=3D =
=E2=80=9Cyour_functon;=E2=80=9D</div><div>&nbsp;</div><blockquote =
type=3D"cite" class=3D""><div class=3D""><div dir=3D"ltr" class=3D""><br =
clear=3D"all" class=3D""><div class=3D""><div =
class=3D"gmail_signature"><div dir=3D"ltr" class=3D""><div =
class=3D"">Thanks,</div><div class=3D"">Paul Knopf</div><div =
class=3D"">Software Engineer</div><div class=3D"">Med X Change, =
Inc</div><div class=3D""><a href=3D"mailto:pknopf@medxchange.com" =
target=3D"_blank" =
class=3D"">pknopf@medxchange.com</a></div></div></div></div>
</div>
-- <br class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto<br =
class=3D""></div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_064A3BF8-DD4B-4238-94D0-D9DA7D15CB36--

--Apple-Mail=_31A37A66-0697-4907-B337-CE38BBF5A10D
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlcvcskACgkQuwUzVZGdMxSC+gCfTaYU1apE52tQ8bLXwKcbF7+M
s5IAmgNPCihhO7m2s71haxJq5CBoshvx
=maXp
-----END PGP SIGNATURE-----

--Apple-Mail=_31A37A66-0697-4907-B337-CE38BBF5A10D--

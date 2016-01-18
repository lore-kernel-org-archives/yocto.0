Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 915EBE00B9C; Sun, 17 Jan 2016 23:04:26 -0800 (PST)
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
	*      [209.85.220.43 listed in list.dnswl.org]
Received: from mail-pa0-f43.google.com (mail-pa0-f43.google.com
	[209.85.220.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E8DEE00B8B
	for <yocto@yoctoproject.org>; Sun, 17 Jan 2016 23:04:21 -0800 (PST)
Received: by mail-pa0-f43.google.com with SMTP id cy9so429464266pac.0
	for <yocto@yoctoproject.org>; Sun, 17 Jan 2016 23:04:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=yj03QzYCJbCKiPQGgoAdRj7BztK/rPHTXO6Q55gUbbk=;
	b=lXtUfZY6O9TYRF4Efc+yDwKmF8prN0StYP7iOZUtuhG56Dgp/pKH0BYOwnoE55iXzG
	oeCFhEH15K+/hjmItWCeOCkHyR0C9FnCr7e7cDtzOWj1ot4YdMSGi+LTM0g+ZjSu3bM5
	nmPzmFg74gxNpqHjvqgZgGf7AMpc4VbotbNsYq/qFvGaLdTZAklNgHZjAB0nG3KArJZX
	HouyqRlMr16CFN3PoPKj6jGjDYKlVw+qncVVd+P7X3btMCrDQwtk4sGOAwdgTdVL1Mt2
	fvAiMPHNXueUXzUZ+gKHwa+DtbPTYEsvdfeSFHJ6BtnAxJyNlS4NglXtuHEDaRp331wJ
	N2oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:content-type:from
	:in-reply-to:date:cc:message-id:references:to;
	bh=yj03QzYCJbCKiPQGgoAdRj7BztK/rPHTXO6Q55gUbbk=;
	b=W0QPLmJ+YeDienYtdg1DxfPSx9wD7iFETBTrTq025//L4fhNoaiAuXiINIlVKe03Xa
	wQTaPBK/5UoaUAK4ClinYBxKBSg1DFyVrRYtshFPJt4XxZZxLiTxckKOZmoVGWJTWnfs
	niqA8RazRS3M1l3wHeIoI9hCzS5yLI1flklzPyBBgtzSiDWr1Ak5YPDpdV9GgfTXilh1
	Gc9N7ON3VPx3QAYU42pqLpfQBO9o8nJD3FlzYHy1AGuJcB3gQTPoyT41jSRa+RQSDXWJ
	lK3fXhwvPzI/Lt27fGRnXdHbl0rGS/1b3SoFVQROaeBFLqbhR5DHxlm3G1o2JKQnJ6Ti
	uTMg==
X-Gm-Message-State: AG10YOQocVa+ekHXEH+o8KxO96RygHQxYgft5tgs4gextJe/9tmejKJdOK3jnuyGbJ6keA==
X-Received: by 10.66.121.194 with SMTP id lm2mr23857476pab.27.1453100660753;
	Sun, 17 Jan 2016 23:04:20 -0800 (PST)
Received: from ?IPv6:2601:646:8802:5d5c:5994:e038:1e97:10b6?
	([2601:646:8802:5d5c:5994:e038:1e97:10b6])
	by smtp.gmail.com with ESMTPSA id
	s19sm31244121pfs.62.2016.01.17.23.04.19
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 17 Jan 2016 23:04:19 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAJTo0Lap1WUuDoqx38TbQFP7YFm-Z9cGXOgZtcAF2deXzUFn0g@mail.gmail.com>
Date: Sun, 17 Jan 2016 23:04:14 -0800
Message-Id: <5C2350E2-2C6A-40AF-9997-2BBEB854F025@gmail.com>
References: <1450569917-439-1-git-send-email-raj.khem@gmail.com>
	<CAJTo0Lbbpd8gqaDPiMQsD_ynZEa2Q5T1i_-nHY-FhbA__g2Dvg@mail.gmail.com>
	<CAJTo0Lap1WUuDoqx38TbQFP7YFm-Z9cGXOgZtcAF2deXzUFn0g@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-Mailer: Apple Mail (2.3112)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-yocto][PATCH] poky-tiny: Use musl for default system C library
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
X-List-Received-Date: Mon, 18 Jan 2016 07:04:26 -0000
X-Groupsio-MsgNum: 28020
Content-Type: multipart/signed;
	boundary="Apple-Mail=_DFA9395D-D185-45A2-B7C6-ABDB16467A6A";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_DFA9395D-D185-45A2-B7C6-ABDB16467A6A
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_F1C9DFAE-982E-46E5-B813-DC512E10444A"

--Apple-Mail=_F1C9DFAE-982E-46E5-B813-DC512E10444A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Jan 8, 2016, at 1:21 AM, Burton, Ross <ross.burton@intel.com> =
wrote:
>=20
>=20
> On 8 January 2016 at 09:09, Burton, Ross <ross.burton@intel.com =
<mailto:ross.burton@intel.com>> wrote:
> For anyone else reading, I just gave this a test locally, and for =
context the previous poky-tiny was using a tuned glibc and the rootfs =
came in at 1.5M.
>=20
> Finished my comparison builds:
>=20
> musl:
> -rw-r--r-- 1 ross ross  731681 Jan  7 23:46 =
core-image-minimal-qemux86-20160107234351.rootfs.cpio.gz
> glibc:
> -rw-r--r-- 1 ross ross 1569610 Jan  8 00:01 =
core-image-minimal-qemux86-20160107235147.rootfs.cpio.gz
> uclibc:
> -rw-r--r-- 1 ross ross  669759 Jan  8 09:14 =
core-image-minimal-qemux86-20160108090512.rootfs.cpio.gz
>=20
> So it's a slightly increase over uclibc, but by default poky-tiny uses =
glibc so this is a massive win.  In the greater scheme of things musl is =
trending to be worth the increase over uclibc too.
>=20

Thanks Ross for this info. I think it will be interesting to know the =
sizes of packages contributing to image from buildhistory if you have it =
lying around.
musl has libpthread/libm etc. all bundled into single .so for simplicity =
reasons. I would like to get to bottom of the slight increase of musl =
over uclibc based system



> Ross


--Apple-Mail=_F1C9DFAE-982E-46E5-B813-DC512E10444A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Jan 8, 2016, at 1:21 AM, Burton, Ross &lt;<a =
href=3D"mailto:ross.burton@intel.com" =
class=3D"">ross.burton@intel.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D""><div class=3D"gmail_extra"><br class=3D""><div =
class=3D"gmail_quote">On 8 January 2016 at 09:09, Burton, Ross <span =
dir=3D"ltr" class=3D"">&lt;<a href=3D"mailto:ross.burton@intel.com" =
target=3D"_blank" class=3D"">ross.burton@intel.com</a>&gt;</span> =
wrote:<br class=3D""><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px =
0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left=
-style:solid;padding-left:1ex"><div class=3D"gmail_extra">For anyone =
else reading, I just gave this a test locally, and for context the =
previous poky-tiny was using a tuned glibc and the rootfs came in at =
1.5M.</div></blockquote><div class=3D""><br class=3D""></div><div =
class=3D"">Finished my comparison builds:</div><div class=3D""><br =
class=3D""></div><div class=3D"">musl:</div><div class=3D"">-rw-r--r-- 1 =
ross ross &nbsp;731681 Jan &nbsp;7 23:46 =
core-image-minimal-qemux86-20160107234351.rootfs.cpio.gz</div><div =
class=3D"">glibc:</div><div class=3D"">-rw-r--r-- 1 ross ross 1569610 =
Jan &nbsp;8 00:01 =
core-image-minimal-qemux86-20160107235147.rootfs.cpio.gz</div><div =
class=3D"">uclibc:</div><div class=3D"">-rw-r--r-- 1 ross ross =
&nbsp;669759 Jan &nbsp;8 09:14 =
core-image-minimal-qemux86-20160108090512.rootfs.cpio.gz&nbsp;</div><div =
class=3D""><br class=3D""></div><div class=3D"">So it's a slightly =
increase over uclibc, but by default poky-tiny uses glibc so this is a =
massive win.&nbsp; In the greater scheme of things musl is trending to =
be worth the increase over uclibc too.</div><div class=3D""><br =
class=3D""></div></div></div></div></div></blockquote><div><br =
class=3D""></div><div>Thanks Ross for this info. I think it will be =
interesting to know the sizes of packages contributing to image from =
buildhistory if you have it lying around.</div><div>musl has =
libpthread/libm etc. all bundled into single .so for simplicity reasons. =
I would like to get to bottom of the slight increase of musl over uclibc =
based system</div><div><br class=3D""></div><div><br class=3D""></div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div =
dir=3D"ltr" class=3D""><div class=3D"gmail_extra"><div =
class=3D"gmail_quote"><div class=3D"">Ross</div></div></div></div>
</div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_F1C9DFAE-982E-46E5-B813-DC512E10444A--

--Apple-Mail=_DFA9395D-D185-45A2-B7C6-ABDB16467A6A
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlacjnIACgkQuwUzVZGdMxRZ2ACgiokpjlih56mdtrknkFy4AAb0
NcwAoIu/HYILEH636eyt3B3oUEMJz2XG
=7q6q
-----END PGP SIGNATURE-----

--Apple-Mail=_DFA9395D-D185-45A2-B7C6-ABDB16467A6A--

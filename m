Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5BEADE00F93; Tue,  6 Sep 2016 11:18:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDDABE00D8A
	for <yocto@yoctoproject.org>; Tue,  6 Sep 2016 11:18:44 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id x24so1793012pfa.3
	for <yocto@yoctoproject.org>; Tue, 06 Sep 2016 11:18:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=FivjgUAvswIzLDDH1DcddVivzCGYVzu7qiiK2SFrx1Y=;
	b=vCi/zajm16fraB/7cxHpK5Z8WZsMzyzpESqW7yXPcYCLzAtGLUD9iHGBI4EJrCLarB
	8bFPL17/6YEBhpSO8uD6pcdYR3uitiMuv4bQ7PoTZeF1qtDZ9zM+zu2QGXXG+N0SUBUv
	YCqW2eSYTKYb+i/FVq9e4E2FL+fh1zFuv3OD6Do+PB3xCfD7Cc4M8vKXBUcsBSznEh3a
	ZrU90fBqR+2GTpKH84uAKMmhhre3oCaWV1hQqbjcPT7QrLA14A8QfG3x1pqz3dLEg9dF
	TjNJl8fgVL07pwSFf1RWAleKaU1EKTs50mbsFQUTlgWllrSQkkU5eX6V/Vo9srKGqB6m
	M7cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=FivjgUAvswIzLDDH1DcddVivzCGYVzu7qiiK2SFrx1Y=;
	b=YdCjD3/ZrZnt5hnt1ESMd2rXo0Guxj9eL6EVRBCHm6a/IYN8zqJPSRhe5C39J/ZyEm
	Y9UF9XwBzX2FT7CT5SU3IJDPC6G0NcKM0F9eL61Ewm772KgcoFs/UJtkNtx982Of4tcr
	J3FR95ucfXzSK5IDr62aUsRs8LROKb/MSgEvnzXz/CC1KQnd2ZVQGLQTIbL73ogb3uRR
	JZf4hs8NKH8/EsvhubqURfzLBvUfazS6Npl0RqLU6ww0xc4noPF9Es1c+/DyKDwgu0t9
	o6fBdI7/nTxp4OC5uAK48AuxfV2fAHT00uteaHs0v0obkMGqtHIv4LbqY/cGPp4U5axq
	ns2A==
X-Gm-Message-State: AE9vXwM2Jo2VRUud1wBlXeHpTD9lnb+BPhbATLP9vgCKbCJ3/1ZUVqw81Ybp5sY5UYqHcQ==
X-Received: by 10.98.64.193 with SMTP id f62mr74910624pfd.141.1473185923906;
	Tue, 06 Sep 2016 11:18:43 -0700 (PDT)
Received: from ?IPv6:2601:647:4c00:3edf:99d4:c55f:fbd3:66fa?
	([2601:647:4c00:3edf:99d4:c55f:fbd3:66fa])
	by smtp.gmail.com with ESMTPSA id
	71sm16152189pfn.91.2016.09.06.11.18.42
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 06 Sep 2016 11:18:43 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <DB6PR0601MB26639F517B87C9AC99CDB7E3CFE00@DB6PR0601MB2663.eurprd06.prod.outlook.com>
Date: Tue, 6 Sep 2016 11:18:41 -0700
Message-Id: <DA2A95BE-48FD-4673-AA7D-D9EFDFEDE725@gmail.com>
References: <DB6PR0601MB26639F517B87C9AC99CDB7E3CFE00@DB6PR0601MB2663.eurprd06.prod.outlook.com>
To: "Gujulan Elango, Hari Prasath (H.)" <hgujulan@visteon.com>
X-Mailer: Apple Mail (2.3124)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem with exporting variable in bbappend file
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
X-List-Received-Date: Tue, 06 Sep 2016 18:18:46 -0000
X-Groupsio-MsgNum: 31808
Content-Type: multipart/signed;
	boundary="Apple-Mail=_279E4360-AC10-437A-94D8-7684E00D82A9";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_279E4360-AC10-437A-94D8-7684E00D82A9
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_B5EA24F5-02CA-482D-B73C-9C4C65702CB3"

--Apple-Mail=_B5EA24F5-02CA-482D-B73C-9C4C65702CB3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1


> On Aug 30, 2016, at 5:30 AM, Gujulan Elango, Hari Prasath (H.) =
<hgujulan@visteon.com> wrote:
>=20
> Hello all,
>=20
> We are working on a platform based on Renesas processor. The BSP =
provided by them has arm-trusted-firmware. Now in order to enable all =
the 8 cores, they have suggested to add a environment variable in the =
arm-trusted-firmware_git.bb file in their BSP layer as below.
>=20
> export PSCI_DISABLE_BIGLITTLE_IN_CA57BOOT=3D"0"
>=20
> We would prefer to make this change in our custom layer by creating a =
.bbappend file. We added the change in bbappend file,recompiled it and =
tested, but couldn't get the expected results. When I do the same change =
in the .bb file itself in their BSP layer, I am able to see the expected =
result.
>=20
> Is it okay to just add the export as mentioned above in the .bbappend =
file ? Am I missing something else ?

ensure that your bbappend is actually applying to the final parsed =
recipe. You can use bitbake-layers show-appends to ensure that or simply =
bitbake -e and grep for this change

>=20
> Thanks & Regards,
> Hari Prasath
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>

--Apple-Mail=_B5EA24F5-02CA-482D-B73C-9C4C65702CB3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=iso-8859-1

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Diso-8859-1"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Aug 30, 2016, at 5:30 AM, Gujulan Elango, Hari Prasath =
(H.) &lt;<a href=3D"mailto:hgujulan@visteon.com" =
class=3D"">hgujulan@visteon.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div =
id=3D"divtagdefaultwrapper" style=3D"font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; font-size: 12pt; background-color: =
rgb(255, 255, 255); font-family: Calibri, Arial, Helvetica, sans-serif;" =
class=3D""><div style=3D"margin-top: 0px; margin-bottom: 0px;" =
class=3D"">Hello all,</div><div style=3D"margin-top: 0px; margin-bottom: =
0px;" class=3D""><br class=3D""></div><div style=3D"margin-top: 0px; =
margin-bottom: 0px;" class=3D"">We are working on a platform based on =
Renesas processor. The BSP provided by them has arm-trusted-firmware. =
Now in order to enable all the 8 cores, they have suggested to add a =
environment variable in the arm-trusted-firmware_git.bb file in their =
BSP layer as below.</div><div style=3D"margin-top: 0px; margin-bottom: =
0px;" class=3D""><br class=3D""></div><div style=3D"margin-top: 0px; =
margin-bottom: 0px;" class=3D""><span class=3D"">export =
PSCI_DISABLE_BIGLITTLE_IN_CA57BOOT=3D"0"</span><br class=3D""></div><div =
style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D""><br =
class=3D""></div><div style=3D"margin-top: 0px; margin-bottom: 0px;" =
class=3D"">We would prefer to make this change in our custom layer by =
creating a .bbappend file. We added the change in bbappend =
file,recompiled it and tested, but couldn't get the expected results. =
When I do the same change in the .bb file itself in their BSP layer, I =
am able to see the expected result.</div><div style=3D"margin-top: 0px; =
margin-bottom: 0px;" class=3D""><br class=3D""></div><div =
style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D"">Is it okay to =
just add the export as mentioned above in the .bbappend file ? Am I =
missing something else ?<br =
class=3D""></div></div></div></blockquote><div><br =
class=3D""></div><div>ensure that your bbappend is actually applying to =
the final parsed recipe. You can use bitbake-layers show-appends to =
ensure that or simply bitbake -e and grep for this change</div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div =
id=3D"divtagdefaultwrapper" style=3D"font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; font-size: 12pt; background-color: =
rgb(255, 255, 255); font-family: Calibri, Arial, Helvetica, sans-serif;" =
class=3D""><div style=3D"margin-top: 0px; margin-bottom: 0px;" =
class=3D""><br class=3D""></div><div id=3D"Signature" class=3D"">Thanks =
&amp; Regards,<div id=3D"divtagdefaultwrapper" style=3D"font-size: 12pt; =
background-color: rgb(255, 255, 255); font-family: Calibri, Arial, =
Helvetica, sans-serif;" class=3D""><div style=3D"margin-top: 0px; =
margin-bottom: 0px;" class=3D"">Hari Prasath<br =
class=3D""></div></div></div></div><span style=3D"font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
float: none; display: inline !important;" class=3D"">--<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"font-family: Times-Roman; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
float: none; display: inline !important;" =
class=3D"">_______________________________________________</span><br =
style=3D"font-family: Times-Roman; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
float: none; display: inline !important;" class=3D"">yocto mailing =
list</span><br style=3D"font-family: Times-Roman; font-size: 14px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" style=3D"font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;" class=3D"">yocto@yoctoproject.org</a><br style=3D"font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;" class=3D""><a href=3D"https://lists.yoctoproject.org/listinfo/yocto"=
 style=3D"font-family: Times-Roman; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a></div></blockq=
uote></div><br class=3D""></body></html>=

--Apple-Mail=_B5EA24F5-02CA-482D-B73C-9C4C65702CB3--

--Apple-Mail=_279E4360-AC10-437A-94D8-7684E00D82A9
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlfPCIUACgkQuwUzVZGdMxRK9gCfQ6sK2p0GV11iqnPJa6s2WVqK
LHQAn0sSkFqHNZ7Mged6NSbR1bYk/Z2T
=Q4v/
-----END PGP SIGNATURE-----

--Apple-Mail=_279E4360-AC10-437A-94D8-7684E00D82A9--

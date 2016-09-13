Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B111E006D2; Tue, 13 Sep 2016 13:14:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, 
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.171 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.171 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f171.google.com (mail-pf0-f171.google.com
	[209.85.192.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5965E00563
	for <yocto@yoctoproject.org>; Tue, 13 Sep 2016 13:14:45 -0700 (PDT)
Received: by mail-pf0-f171.google.com with SMTP id p64so67018047pfb.1
	for <yocto@yoctoproject.org>; Tue, 13 Sep 2016 13:14:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=92Rf/wDDrsN2WrDcj8VNYbVilzFxRx0uo44+QC8iiv0=;
	b=bc7+I8vg7UL9rQX4dL0OTSRjSDu5PSp5kQxmdAVRDsIbhxWf0mi23oVtAKaeWCivry
	UR7/6Bh2vAUzS8qRR1WVgUZTcPw3yrpQCVL2tb/fIwxd2VYdxL2GK7w5LjBXRAk9I0ur
	mbXpowy6li260jbMrpcf4v4tbW0JxzOx8NWbynrBngw/l06mOXk0JqSuxjTG2w20zcdL
	ll0yywXrN84jE/7MFpb1kgINfnMJjX4hSsr57brCTDTDmaT38+7WEgjld30J8Me2dmEy
	ZuGYT8nfKQeRD8ZC5P1fT6L1JagWtWO21ANtOYAjKhyENa/yzl9s6K8i78CIYhpw5Qcl
	4/FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=92Rf/wDDrsN2WrDcj8VNYbVilzFxRx0uo44+QC8iiv0=;
	b=CEePyBOcBZs8KH6Yn2r2Wm6tpHI0mHGZgPjxnCznUk+ccWan4ritRmghDUvtOwbHep
	kdtTqiS9Ijvx/8YjPZJ/qocX3NRRSFo3unLN10Wm0wwu1vzjC6u8jyyu67hMqNs0CfS9
	5ivqQ9ySSoHd6VjrvPWHVkdtfF7UgUM170HjZ8VgfBtUUfbA04krTZiCKyYBDyFdVE3H
	sjXsnvGLQdl76EkKEwjpalU5V9TrECC6s2anKttTqEVtt7PGVCCT/aX1GmThSIEzV5U5
	jWhU5nQdTj2oZFkr1Ss7zxeizDzLN8z/zMHceZb9an9tzcSn/k5EHZxMrGA8Ubf2wEmn
	5yYQ==
X-Gm-Message-State: AE9vXwMka0N0a1y5yT4lIpgNzCwDsvcsYWkEJmQnpWvboO17awj4orKfyyvO1vXOb6I55Q==
X-Received: by 10.98.3.67 with SMTP id 64mr4423804pfd.105.1473797685482;
	Tue, 13 Sep 2016 13:14:45 -0700 (PDT)
Received: from [192.168.0.5] (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	h74sm7277368pfa.91.2016.09.13.13.14.44
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 13 Sep 2016 13:14:44 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAPSYY_SVOELW0Nmx0x=VYhyDA+SvXbDfKs68vXvsBEC6-n8Rtg@mail.gmail.com>
Date: Tue, 13 Sep 2016 13:14:38 -0700
Message-Id: <D62DDED1-FDEB-43B1-B53B-79AAD2E0F69E@gmail.com>
References: <CAPSYY_SVOELW0Nmx0x=VYhyDA+SvXbDfKs68vXvsBEC6-n8Rtg@mail.gmail.com>
To: milad hasanvand <hasanvand.milad@gmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: question about populate sdk from gdp 11
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
X-List-Received-Date: Tue, 13 Sep 2016 20:14:48 -0000
X-Groupsio-MsgNum: 31908
Content-Type: multipart/signed;
	boundary="Apple-Mail=_A73F52A2-58B4-4F2D-91EB-A1C5A895F2B8";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_A73F52A2-58B4-4F2D-91EB-A1C5A895F2B8
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_99F7639E-58C3-4053-B61B-5F25ACB89E1C"

--Apple-Mail=_99F7639E-58C3-4053-B61B-5F25ACB89E1C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Sep 12, 2016, at 11:32 PM, milad hasanvand =
<hasanvand.milad@gmail.com> wrote:
>=20
> Dear all,
>=20
> based on the material presented in GDP master, i successfully compiled =
it and it is working. but when i try to extract sdk using this command " =
bitbake genivi-dev-platform-sdk -c populate_sdk " i got the following =
error:
>=20
> "
> ERROR: Taskhash mismatch 717dd6510c2db4bae5bb8bab51bd0c34 verses =
ee9d2e3d5e34240b4487488cd5a60373 for =
/home/milad/GDP/genivi-dev-platform/gdp-src-build/../meta-genivi-dev/meta-=
genivi-dev/recipes-dev-platform/images/genivi-dev-platform-sdk.bb.do_popul=
ate_sdk

This means that there is some code which is using DATE and TIME or =
assigning a variable by computing system time using strftime etc. =
usually some post processing tasks do such things
in some BSP layers or others. You can use bitbake-diffsigs and =
bitbake-dumpsigs to narrow it down and remove that usage. More than =
often using DATETIME variable from metadata
is enough in such places.

>=20
> NOTE: Tasks Summary: Attempted 5252 tasks of which 5251 didn't need to =
be rerun and all succeeded.
> "
>=20
> it should be noted that it fails on the last task!!!!!
>=20
> thank you all in advance
>=20
> Regards; <>
> Milad Hasanvand
> Connected Car System Designer @ AIRIC-SAIPA
> =
--------------------------------------------------------------------------=
-----------------
>  <http://airic-ir.com/>
> Automotive Industries Research & Innovation Center (AIRIC)
> SAIPA Group
> 15th Km Karadj Makhsoos Rd., Tehran, Iran.
> P.O. Box 13445/967
> hasanvand.milad@airic-ir.com <mailto:hasanvand.milad@airic-ir.com>
> Mobile:   +98 938 510 0152
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_99F7639E-58C3-4053-B61B-5F25ACB89E1C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Sep 12, 2016, at 11:32 PM, milad hasanvand &lt;<a =
href=3D"mailto:hasanvand.milad@gmail.com" =
class=3D"">hasanvand.milad@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D"">Dear all,<div class=3D""><br class=3D""></div><div =
class=3D"">based on the material presented in GDP master, i successfully =
compiled it and it is working. but when i try to extract sdk using this =
command "&nbsp;bitbake genivi-dev-platform-sdk -c populate_sdk " i got =
the following error:</div><div class=3D""><br class=3D""></div><div =
class=3D"">"</div><div class=3D""><div class=3D"">ERROR: Taskhash =
mismatch 717dd6510c2db4bae5bb8bab51bd0c34 verses =
ee9d2e3d5e34240b4487488cd5a60373 for =
/home/milad/GDP/genivi-dev-platform/gdp-src-build/../meta-genivi-dev/meta-=
genivi-dev/recipes-dev-platform/images/genivi-dev-platform-sdk.bb.do_popul=
ate_sdk</div></div></div></div></blockquote><div><br =
class=3D""></div><div>This means that there is some code which is using =
DATE and TIME or assigning a variable by computing system time using =
strftime etc. usually some post processing tasks do such =
things</div><div>in some BSP layers or others. You can use =
bitbake-diffsigs and bitbake-dumpsigs to narrow it down and remove that =
usage. More than often using DATETIME variable from =
metadata</div><div>is enough in such places.</div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div =
dir=3D"ltr" class=3D""><div class=3D""><div class=3D""><br =
class=3D""></div><div class=3D"">NOTE: Tasks Summary: Attempted 5252 =
tasks of which 5251 didn't need to be rerun and all succeeded.</div><div =
class=3D"">"</div><div class=3D""><br class=3D""></div><div class=3D"">it =
should be noted that it fails on the last task!!!!!</div><div =
class=3D""><br class=3D""></div><div class=3D"">thank you all in =
advance</div><div class=3D""><div class=3D"gmail_signature"><div =
dir=3D"ltr" class=3D""><div class=3D""><div dir=3D"ltr" class=3D""><div =
class=3D""><div dir=3D"ltr" class=3D""><div class=3D""><div dir=3D"ltr" =
class=3D""><font face=3D"Times New Roman" size=3D"3" class=3D"">

</font><p style=3D"margin:0in 0in 0pt" class=3D""><font face=3D"Times =
New Roman" size=3D"3" class=3D"">

</font></p><p style=3D"margin:0in 0in 0pt" class=3D""><font =
face=3D"Calibri" size=3D"3" class=3D"">&nbsp;</font></p><p =
style=3D"margin:0in 0in 0pt" class=3D""><font face=3D"Times New Roman" =
size=3D"3" class=3D"">

</font></p><div style=3D"margin: 0in 0in 0pt;" class=3D""><a =
name=3D"UNIQUE_ID_SafeHtmlFilter_UNIQUE_ID_SafeHtmlFilter__MailAutoSig" =
class=3D""><span =
style=3D"color:rgb(31,73,125);font-family:arial,sans-serif;font-size:10pt"=
 class=3D"">Regards;</span></a></div><p style=3D"margin:0in 0in 0pt" =
class=3D""><font face=3D"Times New Roman" size=3D"3" class=3D"">

</font></p><div style=3D"margin: 0in 0in 0pt;" class=3D""><span =
class=3D""><b class=3D""><span =
style=3D"color:rgb(31,73,125);font-family:arial,sans-serif;font-size:10pt"=
 class=3D"">Milad Hasanvand</span></b></span></div><p style=3D"margin:0in =
0in 0pt" class=3D""><font face=3D"Times New Roman" size=3D"3" class=3D"">

</font></p><div style=3D"margin: 0in 0in 0pt;" class=3D""><span =
class=3D""><b class=3D""><span =
style=3D"color:rgb(31,73,125);font-family:arial,sans-serif;font-size:10pt"=
 class=3D"">Connected Car System Designer @ =
AIRIC-SAIPA</span></b></span></div><p style=3D"margin:0in 0in 0pt" =
class=3D""><font face=3D"Times New Roman" size=3D"3" class=3D"">

</font></p><div style=3D"margin: 0in 0in 0pt;" class=3D""><span =
class=3D""><span =
style=3D"color:rgb(31,73,125);font-family:arial,sans-serif;font-size:10pt"=
 =
class=3D"">---------------------------------------------------------------=
----------------------------</span></span></div><p style=3D"margin:0in =
0in 0pt" class=3D""><font face=3D"Times New Roman" size=3D"3" class=3D"">

</font></p><div style=3D"margin: 0in 0in 0pt;" class=3D""><span =
class=3D""></span><a href=3D"http://airic-ir.com/" target=3D"_blank" =
class=3D""><span class=3D""><span =
style=3D"color:rgb(31,73,125);font-family:arial,sans-serif;font-size:10pt;=
text-decoration:none" class=3D""><span class=3D""><font face=3D"Times =
New Roman" size=3D"3" class=3D""></font></span></span></span><span =
class=3D""></span></a><span class=3D""><span =
style=3D"color:rgb(31,73,125);font-family:arial,sans-serif;font-size:10pt"=
 class=3D""><img =
src=3D"https://docs.google.com/uc?export=3Ddownload&amp;id=3D0B8abgrk1-H90=
VFF6NURpU0V5dHc&amp;revid=3D0B8abgrk1-H90ODl6YUJWWnl4V1BkTkROOVdmR21aRjBlN=
Ul3PQ" class=3D""></span></span></div><p style=3D"margin:0in 0in 0pt" =
class=3D""><font face=3D"Times New Roman" size=3D"3" class=3D"">
</font></p><div style=3D"margin: 0in 0in 0pt;" class=3D""><span =
class=3D""><span =
style=3D"color:rgb(31,73,125);font-family:arial,sans-serif;font-size:10pt"=
 class=3D"">Automotive Industries Research &amp; Innovation Center
(AIRIC)<br class=3D"">
SAIPA Group</span></span></div><p style=3D"margin:0in 0in 0pt" =
class=3D""><font face=3D"Times New Roman" size=3D"3" class=3D"">

</font></p><div style=3D"margin: 0in 0in 0pt;" class=3D""><span =
class=3D""><span =
style=3D"color:rgb(31,73,125);font-family:arial,sans-serif;font-size:10pt"=
 class=3D"">15th Km Karadj Makhsoos Rd., Tehran, Iran.<br class=3D"">
P.O. Box 13445/967<br class=3D"">
</span></span><span class=3D""></span><a =
href=3D"mailto:hasanvand.milad@airic-ir.com" target=3D"_blank" =
class=3D""><span class=3D""><span =
style=3D"color:rgb(5,99,193);font-family:arial,sans-serif;font-size:10pt" =
class=3D"">hasanvand.milad@airic-ir.com</span></span><span =
class=3D""></span></a><span class=3D""><span =
style=3D"color:rgb(31,73,125);font-family:arial,sans-serif;font-size:10pt"=
 class=3D""><br class=3D"">
Mobile:&nbsp;&nbsp; +98 938 510 0152</span></span></div><p =
style=3D"margin:0in 0in 0pt" class=3D""><font face=3D"Times New Roman" =
size=3D"3" class=3D"">

</font></p></div></div></div></div></div></div></div></div></div>
</div></div>
-- <br class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto<br =
class=3D""></div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_99F7639E-58C3-4053-B61B-5F25ACB89E1C--

--Apple-Mail=_A73F52A2-58B4-4F2D-91EB-A1C5A895F2B8
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlfYXjIACgkQuwUzVZGdMxRARACeO+U4QhJIwY9leo6jHycTTic/
JqIAoIpXIYwebC3UiVBd0YHGAi5Tq62e
=cr5Z
-----END PGP SIGNATURE-----

--Apple-Mail=_A73F52A2-58B4-4F2D-91EB-A1C5A895F2B8--

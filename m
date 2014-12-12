Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 585D0E00874; Thu, 11 Dec 2014 18:48:27 -0800 (PST)
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
	*      [209.85.220.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f47.google.com (mail-pa0-f47.google.com
	[209.85.220.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9CBEE0083A
	for <yocto@yoctoproject.org>; Thu, 11 Dec 2014 18:48:25 -0800 (PST)
Received: by mail-pa0-f47.google.com with SMTP id kq14so6317954pab.20
	for <yocto@yoctoproject.org>; Thu, 11 Dec 2014 18:48:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=WwkucgW20CpKMcP9cSqghlgXOuvujSENgSB4cfQVIas=;
	b=lJgSqxxIaO4aNPsmWlvktFGMIEweJjB1pnutKGefYKV7THjN6Eq70oSKzYk1YBH5Md
	TsXZjucJSzmoamglbF7au9bwov8XvQsuIiO5v5ZqSeITNAOi35o52qXm3t1fJRpJeXvV
	XhiSPlguw8EZBkDu+Tvm3FoQxSUgPpzQ7VYcBWALqM1QcnY2WY7sjxELHYRv+Kt1SoiM
	fhCesibf5l2ii+Kqf4pa4HIvYJZJhrLUNi60bA4l5UYdfCsozpCaMUEsU7tAHD7EbvkE
	VysSNJtCa+ztw4hAvtCCF16+7csJcxsdLs/JYwBok49ujqGC1/8Vls/WgjCEJtwT6X3W
	hSyQ==
X-Received: by 10.68.232.104 with SMTP id tn8mr22559533pbc.31.1418352504739;
	Thu, 11 Dec 2014 18:48:24 -0800 (PST)
Received: from [192.168.0.27] (c-76-103-142-85.hsd1.ca.comcast.net.
	[76.103.142.85])
	by mx.google.com with ESMTPSA id ay4sm27796pbb.29.2014.12.11.18.48.23
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 11 Dec 2014 18:48:24 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 8.1 \(1993\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <3204FE6663E1F14CAF4CA6928E60C8521E220A16@USSTLZ-PMSG012.emrsn.org>
Date: Thu, 11 Dec 2014 18:48:22 -0800
Message-Id: <848A7AA8-A1E5-433E-BC26-C1CA7CED6814@gmail.com>
References: <20141211004713.GC4102@mentor.com>
	<1077253035.5058800.1418282511482.JavaMail.yahoo@jws10079.mail.ne1.yahoo.com>
	<3204FE6663E1F14CAF4CA6928E60C8521E22093F@USSTLZ-PMSG012.emrsn.org>
	<F9A75476-0E0A-4908-B047-2FB8028ACB8A@gmail.com>
	<3204FE6663E1F14CAF4CA6928E60C8521E220A16@USSTLZ-PMSG012.emrsn.org>
To: Neil.Wu@Emerson.com
X-Mailer: Apple Mail (2.1993)
Cc: yocto@yoctoproject.org
Subject: Re: add files to dirctory in packages-split
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
X-List-Received-Date: Fri, 12 Dec 2014 02:48:27 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_D5C9FC60-5882-477E-845A-355A76229F51"

--Apple-Mail=_D5C9FC60-5882-477E-845A-355A76229F51
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Dec 11, 2014, at 5:59 PM, Neil.Wu@Emerson.com wrote:
>=20
> Hi Raj,
> Thank you very much for your reply. I have try to do like  you say.
> I=E2=80=99m compiling the glib-2.0,  need to  add the link file of one =
library to glib-2.0 package.
> So I add the command like following :
> FILES_${PN} +=3D =E2=80=9C${libdir}/libgio-2.0.so=E2=80=9D
> But , it can=E2=80=99t success.

.so are usually treated to be includes in -dev packages by default
first you need to figure out if you really need .so on target, many =
times you don=E2=80=99t

some packages still do ( don=E2=80=99t use .so versioning ) then you =
would need something like

FILES_SOLIBSDEV =3D ""
SOLIBS =3D ".so"
INSANE_SKIP_${PN} +=3D "dev-so"


> Do you know whether need to do other thing?
> =20
> Neil
> =20
> From: Khem Raj [mailto:raj.khem@gmail.com]=20
> Sent: Thursday, December 11, 2014 6:05 PM
> To: Wu, Neil [CLIMATE/RS/CN]
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] add files to dirctory in packages-split
> =20
> =20
> On Dec 11, 2014, at 1:35 AM, Neil.Wu@Emerson.com =
<mailto:Neil.Wu@Emerson.com> wrote:
> =20
> Hi all,
> I want to add some files to the specified  directory what in =
packages-split.
> =20
> How to do it ?
> =20
> FILES_<name-of-package> +=3D =E2=80=9C/path/to/file"
>=20
>=20
> =20
> Thank you
> Neil
> =20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>

--Apple-Mail=_D5C9FC60-5882-477E-845A-355A76229F51
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Dec 11, 2014, at 5:59 PM, <a =
href=3D"mailto:Neil.Wu@Emerson.com" class=3D"">Neil.Wu@Emerson.com</a> =
wrote:</div><br class=3D"Apple-interchange-newline"><div class=3D""><div =
class=3D"Section1" style=3D"page: Section1; font-family: Verdana; =
font-size: 12px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; line-height: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;"><div style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; =
font-family: 'Times New Roman', serif;" class=3D""><span =
style=3D"font-size: 11pt; font-family: Calibri, sans-serif; color: =
rgb(31, 73, 125);" class=3D"">Hi Raj,<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 12pt; font-family: 'Times New Roman', serif;" class=3D""><span =
style=3D"font-size: 11pt; font-family: Calibri, sans-serif; color: =
rgb(31, 73, 125);" class=3D"">Thank you very much for your reply. I have =
try to do like &nbsp;you say.<o:p class=3D""></o:p></span></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times =
New Roman', serif;" class=3D""><span style=3D"font-size: 11pt; =
font-family: Calibri, sans-serif; color: rgb(31, 73, 125);" =
class=3D"">I=E2=80=99m compiling the glib-2.0,&nbsp; need to &nbsp;add =
the link file of one library to glib-2.0 package.<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 12pt; font-family: 'Times New Roman', serif;" class=3D""><span =
style=3D"font-size: 11pt; font-family: Calibri, sans-serif; color: =
rgb(31, 73, 125);" class=3D"">So I add the command like following :<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 12pt; font-family: 'Times New Roman', serif;" class=3D""><span =
style=3D"font-size: 11pt; font-family: Calibri, sans-serif; color: =
rgb(31, 73, 125);" class=3D"">FILES_${PN} +=3D =
=E2=80=9C${libdir}/libgio-2.0.so=E2=80=9D<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 12pt; font-family: 'Times New Roman', serif;" class=3D""><span =
style=3D"font-size: 11pt; font-family: Calibri, sans-serif; color: =
rgb(31, 73, 125);" class=3D"">But , it can=E2=80=99t =
success.</span></div></div></div></blockquote><div><br =
class=3D""></div><div>.so are usually treated to be includes in -dev =
packages by default</div><div>first you need to figure out if you really =
need .so on target, many times you don=E2=80=99t</div><div><br =
class=3D""></div><div>some packages still do ( don=E2=80=99t use .so =
versioning ) then you would need something like</div><div><br =
class=3D""></div><div>FILES_SOLIBSDEV&nbsp;=3D&nbsp;""<br =
class=3D"">SOLIBS&nbsp;=3D&nbsp;".so"<br =
class=3D"">INSANE_SKIP_${PN}&nbsp;+=3D&nbsp;"dev-so"<br class=3D""><br =
class=3D""></div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D""><div class=3D"Section1" style=3D"page: Section1; font-family: =
Verdana; font-size: 12px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;"><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 12pt; font-family: 'Times New Roman', serif;" class=3D""><span =
style=3D"font-size: 11pt; font-family: Calibri, sans-serif; color: =
rgb(31, 73, 125);" class=3D""><o:p class=3D""></o:p></span></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times =
New Roman', serif;" class=3D""><span style=3D"font-size: 11pt; =
font-family: Calibri, sans-serif; color: rgb(31, 73, 125);" class=3D"">Do =
you know whether need to do other thing?<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 12pt; font-family: 'Times New Roman', serif;" class=3D""><span =
style=3D"font-size: 11pt; font-family: Calibri, sans-serif; color: =
rgb(31, 73, 125);" class=3D"">&nbsp;</span></div><div style=3D"margin: =
0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times New Roman', =
serif;" class=3D""><span style=3D"font-size: 11pt; font-family: Calibri, =
sans-serif; color: rgb(31, 73, 125);" class=3D"">Neil<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 12pt; font-family: 'Times New Roman', serif;" class=3D""><span =
style=3D"font-size: 11pt; font-family: Calibri, sans-serif; color: =
rgb(31, 73, 125);" class=3D"">&nbsp;</span></div><div class=3D""><div =
style=3D"border-style: solid none none; border-top-color: rgb(181, 196, =
223); border-top-width: 1pt; padding: 3pt 0in 0in;" class=3D""><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times =
New Roman', serif;" class=3D""><b class=3D""><span style=3D"font-size: =
10pt; font-family: Tahoma, sans-serif;" class=3D"">From:</span></b><span =
style=3D"font-size: 10pt; font-family: Tahoma, sans-serif;" =
class=3D""><span class=3D"Apple-converted-space">&nbsp;</span>Khem Raj =
[<a href=3D"mailto:raj.khem@gmail.com" =
class=3D"">mailto:raj.khem@gmail.com</a>]<span =
class=3D"Apple-converted-space">&nbsp;</span><br class=3D""><b =
class=3D"">Sent:</b><span =
class=3D"Apple-converted-space">&nbsp;</span>Thursday, December 11, 2014 =
6:05 PM<br class=3D""><b class=3D"">To:</b><span =
class=3D"Apple-converted-space">&nbsp;</span>Wu, Neil [CLIMATE/RS/CN]<br =
class=3D""><b class=3D"">Cc:</b><span =
class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br class=3D""><b =
class=3D"">Subject:</b><span =
class=3D"Apple-converted-space">&nbsp;</span>Re: [yocto] add files to =
dirctory in packages-split<o:p =
class=3D""></o:p></span></div></div></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 12pt; font-family: 'Times New Roman', serif;" =
class=3D""><o:p class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0in =
0in 0.0001pt; font-size: 12pt; font-family: 'Times New Roman', serif;" =
class=3D""><o:p class=3D"">&nbsp;</o:p></div><div class=3D""><blockquote =
style=3D"margin-top: 5pt; margin-bottom: 5pt;" class=3D""><div =
class=3D""><div style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; =
font-family: 'Times New Roman', serif;" class=3D"">On Dec 11, 2014, at =
1:35 AM,<span class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"mailto:Neil.Wu@Emerson.com" style=3D"color: purple; =
text-decoration: underline;" class=3D"">Neil.Wu@Emerson.com</a><span =
class=3D"Apple-converted-space">&nbsp;</span>wrote:<o:p =
class=3D""></o:p></div></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 12pt; font-family: 'Times New Roman', serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div><div class=3D""><div class=3D""><div =
class=3D""><div class=3D""><div class=3D""><div class=3D""><div =
class=3D""><div style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; =
font-family: 'Times New Roman', serif;" class=3D""><span =
style=3D"font-size: 11pt; font-family: Calibri, sans-serif; color: =
rgb(31, 73, 125);" class=3D"">Hi all,</span><o:p =
class=3D""></o:p></div></div><div class=3D""><div style=3D"margin: 0in =
0in 0.0001pt; font-size: 12pt; font-family: 'Times New Roman', serif;" =
class=3D""><span style=3D"font-size: 11pt; font-family: Calibri, =
sans-serif; color: rgb(31, 73, 125);" class=3D"">I want to add some =
files to the specified &nbsp;directory what in =
packages-split.</span><o:p class=3D""></o:p></div></div><div =
class=3D""><div style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; =
font-family: 'Times New Roman', serif;" class=3D""><span =
style=3D"font-size: 11pt; font-family: Calibri, sans-serif; color: =
rgb(31, 73, 125);" class=3D"">&nbsp;</span><o:p =
class=3D""></o:p></div></div><div class=3D""><div style=3D"margin: 0in =
0in 0.0001pt; font-size: 12pt; font-family: 'Times New Roman', serif;" =
class=3D""><span style=3D"font-size: 11pt; font-family: Calibri, =
sans-serif; color: rgb(31, 73, 125);" class=3D"">How to do it =
?</span><o:p =
class=3D""></o:p></div></div></div></div></div></div></div></div></blockqu=
ote><div class=3D""><div style=3D"margin: 0in 0in 0.0001pt; font-size: =
12pt; font-family: 'Times New Roman', serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div></div><div class=3D""><div style=3D"margin: =
0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times New Roman', =
serif;" class=3D"">FILES_&lt;name-of-package&gt; +=3D =
=E2=80=9C/path/to/file"<o:p class=3D""></o:p></div></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times =
New Roman', serif;" class=3D""><br class=3D""><br class=3D""><o:p =
class=3D""></o:p></div><div class=3D""><div class=3D""><div =
class=3D""><div class=3D""><div class=3D""><div class=3D""><div =
class=3D""><div style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; =
font-family: 'Times New Roman', serif;" class=3D""><span =
style=3D"font-size: 11pt; font-family: Calibri, sans-serif; color: =
rgb(31, 73, 125);" class=3D"">&nbsp;</span><o:p =
class=3D""></o:p></div></div><div class=3D""><div style=3D"margin: 0in =
0in 0.0001pt; font-size: 12pt; font-family: 'Times New Roman', serif;" =
class=3D""><span style=3D"font-size: 11pt; font-family: Calibri, =
sans-serif; color: rgb(31, 73, 125);" class=3D"">Thank you</span><o:p =
class=3D""></o:p></div></div><div class=3D""><div style=3D"margin: 0in =
0in 0.0001pt; font-size: 12pt; font-family: 'Times New Roman', serif;" =
class=3D""><span style=3D"font-size: 11pt; font-family: Calibri, =
sans-serif; color: rgb(31, 73, 125);" class=3D"">Neil</span><o:p =
class=3D""></o:p></div></div><div class=3D""><div style=3D"margin: 0in =
0in 0.0001pt; font-size: 12pt; font-family: 'Times New Roman', serif;" =
class=3D""><span style=3D"font-size: 11pt; font-family: Calibri, =
sans-serif; color: rgb(31, 73, 125);" class=3D"">&nbsp;</span><o:p =
class=3D""></o:p></div></div></div></div></div></div></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times =
New Roman', serif;" class=3D""><span style=3D"font-size: 9pt; =
font-family: Verdana, sans-serif;" class=3D"">--<span =
class=3D"apple-converted-space">&nbsp;</span><br =
class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""></span><a =
href=3D"mailto:yocto@yoctoproject.org" style=3D"color: purple; =
text-decoration: underline;" class=3D""><span style=3D"font-size: 9pt; =
font-family: Verdana, sans-serif; color: purple;" =
class=3D"">yocto@yoctoproject.org</span></a><span style=3D"font-size: =
9pt; font-family: Verdana, sans-serif;" class=3D""><br =
class=3D""></span><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" style=3D"color: =
purple; text-decoration: underline;" class=3D""><span style=3D"font-size: =
9pt; font-family: Verdana, sans-serif; color: purple;" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</span></a></div><=
/div></div></div></div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_D5C9FC60-5882-477E-845A-355A76229F51--

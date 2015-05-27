Return-Path: <spdev31@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37CA8E009A1; Wed, 27 May 2015 11:54:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (spdev31[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f41.google.com (mail-pa0-f41.google.com
	[209.85.220.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 110C4E005B9
	for <yocto@yoctoproject.org>; Wed, 27 May 2015 11:54:01 -0700 (PDT)
Received: by padbw4 with SMTP id bw4so4253879pad.0
	for <yocto@yoctoproject.org>; Wed, 27 May 2015 11:54:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:references:in-reply-to:subject:date:message-id:mime-version
	:content-type:thread-index:content-language;
	bh=qYMuzK3VsPrqP/FDC/rwf+tb0WVWaAic/IMjOnfmGRY=;
	b=B9ZwwPuGOmHJgZsD3F8tqZrNR5fxxWFuPW2S92iHcMTxWbMmnCKt7oegvnT2nGkynp
	SmtHB0oClgoC+db3neSYdOu6PLKq2r1a/ytObQU6w+4dFHq8dU7IczKB0POm/ZU2QrwK
	MQh5/GwOqSPkWCj6wgpgrUk+9fpnB16KS2yYNn2uu2deXQuU0uVSBNwZJn8lWBHdfF8d
	5HS2kSWTxO82W4U1YNNGMCOGP7RVeFtVdQsGj+WYP21FfXGPLG1bc3nhzDEVEkabhcLX
	y5fqDhFMGJhDgGlXNKvdYB0TFeoD8t/BksKGY5qnmfCoSXyIY7kMU+O0/ioCdvz8LhlH
	arwg==
X-Received: by 10.68.98.65 with SMTP id eg1mr59652668pbb.72.1432752840708;
	Wed, 27 May 2015 11:54:00 -0700 (PDT)
Received: from ShaunWin7 ([12.108.173.117]) by mx.google.com with ESMTPSA id
	oo3sm17041901pac.31.2015.05.27.11.53.59
	(version=TLSv1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 27 May 2015 11:53:59 -0700 (PDT)
From: "spdev31" <spdev31@gmail.com>
To: "'spdev31'" <spdev31@gmail.com>,
	<yocto@yoctoproject.org>
References: <CAEWbfH+W+7=A=eg=oTqUC5g-F1FVki-woFXm1E2JNEHsOkySmw@mail.gmail.com>
In-Reply-To: <CAEWbfH+W+7=A=eg=oTqUC5g-F1FVki-woFXm1E2JNEHsOkySmw@mail.gmail.com>
Date: Wed, 27 May 2015 11:56:50 -0700
Message-ID: <082a01d098ae$e516c2f0$af4448d0$@com>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdCR6CySuJkoi07jQYO8gukdqIqJPAGxRi0w
Subject: Re: How to use a local SVN repository as a premirror?
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
X-List-Received-Date: Wed, 27 May 2015 18:54:06 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_082B_01D09874.38B7EAF0"
Content-Language: en-us

------=_NextPart_000_082B_01D09874.38B7EAF0
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello all,

=20

Just to share the info =E2=80=93 it looks like bitbake=E2=80=99s fetch2 =
is adding the tar.gz extension.  See =
build-bundle/poky/bitbake/lib/bb/fetch2/svn.py.  For now, I=E2=80=99m =
skipping the idea to use PREMIRRORS to fetch from a local SVN repository =
to avoid making bitbake modifications.

=20

FYI,

Shaun

=20

From: spdev31 [mailto:spdev31@gmail.com]=20
Sent: Monday, May 18, 2015 8:59 PM
To: yocto@yoctoproject.org
Subject: How to use a local SVN repository as a premirror?

=20

Hello all,

=20

I have a local SVN repository which Yocto successfully downloads from =
using SRC_URI.  Now I'm trying to setup Yocto to use this repository as =
a premirror rather than an upstream source.  But I'm getting fetch =
errors while trying to convert from SRC_URI to PREMIRRORS.  Can anyone =
point me to how can I setup a local SVN server as a premirror?  I have =
not been able to find any examples online, but I've found old references =
to git premirrors =
(https://lists.yoctoproject.org/pipermail/poky/2011-September/007014.html=
)

=20

My SVN URL is svn://127.0.01/MyRepo/trunk/TopLevel/TestDir and can be =
accessed as an upstream source with=20

SRC_URI =3D "svn://127.0.01/MyRepo/trunk/TopLevel;module=3DTestDir".  =
But when I setup PREMIRRORS to "svn://.*/.* =
svn://127.0.0.1/MyRepo/trunk/TopLevel" my SVN server shows that Yocto =
tries accessing the following invalid URL: =
/MyRepo/trunk/TopLevel/TestDir_127.0.0.1_.MyRepo.trunk.TopLevel_3_.tar.gz=
/TestDir.

=20

The "tar.gz" part of the invalid URL appears to be the cause - can =
anyone help me understand why this "tar.gz" URL is added when PREMIRRORS =
is used?

=20

Please let me know if this question is better suited for the poky =
mailing list.

=20

Thanks,

Shaun


------=_NextPart_000_082B_01D09874.38B7EAF0
Content-Type: text/html;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 12 (filtered =
medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'>Hello all,<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'>Just to share the info =E2=80=93 it looks like bitbake=E2=80=99s =
fetch2 is adding the tar.gz extension.=C2=A0 See =
build-bundle/poky/bitbake/lib/bb/fetch2/svn.py.=C2=A0 For now, =
I=E2=80=99m skipping the idea to use PREMIRRORS to fetch from a local =
SVN repository to avoid making bitbake =
modifications.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'>FYI,<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'>Shaun<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'><o:p>&nbsp;</o:p></span></p><div =
style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in'><p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>From:</span>=
</b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'> =
spdev31 [mailto:spdev31@gmail.com] <br><b>Sent:</b> Monday, May 18, 2015 =
8:59 PM<br><b>To:</b> yocto@yoctoproject.org<br><b>Subject:</b> How to =
use a local SVN repository as a premirror?<o:p></o:p></span></p></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p =
class=3DMsoNormal>Hello all,<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p class=3DMsoNormal>I =
have a local SVN repository which Yocto successfully downloads from =
using SRC_URI.&nbsp;&nbsp;Now I'm trying to setup Yocto to use this =
repository as a premirror rather than an upstream source.&nbsp; But I'm =
getting fetch errors while trying to convert from SRC_URI to =
PREMIRRORS.&nbsp; Can anyone point me to how can I setup a local SVN =
server as a premirror?&nbsp; I have not been able to find any examples =
online, but I've found old references to git premirrors (<a =
href=3D"https://lists.yoctoproject.org/pipermail/poky/2011-September/0070=
14.html">https://lists.yoctoproject.org/pipermail/poky/2011-September/007=
014.html</a>)<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>My SVN URL is =
svn://127.0.01/MyRepo/trunk/TopLevel/TestDir and can be accessed as an =
upstream source with <o:p></o:p></p></div><div><p =
class=3DMsoNormal>SRC_URI =3D =
&quot;svn://127.0.01/MyRepo/trunk/TopLevel;module=3DTestDir&quot;.&nbsp; =
But when I setup PREMIRRORS to &quot;svn://.*/.* svn://<a =
href=3D"http://127.0.0.1/MyRepo/trunk/TopLevel">127.0.0.1/MyRepo/trunk/To=
pLevel</a>&quot; my SVN server shows that Yocto&nbsp;tries accessing the =
following invalid =
URL:&nbsp;/MyRepo/trunk/TopLevel/TestDir_127.0.0.1_.MyRepo.trunk.TopLevel=
_3_.tar.gz/TestDir.<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>The &quot;tar.gz&quot; part of the invalid URL appears =
to be the cause - can anyone help me understand why this =
&quot;tar.gz&quot; URL is added when PREMIRRORS is =
used?<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Please let me know if this question is better suited =
for the poky mailing list.<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Thanks,<o:p></o:p></p></div><div><p =
class=3DMsoNormal>Shaun<o:p></o:p></p></div></div></div></body></html>

------=_NextPart_000_082B_01D09874.38B7EAF0--

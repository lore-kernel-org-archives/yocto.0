Return-Path: <andreas.enbacka@gasera.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23267E00CF1; Sun, 24 Apr 2016 07:28:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MIME_QP_LONG_LINE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [62.142.5.107 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
X-Greylist: delayed 564 seconds by postgrey-1.32 at yocto-www;
	Sun, 24 Apr 2016 07:28:07 PDT
Received: from emh01.mail.saunalahti.fi (emh01.mail.saunalahti.fi
	[62.142.5.107])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 922E4E007B7
	for <yocto@yoctoproject.org>; Sun, 24 Apr 2016 07:28:07 -0700 (PDT)
Received: from [192.168.0.104] (unknown [193.64.150.69])
	by emh01.mail.saunalahti.fi (Postfix) with ESMTP id 5560A900B6;
	Sun, 24 Apr 2016 17:18:40 +0300 (EEST)
Mime-Version: 1.0 (1.0)
From: Andreas Enbacka <andreas.enbacka@gasera.fi>
X-Mailer: iPhone Mail (13E238)
In-Reply-To: <43F0718C449F6A46B393DA2BEC8E01280C9FE07D@post>
Date: Sun, 24 Apr 2016 17:18:40 +0300
Message-Id: <A5CC7800-42CA-42DF-BD8E-8357DEC22AA1@gasera.fi>
References: <000f01d19dfa$51e59400$f5b0bc00$@gasera.fi>
	<43F0718C449F6A46B393DA2BEC8E01280C9FE07D@post>
To: Peter Bergin <peter.bergin@tritech.se>
Cc: yocto@yoctoproject.org
Subject: Re: Customize login prompt text in Yocto
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
X-List-Received-Date: Sun, 24 Apr 2016 14:28:13 -0000
Content-Type: multipart/alternative;
	boundary=Apple-Mail-D0A7CDEF-19F6-430D-A71A-1CA5A842411D
Content-Transfer-Encoding: 7bit

--Apple-Mail-D0A7CDEF-19F6-430D-A71A-1CA5A842411D
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable


Hi Peter,

Thanks a lot for the info, I will try it out.

Regards,
Andreas

> 24 apr. 2016 kl. 11:06 skrev Peter Bergin <peter.bergin@tritech.se>:
>=20
> Hi,
>=20
>> On 04/24/2016 09:42 AM, Andreas Enbacka wrote:
>> Hello,
>> =20
>> Normally, when building e.g., a console-based image using Yocto, you will=
 get at caption text =E2=80=9DPoky Reference Distribution=E2=80=9D... at the=
 login prompt. Is it easily possible to change / customize this caption text=
,
>> and in such a case, which Yocto package / recipe requires change. Any inf=
ormation would be greatly appreciated.
>> =20
>> Best regards,
>> Andreas Enbacka
>=20
> the information shown is from the file /etc/issue. You can for example do p=
ost-processing on this file and change the information. You can add this to y=
our image recipe.
>=20
> update_issue() {
>     echo "Your text" > ${IMAGE_ROOTFS}/etc/issue
> }
>=20
> ROOTFS_POSTPROCESS_COMMAND +=3D " update issue; "
>=20
> Best regards,
> /Peter

--Apple-Mail-D0A7CDEF-19F6-430D-A71A-1CA5A842411D
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><div></div><div><br></div><div>Hi Peter,</d=
iv><div><br></div><div>Thanks a lot for the info, I will try it out.</div><d=
iv><br></div><div>Regards,</div><div>Andreas</div><div><br>24 apr. 2016 kl. 1=
1:06 skrev Peter Bergin &lt;<a href=3D"mailto:peter.bergin@tritech.se">peter=
.bergin@tritech.se</a>&gt;:<br><br></div><blockquote type=3D"cite"><div>

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-12=
52">


<div class=3D"moz-cite-prefix">Hi,<br>
<br>
On 04/24/2016 09:42 AM, Andreas Enbacka wrote:<br>
</div>
<blockquote cite=3D"mid:000f01d19dfa$51e59400$f5b0bc00$@gasera.fi" type=3D"c=
ite">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 2.0cm 70.85pt 2.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"SV-FI">Hello,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"SV-FI"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Normally, when building e.g., a c=
onsole-based image using Yocto, you will get at caption text =E2=80=9DPoky R=
eference Distribution=E2=80=9D... at the login prompt. Is it easily possible=
 to change / customize this caption text,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">and in such a case, which Yocto p=
ackage / recipe requires change.
</span><span lang=3D"SV-FI">Any information would be greatly appreciated.<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"SV-FI"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"SV-FI">Best regards,<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"SV-FI">Andreas Enbacka<o:p></o:p></span=
></p>
</div>
</blockquote>
<br>
the information shown is from the file /etc/issue. You can for example do po=
st-processing on this file and change the information. You can add this to y=
our image recipe.<br>
<br>
update_issue() {<br>
&nbsp;&nbsp;&nbsp; echo "Your text" &gt; ${IMAGE_ROOTFS}/etc/issue<br>
}<br>
<br>
ROOTFS_POSTPROCESS_COMMAND +=3D " update issue; "<br>
<br>
Best regards,<br>
/Peter<br>


</div></blockquote></body></html>=

--Apple-Mail-D0A7CDEF-19F6-430D-A71A-1CA5A842411D--

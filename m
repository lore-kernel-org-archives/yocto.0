Return-Path: <sscott@san.rr.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24ACBE00994; Thu, 18 Oct 2018 06:48:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [107.14.166.226 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from cdptpa-cmomta01.email.rr.com (cdptpa-outbound-snat.email.rr.com
	[107.14.166.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E51EE00971
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2018 06:48:18 -0700 (PDT)
Received: from boobie ([75.80.138.87]) by cmsmtp with ESMTP
	id D8erg98dhvVJ9D8eugvd3L; Thu, 18 Oct 2018 13:48:17 +0000
From: "Steve Scott" <sscott@san.rr.com>
To: "'Stefano Cappa'" <stefano.cappa.ks89@gmail.com>
References: <ead8ad97-856d-03bb-4444-dc6e4a472d61@kernel.org>
	<20181017232705.HQN68.75473.root@cdptpa-web09>
	<CAKRytNw_TCeqAfN9TG2y6L6WAO+FNZkzE2S7DWyBM9OzWZQ18Q@mail.gmail.com>
In-Reply-To: <CAKRytNw_TCeqAfN9TG2y6L6WAO+FNZkzE2S7DWyBM9OzWZQ18Q@mail.gmail.com>
Date: Thu, 18 Oct 2018 06:48:19 -0700
Message-ID: <004d01d466e9$3c7daf70$b5790e50$@san.rr.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQDpJJoTdLwaadM1FgYaPeZRW297DAFdz6r/Aa/stLym4xpW0A==
X-CMAE-Envelope: MS4wfNAfsYouJ3zOPPPvHHs4pFVS9f7U4YiB4uXAQC8C1TPMQ/i943sGz4U6P7tc+gitZgyEI9JSIVTQj7l71TkkkfiPCawmP55t5iAAi4449YZPYxRb1gzS
	b4CvJI/rirT3Su5ZdPZ998aQRJ05N+LZfHnqolzixEbwKBEM6ez1NdmwLEQ9CuiAL7lkZZOO9gnuWpX+57+qUgtn+ZjcbVbyn5EMAuN1I/nst92WNRzYP2QN
Cc: yocto@yoctoproject.org
Subject: Re: [selinux] sumo compilation
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: sscott@san.rr.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 18 Oct 2018 13:48:19 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_004E_01D466AE.901F4CA0"
Content-Language: en-us

------=_NextPart_000_004E_01D466AE.901F4CA0
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I did not try it on sumo.=20

=20

From: Stefano Cappa [mailto:stefano.cappa.ks89@gmail.com]=20
Sent: Wednesday, October 17, 2018 11:15 PM
To: sscott@san.rr.com
Cc: Sinan Kaya <okaya@kernel.org>; yocto@yoctoproject.org
Subject: Re: [yocto] [selinux] sumo compilation

=20

Exactly the same issue since September.=20

=20

Here is my discussion =
https://lists.yoctoproject.org/pipermail/yocto/2018-September/042711.html=
. With that trick did you find a solution also on sumo?=20

=20

Il gio 18 ott 2018, 01:42 <sscott@san.rr.com <mailto:sscott@san.rr.com> =
> ha scritto:


It was broken in rocko too. I added this to local.conf to workaround the =
problem:

PREFERRED_VERSION_refpolicy-standard =3D "2.20170204"

-steve

---- Sinan Kaya <okaya@kernel.org <mailto:okaya@kernel.org> > wrote:=20
> Hi,
>=20
> We realized today that SELinux does not compile on sumo branch.
>=20
> Is it possible for someone to branch the last working version to a =
sumo branch?
>=20
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-selinux/refs/
>=20
> NOTE: Running task 352 of 2707=20
> =
(virtual:native:/sources/poky/meta/recipes-devtools/e2fsprogs/e2fsprogs_1=
.43.8.bb <http://e2fsprogs_1.43.8.bb> :do_patch)
> NOTE: recipe e2fsprogs-native-1.43.8-r0: task do_patch: Started
> NOTE: Running task 1413 of 2707=20
> =
(/sources/poky/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.43.8.bb:do_pat=
ch)
> NOTE: recipe e2fsprogs-1.43.8-r0: task do_patch: Started
> ERROR: e2fsprogs-native-1.43.8-r0 do_patch: Command Error: 'quilt =
--quiltrc
> Applying patch misc_create_inode.c-label_rootfs.patch
> patching file misc/create_inode.c
> Hunk #1 FAILED at 979.
> Hunk #2 FAILED at 987.
>=20
> Sinan
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>=20
> https://lists.yoctoproject.org/listinfo/yocto

--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>=20
https://lists.yoctoproject.org/listinfo/yocto


------=_NextPart_000_004E_01D466AE.901F4CA0
Content-Type: text/html;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 15 (filtered =
medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
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
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>I did not try it on sumo. <o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><o:p>&nbsp;</o:p></span></p><div style=3D'border:none;border-left:solid =
blue 1.5pt;padding:0in 0in 0in 4.0pt'><div><div =
style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in'><p class=3DMsoNormal><b><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>From:</span><=
/b><span style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'> =
Stefano Cappa [mailto:stefano.cappa.ks89@gmail.com] <br><b>Sent:</b> =
Wednesday, October 17, 2018 11:15 PM<br><b>To:</b> =
sscott@san.rr.com<br><b>Cc:</b> Sinan Kaya &lt;okaya@kernel.org&gt;; =
yocto@yoctoproject.org<br><b>Subject:</b> Re: [yocto] [selinux] sumo =
compilation<o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Exactly the =
same issue since September.&nbsp;<o:p></o:p></p><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Here is my discussion <a =
href=3D"https://lists.yoctoproject.org/pipermail/yocto/2018-September/042=
711.html">https://lists.yoctoproject.org/pipermail/yocto/2018-September/0=
42711.html</a>. With that trick did you find a solution also on =
sumo?&nbsp;<o:p></o:p></p></div><div><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><o:p>&nbsp;</o:p></p><div><div><p =
class=3DMsoNormal>Il gio 18 ott 2018, 01:42 &lt;<a =
href=3D"mailto:sscott@san.rr.com">sscott@san.rr.com</a>&gt; ha =
scritto:<o:p></o:p></p></div><blockquote =
style=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0in 0in 0in =
6.0pt;margin-left:4.8pt;margin-right:0in'><p class=3DMsoNormal><br>It =
was broken in rocko too. I added this to local.conf to workaround the =
problem:<br><br>PREFERRED_VERSION_refpolicy-standard =3D =
&quot;2.20170204&quot;<br><br>-steve<br><br>---- Sinan Kaya &lt;<a =
href=3D"mailto:okaya@kernel.org" =
target=3D"_blank">okaya@kernel.org</a>&gt; wrote: <br>&gt; Hi,<br>&gt; =
<br>&gt; We realized today that SELinux does not compile on sumo =
branch.<br>&gt; <br>&gt; Is it possible for someone to branch the last =
working version to a sumo branch?<br>&gt; <br>&gt; <a =
href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-selinux/refs/" =
target=3D"_blank">http://git.yoctoproject.org/cgit/cgit.cgi/meta-selinux/=
refs/</a><br>&gt; <br>&gt; NOTE: Running task 352 of 2707 <br>&gt; =
(virtual:native:/sources/poky/meta/recipes-devtools/e2fsprogs/<a =
href=3D"http://e2fsprogs_1.43.8.bb" =
target=3D"_blank">e2fsprogs_1.43.8.bb</a>:do_patch)<br>&gt; NOTE: recipe =
e2fsprogs-native-1.43.8-r0: task do_patch: Started<br>&gt; NOTE: Running =
task 1413 of 2707 <br>&gt; =
(/sources/poky/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.43.8.bb:do_pat=
ch)<br>&gt; NOTE: recipe e2fsprogs-1.43.8-r0: task do_patch: =
Started<br>&gt; ERROR: e2fsprogs-native-1.43.8-r0 do_patch: Command =
Error: 'quilt --quiltrc<br>&gt; Applying patch =
misc_create_inode.c-label_rootfs.patch<br>&gt; patching file =
misc/create_inode.c<br>&gt; Hunk #1 FAILED at 979.<br>&gt; Hunk #2 =
FAILED at 987.<br>&gt; <br>&gt; Sinan<br>&gt; -- <br>&gt; =
_______________________________________________<br>&gt; yocto mailing =
list<br>&gt; <a href=3D"mailto:yocto@yoctoproject.org" =
target=3D"_blank">yocto@yoctoproject.org</a><br>&gt; <a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br><b=
r>-- <br>_______________________________________________<br>yocto =
mailing list<br><a href=3D"mailto:yocto@yoctoproject.org" =
target=3D"_blank">yocto@yoctoproject.org</a><br><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><o:p><=
/o:p></p></blockquote></div></div></div></div></body></html>

------=_NextPart_000_004E_01D466AE.901F4CA0--

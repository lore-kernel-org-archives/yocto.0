Return-Path: <sean.liming@annabooks.com>
Received: from mail32c40.carrierzone.com (mail32c40.carrierzone.com
	[209.235.156.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEAEFE01275
	for <yocto@yoctoproject.org>; Fri,  9 Nov 2012 08:37:48 -0800 (PST)
X-Authenticated-User: sean.liming.annabooks.com
Received: from Sean7 (cpe-76-95-171-22.socal.res.rr.com [76.95.171.22])
	(authenticated bits=0)
	by mail32c40.carrierzone.com (8.13.6/8.13.1) with ESMTP id
	qA9GbgUF011087; Fri, 9 Nov 2012 16:37:44 +0000
From: "Sean Liming" <sean.liming@annabooks.com>
To: "'Georgescu, Alexandru C'" <alexandru.c.georgescu@intel.com>,
	<yocto@yoctoproject.org>
References: <000301cdbe44$ace11c60$06a35520$@annabooks.com>
	<1FFB62CE8AEB0D4298B51122D8903E961672353D@IRSMSX104.ger.corp.intel.com>
In-Reply-To: <1FFB62CE8AEB0D4298B51122D8903E961672353D@IRSMSX104.ger.corp.intel.com>
Date: Fri, 9 Nov 2012 08:37:31 -0800
Message-ID: <000801cdbe98$853b87f0$8fb297d0$@annabooks.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AQG9bfGi26p8VNfKL2nIUFx5vEz9OAGkEAe3l/Uz7KA=
X-CSC: 0
X-CHA: v=2.0 cv=C8ReP3z+ c=1 sm=1 a=RqNIojzclRO/fVsPhA7IgQ==:17
	a=22GXwuBOM20A:10 a=_DgR7O7FQkkA:10 a=IjdlZ_XXAAAA:8 a=56imOTf_6jMA:10
	a=QyXUC8HyAAAA:8 a=iGHA9ds3AAAA:8 a=r9RRSk83nPg52ob5CKcA:9
	a=CjuIK1q_8ugA:10 a=FCaQVidmf_IA:10 a=nHK3ipOpxeAA:10 a=DWcHd_tN-00A:10
	a=dGJ0OcVc7YAA:10 a=XDKM753qmDAA:10 a=yMhMjlubAAAA:8 a=SSmOFEACAAAA:8
	a=dznfk49cwjuGK4KwkPkA:9 a=gKO2Hq4RSVkA:10 a=UiCQ7L4-1S4A:10
	a=hTZeC7Yk6K0A:10 a=frz4AuCg-hUA:10 a=NWVoK91CQyQA:10
	a=vl4yuEpbPJJIW113:21 a=RqNIojzclRO/fVsPhA7IgQ==:117
X-CTCH-SenderID: 76.95.171.22
X-CTCH-SenderID-TotalMessages: 1
X-CTCH-SenderID-TotalSpam: 0
X-CTCH-SenderID-TotalSuspected: 0
X-CTCH-SenderID-TotalBulk: 0
X-CTCH-SenderID-TotalConfirmed: 0
X-CTCH-SenderID-TotalRecipients: 0
X-CTCH-SenderID-TotalVirus: 0
Subject: Re: Cannot Compile Application in Eclipse IDE Juno
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 09 Nov 2012 16:37:49 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0009_01CDBE55.771847F0"
Content-Language: en-us

------=_NextPart_000_0009_01CDBE55.771847F0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

 

Do I have to use Qemu? Can I use my target's rootfs? 

 

If I can use my target's rootfs, how do I extract the SDK?
runqemu-extract-sdk?

 

Regards,

 

Sean Liming

Owner

Annabooks

Tel: 714-970-7523 / Cell: 858-774-3176

 

From: Georgescu, Alexandru C [mailto:alexandru.c.georgescu@intel.com] 
Sent: Friday, November 09, 2012 8:21 AM
To: yocto@yoctoproject.org
Cc: Sean Liming
Subject: RE: [yocto] Cannot Compile Application in Eclipse IDE Juno

 

Hi Sean,

There may be a problem with your sysroot setup. Please make sure you have
set it correctly by following the tutorial from here:
http://www.yoctoproject.org/docs/current/adt-manual/adt-manual.html#extracti
ng-the-root-filesystem

 

Regards,

--

Alexandru Georgescu

 

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
On Behalf Of Sean Liming
Sent: Friday, November 09, 2012 08:37
To: yocto@yoctoproject.org
Subject: [yocto] Cannot Compile Application in Eclipse IDE Juno

 

 

Yocto 1.3 Danny

Target: n450 Black Sand

Eclipse: Juno C/C++ Developers

 

After going through the steps to setup the ADT and Eclipse plugin, I am
trying to compile the Hello World application based on the Hello World ANSI
C Autotools Project type. I think I have the ADT Preference set correctly.
It is not complaining about a missing tool chain.

 

Compiling results in errors:

 

Compiler cannot create executable in /home/sean/workspace/HelloADT -
Configuration problem

Make *** No rules to make target 'all' - C/C++ problem

 

What am I missing?

 

Regards,

 

Sean 

 


------=_NextPart_000_0009_01CDBE55.771847F0
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><META =
HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 14 =
(filtered medium)"><style><!--
/* Font Definitions */
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
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
span.EmailStyle21
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>Do I have to use Qemu? =
Can I use my target&#8217;s rootfs? <o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>If I can use my =
target&#8217;s rootfs, how do I extract the SDK? =
runqemu-extract-sdk?<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><div><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'>Regards,<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>Sean =
Liming<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Owner<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'>Annabooks<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>Tel: 714-970-7523 / =
Cell: 858-774-3176<o:p></o:p></span></p></div><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><div =
style=3D'border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt'><div><div style=3D'border:none;border-top:solid #B5C4DF =
1.0pt;padding:3.0pt 0in 0in 0in'><p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>From:</span>=
</b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'> =
Georgescu, Alexandru C [mailto:alexandru.c.georgescu@intel.com] =
<br><b>Sent:</b> Friday, November 09, 2012 8:21 AM<br><b>To:</b> =
yocto@yoctoproject.org<br><b>Cc:</b> Sean Liming<br><b>Subject:</b> RE: =
[yocto] Cannot Compile Application in Eclipse IDE =
Juno<o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Hi Sean,<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>There may be a problem =
with your sysroot setup. Please make sure you have set it correctly by =
following the tutorial from here: <a =
href=3D"http://www.yoctoproject.org/docs/current/adt-manual/adt-manual.ht=
ml#extracting-the-root-filesystem">http://www.yoctoproject.org/docs/curre=
nt/adt-manual/adt-manual.html#extracting-the-root-filesystem</a><o:p></o:=
p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'>Regards,<o:p></o:p></span></p><div><p =
class=3DMsoNormal><b><span =
style=3D'font-size:8.0pt;color:#7F7F7F'>--<o:p></o:p></span></b></p><p =
class=3DMsoNormal><b><span =
style=3D'font-size:8.0pt;color:#7F7F7F'>Alexandru =
Georgescu<o:p></o:p></span></b></p></div><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><div><div =
style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in'><p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>From:</span>=
</b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'> =
<a =
href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoproject=
.org</a> [<a =
href=3D"mailto:yocto-bounces@yoctoproject.org">mailto:yocto-bounces@yocto=
project.org</a>] <b>On Behalf Of </b>Sean Liming<br><b>Sent:</b> Friday, =
November 09, 2012 08:37<br><b>To:</b> <a =
href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br><b>S=
ubject:</b> [yocto] Cannot Compile Application in Eclipse IDE =
Juno<o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Yocto 1.3 =
Danny<o:p></o:p></p><p class=3DMsoNormal>Target: n450 Black =
Sand<o:p></o:p></p><p class=3DMsoNormal>Eclipse: Juno C/C++ =
Developers<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>After going through the steps to setup the ADT and =
Eclipse plugin, I am trying to compile the Hello World application based =
on the Hello World ANSI C Autotools Project type. I think I have the ADT =
Preference set correctly. It is not complaining about a missing tool =
chain.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Compiling results in errors:<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Compiler =
cannot create executable in /home/sean/workspace/HelloADT &#8211; =
Configuration problem<o:p></o:p></p><p class=3DMsoNormal>Make *** No =
rules to make target &#8216;all&#8217; &#8211; C/C++ =
problem<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>What am I missing?<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Regards,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Sean =
<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></div></body></html>

------=_NextPart_000_0009_01CDBE55.771847F0--

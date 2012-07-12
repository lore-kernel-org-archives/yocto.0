Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8279E00347
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2012 08:04:38 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 12 Jul 2012 08:04:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; 
	d="scan'208,217";a="191781984"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga002.fm.intel.com with ESMTP; 12 Jul 2012 08:04:38 -0700
Received: from orsmsx105.amr.corp.intel.com (10.22.225.132) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 12 Jul 2012 08:04:38 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.93]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.133]) with mapi id
	14.01.0355.002; Thu, 12 Jul 2012 08:04:37 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: James Abernathy <jfabernathy@gmail.com>, Bruce Ashfield
	<bruce.ashfield@gmail.com>
Thread-Topic: [yocto] menuconfig vs. config fragments?
Thread-Index: AQHNXb8mNdAd3wQ2Bk2G4EucM51mY5chOOGAgAAXzICAAAGWAIAACtoAgARmlzA=
Date: Thu, 12 Jul 2012 15:04:37 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A3970A@ORSMSX101.amr.corp.intel.com>
References: <43492210-601B-467E-8BC2-8CDD691669A4@gmail.com>
	<CAK18fxGJzFanh5UY-nrj_hVReCGeGSVv5c7=PaH_KRXhZ2BNwA@mail.gmail.com>
	<CADkTA4N6WEQMd+wq_mA38oncby_AMiiCX0im+wdDb9UP6R28qA@mail.gmail.com>
	<CANFv2E=PAjjxOVX3x4rP7=1Pw_Y3pjB+p3QYsYOz3nfY3k2Nfw@mail.gmail.com>
	<CANFv2EnZCpSKbdAgD3gAd17DZrOywiDb_wMjxq7VpsXgb7vEig@mail.gmail.com>
In-Reply-To: <CANFv2EnZCpSKbdAgD3gAd17DZrOywiDb_wMjxq7VpsXgb7vEig@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: menuconfig vs. config fragments?
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
X-List-Received-Date: Thu, 12 Jul 2012 15:04:39 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946A3970AORSMSX101amrcor_"

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946A3970AORSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Jim,

This needs to be fixed in the BSP Guide.  I will handle that.

Thanks,
Scott

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of James Abernathy
Sent: Monday, July 09, 2012 5:52 AM
To: Bruce Ashfield
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] menuconfig vs. config fragments?


On Mon, Jul 9, 2012 at 8:13 AM, James Abernathy <jfabernathy@gmail.com<mail=
to:jfabernathy@gmail.com>> wrote:

On Mon, Jul 9, 2012 at 8:07 AM, Bruce Ashfield <bruce.ashfield@gmail.com<ma=
ilto:bruce.ashfield@gmail.com>> wrote:
On Mon, Jul 9, 2012 at 6:42 AM, Andrei Gherzan <andrei@gherzan.ro<mailto:an=
drei@gherzan.ro>> wrote:
> On Mon, Jul 9, 2012 at 1:39 PM, James Abernathy <jfabernathy@gmail.com<ma=
ilto:jfabernathy@gmail.com>>
> wrote:
>>
>> my goal of this test was to see if I could use the n450 BSP as a startin=
g
>> point for a BSP to support my Acer Aspire One n450 based netbook.  The
>> core-image-sato will boot from USB key on the netbook if I use the ZIP d=
rive
>> format for the USB key, but the current n450 BSP doesn't include the dri=
vers
>> for the networking hardware in the netbook.
>>
>> I found by testing, using the menuconfig option documented in the
>> Developer Manual Appendix B example, that I needed to add 2 parameters t=
o
>> the .config:
>>
>> CONFIG_ATH9K_PCI
>> CONFIG_ATL1C
>>
>> To make this change easier to manage and more permanent, I thought about
>> creating a config fragment.  I put the config parameters in a file,
>> myconfig, in the linux-yocto directory at the same level as the
>> linux-yocto_3.2.bbappend file, where I added:
>>
>> SRC_URI +=3D "file//myconfig"
>>
>
> Try to use myconfig.cfg.
This would be the key part, since as a few noted, .cfg is what
triggers the fragment
processing to actually notice the file and stack it after the base /
defined configuration.

Cheers,

Bruce

I'm testing it now, but it sound like the problem.  So the Developer Manual=
 uses the .cfg in the example, but the BSP Guide does not.  That's an area =
to fix.  Since this is critical,it needs to be pointed out, in my mind.

JIm A
Adding the .cfg extension does indeed fix my problem. Thanks for the help.

Jim A


>
> @g
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto
>


--
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"



--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946A3970AORSMSX101amrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style><!--
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
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Jim,
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">This needs to be fixed in=
 the BSP Guide.&nbsp; I will handle that.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Thanks,
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Scott<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> yocto-bo=
unces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>James Abernathy<br>
<b>Sent:</b> Monday, July 09, 2012 5:52 AM<br>
<b>To:</b> Bruce Ashfield<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] menuconfig vs. config fragments?<o:p></o:p></sp=
an></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">On Mon, Jul 9, 2012 at 8:13 AM, James Abernathy &lt;=
<a href=3D"mailto:jfabernathy@gmail.com" target=3D"_blank">jfabernathy@gmai=
l.com</a>&gt; wrote:<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><o:p>&nbsp;</o:p></p>
<div>
<div>
<div>
<p class=3D"MsoNormal">On Mon, Jul 9, 2012 at 8:07 AM, Bruce Ashfield &lt;<=
a href=3D"mailto:bruce.ashfield@gmail.com" target=3D"_blank">bruce.ashfield=
@gmail.com</a>&gt; wrote:<o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">On Mon, Jul 9, 2012 a=
t 6:42 AM, Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro" target=
=3D"_blank">andrei@gherzan.ro</a>&gt; wrote:<br>
&gt; On Mon, Jul 9, 2012 at 1:39 PM, James Abernathy &lt;<a href=3D"mailto:=
jfabernathy@gmail.com" target=3D"_blank">jfabernathy@gmail.com</a>&gt;<br>
&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; my goal of this test was to see if I could use the n450 BSP as a s=
tarting<br>
&gt;&gt; point for a BSP to support my Acer Aspire One n450 based netbook. =
&nbsp;The<br>
&gt;&gt; core-image-sato will boot from USB key on the netbook if I use the=
 ZIP drive<br>
&gt;&gt; format for the USB key, but the current n450 BSP doesn't include t=
he drivers<br>
&gt;&gt; for the networking hardware in the netbook.<br>
&gt;&gt;<br>
&gt;&gt; I found by testing, using the menuconfig option documented in the<=
br>
&gt;&gt; Developer Manual Appendix B example, that I needed to add 2 parame=
ters to<br>
&gt;&gt; the .config:<br>
&gt;&gt;<br>
&gt;&gt; CONFIG_ATH9K_PCI<br>
&gt;&gt; CONFIG_ATL1C<br>
&gt;&gt;<br>
&gt;&gt; To make this change easier to manage and more permanent, I thought=
 about<br>
&gt;&gt; creating a config fragment. &nbsp;I put the config parameters in a=
 file,<br>
&gt;&gt; myconfig, in the linux-yocto directory at the same level as the<br=
>
&gt;&gt; linux-yocto_3.2.bbappend file, where I added:<br>
&gt;&gt;<br>
&gt;&gt; SRC_URI &#43;=3D &quot;file//myconfig&quot;<br>
&gt;&gt;<br>
&gt;<br>
&gt; Try to use myconfig.cfg.<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal">This would be the key part, since as a few noted, .c=
fg is what<br>
triggers the fragment<br>
processing to actually notice the file and stack it after the base /<br>
defined configuration.<br>
<br>
Cheers,<br>
<br>
Bruce<o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</div>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">I'm testing it now, b=
ut it sound like the problem.&nbsp; So the Developer Manual uses the .cfg i=
n the example, but the BSP Guide does not.&nbsp; That's an area to fix.&nbs=
p; Since this is critical,it needs to be pointed out,
 in my mind.<br>
<br>
JIm A<o:p></o:p></p>
</div>
</div>
<div>
<p class=3D"MsoNormal">Adding the .cfg extension does indeed fix my problem=
. Thanks for the help.<br>
<br>
Jim A<br>
<br>
&nbsp;<o:p></o:p></p>
</div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-right:0in">
<div>
<div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-right:0in">
<div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">&gt;<br>
&gt; @g<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
<br>
<br>
<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><span style=3D"color:#888888">--<br>
&quot;Thou shalt not follow the NULL pointer, for chaos and madness await<b=
r>
thee at its end&quot;</span><o:p></o:p></p>
</blockquote>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</blockquote>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946A3970AORSMSX101amrcor_--

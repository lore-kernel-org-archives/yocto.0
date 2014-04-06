Return-Path: <roy.beiser@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AC03E00C2C
	for <yocto@yoctoproject.org>; Sun,  6 Apr 2014 04:41:30 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 06 Apr 2014 04:41:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,804,1389772800"; 
	d="scan'208,217";a="515692000"
Received: from fmsmsx103.amr.corp.intel.com ([10.19.9.34])
	by orsmga002.jf.intel.com with ESMTP; 06 Apr 2014 04:40:59 -0700
Received: from hasmsx105.ger.corp.intel.com (10.184.198.19) by
	FMSMSX103.amr.corp.intel.com (10.19.9.34) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Sun, 6 Apr 2014 04:40:59 -0700
Received: from hasmsx104.ger.corp.intel.com ([169.254.4.164]) by
	HASMSX105.ger.corp.intel.com ([169.254.1.130]) with mapi id
	14.03.0123.003; Sun, 6 Apr 2014 14:40:56 +0300
From: "Beiser, Roy" <roy.beiser@intel.com>
To: "Woodyatt, James" <james.woodyatt@intel.com>
Thread-Topic: [yocto] Yocto cross-compile for Galileo
Thread-Index: Ac9M0t7W1qikFWhmTrOHmu96rlVhMABaG2iAANRrYnA=
Date: Sun, 6 Apr 2014 11:40:56 +0000
Message-ID: <CA806B38124012458512340FD751E651039D8D9B@HASMSX104.ger.corp.intel.com>
References: <CA806B38124012458512340FD751E651039D2CCE@HASMSX104.ger.corp.intel.com>
	<57296EEE-39D1-4C56-9891-C117C4526DEB@intel.com>
In-Reply-To: <57296EEE-39D1-4C56-9891-C117C4526DEB@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.184.70.13]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto cross-compile for Galileo
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
X-List-Received-Date: Sun, 06 Apr 2014 11:41:31 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CA806B38124012458512340FD751E651039D8D9BHASMSX104gercor_"

--_000_CA806B38124012458512340FD751E651039D8D9BHASMSX104gercor_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Thanks James, I'll give it a try .
Roy

From: Woodyatt, James
Sent: Wednesday, April 02, 2014 2:18 AM
To: Beiser, Roy
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Yocto cross-compile for Galileo

Mr. Beiser-

I don't think the specifics you want have been written down. We haven't inv=
estigated using Eclipse for cross-development with Galileo, but it seems re=
asonable to expect that you should be able to follow the instructions in th=
e Quark Board Support Package Guide to build a toolchain.  Where you will e=
ncounter trouble is getting Eclipse to download, run and debug software on =
the Galileo board- which has a custom serial port protocol for communicatin=
g with the Arduino IDE for Galileo that basically supports downloading sket=
ches and installing new capsule firmware images, and that's it.


-
james woodyatt <james.woodyatt@intel.com<mailto:james.woodyatt@intel.com>>
Software Architect, New Devices Group

On Mar 31, 2014, at 4:23, Beiser, Roy <roy.beiser@intel.com<mailto:roy.beis=
er@intel.com>> wrote:


Hi Jessica,

I'm looking for a document which will describe how to set-up Eclipse on Ubu=
ntu 12.04 for cross-compiling applications for Galileo.
The standard Yocto documents (like the one attached) are lacking the specif=
ics for Galileo .

Thanks,

Roy Beiser
Network Engineer, CCIE #22724, PMP
IT / Network Access Engineering
Telephone : +972-8-612-6200
Mobile      : +972-547-886-200




---------------------------------------------------------------------
Intel Electronics Ltd.

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.
<Yocto Project Eclipse plug-in and Developer Tools Hands-on Lab.pdf>--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto

---------------------------------------------------------------------
Intel Electronics Ltd.

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.

--_000_CA806B38124012458512340FD751E651039D8D9BHASMSX104gercor_
Content-Type: text/html; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Helvetica;
	panose-1:2 11 6 4 2 2 2 2 2 4;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Comic Sans MS";
	panose-1:3 15 7 2 3 3 2 2 2 4;}
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
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
span.apple-converted-space
	{mso-style-name:apple-converted-space;}
span.EmailStyle19
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
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Thanks James, I&#8217;ll =
give it a try .<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Roy<o:p></o:p></span></p>
<p class=3D"MsoNormal"><a name=3D"_MailEndCompose"><span style=3D"font-size=
:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497=
D"><o:p>&nbsp;</o:p></span></a></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-=
size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"> Woodya=
tt, James
<br>
<b>Sent:</b> Wednesday, April 02, 2014 2:18 AM<br>
<b>To:</b> Beiser, Roy<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Yocto cross-compile for Galileo<o:p></o:p></spa=
n></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Mr. Beiser&#8212;<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">I don&#8217;t think the specifics you want have been=
 written down. We haven&#8217;t investigated using Eclipse for cross-develo=
pment with Galileo, but it seems reasonable to expect that you should be ab=
le to follow the instructions in the Quark Board
 Support Package Guide to build a toolchain. &nbsp;Where you will encounter=
 trouble is getting Eclipse to download, run and debug software on the Gali=
leo board&#8212; which has a custom serial port protocol for communicating =
with the Arduino IDE for Galileo that basically
 supports downloading sketches and installing new capsule firmware images, =
and that&#8217;s it.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">&#8212;<br>
james woodyatt &lt;<a href=3D"mailto:james.woodyatt@intel.com">james.woodya=
tt@intel.com</a>&gt;<br>
Software Architect, New Devices Group <o:p></o:p></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal">On Mar 31, 2014, at 4:23, Beiser, Roy &lt;<a href=3D=
"mailto:roy.beiser@intel.com">roy.beiser@intel.com</a>&gt; wrote:<o:p></o:p=
></p>
</div>
<p class=3D"MsoNormal"><br>
<br>
<o:p></o:p></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">Hi Jessica,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">I&#8217;m looking for a document which =
will describe how to set-up Eclipse on Ubuntu 12.04 for cross-compiling app=
lications for Galileo.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">The standard Yocto documents (like the =
one attached) are lacking the specifics for Galileo .<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">Thanks,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;<o:p></o:p></span></p>
</div>
<div style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
mic Sans MS&quot;;color:blue">Roy Beiser<br>
Network Engineer, CCIE #22724, PMP<br>
IT / Network Access Engineering<br>
Telephone : &#43;972-8-612-6200</span><span class=3D"apple-converted-space"=
><span style=3D"color:blue">&nbsp;</span></span><span style=3D"color:blue">=
<br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Comic Sans MS&quot=
;;color:blue">Mobile&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &#43;972-547-886-200</=
span><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;<o:p></o:p></span></p>
</div>
<p><span style=3D"font-size:9.0pt;font-family:&quot;Helvetica&quot;,&quot;s=
ans-serif&quot;">----------------------------------------------------------=
-----------<br>
Intel Electronics Ltd.<o:p></o:p></span></p>
<p><span style=3D"font-size:9.0pt;font-family:&quot;Helvetica&quot;,&quot;s=
ans-serif&quot;">This e-mail and any attachments may contain confidential m=
aterial for<br>
the sole use of the intended recipient(s). Any review or distribution<br>
by others is strictly prohibited. If you are not the intended<br>
recipient, please contact the sender and delete all copies.<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Hel=
vetica&quot;,&quot;sans-serif&quot;">&lt;Yocto Project Eclipse plug-in and =
Developer Tools Hands-on Lab.pdf&gt;--<span class=3D"apple-converted-space"=
>&nbsp;</span><br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoc=
toproject.org/listinfo/yocto</a><o:p></o:p></span></p>
</div>
</blockquote>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
<p>---------------------------------------------------------------------<br>
Intel Electronics Ltd.</p>

<p>This e-mail and any attachments may contain confidential material for<br>
the sole use of the intended recipient(s). Any review or distribution<br>
by others is strictly prohibited. If you are not the intended<br>
recipient, please contact the sender and delete all copies.</p></body>
</html>

--_000_CA806B38124012458512340FD751E651039D8D9BHASMSX104gercor_--

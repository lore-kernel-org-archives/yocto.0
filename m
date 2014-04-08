Return-Path: <cristian.iorga@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 169FCE00BEF
	for <yocto@yoctoproject.org>; Tue,  8 Apr 2014 13:19:18 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 08 Apr 2014 10:39:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,819,1389772800"; 
	d="scan'208,217";a="489384484"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by orsmga001.jf.intel.com with ESMTP; 08 Apr 2014 10:44:33 -0700
Received: from irsmsx151.ger.corp.intel.com (163.33.192.59) by
	IRSMSX102.ger.corp.intel.com (163.33.3.155) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 8 Apr 2014 18:44:32 +0100
Received: from irsmsx105.ger.corp.intel.com ([169.254.7.78]) by
	IRSMSX151.ger.corp.intel.com ([163.33.192.59]) with mapi id
	14.03.0123.003; Tue, 8 Apr 2014 18:44:32 +0100
From: "Iorga, Cristian" <cristian.iorga@intel.com>
To: Bhushan S <bhushan.az@gmail.com>
Thread-Topic: [yocto] copying media files to qemux86
Thread-Index: AQHPTmO9vtm/tDnFn02ifJIyjYoDKJr+PHgwgAL5AACAAEa4UIAGFywAgAB0CuA=
Date: Tue, 8 Apr 2014 17:44:31 +0000
Message-ID: <969F26A8BAB325438E7EB80D3C3134FB1CE7AFA5@IRSMSX105.ger.corp.intel.com>
References: <CAG2NicKU0K+KVJ6XJgb9-zatAq81qtDxrJtC_g2W8AZ7nGtrig@mail.gmail.com>
	<969F26A8BAB325438E7EB80D3C3134FB1CE7762E@IRSMSX105.ger.corp.intel.com>
	<CAG2NicJgs3qFJ5-mhDJUzegrE30NuN2Ci6-BG=WhbKzdSjmQQg@mail.gmail.com>
	<969F26A8BAB325438E7EB80D3C3134FB1CE79221@IRSMSX105.ger.corp.intel.com>
	<CAG2NicJbdvb75WFKFcAeMQFywYkdE7jLbB4rp3dibzHXTi92Dw@mail.gmail.com>
In-Reply-To: <CAG2NicJbdvb75WFKFcAeMQFywYkdE7jLbB4rp3dibzHXTi92Dw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: copying media files to qemux86
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
X-List-Received-Date: Tue, 08 Apr 2014 20:19:18 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_969F26A8BAB325438E7EB80D3C3134FB1CE7AFA5IRSMSX105gercor_"

--_000_969F26A8BAB325438E7EB80D3C3134FB1CE7AFA5IRSMSX105gercor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,
Sorry, what exactly to enable in ./configure?
Regards,
Cristian


From: Bhushan S [mailto:bhushan.az@gmail.com]
Sent: Tuesday, April 8, 2014 2:48 PM
To: Iorga, Cristian
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] copying media files to qemux86

Hello Cristian,

Had a similar doubt as described by Paul in Bug 5589<https://bugzilla.yocto=
project.org/show_bug.cgi?id=3D5589>.
Basically i wanted the "audiotestsrc" and "videotestsrc" plugins from gst-p=
lugins-base and even though *-base was configured with those options,
I still didn't see it in gst-inspect on qemux86.
only after I added it to "CORE_IMAGE_EXTRA_INSTALL" i got it in the final i=
mage.

Normal understanding was to enable it while ./configure and that should wor=
k. Am I missing something here ?

Regards,
--bhushan


On Fri, Apr 4, 2014 at 7:20 PM, Iorga, Cristian <cristian.iorga@intel.com<m=
ailto:cristian.iorga@intel.com>> wrote:
Hello,
What kind of troubles with gst-plugins-base?
See YB5589: https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5589
Maybe there is a hint in there, and the meta gst package will help..
/Cristian

From: Bhushan S [mailto:bhushan.az@gmail.com<mailto:bhushan.az@gmail.com>]
Sent: Friday, April 4, 2014 1:35 PM
To: Iorga, Cristian
Cc: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: Re: [yocto] copying media files to qemux86

Yes Cristian.
My earlier attempt with scp was unsuccessful (probably lack of ssh support)=
.

Currently I'm stuck with enabling gst-plugins-ugly package and plugins from=
 gst-plugins-base package


On Wed, Apr 2, 2014 at 5:44 PM, Iorga, Cristian <cristian.iorga@intel.com<m=
ailto:cristian.iorga@intel.com>> wrote:
Hello,

By  media files, you mean music or video files?
If so, depending on the image (if it has ssh support), you can copy into /h=
ome/root using scp after you boot the image.
I have use this to test mp3 playback, for example with some audio files.

Regards,
Cristian Iorga
YP
Intel Corporation

From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>=
 [mailto:yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.o=
rg>] On Behalf Of Bhushan Shirsath
Sent: Wednesday, April 2, 2014 2:07 PM
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: [yocto] copying media files to qemux86

Hi,

I'm able to successfully launch "runqemu qemux86".
Now i intend to test the media libs built using Yocto on qemu currently.
Is it possible to transfer/copy media files to qemux86 emulator ?

I tried copying files to tmp/sysroots/qemux86/ but it didn't work.

Thanks,
--bhushan



--_000_969F26A8BAB325438E7EB80D3C3134FB1CE7AFA5IRSMSX105gercor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
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
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
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
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hello,<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Sorry, what exactly to en=
able in ./configure?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Regards,<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Cristian<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><a name=3D"_MailEndCompose"><span style=3D"font-size=
:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497=
D"><o:p>&nbsp;</o:p></span></a></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b><span style=3D"font-si=
ze:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;">From:</sp=
an></b><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quo=
t;sans-serif&quot;"> Bhushan S [mailto:bhushan.az@gmail.com]
<br>
<b>Sent:</b> Tuesday, April 8, 2014 2:48 PM<br>
<b>To:</b> Iorga, Cristian<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] copying media files to qemux86<o:p></o:p></span=
></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">Hello Cristian,<o:p></o:p=
></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">Had a similar doubt as de=
scribed by Paul in&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D5589">Bug 5589</a>.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">Basically i wanted the &q=
uot;audiotestsrc&quot; and &quot;videotestsrc&quot; plugins from gst-plugin=
s-base and even though *-base was configured with those options,&nbsp;<o:p>=
</o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">I still didn't see it in =
gst-inspect on qemux86.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">only after I added it to =
&quot;CORE_IMAGE_EXTRA_INSTALL&quot; i got it in the final image.<o:p></o:p=
></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">Normal understanding was =
to enable it while ./configure and that should work. Am I missing something=
 here ?&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">Regards,<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">--bhushan<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
</div>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:0in;margin-right:0in;mar=
gin-bottom:12.0pt;margin-left:.5in">
<o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">On Fri, Apr 4, 2014 at 7:=
20 PM, Iorga, Cristian &lt;<a href=3D"mailto:cristian.iorga@intel.com" targ=
et=3D"_blank">cristian.iorga@intel.com</a>&gt; wrote:<o:p></o:p></p>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-right:0in">
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:.5in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1F497D">Hello,</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:.5in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1F497D">What kind of troubles with
</span>gst-plugins-base?<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:.5in">
See YB5589: <a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
5589" target=3D"_blank">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5589</a><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:.5in">
Maybe there is a hint in there, and the meta gst package will help..<o:p></=
o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:.5in">
/Cristian<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:.5in">
<a name=3D"1452d02992ac7263__MailEndCompose"><span style=3D"font-size:11.0p=
t;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">&nb=
sp;</span></a><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:1.0in">
<b><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sa=
ns-serif&quot;">From:</span></b><span style=3D"font-size:11.0pt;font-family=
:&quot;Calibri&quot;,&quot;sans-serif&quot;"> Bhushan S [mailto:<a href=3D"=
mailto:bhushan.az@gmail.com" target=3D"_blank">bhushan.az@gmail.com</a>]
<br>
<b>Sent:</b> Friday, April 4, 2014 1:35 PM<br>
<b>To:</b> Iorga, Cristian<br>
<b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] copying media files to qemux86</span><o:p></o:p=
></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:1.0in">
&nbsp;<o:p></o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:1.0in">
Yes Cristian.<o:p></o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:1.0in">
My earlier attempt with scp was unsuccessful (probably lack of ssh support)=
.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:1.0in">
&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:1.0in">
Currently I'm stuck with enabling gst-plugins-ugly package and plugins from=
 gst-plugins-base package<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:1.0in">
&nbsp;<o:p></o:p></p>
</div>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;margin-bottom:12.0p=
t;margin-left:1.0in">
&nbsp;<o:p></o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:1.0in">
On Wed, Apr 2, 2014 at 5:44 PM, Iorga, Cristian &lt;<a href=3D"mailto:crist=
ian.iorga@intel.com" target=3D"_blank">cristian.iorga@intel.com</a>&gt; wro=
te:<o:p></o:p></p>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0in;margin-=
bottom:5.0pt">
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:1.0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1F497D">Hello,</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:1.0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:1.0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1F497D">By&nbsp; media files, you mean music or video fi=
les?</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:1.0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1F497D">If so, depending on the image (if it has ssh sup=
port), you can copy into /home/root using scp after you boot the image.</sp=
an><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:1.0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1F497D">I have use this to test mp3 playback, for exampl=
e with some audio files.</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:1.0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:1.0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1F497D">Regards,</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:1.0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1F497D">Cristian Iorga</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:1.0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1F497D">YP</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:1.0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1F497D">Intel Corporation</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:1.0in">
<a name=3D"1452d02992ac7263_145225d2fee78011__MailE"><span style=3D"font-si=
ze:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F4=
97D">&nbsp;</span></a><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:1.5in">
<b><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sa=
ns-serif&quot;">From:</span></b><span style=3D"font-size:11.0pt;font-family=
:&quot;Calibri&quot;,&quot;sans-serif&quot;">
<a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">yocto-b=
ounces@yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctopr=
oject.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a>]
<b>On Behalf Of </b>Bhushan Shirsath<br>
<b>Sent:</b> Wednesday, April 2, 2014 2:07 PM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> [yocto] copying media files to qemux86</span><o:p></o:p></p=
>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:1.5in">
&nbsp;<o:p></o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:1.5in">
Hi,<o:p></o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:1.5in">
&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:1.5in">
I'm able to successfully launch &quot;runqemu qemux86&quot;.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:1.5in">
Now i intend to test the media libs built using Yocto on qemu currently.<o:=
p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:1.5in">
Is it possible to transfer/copy media files to qemux86 emulator ?<o:p></o:p=
></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:1.5in">
&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:1.5in">
I tried copying files to&nbsp;tmp/sysroots/qemux86/ but it didn't work.<o:p=
></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:1.5in">
&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:1.5in">
Thanks,<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:1.5in">
--bhushan<o:p></o:p></p>
</div>
</div>
</div>
</div>
</div>
</div>
</blockquote>
</div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:1.0in">
&nbsp;<o:p></o:p></p>
</div>
</div>
</div>
</div>
</div>
</blockquote>
</div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
</div>
</div>
</body>
</html>

--_000_969F26A8BAB325438E7EB80D3C3134FB1CE7AFA5IRSMSX105gercor_--

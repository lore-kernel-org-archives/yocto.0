Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0428E01408
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 07:12:56 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 24 Jun 2013 07:12:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,928,1363158000"; 
	d="scan'208,217";a="358683371"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by orsmga002.jf.intel.com with ESMTP; 24 Jun 2013 07:12:52 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Mon, 24 Jun 2013 07:12:51 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.181]) by
	ORSMSX153.amr.corp.intel.com ([169.254.12.24]) with mapi id
	14.03.0123.003; Mon, 24 Jun 2013 07:12:51 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Jerrod Peach <peachj@lexmark.com>
Thread-Topic: [yocto] Documenting YP Development Environment in more detail
	- user configuration
Thread-Index: Ac5uWGop+mI2fmjhR1eciv3x50rfAQCNXcvQACHhKwAADFJiYA==
Date: Mon, 24 Jun 2013 14:12:51 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF5148F@ORSMSX101.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF5130F@ORSMSX101.amr.corp.intel.com>
	<CA+QkY1A5haUkuhPGteJuyEE11JZ1Gdsr2_wA6x_ajzYbWzko1g@mail.gmail.com>
In-Reply-To: <CA+QkY1A5haUkuhPGteJuyEE11JZ1Gdsr2_wA6x_ajzYbWzko1g@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Documenting YP Development Environment in more detail - user configuration
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
X-List-Received-Date: Mon, 24 Jun 2013 14:12:56 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_41DEA4B02DBDEF40A0F3B6D0DDB123797FF5148FORSMSX101amrcor_"

--_000_41DEA4B02DBDEF40A0F3B6D0DDB123797FF5148FORSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Jerrod,

Thanks for the feedback in this area.  Your observations are pretty much in=
 line with what I got from Paul Eggleton, who is on the YP Team.  I am goin=
g to reduce what is revealed file-wise in the meta-yocto layer.  Turns out =
that auto.conf and site.conf are files that a user would have to hand-creat=
e if they even wanted them.  We happen to provide a sample for site.conf on=
ly.  The auto.conf file would be a file that could be created and written t=
o by an autobuilder.  The auto.conf file could contain settings that would =
be similar to what you would see in a local.conf file.  My understanding is=
 that it exists mainly for autobuilders to stuff things into.  I will note =
this in the section I'm developing here for this configuration stuff.

Machine, distro, and policies and all that type of configuration is going t=
o be covered in my next little submission that talks about layers and their=
 role regarding what they feed into the whole process.

Thanks,
Scott

From: Jerrod Peach [mailto:peachj@lexmark.com]
Sent: Monday, June 24, 2013 6:00 AM
To: Rifenbark, Scott M
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Documenting YP Development Environment in more detail =
- user configuration

Scott,

I think the general diagram looks pretty good, although I'd argue there's a=
 little too much detail in the file list being shown, or else some of this =
new stuff is going to be useful in 1.5 when it's not doing anything in 1.4.=
  Here are the files I see as excessive:

In meta-yocto:

  *   local.conf.example.extended
  *   site.conf.sample
  *   auto.conf (That's not even present in my 1.4 workspace.  Is this goin=
g to be something new in 1.5?)
In the build directory (these files aren't even present for me in 1.4):

  *   site.conf
  *   auto.conf
Also, I don't see anything specifying machines.  Do you want to break that =
out here, or are you thinking that's going to come into play somewhere else=
?  If you're thinking of breaking out machines elsewhere, I'd argue that di=
stros are on a similar level of detail and then also don't belong on this c=
hart.

Kind regards,

Jerrod

On Sun, Jun 23, 2013 at 11:52 PM, Rifenbark, Scott M <scott.m.rifenbark@int=
el.com<mailto:scott.m.rifenbark@intel.com>> wrote:
Hi,

I am going to start throwing these diagrams out to the mailing list and see=
 if I can get any feedback.  This attached figure dives into user configura=
tion.  Any and all discussion, correction, suggestions are welcome.

Scott

>-----Original Message-----
>From: Rifenbark, Scott M
>Sent: Friday, June 21, 2013 1:22 AM
>To: Paul Eggleton; Burton, Ross
>Subject: user configuration
>
>Paul and Ross,
>
>Attached is a sample figure that focuses on "User Configuration."  The
>illustration attempts to reveal where user configuration data comes from
>and what processes and user-driven commands are related to it.  Right
>now, BitBake is simply a box.
>
>If you can, give me some comments on this.  I would like to hear on
>level of detail as well as technical accuracy.
>
>Thanks,
>Scott
>
>Scott Rifenbark
>Intel Corporation
>Yocto Project Documentation
>503.712.2702<tel:503.712.2702>
>503.341.0418<tel:503.341.0418> (cell)


_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto


--_000_41DEA4B02DBDEF40A0F3B6D0DDB123797FF5148FORSMSX101amrcor_
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
/* List Definitions */
@list l0
	{mso-list-id:1582836761;
	mso-list-template-ids:-385855104;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1
	{mso-list-id:1881092395;
	mso-list-template-ids:-235001350;}
@list l1:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
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
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Jerrod,
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Thanks for the feedback i=
n this area.&nbsp; Your observations are pretty much in line with what I go=
t from Paul Eggleton, who is on the YP Team.&nbsp; I am going to reduce
 what is revealed file-wise in the meta-yocto layer.&nbsp; Turns out that a=
uto.conf and site.conf are files that a user would have to hand-create if t=
hey even wanted them.&nbsp; We happen to provide a sample for site.conf onl=
y.&nbsp; The auto.conf file would be a file that
 could be created and written to by an autobuilder.&nbsp; The auto.conf fil=
e could contain settings that would be similar to what you would see in a l=
ocal.conf file.&nbsp; My understanding is that it exists mainly for autobui=
lders to stuff things into.&nbsp; I will note this
 in the section I&#8217;m developing here for this configuration stuff.&nbs=
p; <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Machine, distro, and poli=
cies and all that type of configuration is going to be covered in my next l=
ittle submission that talks about layers and their role
 regarding what they feed into the whole process.<o:p></o:p></span></p>
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
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Jerrod P=
each [mailto:peachj@lexmark.com]
<br>
<b>Sent:</b> Monday, June 24, 2013 6:00 AM<br>
<b>To:</b> Rifenbark, Scott M<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Documenting YP Development Environment in more =
detail - user configuration<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">Scott,<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">I think the general diagram looks pretty good, altho=
ugh I'd argue there's a little too much detail in the file list being shown=
, or else some of this new stuff is going to be useful in 1.5 when it's not=
 doing anything in 1.4. &nbsp;Here are
 the files I see as excessive:<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">In meta-yocto:<o:p></o:p></p>
</div>
<div>
<ul type=3D"disc">
<li class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto;mso-list:l1 level1 lfo1">
local.conf.example.extended<o:p></o:p></li><li class=3D"MsoNormal" style=3D=
"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l1 level1 lfo1=
">
site.conf.sample<o:p></o:p></li><li class=3D"MsoNormal" style=3D"mso-margin=
-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l1 level1 lfo1">
auto.conf (That's not even present in my 1.4 workspace. &nbsp;Is this going=
 to be something new in 1.5?)<o:p></o:p></li></ul>
<div>
<p class=3D"MsoNormal">In the build directory (these files aren't even pres=
ent for me in 1.4):<o:p></o:p></p>
</div>
<div>
<ul type=3D"disc">
<li class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto;mso-list:l0 level1 lfo2">
site.conf<o:p></o:p></li><li class=3D"MsoNormal" style=3D"mso-margin-top-al=
t:auto;mso-margin-bottom-alt:auto;mso-list:l0 level1 lfo2">
auto.conf<o:p></o:p></li></ul>
<div>
<p class=3D"MsoNormal">Also, I don't see anything specifying machines. &nbs=
p;Do you want to break that out here, or are you thinking that's going to c=
ome into play somewhere else? &nbsp;If you're thinking of breaking out mach=
ines elsewhere, I'd argue that distros are on
 a similar level of detail and then also don't belong on this chart.<o:p></=
o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Kind regards,<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Jerrod<o:p></o:p></p>
</div>
</div>
</div>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">On Sun, Jun 23, 2013 at 11:52 PM, Rifenbark, Scott M=
 &lt;<a href=3D"mailto:scott.m.rifenbark@intel.com" target=3D"_blank">scott=
.m.rifenbark@intel.com</a>&gt; wrote:<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Hi,<br>
<br>
I am going to start throwing these diagrams out to the mailing list and see=
 if I can get any feedback. &nbsp;This attached figure dives into user conf=
iguration. &nbsp;Any and all discussion, correction, suggestions are welcom=
e.<br>
<br>
Scott<br>
<br>
&gt;-----Original Message-----<br>
&gt;From: Rifenbark, Scott M<br>
&gt;Sent: Friday, June 21, 2013 1:22 AM<br>
&gt;To: Paul Eggleton; Burton, Ross<br>
&gt;Subject: user configuration<br>
&gt;<br>
&gt;Paul and Ross,<br>
&gt;<br>
&gt;Attached is a sample figure that focuses on &quot;User Configuration.&q=
uot; &nbsp;The<br>
&gt;illustration attempts to reveal where user configuration data comes fro=
m<br>
&gt;and what processes and user-driven commands are related to it. &nbsp;Ri=
ght<br>
&gt;now, BitBake is simply a box.<br>
&gt;<br>
&gt;If you can, give me some comments on this. &nbsp;I would like to hear o=
n<br>
&gt;level of detail as well as technical accuracy.<br>
&gt;<br>
&gt;Thanks,<br>
&gt;Scott<br>
&gt;<br>
&gt;Scott Rifenbark<br>
&gt;Intel Corporation<br>
&gt;Yocto Project Documentation<br>
&gt;<a href=3D"tel:503.712.2702">503.712.2702</a><br>
&gt;<a href=3D"tel:503.341.0418">503.341.0418</a> (cell)<br>
<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><o:p></o:p></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</div>
</body>
</html>

--_000_41DEA4B02DBDEF40A0F3B6D0DDB123797FF5148FORSMSX101amrcor_--

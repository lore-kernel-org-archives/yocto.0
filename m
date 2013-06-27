Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA17CE0145C
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2013 06:34:19 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 27 Jun 2013 06:31:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,952,1363158000"; 
	d="png'150?scan'150,208,217,150";a="360479334"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by orsmga002.jf.intel.com with ESMTP; 27 Jun 2013 06:34:18 -0700
Received: from orsmsx155.amr.corp.intel.com (10.22.240.21) by
	ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 27 Jun 2013 06:34:18 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.181]) by
	ORSMSX155.amr.corp.intel.com ([169.254.7.224]) with mapi id
	14.03.0123.003; Thu, 27 Jun 2013 06:34:18 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Jerrod Peach <peachj@lexmark.com>
Thread-Topic: [yocto] Layer input
Thread-Index: Ac5xoIa8qgTrlOjLRMKaa4xXGNNS/AAaONQAAD/zVxAAGctGAAANz0RQ
Date: Thu, 27 Jun 2013 13:34:17 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF52044@ORSMSX101.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF5182B@ORSMSX101.amr.corp.intel.com>
	<CA+QkY1BKJqnLcbJq786d3LjA6D7gDLLQifccMA4m9m0cKOXj+g@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF51E45@ORSMSX101.amr.corp.intel.com>
	<CA+QkY1Ap11Z1Juwqhgur3yxZNhUOeZYtwSx0fch4UMqWO6frOg@mail.gmail.com>
In-Reply-To: <CA+QkY1Ap11Z1Juwqhgur3yxZNhUOeZYtwSx0fch4UMqWO6frOg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: Re: Layer input
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
X-List-Received-Date: Thu, 27 Jun 2013 13:34:23 -0000
X-Groupsio-MsgNum: 14709
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_41DEA4B02DBDEF40A0F3B6D0DDB123797FF52044ORSMSX101amrcor_"

--_004_41DEA4B02DBDEF40A0F3B6D0DDB123797FF52044ORSMSX101amrcor_
Content-Type: multipart/alternative;
	boundary="_000_41DEA4B02DBDEF40A0F3B6D0DDB123797FF52044ORSMSX101amrcor_"

--_000_41DEA4B02DBDEF40A0F3B6D0DDB123797FF52044ORSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Jerrod,

I looked at the various folder names in the meta-intel layer, which has man=
y BSP layers.  After looking at these, you are right in that <name> could p=
robably better described a <recipe> since all the *.bb and *.bbappend files=
 have as a root name the recipe.  So I changed them.  The specifically-name=
d recipes-* directories follow the BSP layout guidelines described in the B=
SP manual.  Granted, not all BSP layers have them all.  One option is to ju=
st show them in the figure as recipes-* and then describe them in the suppo=
rting text as possibly being recipes-core, recipes-kernel, recipes-graphics=
, and recipes-bsp.  You can run yocto-layer after you source oe-init-build-=
env script.  The script itself lives in poky/scripts.

Finally, bblayers.conf appears as part of the user configuration figure.  Y=
ou have a valid point about bblayers.conf though because it does directly a=
ffect BitBake finding the layers, which are the point of this particular di=
agram.  I altered the figure to include an abbreviated version of the "Buil=
d Directory" so that it just shows conf/bblayers.conf.  The supporting text=
 around the figure can describe the relationship and also note that a diffe=
rent figure breaks out the user configuration input in more detail.

Scott

From: Jerrod Peach [mailto:peachj@lexmark.com]
Sent: Thursday, June 27, 2013 5:56 AM
To: Rifenbark, Scott M
Cc: Bruce Ashfield; yocto@yoctoproject.org; Paul Eggleton
Subject: Re: [yocto] Layer input

Scott,

Getting closer to what I was thinking, but I still have a couple questions,=
 primarily regarding the BSP layer.

  *   There are still a few references to <name>.  Shouldn't those also be =
<recipe>?
  *   I'm still confused by the presence of all the specifically-named reci=
pes-* directories.  I tried running yocto-layer and I didn't get any of tho=
se present.  I couldn't find the bsp-layer tool, but I'll grant I didn't se=
arch really hard.  (I only checked out master of poky and searched around a=
 bit.)  What's making you want to put them all in this diagram?
Also, it strikes me that bblayers.conf needs to show up in this diagram som=
ewhere, I think, since it controls what layers bitbake sees.

Kind regards,

Jerrod

On Thu, Jun 27, 2013 at 3:41 AM, Rifenbark, Scott M <scott.m.rifenbark@inte=
l.com<mailto:scott.m.rifenbark@intel.com>> wrote:
Hi,

I have tweaked this figure some based on Bruce and Jerrod's input.  To help=
 me figure out some of the basics, I ran the yocto-layer and bsp-layer scri=
pts to create a general and BSP layer, respectively.  Please look over the =
contents of these layers and comment.  General comments on the whole concep=
t of how I am presenting the layers are welcome along with any other observ=
ations.

Thanks,
Scott

From: Jerrod Peach [mailto:peachj@lexmark.com<mailto:peachj@lexmark.com>]
Sent: Tuesday, June 25, 2013 11:07 AM

To: Rifenbark, Scott M
Cc: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>; Paul Eggleton
Subject: Re: [yocto] Layer input

Scott,

  *   Distro Layer

     *   I'm unclear on what <name> is.  Is that supposed to be <distro>?  =
<recipe>?  It probably shouldn't just be <name>, should it?

  *   Software Layer

     *   Should COPYING.MIT just be COPYING to be more generically applicab=
le?
     *   conf/<layer_name>.conf should be just layer.conf, right?

  *   BSP Layer

     *   COPYING.MIT file again.
     *   machine/<name>.conf should probably be machine/<machine*>.conf.  Y=
ou can probably drop the non-asterisk version, since an asterisk implies, "=
There might be more stuff, there might not."
     *   recipes-bsp/formfactor shouldn't also have another formfactor dire=
ctory, should it?  Or is the "files" directory in 1.4 replaced with another=
 formfactor-named directory?  Also, <name> should be <machine> again.
     *   What's everything from recipes-core down?  I can buy recipes-kerne=
l being in a bsp, but are any other directories really necessary?
Kind regards,

Jerrod

On Tue, Jun 25, 2013 at 8:35 AM, Rifenbark, Scott M <scott.m.rifenbark@inte=
l.com<mailto:scott.m.rifenbark@intel.com>> wrote:
Hi,

This next illustration attempting to dive deeper in the YP Development Proc=
ess takes the remaining left-side input from that figure in the Quick Start=
 (metadata, Machine, and Policy).  Note that when the original figure was c=
reated that appears in the QS, the layer stuff had not yet been established=
.  This figure I am attaching is rough.  I am unsure as to the contents of =
these layers.  Right now it is detailed but with generic names.  The idea i=
s that individual layers are preferred to do things such as provide softwar=
e, configure policy, and configure machines.  I am including some notes at =
the bottom of the figure that would not be part of the figure but might hel=
p to get across what I am trying to accomplish here.

Any suggestions and feedback is really appreciated.

Thanks,
Scott

Scott Rifenbark
Intel Corporation
Yocto Project Documentation
503.712.2702<tel:503.712.2702>
503.341.0418<tel:503.341.0418> (cell)



_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto



--_000_41DEA4B02DBDEF40A0F3B6D0DDB123797FF52044ORSMSX101amrcor_
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
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
span.hoenzb
	{mso-style-name:hoenzb;}
span.EmailStyle19
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
	{mso-list-id:165941955;
	mso-list-template-ids:-76502468;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1
	{mso-list-id:192546843;
	mso-list-template-ids:1754017248;}
@list l1:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l2
	{mso-list-id:537935779;
	mso-list-template-ids:766828446;}
@list l2:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l2:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l3
	{mso-list-id:812598598;
	mso-list-template-ids:-2086892038;}
@list l3:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l4
	{mso-list-id:1298686255;
	mso-list-template-ids:760661006;}
@list l4:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l4:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l5
	{mso-list-id:1918973113;
	mso-list-template-ids:-940289720;}
@list l5:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l6
	{mso-list-id:2076319026;
	mso-list-template-ids:1962855834;}
@list l6:level1
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
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">I looked at the various f=
older names in the meta-intel layer, which has many BSP layers.&nbsp; After=
 looking at these, you are right in that &lt;name&gt; could probably
 better described a &lt;recipe&gt; since all the *.bb and *<b>.bbappend fil=
es have as a root name the recipe.&nbsp; So I changed them.&nbsp; The speci=
fically-named recipes-</b>* directories follow the BSP layout guidelines de=
scribed in the BSP manual.&nbsp; Granted, not all BSP
 layers have them all.&nbsp; One option is to just show them in the figure =
as recipes-* and then describe them in the supporting text as possibly bein=
g recipes-core, recipes-kernel, recipes-graphics, and recipes-bsp.&nbsp; Yo=
u can run yocto-layer after you source oe-init-build-env
 script.&nbsp; The script itself lives in poky/scripts.<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Finally, bblayers.conf ap=
pears as part of the user configuration figure.&nbsp; You have a valid poin=
t about bblayers.conf though because it does directly affect
 BitBake finding the layers, which are the point of this particular diagram=
.&nbsp; I altered the figure to include an abbreviated version of the &#822=
0;Build Directory&#8221; so that it just shows conf/bblayers.conf.&nbsp; Th=
e supporting text around the figure can describe the relationship
 and also note that a different figure breaks out the user configuration in=
put in more detail.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
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
<b>Sent:</b> Thursday, June 27, 2013 5:56 AM<br>
<b>To:</b> Rifenbark, Scott M<br>
<b>Cc:</b> Bruce Ashfield; yocto@yoctoproject.org; Paul Eggleton<br>
<b>Subject:</b> Re: [yocto] Layer input<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal">Scott,<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<p class=3D"MsoNormal">Getting closer to what I was thinking, but I still h=
ave a couple questions, primarily regarding the BSP layer.<o:p></o:p></p>
<div>
<ul type=3D"disc">
<li class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto;mso-list:l0 level1 lfo1">
There are still a few references to &lt;name&gt;. &nbsp;Shouldn't those als=
o be &lt;recipe&gt;?<o:p></o:p></li><li class=3D"MsoNormal" style=3D"mso-ma=
rgin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l0 level1 lfo1">
I'm still confused by the presence of all the specifically-named recipes-* =
directories. &nbsp;I tried running yocto-layer and I didn't get any of thos=
e present. &nbsp;I couldn't find the bsp-layer tool, but I'll grant I didn'=
t search really hard. &nbsp;(I only checked out
 master of poky and searched around a bit.) &nbsp;What's making you want to=
 put them all in this diagram?<o:p></o:p></li></ul>
<div>
<p class=3D"MsoNormal">Also, it strikes me that bblayers.conf needs to show=
 up in this diagram somewhere, I think, since it controls what layers bitba=
ke sees.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Kind regards,<o:p></o:p></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Jerrod<o:p></o:p></p>
</div>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">On Thu, Jun 27, 2013 at 3:41 AM, Rifenbark, Scott M =
&lt;<a href=3D"mailto:scott.m.rifenbark@intel.com" target=3D"_blank">scott.=
m.rifenbark@intel.com</a>&gt; wrote:<o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">Hi,
</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">I have tweaked this figure some based o=
n Bruce and Jerrod&#8217;s input.&nbsp; To help me figure out some of
 the basics, I ran the yocto-layer and bsp-layer scripts to create a genera=
l and BSP layer, respectively.&nbsp; Please look over the contents of these=
 layers and comment. &nbsp;General comments on the whole concept of how I a=
m presenting the layers are welcome along
 with any other observations.&nbsp; </span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">Thanks,
</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">Scott</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><b><span style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,=
&quot;sans-serif&quot;">From:</span></b><span style=3D"font-size:10.0pt;fon=
t-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Jerrod Peach [mailto:<=
a href=3D"mailto:peachj@lexmark.com" target=3D"_blank">peachj@lexmark.com</=
a>]
<br>
<b>Sent:</b> Tuesday, June 25, 2013 11:07 AM</span><o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><br>
<b>To:</b> Rifenbark, Scott M<br>
<b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a>; Paul Eggleton<br>
<b>Subject:</b> Re: [yocto] Layer input<o:p></o:p></p>
</div>
</div>
</div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#888888">&nbsp;<o:p></o:p></span></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#888888">Scott,<o:p></o:p></span></p>
</div>
<div>
<div>
<ul type=3D"disc">
<li class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto;mso-list:l5 level1 lfo2">
Distro Layer<o:p></o:p></li></ul>
<ul type=3D"disc">
<ul type=3D"circle">
<li class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto;mso-list:l4 level2 lfo3">
I'm unclear on what &lt;name&gt; is. &nbsp;Is that supposed to be &lt;distr=
o&gt;? &nbsp;&lt;recipe&gt;? &nbsp;It probably shouldn't just be &lt;name&g=
t;, should it?<o:p></o:p></li></ul>
</ul>
<ul type=3D"disc">
<li class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto;mso-list:l6 level1 lfo4">
Software Layer<o:p></o:p></li></ul>
<ul type=3D"disc">
<ul type=3D"circle">
<li class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto;mso-list:l1 level2 lfo5">
Should COPYING.MIT just be COPYING to be more generically applicable?<o:p><=
/o:p></li><li class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-marg=
in-bottom-alt:auto;mso-list:l1 level2 lfo5">
conf/&lt;layer_name&gt;.conf should be just layer.conf, right?<o:p></o:p></=
li></ul>
</ul>
<ul type=3D"disc">
<li class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto;mso-list:l3 level1 lfo6">
BSP Layer<o:p></o:p></li></ul>
<ul type=3D"disc">
<ul type=3D"circle">
<li class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto;mso-list:l2 level2 lfo7">
COPYING.MIT file again.<o:p></o:p></li><li class=3D"MsoNormal" style=3D"mso=
-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l2 level2 lfo7">
machine/&lt;name&gt;.conf should probably be machine/&lt;machine*&gt;.conf.=
 &nbsp;You can probably drop the non-asterisk version, since an asterisk im=
plies, &quot;There might be more stuff, there might not.&quot;<o:p></o:p></=
li><li class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bott=
om-alt:auto;mso-list:l2 level2 lfo7">
recipes-bsp/formfactor shouldn't also have another formfactor directory, sh=
ould it? &nbsp;Or is the &quot;files&quot; directory in 1.4 replaced with a=
nother formfactor-named directory? &nbsp;Also, &lt;name&gt; should be &lt;m=
achine&gt; again.<o:p></o:p></li><li class=3D"MsoNormal" style=3D"mso-margi=
n-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l2 level2 lfo7">
What's everything from recipes-core down? &nbsp;I can buy recipes-kernel be=
ing in a bsp, but are any other directories really necessary?<o:p></o:p></l=
i></ul>
</ul>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Kind regards,<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Jerrod<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;margin-bottom:12.0p=
t">&nbsp;<o:p></o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">On Tue, Jun 25, 2013 at 8:35 AM, Rifenbark, Scott M &lt;<a href=3D=
"mailto:scott.m.rifenbark@intel.com" target=3D"_blank">scott.m.rifenbark@in=
tel.com</a>&gt; wrote:<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;margin-bottom:12.0p=
t">Hi,<br>
<br>
This next illustration attempting to dive deeper in the YP Development Proc=
ess takes the remaining left-side input from that figure in the Quick Start=
 (metadata, Machine, and Policy). &nbsp;Note that when the original figure =
was created that appears in the QS, the
 layer stuff had not yet been established. &nbsp;This figure I am attaching=
 is rough. &nbsp;I am unsure as to the contents of these layers. &nbsp;Righ=
t now it is detailed but with generic names. &nbsp;The idea is that individ=
ual layers are preferred to do things such as provide
 software, configure policy, and configure machines. &nbsp;I am including s=
ome notes at the bottom of the figure that would not be part of the figure =
but might help to get across what I am trying to accomplish here.<br>
<br>
Any suggestions and feedback is really appreciated.<br>
<br>
Thanks,<br>
Scott<br>
<br>
Scott Rifenbark<br>
Intel Corporation<br>
Yocto Project Documentation<br>
<a href=3D"tel:503.712.2702" target=3D"_blank">503.712.2702</a><br>
<a href=3D"tel:503.341.0418" target=3D"_blank">503.341.0418</a>&nbsp;(cell)=
<br>
<br>
<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><o:p></o:p></p>
</div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</div>
</body>
</html>

--_000_41DEA4B02DBDEF40A0F3B6D0DDB123797FF52044ORSMSX101amrcor_--

--_004_41DEA4B02DBDEF40A0F3B6D0DDB123797FF52044ORSMSX101amrcor_
Content-Type: image/png; name="layer-input.png"
Content-Description: layer-input.png
Content-Disposition: attachment; filename="layer-input.png"; size=80436;
	creation-date="Tue, 25 Jun 2013 12:21:47 GMT";
	modification-date="Thu, 27 Jun 2013 13:31:17 GMT"
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAt8AAANwCAIAAAB4VZEcAAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAP+lSURBVHhe7P179D5fVR4Ifv6ev2bWmpk1a2YZ
O6tlZS6ZaYyZTHdCOiBoJ4RWwDU9SZYQENLTStIwCQJeO8qPiz3w4/ZzqSCC3AS5i3KXu8pVvEQU
kniL/kQxipCLTne65/l9Hnzc7FNvvVV1zvvWqaqn1nd9vvWed5999nlq19nPu8+pUzf/sw8jYASM
gBEwAkbACPSEwE1PxtgWI2AEjIARMAJGwAj8z2YndgIjYASMgBEwAkagLwTMTvq6HrbGCBgBI2AE
jIARMDuxDxgBI2AEjIARMAJ9IWB20tf1sDVGwAgYASNgBIyA2Yl9wAgYASNgBIyAEegLgWF28tHb
oy9LbY0RMAJGwAgYASNwDAQG2Al4yc3tYYJyDB9wL42AETACRsAI9IWA2Ulf18PWGAEjYASMgBEw
ArPZCSd9cHzyk58UfOVMEL6NqZe77767rIXqEKOeJK9WfIWMgBEwAkbACBiBoyEwg5288Y1vvNe9
7sVJHx6PetSjSCz48d3vfjfhAxehJAnKU57ylFjxIQ95iFBGOQ7o0VwS6t7nPvdRE/j2aJfE/TUC
RsAIGAEjcHAEZrATcAhwhcc//vFgG/gbGQnJB8kKjrvuugsfSSzAaXj+0pe+FPSFzEOSYi2kKWAz
ZCoQwzmqRCpz8Evl7hsBI2AEjIAROAgCM9jJ5z//+QgKiQWYCrMjoiP4CEohCkI6QjEcIChRkkog
I+WUB/s5yAVwN42AETACRsAIGIGEwAx2gpqYdkE+A1RDkzWkHZrK4eQOOUc8Z8ZFSRfN18QJIFpG
okPKghyML5gRMAJGwAgYASNwNARmsBPwEpIJzsKQQygponwJxMrsCKvoAPMg0CU7IUGRfkke7cK4
v0bACBgBI2AEDovADHZCxqB8RpqyESlJUzOshW8HIR5kJ5Tk4pXY4mEvkjtuBIyAETACRuBQCIyx
E1CK+GQvmQRWuQIgTeUod6JECCmFnjdmTiUubkVdfVuyE+rnkQjQoS6MO2sEjIARMAJG4LAIjLET
8gwlMMgVwCdwosmdyE70YLCWlQBWLoNNFUdmdqgcf9Uc2MxhL487bgSMgBEwAkbggAgMv2cHqQ7y
Ax0gGUh4oJy8BKtcMfOSFq6KiKQnblCuiqiLc+2Mwobixm7InYj94Nv41QEvj7tsBIyAETACRuCA
CLR8R7HYiSnFAT3JXTYCRsAIGAEj0AqBluyEMztxWqeVldZjBIyAETACRsAIHAeBluyEkz5xJcpx
cHRPjYARMAJGwAgYgVYItGQnrWyyHiNgBIyAETACRuDICJidHPnqu+9GwAgYASNgBHpEwOykx6ti
m4yAETACRsAIHBkBs5MjX3333QgYASNgBIxAjwiYnfR4VWyTETACRsAIGIEjI2B2cuSr774bASNg
BIyAEegRAbOTHq+KbTICRsAIGAEjcGQEzE6OfPXddyNgBIyAETACPSJgdtLjVbFNRsAIGAEjYASO
jMDNox/96Pv6MAJGwAgYgSEEMEIeOUK470ZgLQRucD+u1bbbNQJGwAh0joBHyM4vkM3bKwJmJ3u9
su6XETACDRAAO7n77rs/85nPNNBlFUbACExGwOxkMlQWNAJG4HgIkJ3gOF7X3WMjsCYCZidrou+2
jYAR6BwBs5POL5DN2ysCZid7vbLulxEwAg0QMDtpAKJVGIH5CJidzMfMNYyAETgMAmYnh7nU7mhf
CJid9HU9bI0RMAJdIWB20tXlsDHHQcDs5DjX2j01AkZgNgJmJ7MhcwUj0AIBs5MWKFqHETACO0XA
7GSnF9bd6h0Bs5Per5DtMwJGYEUEzE5WBN9NHxkBs5MjX3333QgYgTMImJ3YRYzAKgiYnawCuxs1
AkZgGwiYnWzjOtnK3SFgdrK7S+oOGQEj0A4Bs5N2WFqTEZiBgNnJDLAsagSMwNEQMDs52hV3fztB
wOykkwthM4yAEegRAbOTHq+KbToAAmYnB7jI7qIRMAJLETA7WYqc6xmBKgTMTqrgc2UjYAT2jYDZ
yb6vr3vXLQL3sJP/yYcRMAJGwAgMIWB20m30smH7RsDsxEOyETACRuAkAmYn+w6B7l23CJideFze
DAKPetSj7nN7POQhD3nJS14iu++44w6WP/7xj2fhKUl9C4HNdNuGroqA2Um30cuG7RuBBuwEsYHH
8573vN/+7d/WSIIQ0jwGvOtd70JDqw5Wbnw1BMA/7nWve8EB4Fo3NzfwN5iCjzgHLyFHoXFJMvkM
qcxq3XDDm0LA7GTfIdC96xaBBuwEAQMH4wEO/X5FCNF5Go4WExeEGTSxqcHNxjZDILIK0hQRkc99
7nOxmSSZuEjJTkB0WEid0IaTX/mVX6FOnIMW4+QNb3gDXBdiJEY4cIKDhKlZP62oJwTMTrqNXjZs
3wi0YSf6bYpkCX7Icij/yEc+ovEdeXgN8Sgnm8EJxCCDA1U04jNBkjIxihOJnaAuMzdslO0qhUPl
LI82MAJR0smYnmLBmC0kELhqYL1wA15x5k5QHud6xD9wlSGZqENiJ1BIXgK1TMnAK1CLmT+0Qpfm
CWQkhm9REYX0563AaDtnIWB2su8Q6N51i0BjdhKHdQ3ZiA1KrmBcYFqeYzqoA5Mu/IhvOfQrEyNu
MchO8C01M0gwPsVQoRhDhRRjRodRjfke8iQfnSMgKsCrJjpCskK3YRd0uVku5qpvB8lE9F46LeTB
UXjCErgK2Qw1sKE4odk5hjZvLgJmJ91GLxu2bwQas5NIDsQSyh+vkUAw5CBnjp+5MTzwV29auVLO
7CgwQJi0g7EK5frVizCGJkhB+K3Yyam5p7lDmOWvgEDMeZAWxEaZt2MGTuwkJtUknHInYh6R4tBn
4JYlwWV1emZpxhVwcBPXRMDsZN8h0L3rFoGLsBMm0kVBSAhwaA4lsROFGRCI+Es3inE8KtkJ10LG
uIKECqOUfvXGNAktETtx1uSaA31lW4PsRPQUTALXXYtRRqZaEjuhU3HlSnQ5nsshlU2JvTA7qbym
/Vc3O+k2etmwfSPQmJ2QB5QzLAgh/GnLmZpxdqIFKGXSJbETSEIGYUlrWTjYMfzoVy9rpfQ7TTU7
6T88xJwHPYekgXmvOImjq1xmRxKl0KQe3BJeRG10UdEafhR1JvsBR+Ea2Lgmd0MY2tS5CJid7DsE
unfdItCGnXCwZszQ4C4KglGeKxkjO2EqBT9Y069PZVkYGxAS4miiJZBMrZN2QIYBRk3zo371MptC
M8Cc4roTs5O5g/WK8nw6hocWJHFdMz1QBJSP0pwyNeqhgzHTxlpyOWby4twf5grxMbZFVSti4qYv
jYDZSbfRy4btG4EG7ITPWOLASQwJemyYMywQ0LegCJTHyIJv4yMViDpaRRufwuAYpCc/VZ3CbCsG
Es3gsCJCjn5kM5xQVVp1e+mRzvo3hACpsD1kQ5fsEqaanew7BLp33SLQgJ1cYkSo1MnVtV7xWgnj
wasn3nxwNA7bfbOTbqOXDds3AvtkJ5zx8a/ew0YUd9wItELA7GTfIdC96xaBfbKTVgOT9RgBI3Bw
BMxOuo1eNmzfCJidHHzsdfeNgBEYQ8DsZN8h0L3rFgGzEw/NnSLAtxD4MAILEGjo02Yn3UYvG7Zv
BMxOGo5jVtUSgQUxyVWMQHy1VhN3NDvZdwh077pFYAk78Qi4YwSaDOhNlOwYZHft0gj80e3xx3/8
x/WuaHbSbfSyYftGwOzk0uPkxvTXj+atNGwMOJvbEwLYUwAHCEq9N5qd7DsEunfdImB20tOY2oEt
DX90VgaGDsCwCVtFwOyk25Bjw4zARATMTrY6/l7I7obDutnJha6R1Z5FoKEbO3cyMZZYzAi0RcDs
5OxAdyyBhsO62cmxXKen3jZ0Y7OTtiHH2ozARATMTnoaUzuwpeGwbnbSwfU8qAkN3djsZGIssZgR
aIuA2clBh+9T3W44rJud2LfWQqChG5udtA051mYEJiJgdrLW+Nlpuw2HdbOTTq/xAcxq6MZmJxNj
icWMQFsEzE4OMFTP6WLDYd3sZA7wlm2JQEM3NjtpG3KszQhMRMDspOWYuANdDYd1s5Md+MNGu9DQ
jc1OJsYSixmBtggsYSe/7GO/CDQc1s1ONhrad2B2Qzc2O2kbcqzNCExEwOxkv0RjUc8aDutmJzsI
8xvtQkM3NjuZGEssZgTaImB2siiG77dSw2Hd7GSjoX0HZjd0Y7OTtiHH2ozARATWYSevec1r9hvf
t92zhsO62ckOwvxGu9DQjc1OJsYSixmBtgisw06+9Eu/dNsxfL/WNxzWzU42Gtp3YHZDNzY7aRty
rM0ITETA7GS/RGNRzxoO65XsZJH5rmQE7kGgoRubnUyMJRYzAm0RuBI7+Y7v+I4HPOAB+MuxU7mT
7/me7/m62+N7v/d7Nax+wzd8A4RVkj6+5S1vYZUf/uEfPlXFI/RiBBoO62Yni6+CK1Yi0NCNzU7a
hhxrMwITEbgGOyGZwFqTxz3ucVxxQnbysY99jOUgIih53/veh0KSGBaWHyHzFV/xFfgKAjghQUlV
Kse1g1dvOKybnRzcl1bsfkM3NjuZGEssZgTaInANdlKuMilLQDVIXGKKpfwIfoNUCkc9nOBjKbPi
mLiDphsO62YnO/CHjXahoRubnbQNOdZmBCYicHF2As4xwk6QOwEvASOBDNkJJm7wEYWY9Ck/UhJ/
KcOpolRlo+NpJ2Y3HNbNTjq5pgc0o6Ebm51MjCUWMwJtEbiHnfyHmcfcwe4UOwH/AMOgNuVO+DFx
Gn2MuZNkxiANmmuq5TWsz3SK9uK+FkZgMQIN3djspG3IsTYjMBGBa7AT5Dm4voR/MeKQr2DVCFMm
SIHc3NzwK8qIuKSPSJOgCr5lLXwsqywe0VwRCDQc1isJiy+HEViMQEM3NjuZGEssZgTaInANdoIh
BkwCaQ9O1uDgehEcKGE5FrpikaxKUMhFshTQR5SAkbBETwCVMosHNVdsOKybndid1kKgoRubnbQN
OdZmBCYicCV2stYg5XbnItBwWDc7mQu+5Vsh0NCNzU4mxhKLGYG2CJidtBoPd6Kn4bBudrITn9hg
Nxq6sdlJ25BjbUZgIgJmJxscei9pcsNh3ezkkhfKuscQaOjGZicTY4nFjEBbBMxOPMp/EQINh3Wz
E/vWWgg0dGOzk7Yhx9qMwEQEzE7WGj87bbfhsG520uk1PoBZDd3Y7GRiLLGYEWiLgNnJAYbqOV1s
OKybncwB3rItEWjoxmYnbUOOtRmBiQj0xU70pHEaqLivyZTCUozbqPiYiEDDYd3sZCLmFmuOQEM3
NjuZGEssZgTaIrCEnXziAgf2O3n1q1/9l/7SX3rzm9/84he/OLWAcnw7pbA0Dbu3XcDe3apsOKyb
nTQPulY4EYGGbmx20jbkWJsRmIhAL+wEjETv0JlIRAYpi9lJJW9qOKybnUwMpRZrjkBDNzY7mRhL
LGYE2iLQCzvBnA7YCQgH/uK8TJOAvjzykY/ExvZIrvBbCJeFKMfWsVACYYopd4JyVMeBPI30QwzC
Kvn2b/92fMTfyhi/3eoNh3Wzk+ZB1wonItDQjc1O2oYcazMCExHohZ28973v/ehHPwrCgb/iH4rx
KMcBDgHeALYBYbKTshACzKmAi5BkkJ1ALXgJyqFEGkhEWAgZnFMGdbdLLyotbzism51MDKUWa45A
Qzc2O5kYSyxmBNoi0As7YUwt53SUJlF6A+SDtIPURAIqTMtWynUnmhJKaRKyk8rovvXqDYd1s5Pm
QdcKJyLQ0I3NTtqGHGszAhMR6IudnArtcYkJzjn1M1gILpIojtgJmAdnjiSDJA2nk5QsoYxmhbZO
NRbY33BYNzuZGEot1hyBhm5sdjIxlljMCLRFYDPsJKZJSCZS7kSFg7kTfAt5JVoig8F5zK9gDqik
OAvC/EarNBzWzU6aB10rnIhAQzc2O2kbcqzNCExEoGt2ApbANSggFjjnUhIxicFCpFW4WhYncd0J
Ssg5UHhzc0N2olUmJC5ImUCMklzacsCj4bBudjIxlFqsOQIN3djsZGIssZgRaItA1+wEDAOZDK5X
BU3BRxziDYOFEAaJETXBRz0BxHL8RRqGalkineQ0OMoNV45DUxoO62YnzYOuFU5EoKEbm520DTnW
ZgQmItA1OzkOJ+inpw2HdbOTiaHUYs0RaOjGZicTY4nFjEBbBMxO+iEGXVjScFg3O2kedK1wIgIN
3djspG3IsTYjMBEBs5MuOEE/RjQc1s1OJoZSizVHoKEbm51MjCUWMwJtETA76YcYdGFJw2Hd7KR5
0LXCiQg0dGOzk7Yhx9qMwEQEzE664AT9GNFwWDc7mRhKLdYcgYZubHYyMZZYzAi0RcDspB9i0IUl
DYd1s5PmQdcKJyLQ0I3NTtqGHGszAhMR2AA74R4kXYTuAxjRcFg3O5kYSi3WHIGGbmx2MjGWWMwI
tEWgd3bC3dWOvLX8lRlRw2Hd7KR50LXCiQg0dGOzk7Yhx9qMwEQEemcn8WU6V47Tx2yu4bBudjIx
lFqsOQIN3djsZGIssZgRaIvAldgJ9nVNLwRGUqQswQbz2F1emRLuW4+P3JPexxUQaDism500D7pW
OBGBhm5sdtI25FibEZiIwDXYCQgH32gDRsIX3PA9w+QiejkfiAj4CgtxAjHsXs8XCPNtOz6ugEDD
Yd3sZGIotVhzBBq6sdnJxFhiMSPQFoFrsJP4BmDEVyxxFSPBR73qDyd8/U18abBndq7ASGITDYf1
SnZy5Y67uT0h0NCNzU7ahhxrMwITEVjCTn5pzvGjP/qjoB2xxmMf+1hwDpXgHDL4KLFYRd/OadOy
yxFoOKybnewp3m+rLw3d2OxkYiyxmBFoi8DF2UmkHYyZzJ0ofoKU/MRP/ITZyXJC0bRmw2Hd7GRb
EX1P1jZ0Y7OTtiHH2ozARASuwU6wiARLSZAR4V8EU7ATZFBYgm8ZXp07aUozFiprOKybnewp3m+r
Lw3d2OxkYiyxmBFoi8A12AniJB66AR15+tOfzpj5nve8Bx9xoFxRFB95/pGPfETnEMDHhZHW1eYj
0HBYNzvZVkTfk7UN3djspG3IsTYjMBGBK7GT+VHSNdZBoOGwvjo7+d7v/V5k6ZCT43PpjL4sZDny
dnocDOeU5GNikMRfPjvGA+UQjku2KSwBPnGmj8gLUiC2vicG0HNfGrqx2cnEWGIxI9AWAbOTdUhA
t602HNbXZSdgEqAFegcCnmDn82IoFIdAZk70gk+565ExshYUUoOYSslOtBlPfL4M52Anit/esOfK
VKahG5udtA051mYEJiJgdtItT1jHsIbD+rrsJG7rF9Mb6a0IYjBiJyQlKX0impLYCemOkivkPagb
cypXDsxuDgg0dGOzk4mxxGJGoC0C97CT/3HmsU7YdKtXQeC3bo/PfvazM52ivXhllBWfiHrK7XNE
SnSCTXe0Bw+ZCgiNpngSO8FHfMWki5SDGLGEmRgeld1x9VkINHRjs5O2IcfajMBEBMxOrhLzt9NI
w2G9krDMikalcJzB0bfj7IQrUWIShYmQOENUspP3vve9EMBfKZcGFnLpSWV3XH0WAg3d2OxkYiyx
mBFoi4DZyXaIw1UsbTisr8tOwAnK1R5loVIszJGUITDSEa1KoZgIEN/VIHbCd0hFVWYns7hFvXBD
NzY7aRtyrM0ITESgR3bCPVF8rIJAw2F9XXYSV7wi2nGVaypMq0Y0HROj4xR2wskgkRVmU/BwkPSY
ndQTjlkaGrqx2cnEWGIxI9AWgR7ZibZlw4/Ru+66a5UgfdhGGw7r67ITBDM+08ushpap8slhLiWJ
UzZpQkexcAo7gTCYzc3NjdaXcD6I+ZjY+qwQa+HFCDR0Y7OTtiHH2ozARAS6Zifc4X7wEIM5LI24
UMcbDuursxOmTMpFqacK+RLKwcmdlE3hx7TWtVz66iWxi+lFZcWGbmx2MjGWWMwItEWgI3aCrDt+
zjLZztAbN4rlj12mUrCTLGS01aw2xeeusuA0FNbWtBcK5LtU23BY74GdVAY5V98oAg3d2Oykbcix
NiMwEYFe2El8F0+c2eEaFHwLpoJzshO+xBh/9fpAchGwE+yRj69wjm+ZV98lh7hcpxoO62YnGw3t
OzC7oRubnUyMJRYzAm0R6IWdxJmaU+wkhuQkD1LCb0FHxEjAXTwBNJfHNBzWzU52EOY32oWGbmx2
0jbkWJsRmIhAF+yEuRDF0ZKdgGdwIwpN1gzKQwNk9AZBfDQ7MTvZaHy12TUImJ1MDAAWMwLdItAF
O4k0ArMzJTthiI0k5hQ7ce5kLh1J8g2HdedOauKr69Yg0NCNnTvpNnrZsH0j0As70boTbqzJkIlz
rjvBQ6E4QeIEJfwKMliJwmUokalwNgeSWF2b8iiVYfsg1RsO62YnNfHVdWsQaOjGZif7DoHuXbcI
9MJOEPsxI4MD9ELTN3pmByX8VutLQD7wUY/wROrAr/TtQVhFq242HNbNTmriq+vWINDQjc1Ouo1e
NmzfCCxhJ//Mx34RaDisr8tOQG25fys3ZGOow04nKsRJ3KGk3DNNkmmjNpZjQ9gYPuPLdGLTkKyJ
sq67DIGGbmx2su8Q6N51i4DZyX6JxqKeNRzW12Un2LyV+8NijzW9Xidt/KrIB9ZCesEN73mIvoCI
cOZR5el9PZxGFBFR08siq2vVI9DQjc1Ouo1eNmzfCJidLIrh+63UcFjvhJ0g1GGtNN+hc4qdQAAJ
Dy6pLtkJKY64C9c8aWt8fAvugrfqmJ3Us4pWGhq6sdnJvkOge9ctAmYn+yUai3rWcFjvgZ2AjuCV
N2ASTIqQnYCp4IhvMIYAEiSc9xlkJyiEDFQpp6KXG6MimUpkJ2olvguwVei1nrMINHRjs5Nuo5cN
2zcCZieLYvh+KzUc1ldnJ6AIyIUw1cF4NshOOC+jWRt8TDM7/KjZHM74QCfnepSYMTs5SxquJtDQ
jc1O9h0C3btuETA72S/RWNSzhsP66uyEnAO5DfGGwZkdvsoYszN8a3FcXxKXzWoZSjzhjA9XyHpm
52rk42xDDd3Y7KTb6GXD9o3AntkJtkiZGKCnS05UuF2xhsN6J+yE60JG1p3EB3AifYkP9cSFJirn
/sX4q1wLT7wq9ix7uLRAQzc2O9l3CHTvukVgS+zkEbfH9MCPKDJReLrkRIXbFWs4rPfDTvjia87s
3Nzc8OFhHFgUwlUpMVjG9SWSBAXR4zxiJ1ALbXEmSOwEMqqbnj2+dGC2fiDQ0I3NTrqNXjZs3whs
iZ28+/aYHvinc47pktNb36hkw2F9XXaCOZf4eLDmaHCiA2EMYok94CMK8RWqUzIJxOmekfPYihnD
lRFo6MZmJ/sOge5dtwhsiZ286PZA1OfJt33bt93//vd/3vOeJx6ALWVRovyKOAckP/zhD1MMe8hK
nhqgKrITFuLvRulFpdkNh/V12cmVw6Gb6wqBhm5sdtJt9LJh+0ZgS+yE+9OTYYBPgECAmuDkx3/8
x1GIj3wvDzgKuYU4B8sZtlUICvLQhz4U5firQjAbFpKjVEb6LVZvOKybnXQVsA9lTEM3NjvZdwh0
77pFYKvsRAkSMA/QEfAAnDCzomOcncR8ic4HC7dIMhbb3HBYNzs5FCHoqrMN3djspNvotWPD/vL/
85FwvGMej370o3llt8pONEEDUsJzEIv06M0IO4FkSURQiEWOSJnoWBzjt1ux4bBudtJVwD6UMQ3d
2OxkxySg267B627e8Nlj/kPf98ZOpuROsPqkTJMMFm6XXlRa3nBYNzs5FCHoqrMN3djspNsQvmPD
Ds5O7r777s985jP7yZ0gg0KCgpO07gRLSZAOQWoEf8t1J3x/G4M6JLnuhHoqI/0Wqzcc1ivZyS/5
MAJLEWjoxmYnOyYB3XbN7AQEZUvsJD2zw9gPIqLlJliAImrCxbPiBxDDR6yf5SIVHlxmmwopiSOt
Ytki1Vhgc8NhfdPshG8EXBocXW9lBBq6sdlJtyF8x4aZnWyMnSyIta4yF4GGw/p22Qk2s8eBbdZW
jrFufikCDd3Y7GTHJKDbrt2ykz885j/dcVvKncwNtJZfgEDDYX277ISPoC+NjK63PgIN3djspNsQ
vmPDzE6cO1kQvndepeGwvjo74ev9QDV+4id+AgEThINrjLAtPUtw4Jzv0BEjUS2crB9mbcEiBBq6
sdnJjklAt10zOzE72TnVWNC9hsP6uuwEq0ZIL97znvfcddddOAEv4WQN1h7hnFEPJxQjR2GhcyeL
KEFHlRq6sdlJtyF8x4aZnZidLAjfO6/ScFhfl51w/xsFTDASkQ+SEn4rmsItcMxOOqIYFaY0dGOz
kx2TgG67ZnaykJ38oo/9ItBwWO+KnfCBc8U7ZUfMTio4QL9VG7qx2Um3IXzHht3DTl7/h8f8V7Uq
tv/Q/K3f+q0f+tCH+rezQwsbDuvrshO+4oDx8yMf+UhMjeAjSAlmfJw76Zdf1FnW0I3NTnZMArrt
mtnJDnMn2Lzkuc99LnZde9e73vW0pz0thX+8nQdHh5ygH5MaDuvrshOsNQEFweoTrntFsMMJDiZR
tJeJcyd1NKDT2g3d2Oyk2xC+Y8PMTnbITkBK+M5hRKCSneBbHP1QgQ4taTisr8tOEDaRHUHKRI/n
oAQfyxIFWK1TiVU6Db82axSBhm5sdrJjEtBt18xOvsBO/oeZR4cxVSb90A/9EJ8ORfoENCWZim9x
oJAnmACCGHItEgOhQcmR8ysc1v/wD/9wplO0F3f8NQKLEWjoxmYn3YbwHRt2y07+4Jj/vmjdydzA
0jM7gW3IjoCd4C+JSDz+29sDJfiL/ArYCagJTjAfhEJ8RMVXvepV4Cg477ybFzKv4bA+16+S/OLI
5IpGoKEbm53smAR02zWzkx3mThizyTbKI7ITJUg0B4STktBciAR0q7bhsG52YpawFgIN3djspNsQ
vmPDzE52y05Oxf7ITphEwQFSwnMkUZA46ZY3XMewhsO62clasdntNnRjs5Mdk4Buu2Z2YnbyRezE
uRPA0XBYNzsxS1gLgYZubHbSbQjfsWFmJ0dhJ1pZMp47wbckKDjxupNKblFffa3A5nZ3gIDZyY4j
9xG6ZnZyFHYCtsHN2dIzO5wrARHRchOshz0yNXHuZEFgxmYq2N4tVeRWbz7WQsDs5AghfMd9NDs5
Cju5zoqNfbTScFivTJ+sFdjmtjv4ysC4U+1chZavR6ChG3tmZ8ckoNuumZ2YneyDUbTsRcNh/cjs
pD6+WkMNAg3d2Oyk2xC+Y8PMTsxOWsb1fehqOKz3z04wKYON7bG9PVYm4eTFL34xt/LTprHc9h7f
QkbB8uu+7uu4GTG3lMUJ9LCi3uwDGX6LE74eOWVT2Cj+el/aGhZyqm5DNzY72TEJ6LZrZidmJ/tg
FC170XBY75+dgHyAInB7exIOrCAh1WDYi2yDL+vBC3pAOHCClSV4lQ/ZCSvGFw2K4gx+C1JCzeRD
lwjPB9fZ0I0XsJNHP/rRqOXjgAjg0jdhPPewk9f962P+2/NesS1j9fF0NRzWN8FOQFAYyGPKRK8G
JAsB7QApoSTZTIz9qaISKhQb/FaUKBKag/OJtt1v6MYL2AmqNAlRVrI5BFpderMT506Oxz7O9bjh
sL4DdqLXGvPlxlPYSSIliZ3wHYScSNLRNjBbGxBo6MbL2Mn/5OOQCNBbPvOZz1TyKrOTjtjJqb3n
zwXTi38Pw8p3HV+81fUaaDisb52dkEYw2Ct3EpeP8EHikn/EwsFvodaPHF+URTV0Y7OTQ9KMhZ1e
4C2DPMbspCN2gkG8w13ksQ8KAgneyNMteWpOYxoO61tnJ8yUgJfgYLYDJVhrwkJkU7gSZQE74WJb
/NUqlouG6gMqb+jGC+INqiwMbq62cQQWeIvZSVpe0926kz7ZifaWbU4CulXYcFjvn50g+aGN1OKz
M3FlCediEOAlyZUokh+sOP4ttEGAq3EPSB2u0OWGbrwg3pidbJxjLDd/gbeYnWyGnbzrXe8CJ7j/
/e+vt/TphPu6Mo2Bvw+9PbTNK/eBHeQTmJqBQr2UmHpYgua0Yyx0ogQ62QS0QSZa0i2laGhYw2G9
f3ZyhTDpJlZBoKEbL4g3ZifLw/vGay7wFrOTluzkFy5wfPmXf/krX/lKKAa9eOpTn4pzkg+UgB+g
hG3+uT/3537y9oD8c5/7XIjh5IUvfCEr4lv8RXk0EESEyqEE5/iKFAQl+EiFKIQMdbIQJR/84Ach
iYOGHeRoOKybnawSmN2oV8VuPMRv2Hyzk/qnoKtmdi4Rp8VOpJzMAx/BKkBQcAIWwhJQEJAGSuIE
H1lINpMO0ReVk3zwgGZSFlITFoqyMBNzif52q9PsxNF9Bwg0dOMF8QZV/oOPQyKwwFucO9lM7oQU
BKSByYxIF0A+mETBtyAQnHaBDOnFKSYByZj8wHlkJ6oV6ZGqmJ1U5j9qqu8gRroLayFgdnJIbrB+
p81O9pw7UQ5DuRMwD/ASTtyQrMTciZIQp5jE9NyJSIzZyR/+4R/WEIsmddcKbG53BwiYnawfqA9p
QUt28trfvznkv35ndpgLITVR7gQJFSZLyEXe9KY34SOXp0AYH8vciaZswFpIUHDCLAtXtKBuZDzO
nRDbhsN6JUfZQYx0F9ZCoKEbL4g3ntk5JDO5p9MLvOXkzM4hqQkIWXfsBLwBq1ARHbFGlVkQcA4t
huVaEK5+FUGhGAkHDnwbBVCuj9ATJSGMb1mdjbJE5ypPOtX6jk8aDutmJyOxmS/0KQWW7dKmlw5e
mg3gQWi0NWj5pZuepb+hGy+IN8vYyR/90R/d8acHniUcD/Df8A3f8OAHPxgyqHGve93rwx/+cJQf
LHze854n/b/8y78seak6LKVo2PEF3mJ2klJE3bGT8XgPyhIXi+yYHKzetYbDeiU7+We7PrDTCfb4
SV3k24xn9RshBwvDkSl80YtehIzgrLoLhGHet33bt6GtBXWvWaWhGy+IN8vYCRjGzc3NfW4PnoxE
zchOIFyyk7IQCsFj+BffktzgqGEnYDlQCCdsGOA3rWqBt5idbJudIPmhh3RWj9/7NqDhsL4/dvLu
d78bYaBJlB1kJ8s0803LICgwjxqgfJmqs7XQ0FmZHgQauvGCeIMq/+P8g+wEf1EVjAEcgjpQ8tnP
fpbnr3/963n+iU98gpJPfvKTVQsf8eDhD//wD6dC1v1rtwfPIYZaEIuqoBk6/9W/+lcs51c4hzAK
1SH8VkQh/qIEbUHPP/kn/wSSFGB1HCpJamk2j9g1FW76ZIG3mJ1sm53smxB01buGw/qe2AkCPzIT
yByQAeCceQ4cSCQgnYAT8AMGZsjgHIGcL+VhIbb4YyHFyE7AuVVCGeU/IEa13ClftAMfUUVi+NnK
pqFKeReWnMpwJEugmX2JamlJMg86EYrwV53qgYgM2tDQjRfEm3p2gsSGmARoCukC6QvP8S3pSyQi
KNERKUvJTlBCyVIVy9EWmBCUsCEcJCigTSqEDNMwUoUq0QBwF1kotWQz6g5ldnMs8BazE7OTrjhA
v8Y0HNb3wU7ES2JIJmnA6AwCoaDOcE6SQWYAVqFkA+dEUIivIICvMExTJyoi/yHKwnArteQoLBRT
gXycxwFjgM6Y10ErfOS+5CjJEghE1iXyVJpHq7plJNGwhm68IN7UsBNGcYVw0ogp7IRpDAZ7coiY
pSALEeOJpCQRHVIHCoAk4QTJD9jADApOKECyEglT1FmSnqiWrAglyg+ZnSSOAhc65gM7Pa6K7Tdc
H8yyhsP6PtgJ3/+XQnLMZyhgM8xLkq/R4begOCmux5kd6I8JFbET5UtYl/qpduIKFWRWUDdO9JSW
iBtFOwfNMzsZ/JlbFtawE9ALhHzOvODvdHYCBqNgf3ZmZ4SdiNPETAwZErkI53R4JHYi7lKyE6ll
15h3IfvZ07GAyzp34tzJwVjG0u6anSQiMpiEGGQniuiowldbc0VISqLEORqe85XFZe4ksRPmaSDM
g5mYU8dgymfQEjQd6ZcMFtOSeWYnV2AnjOIx6iOKIxeSCsuZHTISrvY4y07AMCBMtYOTRGRFFEhc
hJzpFDsR4TillpohpkyP2ckgwXXu5AZcb+5v3KWBb6we9yxJx/TCS5hUqRP3Pxbz6inlSm1Xq252
MhjvxVE4ezLOTpAIYbyHsFImONGq1UREJrKTOE80Pr3CJTJpdQimfpSViZbESSKuYjllntnJFdgJ
5jvALRDalaVgmOc8yMi6E/ASrgiRZDmzwxQImEFcSnKKRlCMuRyte2VFKAFx4RJaUg3OPZFzQBiH
JqdKqkSx/U3rAIGmuZPP3Lz2iP+6e6K4fM8O4vH0wqsF7+kN4RFo/HpOryScXn0tSbOTkcCPeM8Y
P85OuFKE8zViJ1y1yr9cd1ImJ2KhKkZSwqUk5BMjuZNy1WpUkiwhhdIaWBAUs5P4g21BvFnwkw8t
gl5waQiORz7yke985ztpxoc+9CEWvvjFL0Zcx5CCQgjgHCf4iK9QF+fgAV/2ZV9GSRWqL6gi/ZDU
ftCDqlgLX0EhDrRFeRrDEsr843/8j2lwrIISNMGSaCFL0DWwE1WZ+/O4Z/kF3nJ6ZueI1ASEzOzk
stE/bsN/2ZZaazc7GU9L8FvlIRjIVUXl5B9JkoXKW0gY/CBW1ISO1MYmuO5kwTPDyc5oCXuRSgbN
W9DuFDybyzR04wXxZhk76TnotrUN5AnsRPSrrfJ1tS3wFrOTlCLqkZ1gY1b8qsNvOE3ocAf6spAv
xOGusvgpqdcIx/cJa4d7aOPW9do6ljvA6r08EignkiDGuvoKavn0JlonMaA2ljNTgtkcCCB3Evei
bc0iLqWv4bBeOUw0j1hWeBwEGrrxgnhjdjJ+7yPvguxL5fjQZ/UF3mJ2sgF2wvf/IcwjrjP281U7
ZSHZCWI/X7VDAoES8ANtfk8lOKiByQwSFL5eB39JJnBOgbgRPsr5Nh98RY6CEvIkvtxHRlIbSiCJ
E/IYmDE4LXUpTtFOb8NhvXL4OE4odU+bI9DQjRfEG7OTynt/u9UXeIvZyQbYiZZo8EWAZCeDhXqZ
MIOyplHACfimQPAJvkEwvs0Y3ILJFfwl2+CR3uCjcsinDWrjbvrxLYMSQ6OkR57ZqR9fmkcsKzwO
AmYn9TegNSxAoCU7ec1nbg75r8eZHXEOxHjSiJh+KAtJQcAS4tuMmdIA+SBLwLd8uTHFSHo0p0Mi
AgJEDYn0qEVxoMhOpCRqUxWzkwU3dqpynFDqnjZHYHV28v/zcUgEzE7qGVWP7CSmScgtUu5EhaQR
+jZSAfASTrWQUsTciZIiiZ2wHMSF6ZYFuROtdzE7qScl0tA8YlnhcRAwOzkkN1i/02YnK7OTn7/A
gbgOSgH+8S3f8i04YQunCn/kR36E30IY58x8sAoSKqj+lV/5lfz4Yz/2Y1QLMQjjIwr/0e0hAZzj
27//9//+Qx7yEBSiLiSlCnVx8Cv8xQFhVJGRURvMoGZadQGcLq6y4bBeyVSOE0rd0+YINHTjBfEG
VWbFyU9+8pO/4qMzBH7t135t1kWk8AJvObnu5JDTOiA3X5Q7mXsNLhEhSR0Y6TE1wyZOFf7Mz/wM
voUY5VERBEJWcR2JPkotOQdpRxRAOZToW5zoW5yUJrGENiRtqotvpfAScF1OJ7ZXwvEHf/AHc72i
uXzziFUqxB5rp16Vd4XWR5rAXibIArZ6H/K6fVml9YZuvCDezGUniMu/7KMzBHBRFoxpC7zF7CSl
W7pjJ63CLSiLshqtdB5KT8NhfcG9HatcIapxS/grNDSrCb5DBzuLmJ3Mwi0KN3TjBfHG7KQzprHE
HLATeNGnP/3pWePYAm85zU5+7+Y1R/y3W3aCJArmaA7FJ9p2tuGwPuuuLoUXR6bpFftkJ31aNR3V
HiQbuvGCeGN2soQOdFaH7ATHrHFsgbeYnSQStlt20jZUH1Bbw2F91l29Ljvha3SwoTu3mUd8xcQK
93THgXkWpli40zz3fY9foa5KFJtREhWiXE1IM2SYKdFrcfARtXDwrcU+liHQ0I0XxBtU+ZM5BwIh
tqL30RUCYidzruSfLPAWsxOzkwMyjSVdbjisb4idgC5wg3kQEdICsATxA1AHLk/R63X05jy+hRjf
xvfqQZIb9+EE5eQi0MY34/CVN3pfD3RiBie+B8e5k2WMpKuZnVkhzeykK15CY8xO1ppXcu5kSeQ+
Qp1jshMGNlAEZjL4kW8VxsEX8oGCkJ1EMTAJEJEymqJKfCWNlFASxIXJmPQ2QVIWsxOzkw6j9dFM
MjsxOzlCxN9SH4/JTkAI+FZhvr9XHALZDhzkHzgB5yB1wMFEyCkmkdhJTI3EWomdkNCYnRyQnfyS
j84QMDsxO9lS5D6CrcdkJyITmIURO2GyRCtREsNgBE1MQvM7WkcCGT56w0wMa+lbs5N6IjKooaEb
L1hJsGDdSWeh2eb8ktmJ2clwxMdWZs95znOOwAZ662PDYX1D6064rJUZFLETUor4ka9E4KKTwdwJ
EzCoCJaDuki6aLmJ0jNUIpqiCSAxJOdO6ilLQzc2OzkmVTE7MTsZjs7c1NXH9RFoOKz3z06Q1dCe
IlxQgrjIxR88xC1UQjFRiqiBdaUQmRKIRW04j3VTW6d01ofqA2po6MbL2MkfzzkQCC9xjUiR/fDX
MmxxUX7z9phzJf94gbf4mZ01n9nhlq/YA157sGJLEmwYHzd4xTlKtFUJqnAzVtblNvNpg1dtOc8Q
jlxL1JDiOvREeepMNnBLezTEpqVQe9denytcv8WGw3r/7OTssBWnY84KW6AfBBq68YJ4gyqzQtqF
2AkyeXp2vZ9LsxVLzE4OkTvhe3DAP0gv9H4c8AC+lQbUAYVgBnzPDmX0Mh3O8vD9OyQKJCt8dQ5f
qcP36aAETWiPeYX2+H4cyHA/Wb58B8pFifiCHpRDA1qkDTg51OazDYf1rbMTZEE4feNjcwg0dOPV
2QlSbpjsi0k4pNnKElwjPHGmNzNAnsubYsXNXccVDV6fnbz6924O+e+qTxSTmpArxNfjgUnwVXn4
G/MiiZ1oAQppDb6NdIHnZCcxyYGGcHCGKNEL0BExElakbVFDNElU6fqZjOu32HBY3zo7WXFkdNOV
CDR04+uwk188ceD95yAZ+IsJGvAMSGHNE85ZjnPW4wwOC7HaCSV46TpXPuHklHKXjyBgdrIWN7o2
O2EiBAff7osUBQ+++5dpjxiJY+5EX/ENwPh4c3MjDXodMb6CgFIpTNgwxZLYid4kLFKSTmgSteHA
yXHWwTQc1s1OKkOsqy9GoKEbr8tOwDDe9a53KYiCoKCEHz/0oQ/pW5y86lWvQiH+gqBQACcs9LEA
AbOTw7GTmDsRHZmeO2EOZmSqRbNFketMz52MmHT9NMYqLTYc1s1OFgdXV6xEoKEbr8hOwC3ERRhf
mR1RrBX/kFisYnaygJSoitnJ4dgJZ22YAgHV4KwN0x6Y3MHJ4LoTrkcRydA6ElaBBghwHUla6MoA
zyQNV7xyuofrTji1RA2J9HApDAQgf6jXCjYc1s1OKkOsqy9GoKEbX4ed/MLQwRVy8RuMWhiXVIJv
X/nKV+KjxPBR55Dktz4WINABO/ndm1cf8d9VZ3b0AA5JANacghDw0EoR3HWiJpBRFbGWKEwBauCC
Fejhx/gcUMw9UF7fktbgiLuqiKawIr4a17lKbuPSjTYc1jfHTtK7chaHRlbEilo9XVypytXnItDQ
jVdkJ4ipGACxcAQnGLve9KY3ka9g+EIJysVUzE4W8I/xKmYna3Gjq7KTmoB6qBWpNUC1qttwWN8c
O4kbvM4Nh6V83Ae2Xps1zEKgoRuvy07ASLh9HxbAMpo+97nPxajIQpAVFuKcJ5TnOargY/OwfRCF
ZidmJ2eiKuZijrMitRXDqNHTcFjfHDuZFf/OCpudnIXocgIN3fg67KTmnnXdSyBgdmJ2cgm/ss7l
CDQc1tdlJ5hYwZ4Q/NGJKIgtIkAXsHiQH3lo63psC4GP+IqbQ6huksfzmdzbXptcqaScFYIY9HBr
fOrHwXcgS8Ophi4Xtg+iuaEbm50sH022XNPsxOxky/67R9sbDuuV7KRmvT2fbgCT+KEf+iE+kKnn
F1DOXSKQIUchHsvk5hBJho9o4lvI8FtV1JOc8enN0lqyEAjzMQpuVoETtsi/NDI1VNlxVwcCDd14
GTv593MOBMI9jiXb7pPYyZwr+e8XeMvJnex/9HdvDvlvM+tOtu3gG7S+4bC+OjvhtlQ4wFHITnA8
7WlP4zOZ4CggBzGWRwajr/QMJ75FXSqhJHgPuAUKqQSEA8I4Etch76FCnbAK5XUeHxY1yahBoKEb
L4g3qDIrpJmddDhSmp2sxY3MTjq8HbowqeGwvjo7UeDnvpmkApE9zGIn3HlTSpj8AO8By2FqZAo7
AaHhZBA5jdlJDQUZqdvQjc1OuhiYrm6E2YnZydWdzg2OItBwWO+HnZS7WsWZGs2zlLM/TLEwB8Pc
yWBEJGtJX2lKCOWcY5IAJ5WSDWroQgH7UGoburHZyTGHTLMTs5OWno/n6/Cs3aFeKdwSvltdDYf1
ftgJAjOfwOTaEc68cF4GH/niEvIP7vzN2RwUMs/BlSugF0qfUJ7aKBzJB3kA151QP7kIlNMG/j3V
0KFoxIU629CNr8NOfs7HJRF45zvfOVe92YnZSePwmt7Xc1Z7+ULjs1X2LdBwWF+XnWCehZMvOrhk
JL15JJZw4SpJAw58TMKgKZTXq0/Sx9gctaUWqfNsQxeK2cdR29CNj8ZOsLP2K17xihTLpxfOJQGX
lgcv4UvTyk6NN212YnaSYz13tWcpzrn9PDkENj7hHvbxhcbYBBZ3Dve/Z5VUF/vQx2wKPsbd7rnJ
vdMtugwNh/V12UlNJI7LQWr0nK17tYbOWrIzgYZuvIyd/Ls5BwLhpYP0dP2DgXx64fSGriP5D//h
P8SYv6AtXJTfuD3mXMl/t8Bb/MxOokE9roolL4nbyfNtxtjCGeyEszbYXZ7vESRB0Qt3yGNQonfx
sC7JjegOTsBjWKiG+OoKcxQSlIbD+nbZCaZpypmaS8TvqzV0CeN71tnQjRfEG1SZFdIQCD9efWAQ
q9ZxjwISkRe84AV33HGHFI4UUgZVwAPwVx9V9w1veMNP/dRP8SN0RrUox4G2cODbd7zjHU960pN4
Xh6pLtQmYZSgVrQcyh9+e8iw6RCZnTh3ck9E5Gv50mtuSDWU1cC3ehsfTihcvqw4shPN2qAQTcTX
I/P9fzFvA44CMeVg9j19M9K7hsP6dtlJz3HXtk1BoKEbb4WdYPiaHnpHJDEw4kBEf/CDHyzGc6qQ
UZ/CYCcQw19SHJEMGEbeQLUUAxFBCc/xMxLlKIEkSnBOeR0gGfiKPAMNkeWwrXEjYQOU46BVsw6z
E7OTLwRKZjjSO/wi+YCHMR2CQymQcXaiGAwxUBMQGmnghI4EQFao2bvmNxzWzU6mxFHLXAKBhm7c
PzsBRcCBwY0ns2JwKYzRFTkJluOcqY5Thak5fCShgQbSCPAM0iaUgFtQLTkK2QlGXRaqbmkSWQjL
mYaBTvKbU0aKq6HuAmoCtWYnZid/9jMeaZLEUSL5iLmTSDtSGuBU7gTKY+6k5CVxLcthEyee2blE
pLTO6yOwOXbys0uPD3zgA4+5PTD08YQl+KgSnb/85S/n+f3ud794Hhu/973vja9YgnOo4slI4dvf
/nYQDuiEGA7IowSt4ATl1IBv2S7FWEiD1Tq/Ao9JYEie5bRcMlISjYQADU5NTIe5A3by6ZsfPeK/
HtedkBMgewE2zfPITjj7g+QKSAbmX5jkYAqE60gG152Ac+ArKeS6FkhCD5awQAMmicxLIhtrOKw7
d3L9qOwWiUBDN75O7mR61DwlGQN2jbZERMgVxgvBKigGQkB2QjqCvAs+gqmQpuBIhpXUAcIlQUHi
JJIYUR9q07dmJ/tgM/2ykxgp00oUMBKU4IirQ3COEk0JqYpmc6IwVqJQAw4/pzOYImo4rG+CnWBj
NOxH0moNLB4V1n4qJgorItDQjZexk38758DP9Bo+wboN2QkpBVMU5BZMipSFzE9A7FnPehaJgtgJ
qAnK9RECYiqvf/3rkeBJiY3nP//54jHkOmAzVCuWAwHlciiDWtFIJXga5k7mXMl/u8BbTj+zc8TE
CQjWNthJzQxLzLvU6Dla3YbDev/shBuygaBoA5LKgMr9YadznVbtVpq9v+oN3XhBvEGVWSEN7ORj
3RxgGE984hM5BXPnnXfSrlOFr3vd6/AtxCiPipBUVzAIP/nJT9ZHfAuCQsn3v//9KEcJDgqAZ/Ar
aWCj/BakhHVpEtrVJBEqykjagwPf8jw2MQtjzezMupQLvMXsJKV89s9ONJtzNHpR2d+Gw3r/7GT8
JcMLYja4zqxa2p12Vi0Ln0WgoRsviDebZiezQvi4MNhJQ21XVmV2stY80f7ZSWWQPmz1hsN65+wE
eQuQA/AJ7CvPHAb2ref28/H1gdx4HvM1EMBfvuKYW9cjTcIN7xkscXJzc4O/fB0PN7DHoVcloxV8
yxYpgPOo4awBZ6OyBTpZdzLrB3dXuZNWJIAJmFbarq9nfXbyqk/fHPKf2clh6ceZjh+HnSCMxdwJ
X5qDQux/rxf4oZAv8OPW9WQbEOBLj0VZxD9i7oQcBcJ8gzGr8xU/UKgSbZY/xQCTj4kINHTj6+RO
PuqjMwTMTtbiRmYnZifDCDQc1jvPnSR2Ag4hosAECQTAGMQ8SC8kIyICqkFhHGlmh2/VYS2ucUnB
NSk8a8DE2Gyxhm5sdtIZbbiSOWYnXbCTP5l5OLDvGAEN6zOdor34FUJszJ1EdqLy9B6cQXaSlMhs
CPMNxtSMYzo7OWXAFTDZRxMN3XgZO/k3cw4EwiuFXDczGQFclF+/PeZcyX+zwFtOroo95LQOKNEX
5U7mBpYeYvPZTV2xi0mTjUzwrPLZtnoApJUNDYf1uX6V5K8QJiOxAJngXAwO5Es4a7OYnXBJCrWJ
04Cd6OXG6SuKnTXgCpjso4mGbrwg3qDKrJCGQPgRH50h0AE7+Z2bVx3xXxU7WfC+x+ZVBt+ZqVb4
+oZlr6aMpnK3N2h79rOfDYXNe9GhwobD+rbYCSZowB7IS0AUSCMWsxPM6UAbl5IoK8NFr/zLdSds
i0xoigH7oA5X6EVDNzY76Yw2XMkcs5O1uNHO2ck4d5nOCfBEnITf+MY3Tq+4XcmGw3r/7ARhMu44
AkbCKRiFT6xpxaGPUTiKqTwWUhv+xnwJV6LEEnxU9bMGXCGu76OJhm5sdnIlOtBZM2YnZifz4vhT
nvIU5DPwN/IPJDZQiEzJO9/5TqjD5rBgFfiIE2rHCQT0ETwD31IPBX76p38a31KPxJAygR78/cEf
/EEKUBgfkVCBBnylwnnd6Fi64bC+CXayj2DsXiQEGrrxddjJh310hoDZidnJjEDN+Rq8yhIn2FgC
J6jMORec44SpDpAPlIB5MNsBJoGDtfAXDAZi+JavxOTsD9/wSTG+AFmFKAE1YTkKWR1tsbn9JVQa
DutmJyYNayHQ0I2XsZPPzzkQCDsLzTbnw2Inc67k5xd4y+lVsUdcdAJKtMmZHfAD5C1IZ5Q7OVVI
7oIjzs7gI+iI1qOAW/BbkQ+cg8SApqS6EoiSSfMMntWxaMNh3exkrdjsdhu68YJ4gyqzQprZSYds
yOzEuZMZgRpsQJxD7ASFOMeMDA6cMJmhb5kUiW3gK/APlQyyEy2AVd1ESpBcYSJnhvUbEW04rJud
mCWshUBDN74OO+EKJx/9IGB2YnYyI2ifzZ1IV1yVsiB3MsJOMCWEzArYidaszOjAFkQbDutmJ2vF
Zrfb0I2vwE4+9alPIRb66AqBT37yk9zvZFYabIG3eGYn0aBNzuxo3Qn4gfIoIApkLUhvaMomshM+
FYxv+ZezOeAWqKI8SprZGWEnqIXqzNPUP7HcIV1pOKybnZglrIVAQzdeEG/mzuww/v3mb/4mw6GP
fhDARTE7uXISZZPsBLGcUypYkcrnaBjd8RGFOJTPgJi+VS19i7qUR0VqSI/kxMd2kgC+4qoU0h2t
UOmQZywzqeGwvht28tznPhdbkmA/klaxFluexA3yW6m1HiHQ0I2vxk5mRUEL94nAAm9x7mQPuZNl
4bZtLT5LTJ3cqK2t/tW1NRzW98FO+H4cEJS42UkNDwDRmcV1WrVbY/Pm6jZ04wXxBlU+5+OQCCzw
lpPs5JV33xzy31ZzJ6sHb5ISLsLdHzVB7xoO6/tgJ3G3+yZBOr6sZ4rCufJTdO5epqEbL4g3ZieH
ZCb3dHqBt5idJBJmdtIDz+nRhobD+g7YCfIWIAfIndz//vdnDoP70OPALvWM8ShHLoTl+IhzvuIY
ByaD+MIdVKcwN7bX7vXcyZ7b24sxSIaaKS8NpQFoAsZAgDvi+wACDd14QbwxOzE7GeQc0wvhQsdM
nKDXZic9MoMebGo4rO+AnSDOxdwJ35uDQjz3CMYAWkAB7A2Ic+5PT7YBAZSAWFCe9IW8IeZC+No/
CENS7IdVoA3TSUl+0AC+BhlMKL1i8Mg0paEbm50clmos6PgCb3HuxLmTHkL/BmxoOKzvj53ofX4I
/EyQJPqSyATkSRFAHSicBPCRb94RZYlNlPKDBoCdeI1tomIN3XhBvHHuZEFc30eVBd5idmJ2sgFm
0IOJDYf1fbMT5VTSwpSYGhE7iTJRgFM8TH7wDYLT2Yl0phcpHzllor43dOMF8cbsZB9UY0EvFniL
2clO2Alec4MHg+PTwjiPH3sI8Ju2oeGwXslOfqGP45WvfCX2tqEtOHnqU5/Kc6QrQCxwEgUogxLK
YGscniQlFMDUT9TMwtjEBz/4waRw0ACykz7Q6sWKhm68IN6gyh/5OCQCC7zF7GQn7IQvH8Y+JXpd
Dncu2TQh6Mr4hsP6/tjJC1/4QnggeQmIwk/+5E/WsJM3velN0MalJDghO8FaEzaBVa6gLyhhW2RC
gwaYnZScqKEbL4g3ZieHZCb3dHqBt5id7IGdxB1dkUTBgbhudtKW3DQc1vfBThD5QCMU/8BIQCOU
HWF5FIjnUUzlpTboJNHhwSaSHn0sDUCKhVkWH0KgoRsviDdmJ2Yn0x/PMTvZPDvB9A3yJfhZCTqC
c+z3yvcVR3aCnAq2IYEYiQsO7FvPHV35dkAfZxFoOKzvhp046m8OgYZubHZyWKqxoOMLvMXsZPPs
BGEVK070Ah2REp2AmvBbnOjNfzjBRxSSyvg4i0DDYd3sZHNBfTcGN3TjBfHGuZMFcX0fVRZ4y0l2
8iO/fXPIf5vc7yS9q4/LTcROBt9gDHZiXnKWkUSBhsO62clugv3mOtLQjRfEG7OTfVCNBb1Y4C1m
J4mEVbGTj690kJ2wcZKSeAIigm+5xzxO3vCGN+BbJlSYU1nJ6o0123BYNzvZXFDfjcEN3XhBvEGV
z/o4JAILvMXsZP/sBBTkBS94wSAXeNKTniRaszGycHVzGw7rZie7Cfab60hDN14Qbx70oAehlo8D
IvDABz7w7tujwarYQ07rgKnsMHdCCgKCgjTJwx/+cIR1pE+QX+HHBz/4wVcP9JtssOGwbnayuaC+
G4MbuvECdoLIxBDlYyICb37zm7GTEA+M25/61Kd++7d/e2LdPsXMThYvmtkkO/mpn/opUBDGfLAQ
Zkp0wnkczvjccccdFIM8PqrWJvnCdY1uOKybndQH+8Ft1uLjx/VN7FJDQzdexk4+/elP9xk1+7Qq
sZNPfvKTv/7rv96nqVOswtU3OzkWO7lumD5oaw2HdbOT+sCv3WbjbigoNEEZx7ahGy9jJ5XB6WjV
X/SiF2ka6HnPex4YAHaRPxoIsb9AY3F033rFTeZODsoXrtvthsP6MdkJeEPDvdFKdrKA8WCH2QW1
Nl2loRubnVyBJZidJJDNTsBQb4DC3Chy3XDp1q6KQMNhfa5fJfnNRUfwkrjDPc4xic5HxsAP+FYd
7E+vflEYB/atZyE2hIUAGInEcM6K8fU9+pa73adv+U4fVOTm9zjYkN4QtDlgFxjc0I3NTsxOroCA
2YlSPs6dXDXkb6ixhsP6cdiJeElkACQNyKOAQIgrgCiIi1AYAviWG9VDnu/WAZthiSrGVwYqoTL4
rXgM3+DD0D5o4YKov5UqDd3Y7OQKsdm5kyF28ls3P3LEf2YnGyIMVzW14bB+HHbCl/mlyB2zHeIT
oB0olyQoCFMd+AsCUc7jxLccR1JCDeW31M83ATFzE61Ccyg5wguNG7qx2YnZyRUQMDsRFTM7uWrI
31BjDYf147ATcAJMsuCIKzwG2Qm5CBkDTpDbAFfgC4px1LMT5mn41mIczMTwwMeDUBN0tqEbm51c
ITY7d2J2chR2gkeI8fhxyQlQOFi+IfZwaVMbDuvHYScM/+IoXBU7zk7iTI0ky4dx5uZOBinOoXgJ
r0VDNzY7MTu5AgJmJ/tnJ9jJh28qfsc73qFdTxTRtf/9pWP8dvU3HNaPxk4YFzGfokUk4ArlFAxz
J5BhkgPpE+ZOUIglKVwki79ad0INkXaUUzzxW2ZxqJm5k+c+97nKoBzkpKEbm51cITY7d2J2sn92
AlKCbWH5zh2zkwUkqeGwfkx2ovBPeiFuUZZjoQmXm8TNS7gSRSXiNyQoSdvgt5TkcRAuUnazoRub
nZidXAGBAXbyit+6OeS/3a47wdaxfFYC6ZNy93rmTjDvg2+RYlkQvHdfpeGwfnB2clhm0EPHG7qx
2ckVYrNzJ2YnomK7ZSdgD0ifgJ3gb/lSQFATpFXATkBNcML3GPuICDQc1s1OeojTx7ShoRubnZid
XAEBs5NhdvLHM4/+w/kp2gF2whcE4hic+um/a5e28Ddvj3/9r//1TKdoL37MsOpeN0GgoRubnVwh
Njt3YnZyFHZyKoTHVbFgJ/h46WC/Of0Nh/VKwtIkSlnJMRFo6MZmJ2YnV0DA7MTs5B5+otyJ2UlJ
nhoO62Ynx2QGPfS6oRubnVwhNjt3MsRO/tXNK47474vWncyNIpvLB2iJiXMnZ69dw2F9rl8l+R6C
nG3YKAIN3djsxOzkCgiYnYiKHYudgJRwEzask9VSWayNLZfNng3euxdoOKybnTQP7di/pOELkGke
tlfhq3/ig83NLb+ywoZubHZyhdjs3InZSRt28rM+9otAw2Hd7KR5SI77zzZRjh3bcGCXW77lZzcE
paEbm51cgp28//3vh7PhsT4qP8VOIAPJSxjQuU543TGnddDrqtzJfkOze/azDYd1s5MmBCIqac5O
mits3uVlChu6sdnJJQI5ngr86q/+6gc96EFPf/rTX/7ylz/taU8Dzjy+8zu/E3T5e77ne/AtZCB5
CQM612l2cvfdd98AhblRxDF8xwg0HNbn+tW+151gE1hkKTCHghQFTvCjEPvN4xw73zMA8204KEG5
QjILcVAMJ3xBj0pQCM1UpYp81yBLtGUtzlWX28hyE32+jBAfVV2N6qtlFGHFWg3d2OzkQoH8rrvu
EiM5dQIZtI5AdSEbulVrdmJ2smOasbBrDYd1s5MYnkEIbm5uQDKwcITUIb2XWDQlvh8Hklxowjfm
kJegJL5Yh5QF3+IXp97Ow7clQ2d8KQ9ZyOALCFFOSb4ACE3gKN+ZvCLhmNV0Qzc2O7lQCGf6ZISg
fNVXfdUnPvEJRCmzk0PN8nhmZ2Hw3n21hsO62UliJ6ARSpMgP8HzOLfCN+8gv8JvQSYkVgqDOoBJ
cL1IbAiMRA2RczBTMvi649g6BZh3oUKzE/iw2cmF2AnUjqdPMLlzTGoCZJw7ce5k92RjdgfNTmb9
Rp8uHKM+OEfJTvRuYb5hmMRlnJ2k7IuoT2Qn4h8T2QlJCY1hrmWLR0M3Nju5HDsZSZ8cOXFidkJW
6nUns+P3vis0HNadO5meO+F8CuWVOwE1ET/g/E5KdSgpEp+1iZM+nJ3htxPZCeZ9YEB8T7LZyWF/
wV+Ol0jzqfQJVsseGXbnTnbITvAaHRynCMT4t/umHRN7Z3ZyoWB8NncC9sCtR3DClAlnbfjQL5es
DrITVEE5/3LdidIwLE/TNGnNCimO6At5EpfZSuGFMLmc2oZu7NzJRTnKYPrk4ImTP82d/ObNK474
b7frTt5+e5yKxPoWz7Dd7373mxiwDyXWcFh37iRFXz0+wzWn/FaFOAdR4Me45RqnbwaFpR+1UraD
tZJyyY8oVOYGwiBJ8QGiy5GJ5poburHZyUXZyeDqkyOvOCHat7mTI1IT9Hq37OT5twf4BE+wISxY
yLOe9SwyDBZ+4AMfQBIFPw0f85jHUNiHEGg4rFeyk5/3sQYC/+gf/aOv/Mqv/JHbg88tr2FFbZsN
3fhq7ORP/of/cGke0Kf+lD5x4sTsZJ/rTkA4cCDW4i/4B9gJqAlOXv/617OQ395xxx33vve9kUEB
UzE1iQg0HNbNTmpj7Er1wUjAUXDgseSVTKhttqEbX42d/MJv/MG//PTn+iQQl7Yqrj5x4sTsZP/s
RAtQQERARyI7AS9BoXlJiUDDYd3spDbGuv5SBBq68TXZySve/y+PSVCUPnHi5M9mdl7+mzeH/Lfb
mZ2YO2GaBAeIiBIqPDE7OcXMGg7rZidLY6vr1SLQ0I2vzE4OS1CYPnHixOzE7MS5k2F+0nBYNzup
jbGuvxSBhm58fXZyTIKC9AlerHPYzWHT3Nk9q2IPmThBr4/OTrAMBYtRsCTFq2ITSWk4rJudLI2t
rleLQEM3XoWdNCEoz/25B2/r35N/4r98/c/eiX9bMftyy3HMTna430l6ZoehF2tj44M8LMRKFMzy
cLWsDz+zMxIPn/Oc5zzkIQ9puET0798etRF4tD6euxn8/lu+5Vt+5md+Jn01WHhR8waVYx1uq0Z3
wE7qCcpzfu5rt/gP7GQrZpudXCLBs9vciXlGJQINh/V95E64JRoIyo/92I81iZ0gOrO4ztx2EePB
NsBO8BdHshkPCeNR4SmFTTo7SwlwniU/ItzQjdfKnYCdVBKUrcT47dr5udvjT/7kT5rTlNvcyW80
+/dfffMN/rVSeN//181f+L/fPOPdzRR+sWFmJ5VBfLfVGw7r+2An3PajVdSEnkF+MKJ/rjxUgf0g
0g+mZ8xO5rrluuykhqA85+e+xv8uigAffAVB6YKd/O/+/E3895f/iy+wB9AIHPiKJAAfH/HkPyMW
OE8Vv/HZZ2gHqAmOO37c7GS3PKDPjpmdRKKAvAXCOSI9UhHMYSDkowSHpiFQDjbAcjIDviUYByaD
kL3AieZZyBtQghMKUzIyCclQM+WloTQATXALNeqEAE74sSQoUEWT4k5rg4XQqb4TEzUEk9jWqUKa
QcuRdqJkREabvKGPMJVcyrkT5kvKf8seM372x/9L/7soAt2xE5CGv/1f35MmIYFAkoOMBBREnCNx
CwiTu+AEdXn+vR8ZYx5mJ30G791bZXaS0hgxd4KAzaiMpRuM6DiHAO5onGMOiKkRHBBAiaJ4JAr4
VnMrDNIQhqTYD5uANsb1KD9oAApRHUyIBvA4FellHmxQo4OFIhCwhz1lQ6gYu3+qUEDxNYQRGTZN
OwUj4UrgL/7Y0I1Xz50snuK5aGC2ciDQIzthSgN/cYBGkJ1oZoeZEpEYfhUlE/MAp+E8DoiLpnKi
zD/5wXs0fPurvtCQ5GN6ZuaMkmd2dk8zFnaw4bA+N4We5BdHprYVIzthbKZ+JkjITniicCsZhVtQ
B8lEtoEqICXUwFqxiUGFpQHgB9PX2MbWcc4M0GAhysEq0ByUU4wbyNIqZlZOFTIxo+3waXNsRcQo
MhKzk1O5k2UE5dkff5D/XRSBftkJOQcoBZkB525wgukeHiqJ7OSFn/hCOXMnSquQjiinInYCUhLL
lXqhgLjRNdnJx3zsFwGzk0RuTrETlU9hJ1EmUQHkGJR+mMVOpDOShrPMbDo7wYQLDs4ZzWUnnKmh
YTj4lFBiJ7AfzMzsREsWsJP9ODuZuwblooHZyoFAj+yEtCORA3EREIXBmR3xFZwo7QHyoaQIMij6
ihrwFdUyWwNCg3MxEsovWptSlTvZb2he2LPXve51Zc3BwoUNXLGa2ckIO2FKgAJc3jExdzLITrj+
IyVIYhNlUB80YAo70YM/mkkhE+Jj0mVh5A0xd6LlJpqr0mQT9Kgw2ik8S3ZCGzjvE6d7znKsswIN
3biTmR0Rl+lrUJ798b/tfxdFoEd2wnUnzJFoJexZdqJ1J2Q2esAHnAOTNVLIcqVSIKnlLDjBgXY5
i0QDpGdO+uS47ORtb3sbNrbH31YR/2UvexkUJm2Dha1avKiehsP6/mZ2EMuZFeBqVoXVszM7g+yE
DIDRXRM6WGvCJvhIMEM+9JMWDBpwlp2kdR7URrXiRmUhzeBiVeVOIAbDWMjuc4onFcpOpl4SA4sp
Ii7y1Qrcs7RjokBDN+6NnUzPoDzr43/b/y6KQI/sROkKcgiyh7PsRDkPrCMRrUFdVsS3kbVQM/mH
ngyK00AQ4D9om8NLKHxcdoLQDuowK8C///3vH5E3O6lkIaeqT4xDVxCLO45wKUbaMiQKxPMopvJS
G3TGBa1sIunRx9IApFjKDdbKDBBLqCd1YbCQYvyK+kmDuFBG+gcL8a3sVNdOISNj5u7sMnLp981O
JhKUZ338gf53UQR2zk5ITbAYRWtQYu4ENIg0hTNBXIMisjKflIjHbJudPPnJT0a6glMn2O8V/ODB
D34wOQQKcY4Dm8OKUjzxiU+83/3uh78sQRWdsO7DHvawmE3BR8ijFYnhY1QYyQrZyZ133hmbGCyc
RYnWEm44rFeylivQDjcxC4HBJM3ZzM2sJloJN3TjDnMnExfJXjQwWzkQ6JGdnJ3Z4dpV0AiumVXO
AycoiTkSnoN8IAVS5k7ATrQqlgxGMvgKtZYyla2yE/IS8AmRCWSYySTATjhrA6JAckA+QbKCEvIY
lKAKYz/rkqBodgYn4DEsFI+BKkgOchRIQg+bQF0wG6ZnysK1CMesdhsO62YnrWJtJ3owX1Nu5z9Y
uLrBDd24W3ZyNoNy58/+Lf+7KAKXZScv+/WbWf84/6J/WJd614e/oIGF1IYHg0kjWPKNz/qiWlCC
EkryK0qSuIDBoBy0A+dPftM95yxHWzhHieaAOB80y/4/Fd4kO0m8RAxDTAVkguQAB07ILcRFFKQj
O9GsDQqRd4nTNGAkaUEJS0BEytwJS0hKeKK6KpzFEtYSbjism52sHqQPa0BDN8ZY+fFf/pf4h2dq
LvrvJ3/h7rPP7MzaqO3On/2b/ndRBGaxE7yEefqe9/fsZL8otE+tRW4x5d90SWoDJZpb5YvN2CQ7
AdtAyFc+Q+xEgRy5DaZDcCgFMs5OImVhfkUaoCQSEXAgpliQmzE7qWQeU6ofNrK64/UItGUnb/vg
L+HfAupwnSqnnuJ55s/+Tf+7KAJz2clDH/rQl7/85Z///OfP7nx/cXYyhZesJLNJdkJOkDhKJB8x
d1JmSs7mTsA/Bpe4ipdoJcopdoLkSpk7UeFa6ZBZ7TYc1qdQkBGZ+hBlDYdFoKEbY6zsnJ2cmuJ5
5s/+F9P//X9e/p9NFH7qBx6Af1OEp+ucoq1DmVnsBIzkCU94AtzpQQ96EIICUikjHMXsBNjeAIW5
UWRWtLuEMKZjuM4jTdxgagbkABwCX2HtCJfNMgXCdSSD607gKPgKYjSV6RlIQg/TJDgpeYnWwEIS
E3Nad8LUzmDhJaBorrPhsD7Xr/rcK/awAX7THW/oxptgJ4MEZVY4/1//uf9Fkv/v3n7fP3/v/xX+
pvIHPuZe+DdFealzSq0NycxlJ3h+De7E46u/+quf/vSn/87v/M4gRzE72So7iSE5TfSAkaAEh57Q
gTDOURKfwdGsEGdzojCoDzXgGNkWBVW46hbyOAePiU0MFjZnEpdQ2HBY3xw7iY/1bjo22/iGbrwV
dlISlGd87Kun/wOTKIUf97L/lIV/8X7/W53/rcfcC/+maB7UOaUiZJ7y/vvj7/S2JqqlWI1hsaG5
7AT5ErETnXz3d3/3P//n/zxxFLOTPbCTmghdLkmp0baPug2H9c2xk8EdTh3pt4hAQzfeEDtJBGVu
wAb/+CsP/j/c92H/kSqShTzkif8nhHOU8yMZAwpBWR5555dT+Dvf9jdQiJJIXEQCIPzE192HktAD
sb/75P/rKfO+8fl/GQKowhPqJFlho9AgbfiKZlMAaimPf6g+2CK+gmHsApnKRLJVGoytep73vOf9
wA/8wIsmH/e///1LgoKSxz3ucR//+MfFUcxOjs5ONJuzD2LRpBcNh/XNsZMthmHbPIhAQzfeFjuJ
BOUZH/uq6f8QpG8TJP8PRPo/f+//JSve0ouveuLr/hpK/u6T/yK+xce/9ZgvQ/lDnvh/fOSd98YJ
/rKQAqiOf7F6LIEeVKQYqiTzREduicVXPeX9X3nfh30p/rFdFKIKzqEhWnjLdf4ihPEX5RRAIUpQ
q2wRAjAbf9EvGgC1ECvtGUHvv//QVz3ov7rfIM+oKXz0ox+NDC44itnJ0dlJk3C+MyUNh/V12Qm2
gec26vFtOMiW6U0x3PwU+RKlTPAVtytV3STPHdwhj/3mGRRVUs4KQRVah7y2cud+9izRvqjcsR7l
LOGrj7m5u5nHYgQauvHm2IkIynRqQiLCcM5zRm6yE8Z4UgTGcjAGnYMHxIYgFqkDJEVW4legGhJj
dbIi8hL9Q1uDpEGG4eQ73/afyxgKq6FTLap6aksdPwvdY79/OAVSQ01U9+/8nb9jdmJ2sjNq0aA7
DYf1ddkJX/yLvcLIG/QKOr21DgwDhdyjnW+0iTJ88Q2+RSG/VUUU8i0z6e3EKZSqImwg86A9pCA4
pzwJEM3AtzIJrEVvHFwcpA9bsaEbb5GdgKD87mf/3TM+9oDp/24D9hfkb1MLfwUfVXjLTu4pwb+/
9Zj/GP90fksyHvCNz/8KnICp4C9LWP12IgZU5gsVWcJ/f+XB//to3iPv/E9QEYXf+ba/rvLYFsqp
H39lWDSbGv7uk/8vUMJGUX2wxViLbaEWW5+I2FPe84CvfEATKpKVPPaxj8VocA87eemvHfMf+s4F
PZt8ZqdBELaKEwg0HNZXZydIbDA8M+rzfS5MTqAQnCDlJyI70VfMr5C7oC6VUBIEBdxCHAJjCrd1
B5vhV5EcqF2REr6tJorxrXtsQm8GPizDqOl4QzfeIjv54Kd+D7MD/9+PPWD6PwTsO95/P8rj/Dve
9td5whJE7se+7K/w/G8+5j/+Gw/7Up7jBBGdAo+48z/BCcRwLj3QOfjVKcPEEmgA2sI/CqMhtSvD
dEKBhzzxL0D+v3n+V7BKNCa2GGulFqcj9t+95f7Pfvazn/GMZzzrWc/C6pOJxwMf+MBTpOYf/IN/
8M53vpOBGcPFf/3WT5idbO+JYlOLyyHQcFhfnZ2IYYAugASQOpA9kG3MYifQQMbAQ9kOvmEY2ZHI
TuJrgRllxXL4UUwoshPkS3CoiXLb+JqAfai6Dd14c+yE1OSWndx/+j8EbNCI/+b5fwkx/i/e73/D
irdR/J4TlKAcgRznCP8ox1/QEZygCgpvl3f8BbKBW3byZ9VRCLEnvO4/oxgqogSqbtnMsIV/Skru
D50kN3e8/75/42F/DjagLv7KMJ3IMJhKY6h8sMXbdTN/gQZA23e87T7TgYqSv/3bv/2pT33q137t
10gpphyD1OTv/b2/hwEkVnfuxLmTNlGeG6ukY7CwTXuTteDB5vEXLJeaGg7r/bCTkiuQLmgNCqlG
OfvDFAtzMFqeUob5wTwHZ38kHG3Q3FDKnUSTDkUmmne2oRtvi52ImsxlJyQN+Ku4znjPYIz4ra9A
R/DvT7MU91ATCUAGLIQkJlYHDyAVAMkg88C/iZyADVGhGpWR+ooUiuUkSTRjsEXYT3a1jJSoFiLo
b/3Wb33605/+3LTjE5/4RGIn2CgLI0PkJWSWZidHZCd8U+DIRiaTQ/8XBAe3lx0snKu5Xp67tszS
03BY74edIPgpLQG2wdwJJ1/wEQcXrkZ2gnMUctErSQYyGUqfUJ5kgkmRMs+BuijnX647kQ0s1xSP
YjOXuVAnhDn142MBAg3deEPsJFITRLj//qNfeah//9E9WZb/G7p8x/v+Bs7/3z/w5Zfu/tz9TrCN
vdgJpngwaPzGb/yGqEnc8sTs5IjsBKGaO8ZOP8bTD2YnlSzkVPUFMSlWQaRnRiRmL7ikoyxkiZ6j
4dwKPiZhroTlihNWSR+TzdSQMigoUUPUkGpRZ5SphOKA1Q/IThI1OSA7+ebX/adIn/Df3/nu//Ol
qQn0z2UnD3/4w0E7sEssFqn8i3/xLwZ5iXMnVatiP7r2gc31kP/A1AkM+aZv+qaXvvSlX/u1X/u+
970PH1GIcxzYIUdm4u0G2NoEf1mCKjphXbzQ+K1vfavk8RHyaEVi+BgVRgCgga8GjE0MFqIWLYF+
Gh/tjzaoU+OGoctQmJqGTpiKTkEJqquzEy9aw2G9krWsGFPJTlY0wE1XItDQjTeROympCYLc93z0
fv53UQRmsRNsCAtfuuuuuzC/M8JLzE62yk7ISxB6RSb4SmGUI1SjkESB5IB8gmQFJQz5KEEVhmrW
JUGBPAtxgpDPQoV2qOKrj0uOAknoYROoC0IAJYOFqEsboF/NDdow0bDUCukXWkF1gABMcGJ2siDO
IePqFakLcOunyqHYySA1uWUn9/W/iyIwi5380i/9Et+qw1rjryn2zM7CmZ2Jv8KbiyVeIoYhpsJs
AcuVNhAXkT2RnTDjQqaCfAYZBksQ5nUeS0BEYtdiFdIFshPVVWGsNWIDjZliWGwFfadhEQScm530
EzJtydUQOA47OUVNzE4uykuofBY7IR05y0ucO9lk7gSBFiE/hdtIPpDbYNYBh1Ig4+wkUhbmV6QB
SiIRAQdiigVpiWXsBBpoGO0UK0o2kJ1MMSyxE/IhKI9TV2YnV4uIbqgfBNqyk4//8r/Ev1/4jT+4
6L+f/IW7sYvarH8j1ARB7ukf/Rv+d1EEFrCT8ZTJF71nx7uxgafMXR/QPCkyS2HiKDGQx7RBmSk5
mzsBe4jxXvLiJVqJcoqdcFYl5U5UyAUuiZSkNAnzQGXhoGGD7GQwgTQd4YbD+ly/SvL9hDpbsjkE
GrqxfslNjCuLxUB9GlITs5OL8hIqvzA7+dWblx7x3yZzJwqxmPXgOo+UZsDUDOI6OATXdnDlKVMg
XEcyuO6Ea0ghRv1Mz0ASepgmwUnJS7QGFpI3Nzdad8JcxWAhqIksSWtfkg3M35w1bJCdaN0JEPC6
k82FVRvcBIHds5PxrAkZ0tM+8p/730URMDu5BH/aNjuJmYA0cwFGwsUWekIHwjhHSXwGRwkMzuZE
YVAfasARH+RJ6QdU4QpZPTgTmxgslCWoqBZBIEobBgtLw9gKDYs6QarYKdh/6lGjU9mUhsP6cXIn
5SsAm4RYK1mMQEM37jB3MoWa3LKTv+5/F0XA7MTsZPq8xDzJcknKvPotpAdtWNGwhsP6QdgJd3Uz
QVnMJC5RsaEb98ZOJlITs5OL8hIqNzsxO2nBAoZ0aDbnUg1M0Dtow4qGNRzWt8VOQC/S7m2XiJrU
6Z3WLoctNTd0467YyXRqcstO7uN/F0XA7MTsZEKQt0gjBBoO61thJ+Al2DweW8gz/4Et5LHVvbaf
57uF0ysD+ea/uEU9g6Lqxr3t+U5jyOu1PtTvDd8ux1EaunE/7GQWNTE7uSgvofLLspOX/OrNIf/t
Z91Jo6BsNV9AoOGw3j87ES8BBVGkJI3QK4hBI3gO5kExvCKHPAPVn/Oc5+AEVVhdFASSKhx8uSCE
+YIec5RLcJSGbtwJO5lLTW7ZyV/zv4siYHZyCf5kdmI6MoxAw2G9f3YCAlGSA7EKEhEcfPGNXkQM
gfRynMhOIsuBGPacJTvBwTRMDMbgPXoH4SWC9GF1NnTjHtjJAmoCdvLUD/9V/7soAmYnZidmEtdD
oOGw3j87AXXge4PjvvWRneitwnzzDsVmsRNM4pAD8eDrkXmQrICdeEVtcxbV0I1XZyfLqInZyUV5
CZWbnZid1MZmvXKvVtFQ/Ysqv4TB4zobDuv9sxMGRXEUzuBEdgI+ocUiiqCgFJoJSlVEXPggD6og
ZRIVqkXzkuaMJCps6MbrspPF1ESbwn3uc5/TO+d8cgkEgPDiLfhOVbznPTuHXHSCXvc+s1NuGF8T
p6GN+7Bd4rio8ksYbHYyGBdBOPgoTSQTIB+kEaApyKNwQgdrTSCDiR6ugY1VuFQWX/EvG1ICBnoo
Dz7kfInZSYpM5V6x9dQETZidXIKRRJ0XYyf/8uYlR/zXOztpm5C4KIG4qHKzk4vGsEHlaU0J8x84
4mPA4BaxRFXATkBokrA0lJqv37uDtLiD3EkTagJ28id/8icInz4uhwAQvkzu5IjUBITsquyEm8pj
E3ftW4o93bGlR9weHuco0WtoUIUv6WVd7gEftz1FufaSZwjHBqlRQ4zrIhCQ0Tv8Sg3cwB4NoWm0
xd1XoTO+9k+taBtZs5PKGZxT1bcYR8tJnC32Ygc2b52dtKImzaOmFV4HgduZHbOTy78FEPEbB/gH
6YXeHgwewH3oQQIY4yHDrdkV8lkXnIBvjSEn0AtryB5QwjfsQAOaIK0p2QmU8y2+gxpQCA3kTNwz
Hh+hH03jhLkcnNMwFlKV2YnZicK5Hw/uhNlsmp2YmlyHAfTcitkJ5s5urvCOYlITxvL44jowCdIF
/E2vg4nsRKkL0hrSCJEPnpOdxNfioCEcZBWsKGoyqIGF0hDf9Cv7o53Rwsstakk06wofGw7rlayl
kzhnM7aIQEM3vvKqWFOTnknD1WwzO7keO1H8Zk4CKQoeSJ+QFqQAPxj7UcjJF7wTWBq06Tu+goBS
KUy6UD/LxU5OaYikh28BVHaE5xCgKmoT9TE7qSQig9W3GBRtcycIbJSdmJpcLfx33pDZyQrsJOZO
lAmYnjthDibSiJRO0GxRObODr7SuZVDDWXZS2umZnUvwEursJM7ZjC0isEV28gf/5o87D5k272oI
mJ0sZCcfmXkgqL/kJS9RJaZAUAKq8cxnPhPlTHt8//d/P04wBYMSVWEKhOtRvuRLvoRKwDNwQAOr
oAQCOFCCi4qTZGDUxm9LDSiUfppEzTSG55weQqNo6Ou//uv1bezdTGy6E284rFcSly0GRdvcCQIN
3fhqMztXi3xuqH8EzE6uxE4Q1N/73vcqDuOcsR/HW97yFpaDNIiakAewilhLFKYANYAr4CP08GNJ
TaK21772teIcSQMZiYyEWmpmdZ2DTqWGUu+6oxszDWo4rO+GnWCDE2xVEveTxWPDcdfXTkKyzRAC
Dd3Y7KT/WL4/C81OrsROZsbHLxJPeZcaVa47BYGGw/o+2Al3fQVBwX4n4CjcOpavHTYb6BaBhm5s
drK/2N9/j+5hJz/8L475r2q/kylBrpUMpmCQ8GilzXrOItBwWN8HOxkkImYn3fISGtbQjfthJ+++
PfqPrLawHgGzkw3kTs5GUwu0RaDhsL4DdoJ8CXIkyJ1gN3qcYzaHEzqRnfBlfji02YlKkHHpPIrv
1byGbjyRnXzyk5+8173udZ/73CdGJoywKES+bSRcYWX9xGD2lNvjlDAMmKjHYv0jYHZidtI2su9B
W8NhfQfsJBERvmc4FmIxCngJ3wUIBsO3A3I/e5zwr4/rI9DQjSeyE5AMEBEckSU8/vGPBzVJlCWF
RlSZGCzH2QlamU50JrZosbUQMDsxO9kDn2jbh4bD+hHYCV71h4Mv4sEJuUvMo1w/MLvFVWZ2yE5A
Rx71qEcppKEEczGRnYCsMJtCEoMT7N6Ev6wF/gHhlG5hIWWYO8HATT0oxx4NKMFX/Mg8DRqVgHMq
azGMmnbNTsxO2kb2PWgzO0nRPU7ilLkTvX+YX/G5HiykBVNBBoWpFB/XR6ChG8/KnXAqh2EJvAGk
AaxF7ASMgWQiUpaYO+G3ZBt33XUXlaD65z//eWjGCdkJCAcXoJASsUrMnbzxjW+EPAqhZHxeqSaC
uu7lEDA76Z2dtNpHxOtqp/OmhsP6EXInYCR8iqc8sOjEz/Vcn5ewxYZuPIudMB1CkgG6AA4R2QmY
hHaJFKtIMzsYlCGDHAyJiE6YWYnrTqhqkJ0wauJbkpvLBVFrvhACZidfYCf/fuYxPdRVSsbt0Rar
AsXBY8mLqx+tIof13//935/pFO3F1wpss3InWFkCCoKABJqCPAqneHDCj34p4FoXsaEbz2UnzIsg
vUFaIHbCZbNkGJFnRHbCR9bxLf+S64iRqBaa4CwSSgbZCSeD8BcyZicXIhAXVWt2YnZyhnvETeQO
QlMaDuuVhGWtwFa2i6d1WAguooWuKkQ5SYlKcBI/9tOR41jS0I3nshMELS4B4dRMyp1wwiUeohek
L/xKKRMwDC1k0boTURbM+AyyEyZpoAdTPGYnF6URF1JudtIjO+Gu9qQCyJ0g84EtT7RtPMvxMe1Y
jw1bUYJyTeJg91h8RF3s7hpzJ6ku+AfqQgaS0Izq3OSeeqAT59rQ9ggEpeGwvht2cpygvpueNnTj
BewE3EKkIbKTmNIQ5wB7wDmqkNbghNW1AFaLbUVKwHuYGuHSVwZIKKEqZlxIZVBidnIhAnFRtWYn
fbET8pK4nTzYCS4SCQpOSA4gAz7BQgrzbTso4XtwxGy4Az3f1HOqLmqhFajiFvg4B1PhG3xYBeV8
1/FBOErDYd3sZDfBfnMdaejGE9kJ0ySKWPFJmXTO9SIxtuGjcio4pzzyIpThSpRUiI9UEpVLjMaU
AhcNqFbeEIF72MmL//kx/33RXrFzo0jzFAISFaAFkZeIYXBuhRyCJ6IaZB7JmFJMVQbrSrNaFC+J
msFRoJlvKNz30XBYn+tXSX5zEdEG94NAQzeezk4aBierOjgCZicd5U6QnOC7iGPs16pYcQgwGCZU
eHA6BlkNnKM6/rJKnB4SKRmsm9bMchoovdwHfIXNHeHZn4bDutlJP9H6aJY0dGOzk4MThVW6b3bS
ETshyUgcpWQngw/gxIUpZe5E604G6w4WaoZIvGQwobLLJErDYd3s5GicoJ/+NnRjs5NVwvPBGzU7
6YudMNgjP6ElJiU74boTrjJBogXMAyVc/cqVKKrCiRjlQrTuJNWN7ARN81sqpObj8BJC1HBYr2Qn
P+fDCCxFoKEbm50cnCis0n2zkx7ZSUxIaCUKVp+kc3zEoZWqICL4CCahpSGkGjhQVxNG1BPr8pkd
NUo9R1hfcirx03BYNzuJsfWd73zn0lA7UO+nf/qn8T7C9MVgYcNGJ6r6wdtjovCFxBq6sdnJKuH5
4I2anfTOTnY5ddJ5pxoO62YnCr2gJtjYviFBecUrXoFd4FJoHyy8UPgfUfsPb4/rtxtbbOjGZicH
JwqrdN/sxOykc6qwgnkNh/X9sRPQC+QnrhN3sY/WSENmJ+NXoaEbX5mdYC8TPUusuFju4XbNkMkt
WPhs80XbvbT+ixrfVrnZidnJCuG/8yYbDut7YifgJdjhCukK5j+4LxY+cnqF5zhizgAyyJegkDwD
G9szoKpukocA5PGX8tCcBGI8JjvhuwalebAQBlMz5GHniA0TDYN5kExNQy36jibQFr49YO6EO72m
rc/4UsBZ7+GLL/NTwNO7iJeFQL7BmObNfWUx6uLgSwcrzRg0XvYQKxMUomR2spCdfNjHfhEwO0k/
ysVLFNohQC7CVArWWOCcORXEZooheCMm4QQyz372s3ECfkDNrAt5kAkUiruwIrXJBob8Mtij7s3N
DaugIRKUwULo5yoQNjdiw0TDUiu0jfwMnUJ/R0jVddJOaKWhG0/MnfCFfDhi+EfKAVdn1m6tg+xk
GSlhLdILnoNkwB9maWtuT2w9bqQ7y6rdC5udmJ3sl2Us7VnDYX0fuRNE9JIcIABr4SeICA7EbBw4
oTBq4WMMxpEZ6CsFcsrzkCSrI+SLf0hhnNlRlcFCVkma0W5pw2BhaVhsBZ0lMVLHcX7MdSdkJ6Aj
ogKIoCjhSwEZTbm1fMqmMLGhrAZf0MMd6PmuYzIMkh6c8LXDKY3BLe3xN6VGmJAoYzlpQaqC6mqa
+8zKNnZKZvD1PTyYGUJFvlcoiqGE2+2zeuo+X5RIG9hTJZkmmrdjjmJ2YnayNIbvt57ZSfp9DxaC
AIwjPocSAzm/ZUjGQbFZ7ARjPTmQDtnAnARG7bSidjo7gT1QTvYwzpBKdjJoWGInzPQQAZp9ZHYS
2QAiLqJyTA9EtsFYLjaDisxqMORj6QnpDgOwEhiD3yq6RybEimUJy0mbcAKT1ApOSCPIUVLT0Qy9
ZVCGxbcux0I2xPmasvspdxItmWjeXgmK2ckm2ck3f/M3v+c97ynpAQrL8sHC/VKLBj0zOxmcfRBH
4QxODOQIxpzEiUdc5MEqkRnoYWAUis0k/sEpnpKXUCymWMhgThWKN8CMcRugZIphg+wkgnDMdSci
E+IKCNIIsSkA86U5egWxwryirEI7OQRzIZGd6B09+pZKeKRMSeQZaoLZF32UDao7SIwSO0nc5RQ7
4XJaHan7g+xklnlmJ/t7F4/mUm9wNjcD3yAGLlLxmte85hnPeAYMfvOb3/xd3/VdScc33h5TChc1
fpRKZicjayMwBHOZSGQniPqkEZzm4IwJ1powY4EShvy05gPyOLTEROtLtGAF7KR8ApliIiI45+pU
Lm0hZUmFWl3LtbHsHZeYJBsGC0vDBtkJH5mm8TGPMgLmRb9q6Maz1p0oXcFpC3yMAZiAc7KDryA+
y07IRU6xE772D0pIDiJFYNgu+QoKOcNS8qHp7IQpHL4VmXpOsRN2k0fZ/UF2Mss8sxOzky8iMGsF
apCSr/mar8EmsNgu1uzkQleh4bA+l/Um+YtGr0rl5eO+XNgRyxGwY0lc56ElJtEM1GX5iG1gQmoC
J2wikphThVSrumRXqbnBQtZKktIT7Yn9vdpz16ewaujGc9kJOQfCNuduFIBJIxhNlTuBmOY7+CBx
yp2cZSdsbuRRF3yrFSEQ5suNZQkaVfWJ7ITEi1kQkQNQCqVJRLkiZRns/iA7mWXentnJiz51c8h/
m8ydfN/3fR9f0QfrQVMG0ySY98G3SLHwWyZUUuGF4vo+1DYc1nfMTmrITcy71OipqTtoQw+G1XQq
1m3oxgvYCeJ0jPRKMKCQe4cw24HICp7HQq5IXcZOmGwgP4hrcmP6RKkOtqI0Bsojq4hVeB7Zks5J
v/iX7ApzWOoIV9ukhApZVOo+l+mgkEoE2nTzzE72x2A2yU4Q/pE+ATvBXzCVkp0grQIiAmqCExIU
UJOycB804kK9aDism50MxlpMtayeWhi0oQfDtstOmCZRsIzPzsRzzsVATFuuMQkhmSRMhePfKiMS
DUhhm6tSYoqFJYPNxb6UHQERiQ/XiFKwI/irruEk7Sx3qvtiRTJ7onlmJ2YnXczsMB5j9clgYAYR
wUv7lDIB/yI7KQsvFNf3odbspFWAtJ4VEWjoxhNzJ3sNk2W/mCbhgt+4mcpxELhCT+95ZueQ0zro
9VZzJyMMIK6KxTlSLJrZEWVhoY8RBBoO686drBieD950Qzc2OxkkKFxTokUzVwjYh2rC7GSTTxSf
iqwxTYJ8CRemDBaanZidHDx47777ZieHiuX766zZyR7YCZaVcK6HS0zwl+tOuDBlsNDsxOxk9+H5
4B00O9lfwD5Uj8xO9sBOwD+4CRvoCA6sikWJ1swOFpqdmJ0MBu9yf5EeYjyW0GqTtGhPn9b2gBhs
MDs5VCzfX2fNTvbATkw12iLQcFjf3LqTuMFrJ1EWZsTdz2SV9oftx86uLGnoxl53sr/Y33+PzE7M
TtpG9j1oazisb46ddBVfZcwgO+nT1H6saujGzdkJHrLV9mgju6hdLoLiIWE8a0MbVjHgcl3bjWaz
E7OTPfCJtn1oOKyvy04wG8Kt5fkSHMZ47LYe34nDbdqVMsFX3AVVdZM8t42HPHeOx6GScp4FMlSO
gy/yTSaxdSjktzjQOmygThTqlTranD5JslbqBdMq0ch+SMPVLGnoxhPZCfdC5aHtQAaDpTZITS+U
mR5Z+YpgtpVeZDNFCfexxSPBiw0YaSXuj+LnjadcjkEZsxOzk7aRfQ/aGg7r67ITvpJXb6vRRqh6
Xx3ZAzdG48KOKMOXDPMdOvxWFfk6PW7cjm9PRVy9pjiplUmgEayLYMYmoPDm5oblfGFNWchXAavp
shdol51afc+3q3GRsqGGbjyRncT91xGVRwhK2r59bgAjDeIrfHHEF9lMVKX90ybKzxKLe8vOqmjh
iIDZidnJHvhE2z40HNZXZydIQjBu8X2/fFmMVmyUr9KNNIIkQJkJchfUpRJK8tV3IhlgA6iFo3zt
H19zg69kEpWT4qAwcQ7yD760L3IgZoNi4WAvZPyK/GDdphu68QJ2EpkK8xMgBNpjPr55R4XcjZ4b
w4N/RHKD87jjKqoM5kvKhjiDw43zpRAnYMD4y4ZkAE64M702p1eVKMYd9yGDQsQPfIz72UsJ60JS
c1gTzTNHIQJmJ2YnbSP7HrQ1HNZXZycK0qALiPSkDmIPYBgpio+zE76DV0qYmQDvwUCMr5BsT+yE
0yv4VvkV1lXYBs/g63z1Ut9IRE6xE2qTZNkLMB7ODYk2rUsUVmm9oRsvYCdAnuEZGQ6+MA/nSqiI
neiEMzWkIAznCPmcIqGGGLPxUYkTlZ9qCESEG6ahdWVZyncAoVHSFM4tUu2pVwVBkqbCQloS2VjM
negtgLPMM0ExO8EtY3ayBz7Rtg8Nh/V+2IkifYyUmqnRJEg5+8MZFiY8mDsZjLVKfuhbjPKQZ2pE
hZGdQICpERwxd6JC5XhS7iSxk7IX1MkZn1WYQQ+NNnTj6ewEVIC5B/iMGIk4Ad94x1hOwqGTSB0Y
m/U+Py1fVcyGkvJ9OlFD2RDqijAN0g7RiDjrdIqdJPbAF+JIeJCdzDLP7MTsZDk7+ZCP/SLQcFjv
h50gXipRoUUenJfh21A5XRLZCc5RyCQEV6ciTaL0CeXJDPAXwvg2RWWun+Vf0pqUO6E2NqGZHcqz
kGtvx9lJ6gWEUz6mB65wfRsauvF0dlLyBr46OBKLQXaSxCAjhlGuEeGa1hTCxxsiO1EOpqQdfFUy
OISmdUZyJzFhw2W5UD7OTmaZZ3byBXbyQ5+8OeS/qvfs7Dc0u2cfajisr8tOMM+SloVyyUhMZjD2
q4QP7IhG4GMSZi6EK04omT4qDIOs6PkaZW4GTWKjNJVEhK3Eh4BkGMR0rpOyF6gev70+OVi9xYZu
PIudpMiKsK2FHZy+GWQnUUxLTCCMwF+uruWyDzXECaDxhs6yE7QC85ACiQtcRDhii5EtoRa5F2qN
s5NZ5pmdmJ04d2IuMoBAw2F9XXZSEyBTkmOBKiZa8BdEgemZKUpimmSKvGVOIdDQjWvYCcO2lqaC
AQyyE2ZK+Pyt6AjWi2jVSArYXHzKVAeZynhDZ9kJ+AcXt6b1szCGc0zlYhToJGvhnJHYCa0iJ9OE
0SzzzE7MTsxOzE7MToajG1hFOVMzlwpAA1nO9NWppzatn9u05a/PTkg7BiMrV2bEfc+0KUjcHYRi
MSky8ugvKiZ5GnCqIfADtZVaQcW40pZP5dAMNTFYFwI0gyeyHCX8iEZjMmaieWYnZidmJ2YnZieO
4/tEYBV20jasxtmQtppLbcyRgD1wAYo3kL004Gf13/NE8SEXnaDXXndiajKMQMNhfbszO/uM2Efq
VUM3njizczbezBVAAiMmJOZWnyuP5jgRY2oyF7pLyJudfOGJ4n8383Bg3zECv3F7fOYzn5npFO3F
jxRM3dfGCDR047XYySVinnVuBQGzE7OTHdOMhV1rOKxXEpbG8crqjoRAQzc2O9lKRN+TnWYnZicL
Q/iOqzUc1o/DTspXAB6JCfTY14ZubHayp6i/lb6YnSxkJ4g6yPzz/vexSwQ8szM95HI/NBOU6Yhd
QdLsZCth2HYOInAPO3nhrxzz3xetil3wG9fsZJekRJ3qgZ18/LrHO97xjp/6qZ+6TptveMMbrtPQ
YVsxO3HU3zQCZifLcyd/9Ed/hADmY68I4Pou4Kxtq1wtsoKXPPjBD8YmrThBo9jj9UlPehI+kkPc
cccdfJ8fdi6RSZDnlvOUQRV+pbr46gUveAELucca5FGLJdQfFV6tswdpyOxk07HZxpudLGcnbeOQ
tRmBEoErxFHxElAQNUcawTwKGAZoBM/BPCj28Ic/nDwD1fEqHJygCquLgkBShXx9D74FHRFB4Udz
lAtdZbMTB/hNI2B2YnZiVtAvAheKW1EtX7+XGhKrIBHBwZfp4ITCECDbiIRG7CQWQoz8hhqYhokV
wXvAV5R6uUKXD9KE2cmmY7ONNzsxO+k3NtuyK8RRUAe+u1izMDERwnwJX/nLg2Kz2AkmcciBeOCj
+kWyAnbCGSUfDREwO3GA3zQCZidmJ+YA/SLQMFaNqxJH4QxOzJ2kuRjqAaXQTFCqIuICwkE9fEFx
MoAJFfOSy11is5NNx2Ybb3ZidtJvbLZllwtdg5pBOLjENZIJkA/SCNAUJFE4oYO1JpDBRA/XwMYq
XCqLr/iXDSkBAz2UBztxvuSi19fsxAF+0wiYnZidmAP0i8BFo9eI8rSmhPkPHPExYHCLWKIqYCcg
NElYGkrNa/Vx9+2anWw6Ntt4sxOzk35jsy3bYgQtJ3G22Isd2Gx24gC/aQTMTsxOzAH6RWCLMdJb
mHRy1cxONh2bbfwtO/nlY/6r3Su235hmy/aCQCdxzmZsEQGzEwf4TSNgduLcyV4i+R77scWgaJs7
QcDsZNOx2cabnZid7DGq76VPncQ5m7FFBMxOHOA3jYDZidnJXiL5HvuxxaBomztBwOxk07HZxpud
mJ3sMarvpU+dxLlWZniDk1ZITtFjduIAv2kE7mEnP/jLx/znVbF7ieH77ceUILQVGW4da4Jytetl
drLp2GzjzU6cO9lvbN9+z64WyaY3BHrBreuvcMTN367Q3M6aMDtxgN80AmYnZifbj+H77UFX8RK8
BPvQY3965j9wznf4cWd6nuOI+51Ahhvbk2foRcSqm+QhAHn8pTw0J4GuAOncGLOTTcdmG292Ynay
39i+/Z51Ev/ES/TmPxhGLsJUCl/px5wKuAXF8JIdsBCcQAbv5cGJtpFlXW54j0JxF1akNvUddMcc
ZYEnmJ04wG8aAbMTs5Ptx/D99mBBTLpEFRCIcgdYMAbQCDYHIoKD7+LBCYX1smKZFNmJXrgj5kF5
Hmk7fPAYEB2lXi7Rx/3pNDvZdGy28bfs5BPH/OdVsfuN6nvpWSchEyyELxkWHWHuRAxDryAGL8FB
sVnsBOkTciAd6jvnjMBOvKJ2lj+YnTjAbxoBs5OFuZOf//mfx+85HONx8HGPe9yXfdmX4e81w+Xv
/d7vnTXsmva4rcUIzIpGlxYWR+EMTmQnoBScxIkHBDQTxCoxd8LVKiwUm0n8g1M85iXLrqzZyaZj
s403O1nCTh7xiEfc3NyAduB41rOedSr2YESGGKgJZMAY/uk//advfetbFweq6RXREAybLm/JbhFY
FpYuWguEg8tEIjuBq5NGgKYgj8KcCtaagHlgogcl5CJp3QnkucyWBmt9iRasgJ04X7L4apqdOMBv
GgGzk9nsBFkTcg6EtF/91V+NhCNlU8ASIMk0BpkKSiYGQuZmoD/Jo1wllCkVDrKTKZke9mhQp5Mx
Ey9cW7HFkekKFcvHfblkJJaDW8SSuNZES0yiqajL8ivYv/smzE42HZttvNnJQnbyV//qX43UAUQB
Jcym4CAVwAlTLKQLSrdAWEkXfsXY/zVf8zVQgpOoioSG2lAuihNlImWBcGInsFOG4YR0CidojqFU
58gJSfKFL3yhVLFdE5S2zGOKtr1G0Jh32WsfV++X2YkD/KYRMDuZzU4QVDSzgxPGGER6xHXwAFIB
kgzkVxDUEeYxrYO/zLiQSUiGgZ+ZGBRSoWaL8C1VMfUCgVe/+tXQQP4BtThUS9EusRO2jm8pTLpD
IoITpoIgANaCE+iP3zL9g95dZ05qSsA+lMzqEe5CBmCi52pbul2oC/2rNTvZdGy28WYnS9gJAiTC
OWI2I3ckFsp8MPFwamaH5IB0gRSELIEkABQHdbmilhwiTQwxccKKIjqn2AnKoRYKSapId8hF0Au2
ImulMxY6a7IWJeo/BNrCbhEwO3GA3zQCZicL2QnDFcnBAnZCcsAkBygC/oolMPsCJsFvT7ETNM35
IxzjMztIhzA9Q4VkJ7SZKR8SLH4Lw6Q2Eay1IvSR2+028tmw/hEwO9l0bLbxZiez2QmoACI9Qjii
fpyg4bQLCxXvlTvRWlrlIcg8yBV4zlpMk0APMyuD7IRUhokWaE7TLuQZ+IsDk0SaBtLiFcZ7Tjwx
g6JsCieVwJA4xRPTP0dmCWv1vf8QaAu7RcDsxAF+0wjcw05e8EvH/LdwNzZEbq1IZQKDlEKFIBlc
MItID5YgOpJmYZi3IBvgV3G5ibiL2AkJh8Ikq/NITzUr6cJvuQhXhxbDarWsdGouCcJcARMX7a4V
oY/cbreRz4b1j4DZyaZjs403O5mdO2GwLJ/1PVW4LLgO6i9VpTmdkbYGFYqFxIpeZbLskl2iVv8h
8AoWlpvoo1Hvg3IWebMTB/hNI2B2spCdXCIUXVknMi5ah3vlpt3cRATORqAjCKR37pCaoNAEZfzq
m51sOjbbeLOT47ITb3g/kSKsKLZR8sEXF7cyvmQnCzTHNwQtqL7FKmYnDvCbRsDs5Avs5N/6MAL9
IbC5oAhews3pmdjAOd/hxxcaY5sTnMRXDVMYB3avZ2exXSwEwEgkhnNWTO8dpDy3yU/fYrdZlKCi
3v7DhvTen80Bu8BgsZN6v9YavU1HOxu/LQTMTsxO6scua7gUAj+7nePtb387GMC9731vMABZjY84
PvCBD4BAkCvgK/wFF6EMhSGAb1//+tfjHPIQxsnzn/98lqgiyvEtK6JQJ1Qbv4XYy1/+chQ+5jGP
4bc4Bi3cDsCzLTU72VYwtrUJAbMTs5NLRVbrrUdgdkRarwLoAqhAal8sIfIJ0A6RDJSDgoBJUBIE
QrRDqlQCgUhKEk3Rt9SPjzjAfmJbbA4lpanrIXepls1OHO83jYDZyWx28is+jMBkBCoJyqUC1wX0
ghPc7/bAidQPshNyEcrgBLkNcAXQDvKJenbCPA108mAmhgc+HoSaoLNmJ5uOzTbe7MTsZHKkteB8
BI7DThj+xVEwWUPywRmWmDsROxmciwGxQAYl0qe5uZNBinMoXkL0zE4c4DeNgNmJ2cn8kOsakxH4
zO3x2c9+dhlNuUCO4xoqMZ+iRSQj7AQyTHIgfcLcCYzDkhRwGv7VuhMaPXFmB5LM4lAzcyd4fv4a
Pe+pDbOTTcdmG38PO3n+Pzvmvy/aK3Z68JgcmCxoBH6lMkL0FOyW2EJ6IW6hc5UjTcLlJjFfwpUo
KhG/IUFJ2ga/pSSPJXbvok6l78Uh0c/smCtcHwGzE+dOzCEuiEBlhNhFlHQn1kGg0vfMTq4fj91i
RMDsxOzkgrHZqisjxDphza3uAoFK3zM7MVdYFwGzk9ns5Jd9GIHJCFRGiF1ESXdiHQQqfc/sZN3Y
7NbNTsxOJkdaC85HoDJCrBPW3OouEKj0PbMT84N1ETA7acxO3ve+933d133dV9we3/u938twxsIH
POABKHzc4x6nGPcN3/ANlMS3b3nLW1COKiiUAMtxoC4LcVIKSP57vud7oA0yONT6/JDqGs0QqIwQ
u4iS7sQ6CFT6ntnJurHZrZudtGQnH/vYx770S78U/OM1r3nND//wD5NSgJqg8Du+4ztwDp5BmsLo
ByYBqgFhfAsZSKJQJ9AAAZRAAIWsghMc+Eoa8C3PyYr4Ua03C7NWtAiBygixTlhzq7tAoNL3zE7M
D9ZFwOykJTsB1QBFSFEMJakQ9IKZkphKwTkyHygEuaE8SAxLEjthgiSxE9ARMZhFYdSVLoJAZYTY
RZTMncAGJPFdPK36CLXY3YS7wPkAApW+Z3aybmx262YnLdmJGEYMdChUqkOUgvM7kZ2AWygLgvNI
QRI7AbNRQ0qWgBjFGZ+LRFornY9AZYTYWZTFFibcJA3sBCcNe8f36WB3E7MToVrpe2Yn5gfrInDL
Tn7xmP8W7sY2EqEiw5CYCEQsETtBggTnXCkiAZSQoLAksRNOGzF9IuUiOuAunP1xKmU+l2hfozJC
NIzfnajCnq3YFhZMIr6Op942vlKnXs+eNFT6ntnJurHZrZudXCN3Ip6h3AlLuIIVVIMTPToiHRlk
J5z3AYmJuZNy/qh9sLXGmQhURog9BUv0BbkT7lLPjerT+3QgwLfh4NDUD1IsZDPaih7TN8yUSAwf
IYOjbT5m6+BX+p7ZifnBugiYnbRkJ5hbiSkQBrK0GIWLZLkANj3CM4udMEcSl8FKLfU4dzKTSFxE
vDJCbD1ADtrP9waXUzDgHyAcLOfLccA2eMI37OjdPRSLr91x7qSEutL3zE7Wjc1u3eykJTsh4UAO
A6kRJjZQQjqCQuRI8GxOWgkbHzCexU4gDJ03NzfxmR0+McTHks1OLkI3ZiqtjBC7ZCenOoWkSJyd
QWZFbydGFX2b3ntMymJ2YnbicL4zBMxOGrMTBC9QEFAEHEyQ8FBhXCGLwrRglsJ4MjmylvgxsRl8
xLdqBdrYdGp9Zki1eDMEzE6mEyzQjshOYmok8o/ETvieP7MTs5OdxWZ35x528gO/eMx/7VfFNotp
VrQXBMxOzrITrT4Bw0CChPKc30HuRN9qlYnZyVlIKVDpe57ZMT9YFwGzk9m5k0/4MAKTEaiMEBPj
0KbFlDLhVA4ICg6ub+UiWfzFR614NTuZeLkrfc/sZN3Y7NbNTsxOJkdaC85HoDJCTIxDmxbDwpG4
QhYzNZys4YFvyxJ9K0lo8E4nyQ0qfc/sxPxgXQTMTsxO5odc15iMQGWE2DTtsPHrIlDpe2Yn68Zm
t252YnYyOdJacD4ClRFi3fDm1jeNQKXvmZ2YH6yLwC07+YVj/lu4KnZ+hHKN4yJQGSE2HR1t/LoI
VPqe2cm6sdmtm504d3Jc6nCFnldGiHXDm1vfNAKVvmd2Yn6wLgJmJy3ZCbZB+0u3B18vzOD33ve+
l4U83vzmNyso8vXFMUaiIsVQ/uIXv1hf8UU8KZo+8pGPVKGaZutXiLtuYgoClRFi09HRxq+LQKXv
mZ2sG5vd+oMe9CAQlGMeD3zgA0FNWrIT7IEGcvDqV78aXIGv8UMAw0ec4y8PhTSwFr6rDycqZC2I
4S83fuVXlBTjQQlYDgspoKZTK1MiqGUuh0BlhFg3vLn1TSNQ6XtmJ+YHPSDAIH3Y4wbsLN6K4+cj
kYwUgQJIbJBbkJ2Utb79278dMsiR4CSyEzEY8g9yF5zETAlKuF9+YieXi7LWvAyBygix6ehYGl++
9q+mg3iEmG/hicdgYU0ry+riDcxtX8K8wIxK3zM76SE224ZPf/rTh6Um6Ht7dsLZHGRQUu4kTutw
lgfTNyI0ZCExv4KvOL/D8phowVcf/ehHB3MnMRmzLKa6VisEKiPEgpjUbRVuttaQoGCzE+zMlvo7
WHh9THrYWb/S98xOzAyMwOoItGQnoAvgDfirjAhYBd7Vp/UoDHukLzyHsFhLyU6YgGE50ic48BHK
uWAlshM2jYMyPnpAoDJCXD+snm0R9OJq+57xDX+nDrOT8YtV6XtmJ6tHJhtgBFqyE3IOrlFldByc
2QGBgABf18dZGzGVmDsRWeEJl6pAUqtrPbPTAwUZsaEyQpzlCtcUAC/BHvNIVzD/gfM77rgDHzm9
wvP0Jj/IIF+CQvIM7UavukkeApDHX8pDcxKI/SU7efjDH84q/GqwEAZTs17WE+2PTUw0DOZBMjUN
ndx6H22l9y1f8zKprUrfMztxaDQCqyMwj5380unjsY99LHgDv8fJ05/+dJz86I/+KDhEqoQSfIuv
cOBEAjhBCYUxp1OWMzWiViQQmx6x0F9dGYHKCLFKVCsbFS8BBdG35CJMpWCNBc6ZU0FsphiCN9/q
B5lnPetZOAE/YHXWhTxfRCzuworUpob0tp1kGOoiK8kqejXPYCH0cxVIfO/xoA0TDUut8NXK5Gfo
FPo7Qqqudk0rfc/sZPXIZAOMwEXYCTgHOQTZCdgDj5/4iZ+ItIPBEgIo5AnIB8TwlwxGAmQtKMGI
HMspgCqxlSvHYDd3CoHKCHG1SDbeEAgEA3A8EIC18BNEBAdfiIMTCqNWfGNOYif6SoGc8jzEY9gi
Qr74h2yIMzuqMljIKklzfJugbBgsLA2LrfAlhWRjQsnrThxXjIARqEegGTsBw8CKEAUqMAZRh8RO
7rrrrhjP8JHsBNUpKf4hDR/5yEd0XjYB0qMm1K5Jw+oI7IOdgIXwLcHxOZQYyPktQzIOis1iJ0hv
kAPpEAthTgLsJK2onc5OYA+Ukz3E/E3JkEp2MmhYYifM9BABmm12Uj8uW4MRMALN2MnqsdAG9IZA
JTv5WE+HOMr73/9+2IWQ/LKXvYwGIhiDPSRjIfDkJz+ZhawCZsCP+OqJT3wiz1EIzTx529veFpVw
igeaUzk/onUpREOQPFVI3kAzxm2YaBiaZnPsO88jCFx3su7Vq/Q9z+w4NBqB1REwO+ktpu/HnsoI
sW54G2wdPOB1r3tdYieI+qQRnOYga7nzzjtBBR72sIehhFwkMgPKc5ltDPPQgCrkOmAniZdENkB2
guqQxwmaEztJhWidczdcGyuGVNrAdSdnDRtkJzCV/eUklNnJ6iO7DTACW0fgHnbybyYf+4mc7snl
Efj12+P3fu/3JvvXFwl2yE5kEjlKPBCzccRyBOxYolwL8y48ogbULQtTK2BCagInbCKSmFOFbEt1
B22Ybpj0RHtif5kuWvGo9L3oiHpj6tbHettvBLaFgNnJ5aP0UVuojBArxraLNh1nhS7a0IjyQRt6
MKwVIJW+Z3ayrTBma3eJgNnJUbnD5ftdGSFaBare9GCqZfXUwqANPRjW6mJV+p7ZyS6jnTu1LQTM
Ti4fpY/aQmWEaBWorOeACFT6ntnJtsKYrd0lAr2wEzxUzOeKfewGgcoIccCY6i63QqDS98xOdhnt
3KltIdAFO+Fmr9iEbTeB2R0BApURolWgsp4DIlDpe2Yn2wpjtnaXCMxjJ//sMgeoCXaDvYxua10N
gcoIccCY6i63QqDS98xOdhnt3KltIdCSnWCP1/vf//6PeMQjFA+RFEHJt33bt8USEJGHPvShEsO3
2IceH6PYahHVDbdDoDJCtApU0/WU+4tMr1tKXnSR6UWV1/S6k7qVvmd2sq0wZmt3iUAzdgJuwRQI
OAp5Bj6CnZCL4JxRD0QEfIWFOEHJj//4j/OtgThpFxmtaX0EKiPE9eNc3OC1vvWLPqB7UeX1fV9d
Q6XvmZ3sMtq5U9tCoBk7AcN40YtepJCIczESkhKSD5x8+MMfxglfEEh5z+ysTyUuYEFlhFg9wlUa
cFECcVHllR3voXql75mdbCuM2dpdItCMnYBqxLUjXOiqkCf+IUZidnIBPtCXysoIURnkMPfB7du5
MTz3X8du6/GdOHxNjFIm+Iq7oKpukue28ZDnzvE4VFLOColAQEYv1ik1cKt7CKNpHLCBMigXAnyT
DjekZ6HZybh7VPqe2ckuo507tS0EmrGT6bkThlCzk76oxAWsqYwQleyEr+TV22oUzvW+OjAMFHJj
NLKHKIO6IDR8hw6/VUW+To8bt+PbU3ZSG19bQ5lSAwpJgGgG5G9ubvj6QL1Lj68DpAAoC781OzE7
2VaksbVGYC4CzdgJkyWY0MFJue6ES0w4s2N2cgEm0KPK1dkJkhCMYQzwfIuN3uhbvko3shNlKfQa
XqZYqISSfPVdfBcxhHGI6/CVeIqjpQayEwmkF+yxLnqBg+3ihIaZnZidzB3rLW8EtoVAM3aC8IiV
raIm+Pjud78bH2MJCvGRgRSrT3QONsPFKD72hMDq7EQMA3QBJIDUIbKH9CrdcXbCd/BKCZMZ4D2g
IPgKkzIoSfo5R6N96wc1jLATJmbAUfjWXx5o0ezkbF6t0vc8s7OtMGZrd4lAS3ayp8jqvtQjUBkh
zkagcQHGcsog6xBJQJpnwUcSiHL2hzMszMFoeUrZrlIa8Stqgw1KnwxqOMtONB9UKq+EaMfVK33P
7GSX0c6d2hYCZif1UdgahhGojBCVsTOyk5iBANvgzAvnZbguhAQishOco5DJD654RdJCyQ/Kkzdw
6ocpjUECQT2DGlB4lp1w7QsbgiowHudOzvpGpe+ZnWwrjNnaXSJgdmJucSkEKiPE2Qg0LoCgnl4F
zKUbjO46Ygkf2CHtwIGPSZgrYbnihJLpY9QsbRTjV4MaBmvB+KQBSlQSv6oEapfVK33P7GSX0c6d
2hYCZieXis3WWxkhVoyaKe+yoiVuehkClb5ndrKtMGZrd4nAPHbyiz6MwGQEKiPEsrDUpBamacqZ
miaareQ6CFT6ntnJLqOdO7UtBMxOJgdbC85EoDJCXCeMuZVdIlDpe2Yn2wpjtnaXCFyVnXzo9pgZ
464hjl32n/a0p12jpSO1URkhdhk13anrIFDpe2Ynu4x27tS2ELgqO/lvb4/eAvQP/dAP8SXJ4Ci9
2bZpeyojxHXCmFvZJQKVvmd2sq0wZmt3iYDZyS/2yZk2zUtofGWE2GXUdKeug0Cl75md7DLauVPb
QmAddvKud70LnADb2yuV8q3f+q1KXSCZ8dznPpcRDikNiGnaBV/hGOQTkIEk5BXXoZMlaI6FbAUl
D33oQ9kctEEmWrIDWtBJFyojxBXCmFe/XgHkVZqo9D2zk22FMVu7SwTWYSegFyATr3rVq8AScCCa
ooQnOERH8OIe8AmKkcfgL2Zh8Ff0RbQDwpCEWlQhrUEtlOAjqpCgQAYH6rIQJVgHA0kckOwkqO/G
jMoIcYWopieH47v6rtCum7g0ApW+Z3ayy2jnTm0LgXXYiQIwOAHoAj6CPZAu4OCJvmKGg2KRxMQo
jm8hE0ukjXSHlIXURK2Qsnhm50J8qDJCXDqAQb/3NbkCyKs0Uel7ZifbCmO2dpcIrMNOyDZAGpjM
iCkTJD+UTQHD4LQLDhUOrquFZEx+4DyyE/EP5lfETnhudmJ2gr3tub09/nLDeG5az8iqb3GOLAtf
+AcZbtiKdxSntwmuEo/daETA7GSX4cqdOhQC67AT5TBigoQLR3AwCxK/Uvg8xSSm507MTi7ERUq1
lRHiCuFWuZN4Al6CPePBP3iSUizxXTwgKBTTxvZXsNlNTEGg0vecOzlUFHRn+0RgNXbCBSUxd8I5
nZjzwLegI1xNwhmZxE40ZYNyEhSccBKHK1pQl0tVGDudO7kaNUFDlRFiShCqlBlkJ0qEgIgwoRIn
gMROUI5zyVRa4uptEaj0PbOTPsOVrToUAldlJ3zihqtMyDPSNmjpoRssWaUYDq4RkQZGWRARLTcB
gxE10besqy3gIK9zlSed14zf+26rMkK0DVeD2s6yEzKVU+wEszxInHjP+ytcqblNVPqe2cmhoqA7
2ycC89jJL1z4wFj/pje96cKNWP2VEKiMEHMD0gL56exEa1A03QNSgsQJFp3g74KmXeWiCFT6ntlJ
n+HKVh0KgY7YCXgJcidXipxu5vIIVEaIi0YvKp/ITkBEuEgWC02QL+FiFJASZk1Q6FWxV7hYs5qo
9D2zk0NFQXe2TwQ6YieXD5du4aoIVEaIWdFomTDWtOJA3fIEhXw2h5qx7hWkBH9VQo7Cgw/v+OgH
gUrfMzvpM1zZqkMhYHZy1YB9qMYqI8RHfRiBpQhU+p7ZyaGioDvbJwJmJ4ciDFftbGWEWBqYXM8I
fLTS98xO+gxXtupQCJidXDVgH6qxygjhGGsEFiNQ6XtmJ4eKgu5snwjsjZ3gOeFDMYCeO1sZIRZH
Jlc0ApW+Z3bSZ7iyVYdCYE128uVf/uXYY61VfIWqV77yldCJZ39e+MIXtlJrPYsRqIwQDrFGYDEC
lb5ndnKoKOjO9onAPezk85OPxYFqsGLbrU3ASPBAMp78xF/QlLamWtsCBBghfvd3f3eyf32R4OLI
5IpGoNL3oiNihLz79uhzBLdVRmCvCDRjJyAHOLg3KyPZIx7xCBCFpz71qQpsEOAG8+Ql2Ln1gx/8
IE5YFx+TPNIh3D32J3/yJ6lEJWWwRLsQRu4Efz2/s4BMNK9SGSH6CbF33nnn137t1/7AD/yATHrf
+973hCc8oR8LbUlCoNL3zE72GvDcrw0h0IydgBAgb4G/nKwBSwDbQA4DXIRcAYwEAviWHIUyTHKw
LuTxLWVIRCjAQmlACTSQ1sQDDAaFqIK/bbMyzcP2QRRWRohOIu5b3/pWuB8ICjY1AUfBAcNe+tKX
Yje2Tiy0GSUClb5ndrKhGGZT94pAS3ZCzoGD6z94DibBc6RAcMTAHNmJvmIKhNxFy0coSX6jPAob
YrnUek6nH+pTGSE6CbqDRMTspJOrc8qMSt8zO9lrwHO/NoTAPHby86ePf3R78HucgEZ85Z8eD3nI
Q1AIhiEBiqHkR37kRygf66IchdCAE+rAyY/92I9RkoU4RwnOcVC/j94QqIwQPcQ/5EuQI4ErYrt6
nGM2hxM6kZ1893d/N19W/E3f9E20WSXIuPTQiwPaUOl7ZicbimE2da8IXISdgHOQYcTj798esSSy
E32FE7EZ5E4GIy4EEtHpLTDbHiBQGSE6iamRiIB/kIKoEItRwEuwDAWFYDDgJTgBm2EJ//q4PgKV
vmd2steA535tCIGLsBNlSkBTsCr2Oc95DkpANTBq4yMO8Q/lTvAVCAckcUJS8i3f8i2c3IEMuQvr
4iNyJzgxA+gcgcoIcf2QNtjiODvBqwFxQAYHTshdYh6lk14czYxK3zM72VAMs6l7RaAZO+FzN4qX
P/MzP8P5GhxYKcJyCMQS8A+Icb4GBz7ib1QCssKvyEWgJ37sPDbbvMoI0UlAHWcnyJfgYE4FB5/r
wUJaMBXwbKZSfFwfgUrfMzvZa8BzvzaEQDN2UhOM47qTGj2u2xUClRHi+iFtQe4EjIRP8ZQHFp34
uZ61LmKl75mdbCiG2dS9ItAFO0HWBEdXkdXG1CNQGSHWCmyp3fHcCVaWgIKAoICmIInCKR5mU/i3
k14czYxK3zM72WvAc782hEAX7KQ+EFpDhwhURoh+Aiqe1qEx4CJa6KpClJOUqAQn8WM/HTmOJZW+
Z3ayoRhmU/eKgNlJh2F9JyZVRojjhFL3tDkClb5ndrLXgOd+bQgBs5OdUIEOu1EZIZpHLCs8DgKV
vmd2sqEYZlP3ioDZSYdhfScmVUaI44RS97Q5ApW+Z3ay14Dnfm0Igc2zEzyTzMeSffSGQGWEaB6x
rPA4CFT6ntnJhmKYTd0rAptnJ34auTdSInsqI8RxQql72hyBSt8zO9lrwHO/NoSA2Um3wX3zhlVG
iOYRywqPg0Cl75mdbCiG2dS9IrAOO8Her/HFfticXq/Owf6w2Kiem9/zwNv+sJN92r0eW8qyCr4a
eecOd7DFZipRJ/ecRYkqYm4IMmya+9KyCl89yIPfojlufct3CXlD/REOVRkhjhNKR3o6uGMK9qJd
AA42ZYlPQS/QwG37F1S8fpVK3zM72WvAc782hMC12Ql5CYiFtrfn24wZ7PkV37ZDZgAxvp2HAnzh
Dl/ZAzGU8wU9p2IkvoIAmYd0cmt8UiK+8Qfn+FZNswoOnIia8J2F1MNC2IYq5iinwK+MENcPaR22
CGdLVoGaoHAWQcGutWAV2B0OG+2f2tn2bN9REQe36u//qPQ9s5MNxTCbulcErspOEi9hVMNQy2Wt
4Bx6s7FSKfHNxuArZAZMmbD6+LqTKFnSCL1LOb5UObaI5vieQr6PkC3q1cqJo4xkEY75VWWE6D8E
DloI3tDw1cQlO1kGC3IwUAWCIlqD/eJmqcKWuHOrzNLfVrjS98xO9hrw3K8NIXBVdgKugNCeUh1K
RUSKIM6R5CkcJ2XOshM1J1WkQVDCbA1zJyJGUaGICNplFdaKMz6DnTomHUm9rowQbcPVFbQh8CO7
gChOBoBzvAUQH3Eg5fCEJzwBJ+AHsoTCODRdgpkXCJBGUAznrBjJgb7FSfktt95HRaVJ+MYfCKMh
vfqHJadyIckSqIJC7tkPq8B1aJJKrgDvrCYqfc/sZEMxzKbuFYGrshNlOyLnGGcnZ3Mn4+tOEtUg
U0HrXNcymDsZZCcxd6IYbF4yTsIqI8SsaLSusHhJfCkxgzfyKCAQ4gqI7uIiFIYAvuWKEMhDGCcg
DSxRRbIQURadkC7Eb8Vj0hsKwUWgM+Z10ArfsVxylNISqYUSWMVN/VuldppfvkrfMzvZa8BzvzaE
wArsBCENUzmYu+GkyTg74WwOlokw4UF6oXUnXBoyvu6kzJ1ADypqpcuU3AnkSVBQi5NKMGykXedO
gEBlhGgesS6nEE5YLl+N2Q5FcfAAkQzYwzfyUJILSpKRKoGAzssTfUv9fO8PMzdne43MChTGWZtB
S9Sd+FpEs5MNjfU21QhsC4F12EkM3unBGX7FZ210znxGfJAH5ygBacDSVEmWnCDqgTAl+cwODjAM
PnTDZ3bKplGord7YIg4/pzORex2HnQwmIQbZSQztnBbhihDyiXp2wjwNdPJgJubUMZjygfCgJak7
TLosXmN7ljNVClT6nnMn2wpjtnaXCKzPTiaGOottDoHKCFEZn65fXRyFsyfj7GRwLgbEIj2MMzd3
MkgsBqHgqpc4FcVcjuaMkiXqDizH5BSTPdcHeWKLlb5ndrLLaOdObQuBnbATZEG4ZDUece3q5kL7
DgyujBAT41BvYoj3WkSi6ZJIMjjbwtUbXBqiiRWuWuVfrTthByfO7ECSWQ1qHsmdJF6SmigtSetO
uHpXdvZ2FSp9z+xkW2HM1u4SgZ2wkx3E8v11oTJC9Bbw5toTtz6LqzpUjtwDMxAxCcGVKIPP/UpJ
eUJuIQs5TxRLJhqf7IyWyGwQFy2ywUl8CmliK1cQq/Q9s5NdRjt3alsImJ3sjxX00qPKCHGFGOYm
FiBARkL2U84NLVB4iSqVvmd2sq0wZmt3icA8dvJzPozAZAQqI8QlgpZ1NkEAs0Jcddvt1rGVvmd2
ssto505tCwGzk8nB1oIzEaiMEE3iqJUcE4FK3zM72VYYs7W7ROAQ7OSnb4+ZsfUa4m984xvLZgYL
r2FN6zYqI8RHfBiBpQhU+p7ZyS6jnTu1LQQOwU7+4e3ROvg20Icd3l7xilckRYOFDRq7uorKCLE0
MLmeEfhIpe+ZnWwrjNnaXSJgdnL1oB0aNDuJYSCdO8YagcUImJ3sMly5U4dCoF928pSnPAXBm9Mc
2LMVJ9hCHvvfv/Od78Q5TmI6hN9isxPUUvT/wR/8QYrhq5HcCcRwoAlUf/azn83qaAVVUBIr4hyp
DjUN4VgFtViC5lCderAnxEjT6CCaZr80oTNYuCaHWtp2ZYRYHJn2VBErT8vuvOUtb1nQR2x/8trX
vnZBxS1WqfQ9504OFQXd2T4R6JGdkJeQiDAy8mXCiP0oRLxnyoGvyyGTQCFqsRDBHoWI+ihEFZSP
UwSwBwhAFYRxQpaAQipEizhENUA+2AotjFVwTsNYqJgOVSgf5CjqF18YxP4OFi5lCGvWq4wQWwyK
zW3+ki/5kqQT1ASFswjKM5/5zK//+q+/733v+/3f//3gKM2N7FBhpe+ZnfQZrmzVoRDojp0kXiJ2
oqwGojiXuJLE4ITvMaYkuAWZAVMmLBxfdxIloTBmX1CXXETshE2D+qhQqRTmPGRwWlBCDpRWvJJy
qQrJ1mDhmixjaduVEaLDmDfFJPCG9773vVMkp8iU7GRKrVIGORioAkERrXnJS16yTNUmalX6ntnJ
oaKgO9snAt2xk8FMQ1yfobSEeEPKTFAgTsqcZSdKbEgV+QeUMJMhdsKTSFmknEkdbqWPk0hElA1K
gT72S00PFi5lCGvWq4wQm4iC0UgEfr68hgwA53xLMA4kLfhiHfADVaEwDiQ2WIiZFwiQRrAE56yI
Q3xC3+Kk/BZiEEZFpUmQO2HTaAgn1MwSGDaIsyxHXQpAG3SiFqeHqBMlMr6r61Xpe2YnfYYrW3Uo
BLpjJ8p2RM4xzk7O5k7G151E7hIpArMaKXcywk5i7kSkoJylinwhpUmYthksXJNlLG27MkJ0Fe3G
jREvQVCXJCkF8iggEOIKiPEK5xSGAL5lyIc8hHEC0sASVSQLEWXRCSlI/FY8hq/akT3gItAZ8zpo
BYWDHAXtUpJ/YTNVoafgJZxdIluKXe7nklX6ntnJoaKgO9snAvewk89NPpbGqSX1MIeCSRPOj4yz
E87mILQz4cFEiNadcEnHyNLUU+wEFbXEZEruBPIkKKilSaW4eoZKNPfEftFyGqkpnrJwCYJr1/m1
2+PTn/70ZP/6IsF+Qt1ZSxCqy+WrMduhCRoQApEMqAVdYKoDfxnyU1sqgYDOyxN9S/34iIP5j7PG
g22IakRqFXuUBCZqPtv05QQqfS86IkbIu2+PPkdwW2UE9opAv+wkxlYEb22nJp6BEi7UIBchydAy
DhTiHCWQwWpTrQgpQzaf2WE5hHnOZ3ZwgExoJcqpplWdLXJF7SluALOlh88isYqWAA8Wrs00lrRf
GSEuF7qaax5MQgyyE3IRGoATJCS4IoR8op6dME/DbeZxMBNz6hhM+VAYXyFfAlVMjSR2As1TeE9z
nKcrrPQ9s5O9Bjz3a0MIzGMnH/dhBCYjUBkhpoeiTiTFUTgbMs5OBudiyodx5uZOBinOID5c9ZLm
ZdIjx1xcwr5IEr2b3spal6bS98xONhTDbOpeETgQO3nDG97AJavxQOHkaGvBeQhURoi1Altlu4ji
WkSidayRZDDeQ4ZJDq42pSRXrfKv1p3QnokzO5DkUhJqHsmdlOtF1AROqIF/oZOzP3wsmTrLZbaV
uLWtXul7Zid7DXju14YQOBA7mRdaLV2NQGWEaBuurq8t5iHi47sqx+wJl5vEzUu4EmXwuV8pKU9I
X9RHzhPFkondVxWaEbtAa1OnFjQx0ZJKsUrfMzvZUAyzqXtFwOykOghbwQkEKiNEZXxy9SMjUOl7
Zid7DXju14YQMDsxubgUApUR4sjB1X2vRKDS98xONhTDbOpeETA7uVRstt7KCFEZn1z9yAhU+p7Z
yV4Dnvu1IQQ2z05+6vYwFegQgcoIceTg6r5XIlDpe2YnG4phNnWvCGyenXCzkA5js02qjBCV8cnV
j4xApe+Znew14LlfG0LA7MQs4lIIVEaIIwdX970SgUrfMzvZUAyzqXtFYB12cscdd2ATd+41gswH
tn5/8IMfzBQItlvFfiT4q5gJsYc//OEoRC0VvuAFL2AVfDWSO4EYjic96UlR5zve8Q5U4WsCqRBz
Q5Bh02yFVeJuKPwWzaE6BLjJfTTpUkF+s3orI0RlfOqtenxsuN42vr4n6RksrG9rrgbsSnfq5YJz
VS2Wr/Q9s5O9Bjz3a0MIXJudkJeAWDDG48A7ZRD19UYbfAUegEIyA4jhHLUoAHKAQhAOFEIM5XyH
zqkIjq8gQOYhnSikQrSFg1QD36ppVsGBE2pGdb7rh3pYCNtQxRzlFPiVEWJxZOqwIt+h05CgxB3x
4zYnPWwwz030170Klb5ndrKhGGZT94rAVdlJ4iViJ1zWCs4BARYqlQI6QkaCA3yFzIApExaOrzuJ
kiWNIOMhO1HTsUU0h68ggG9hHlskTVFIFkc5FaQPW14ZIdYNb4Otg17Ed/xe1MK0qXxqy+xkHPxK
3zM72WvAc782hMA8dvKzdcdjHvMY/LbD36gGDIAfX/7yl+NbnkOGYkmewve73/2kRJKDpsVvper5
z38+zqGE77g/1TRbh1U4Qbuswlqvf/3r1dxgp+pw2kntyghx0dg/V7lemMf8BzaJ53t6Ob3Ccxwx
Z8At6rUnPfaAZ6Oqm+QhAHn8JS/hi3hOJSHITviiPmkeLITB1BzflTNow0TDYB4kU9MwmK8GRFt8
teFchNvKV/qe2cmGYphN3SsCV2UnYh6Rc4yzE2YyWBGcgMIgBCrESaI7MbYPshO0/qxnPSuSkkFi
FNkJqoDTJNZgXjJOoyojRNtwtVjb4It8yUWYSsEaC5wzp4LYzPfXIHgjSOMEMnhJDU70qh3W1bv0
yEVUkdpkLUN+GexBRG5ubtgWGiJBGSyEfq4CiW/qGbRhomGpFdpGfoZOob8jpGrxVZhbsdL3zE72
GvDcrw0hsAI7QUj7wAc+gLkbpSVGcidkJFgmwoQHiQjOUQiGwaUhC9gJKpKR4JiSO4E8CQpqkRjB
sJF2d5L9qOtGZYSYG5AuJM939SXlcAYt/AQRwcH32uCEwnqxnypGdqLX0yiQU56HJFkXIV/8Q9ri
zI6qDBayStKMdksbBgtLw2IrfFMg2ZhQ8rqTDQUAm2oEukVgHXaS0hv8CMoCEsBz8ADlKnDCFAgT
HjxwjhLIv/3tby+zGhKLeiBMSVShQjAM8J6RplEFVsUWUYtVfJxFYB/sBCyEb/2Nz6HEQM5vGZJx
UGwWO9H7iqVELIQ5CbCTtKJ2OjuBPXy9MJSPM6SSnQwaltgJMz1EgGabnXQ73NswI7AhBNZnJ2eD
nAU2isA+2AkjrjgKZ3BiIEcw5iROPCDAaRcmP8hX+BFf6WFgFIrNJP7BKZ6Sl1AspljIYE4VijfA
jHEbJho2yE4iCF53sqEAYFONQLcI7ISdIAvCJavxiGtXNxrgN232ntgJiQV4AJeJRHaCqE8awWkO
zphgrQkzFighF0nrTiCPQ0tMtL5EC1bATsonkCkmIoJzrk7l0hZSllSo1bVcGyuGRJujDZzoPGvY
IDvhI9M0PuZREmm72sdK3/O6k24jlg07DgI7YSebjuJ7Nb4yQlwtki1oqHzclws7YjkCdiyJ6zy0
xCQ2jbosH7EHTEhN4IRNRBJzqpBqVZfsKjU3WMhaSVJ6oj2xv1d77voUVpW+Z3ZynBDonnaLgNnJ
XrnB+v2qjBALSMMmqsS8y1oGD9rQg2GtAKn0PbOTbiOWDTsOAmYn60fxvVpQGSFaBare9GCqZfXU
wqANPRjW6mJV+p7ZyXFCoHvaLQJmJ3vlBuv3qzJCtApU1nNABCp9z+yk24hlw46DwCHYCZ4K1oPB
6wftYMHgut1OFvNyN5qaozJCHDCmusutEKj0PbOT44RA97RbBA7BTsZ3u68JwJV1MdNfkoDBwsqG
FlTXHr4L6rJKZYRoFais54AIVPqe2Um3EcuGHQeBeezkY9s8yE46tB1E5GUve1kybLDw+saDnVQ2
WhkhPuzDCCxFoNL3zE6OEwLd024R6JedPPnJT0acft3rXocY+cQnPhEnD3vYw7D//dve9jac4yQS
Dn6LzU5QSzEVO8NSDF+NsBPuJ4smUP3OO+9kdbSCKnzdoBTiHGRCTUM4VoEYS9AcqrMWN9o/FebR
QTTNfrGnOAYLKQblsJNi0Wz1erBw0LAIqZom1GiF7wowO1kaHF1vZQTMTroNOTbMCExEoEd2Ql5C
IqKAjRLEfhTydcFgCfjLUA0xFKIWCxHFGbxRiCooH6cIYA8QgCoI44ShGoVUiBZxiGogcrMVWhir
4JyGsTByGpQPchTqgTxaRxX2d7AQbaFHbJpcJJlNXjVYOGhYaoXWondoiL02O1k5wLr5CgTMTiYG
AIsZgW4R6I6dJF4idqKsBqLm+9//fpSTxOAEdISMBAe4BcMqUyYsHJ/ZiZKK/eIWJARiJ2yaryRk
oVIpzHnI4DRlQ94QsxQkIuqXyNZgYeQ6JDqpgyAWpwoHDYutiBhFRmJ2UhEcXXVlBMxOug05NswI
TESgO3aCoFtmGpiTEEXgiXhDkmdYjZMyZ9mJEhtSRf4BJcwxnGo6Uh8mdbiVPk4iEVE2SCSjJDFq
OnZWhYQFmpUHip3it4mHqXDQsAQpwMRhdrJyUHXzjRAwO5kYACxmBLpFoDt2omxH5Bzj7ORs7mR8
3UkM85EiMKuRcieJGEVCEFMUYiHlLFUkKClNwimbspBTV0zbyNqYO+HKlZQ7UeGgYSU7QXWxE7Tl
3EmjQGk1KyBgdtJtyLFhRmAiAp2yE0RKBEiugWDAHsmdcDYHoZ0JDyZCtO6ESzpGlqaeYieoqCUm
U3InkCcPQC1NKsXVM1SiuSf2i5bTSCVUykKuoeGKFs3s8JyFnFTi/FEqHDRskJ1o3QkNS5meuR8r
I8QKMc1N7gWBSt/zMzsT44fFjMDlEOiXncRYiPjKzAEDME9QEh9gIcnQMg4I4BwlkEHuQStCyhDL
51xYDmGe85kdHCATeiLmVNOqzhZxxEeHUoswW3r44AyraAnwYCGaYF9AfUREWIK/MoCqUqGgiIYl
SCO8qddzSYnkKyPEXgKl+7ECApW+Z3ZyuZBjzUZgIgLbYCeLA+SOK5KIpA4OFq4FQmWEWCGmucm9
IFDpe2YnE+OHxYzA5RA4EDtBloJLVuORHqJZK5AvaBfJD6WOVH2wcIHyJlUqI8ReAqX7sQIClb5n
dnK5kGPNRmAiAgdiJ00irpVMR6AyQqwQ09zkXhCo9D2zk4nxw2JG4HIImJ1Mj7aWnIdAZYTYS6B0
P1ZAoNL3zE4uF3Ks2QhMROAedvJHk4+P+jACkxFQhJjsX18kuEJMc5N7QaDS96IjYoS8+/aYOKRa
zAgYgSYImJ1MDrYWnIlAZYTYS6B0P1ZAoNL3zE6aRBcrMQI1CPTITt761rd+93d/9/ve974YDbF8
dWZwtPjKCFRGiBVimpvcCwKVvmd2UhNUXNcINEGgR3aCfcCwmxn2DuEmsIixL33pS7E/2MrB1s3P
RKAyQuwlULofKyBQ6XtmJ02ii5UYgRoEumMnkYggiYLD7GQmK+hFvDJCrBDT3OReEKj0PbOTmqDi
ukagCQJ9sRPM5iBZgtzJN33TN+H8B26PxE4wxfO1twe/wqESz/70Qkxu7aiMEHsJlO7HCghU+p7Z
SZPoYiVGoAaBvtgJQhpWnGASBxkUnIOj4IjsBKkUviSPKRYSFL6DBiXiK10F6cMaUxkhVohpbnIv
CFT6ntlJTVBxXSPQBIHu2Emc2SnZCUq4EgUHTshdwE7MSzrkQJURYi+B0v1YAYFK3zM7aRJdrMQI
1CCwMXaCTejBRbgVPXInT3jCExCVkTjBuTIuHcbpY5pUGSFWiGluci8IVPqe2UlNUHFdI9AEgY2x
k5g7SSEfTMXP9XRFgyojxF4CpfuxAgKVvmd20iS6WIkRqEFgY+wE616RO8HaFEwAgY7gIw5QFnzE
RA+WynYVng9uTGWEWCGmucm9IFDpe2YnNUHFdY1AEwS6Yyd4VIfzNTj0zE4sJB3BITGcxI8H5wT9
dL8yQuwlULofKyBQ6XtmJ02ii5UYgRoE5rGTj/gwApMRqIwQK8Q0N7kXBCp9z+ykJqi4rhFogoDZ
yeRga8GZCFRGiL0ESvdjBQQqfc/spEl0sRIjUIOA2cnMkGvxyQhURogVYpqb3AsClb5ndlITVFzX
CDRBwOxkcrC14EwEKiPEXgKl+7ECApW+Z3bSJLpYiRGoQcDsZGbItfhkBCojxAoxzU3uBYFK3zM7
qQkqrmsEmiBgdjI52FpwJgKVEWIvgdL9WAGBSt8zO2kSXazECNQgsGF2ggeJ3/ve986MmDPEX/KS
l8yQtmiBQGWEWCGmucm9IFDpe2YnNUHFdY1AEwQ2yU5e+9rXPvOZz7zvfe/7lre8BTuzXYgYfMmX
fMmFNB9EbWWE2EugdD9WQKDS98xOmkQXKzECNQhskp2AlGBbWLAHbF1fw07Ab0YSJGYnlSyqMkKs
ENPc5F4QqPQ9s5OaoOK6RqAJAptkJ9///d/P1/6BXoCmpCCKb3Fg3gffiruA0GA/WZTgL+UhAP7x
9V//9SqBMARQQgF8C+4C/SqpjNZHq14ZIfYSKN2PFRCo9D2zkybRxUqMQA0Cm2QnCPNgG2An+Asi
kqI+2AaIBcgHZn9wgr8QQCHIB9kGCQ2mh5h6YfqELxHEOUpwTnbC5ArkcXI0blHf38oIsUJMc5N7
QaDS98xOaoKK6xqBJghslZ2QXgxGUBARZTuYL4liYBtgISwhHdF5IjpgJ1x1CxnP8iwgK5UR4kM+
jMBSBCp9z+ykSXSxEiNQg8A8drKJX1bfeHvQVJyAguDk+77v+zgTxCkhfkt2wnPO48QOooQfyU42
0feujKyMEEsDk+sZgQ9V+p7ZSU1QcV0j0ASBfbIT5E4Yp3HyNV/zNSQiz3jGM0g1BtkJCsFgzE4a
8pvKCOEYawQWI1Dpe2YnTaKLlRiBGgT2w06QF/nmb/5m5kuQ6sBf0BGckHOAfOBbUhOxE1QBd/mu
7/ouZVkgjIrU49xJJVOpjBCLI5MrGoFK3zM7qQkqrmsEmiCwH3YCSkEiwpkdfMRfpUPe/OY3s/w1
r3kN6QgOFpKL4EB5/Kjpofe85z06rwzYh6peGSEcYo3AYgQqfc/spEl0sRIjUIPAftiJAn9cd3Io
NtBbZysjxOLI5IpGoNL3zE5qgorrGoEmCOyQnSAXonRIbwH7UPZURgiHWCOwGIFK3zM7aRJdrMQI
1CCwQ3ZyKAbQc2crI8TiyOSKRqDS98xOaoKK6xqBJgiYnfQc37dtW2WEcIg1AosRqPQ9s5Mm0cVK
jEANAmYn22YAPVtfGSEWRyZXNAKVvmd2UhNUXNcINEHA7KTn+L5t2yojhEOsEViMQKXvmZ00iS5W
YgRqEDA72TYD6Nn6ygixODK5ohGo9D2zk5qg4rpGoAkCZic9x/dt21YZIRxijcBiBCp9z+ykSXSx
EiNQg8A8drJ4sHDFAyJQGSEOiJi73AqBSt8zO6kJKq5rBJogYHbSajy0noxAZYQwoEZgMQKVvmd2
0iS6WIkRqEHgHnby2cnH4sHCFQ+IwK/eHr/zO78z2b++SPCAiLnLrRCo9L3oiBgh7749asZZ1zUC
RmAuAmYnrcZD68kINIkQIDfU48MIzEVgMTM2O5kbSCxvBJojMI+d8KZ1wJg7Sh5ZvjJC2NmO7DyV
fa/0PQ53zp00jzpWaASmIGB2UjkAuvoZBCojxO///u9Dgw8jsAABOM+yWUXnTqYED8sYgYsisISd
OGAsGCgPW6VJhKiPMdZgBJYh4NzJRSOQlRuBUwgsYSfLbnLXMgJGwAhsDgGzE4dPI7AKAmYnmxst
bbARMALXQ8DsZJXI5EaNgNnJ9YY5t2QEjMDmEDA7cZg0AqsgYHayudHSBhsBI3A9BMxOVolMbtQI
mJ1cb5hzS0bACGwOAbMTh0kjsAoCZiebGy1tsBEwAtdDwOxklcjkRo2A2cn1hjm3ZASMwOYQMDtx
mDQCqyBgdrK50dIGGwEjcD0EzE5WiUxu1AiYnVxvmHNLRsAIbA4BsxOHSSOwCgJmJ5sbLW2wETAC
10PA7GSVyORGjYDZyfWGObdkBIzA5hAwO3GYNAKrIGB2srnR0gYbASNwPQTMTlaJTG7UCNw86EEP
wu3nwwgYASNgBEoEHvjAB959ezhaGAEjcE0EbtgYbz8fRsAIGAEjMIjANcdlt2UEjMAX2MmnP/1p
D0lGwAgYASMwiABGSEcLI2AEronAF9jJNZt0W0bACBgBI2AEjIARGEHA7MTuYQSMgBEwAkbACPSF
gNlJX9fD1hgBI2AEjIARMAJmJ/YBI2AEjIARMAJGoC8EzE76uh62xggYASNgBIyAETA7sQ8YASNg
BIyAETACfSFgdtLX9bA1RsAIGAEjYASMgNmJfcAIGAEjYASMgBHoCwGzk76uh60xAkbACBgBI2AE
zE7sA0bACBgBI2AEjEBfCJid9HU9bI0RMAJGwAgYASNgdmIfMAJGwAgYASNgBPpCwOykr+tha4yA
ETACRsAIGAGzE/uAETACRsAIGAEj0BcCZid9XQ9bYwSMgBEwAkbACJid2AeMgBEwAkbACBiBvhAw
O+nretgaI2AEjIARMAJGwOzEPmAEjIARMAJGwAj0hYDZSV/Xw9YYASNgBIyAETACZif2ASNgBIyA
ETACRqAvBMxO+roetsYIGAEjYASMgBEwO7EPGAEjYASMgBEwAn0hYHbS1/WwNUbACBgBI2AEjIDZ
iX3ACBgBI2AEjIAR6AsBs5O+roetMQJGwAgYASNgBMxO7ANGwAgYASNgBIxAXwiYnfR1PWyNETAC
RsAIGAEjYHZiHzACRsAIGAEjYAT6QsDspK/rYWuMgBEwAkbACBgBsxP7gBEwAkbACBgBI9AXAmYn
fV0PW2MEjIARMAJGwAiYndgHjIARMAJGwAgYgb4QMDvp63rYGiNgBIyAETACRsDsxD5gBIyAETAC
RsAI9IWA2Ulf18PWGAEjYASMgBEwAmYn9gEjYASMgBEwAkagLwTMTvq6HrbGCBgBI2AEjIAR6Iud
vPv22MFV+eQnP/mUpzwFf2f15a677vr85z8/q8phhQEU4FrW/XqcF7Q+twqMXNzBZbBcohbugnG1
ldeifsSo1zAFt7OtVOIwxYYFMnOddkETi6ucukHOQq0Wl43Siw12xbkIjLETjCz3uc99qPGjH/3o
Qx7ykEHti8fQu+++Gzpx3Ote9+IJWjw7nM3tYVubJ7YO3N74xjdOpBoCELWA88QmLiQmY+ZGx5e+
9KVTTAImQGaK5LgMgJJzQnKW2hqcCUtqfcRUjJUkqWUVOPwp/gowH/WoR6HK3KswHVjcaDXONmJ8
tAG39rhJvBZzuylnqx8x6jWgg2fHwLOt1Pjk9Is+KFneuSqZ7ucTbYDDn4ojEzVQTDeIai1wCY3S
cSSZZYaFL4rAGXZCxpDGVrCKOK6lASh+Bckp+QNp4D2MWjhit0d0Qn8SZsWkpNJmGKBWeCKTBvsY
MUlNo27CRMIcodK3gx2MjSbD+DHWSgYTn1M9KsOJFOqKlD3CV2l4jfikSzkyFqgvKXCWH9O4mT4O
WihYoqkJ3lOeRneK5rEX43ZCQGFJFur6Rr9NegaDWXnJ6OfR4U8BWA4iJTuBYcn31OXSyZPXpYrq
Dt1p8A4l8sltSl8dd7YpI0YcDcqODGoo76/p93vpFXKD6EK0SrgJB/6kGSSO5T0VgS1tTr5dXl+2
XhIjlZROq9EjeVQaJdR0/IXG5gbdPrlT6a5pyCpvENl89oJKuca6eEsOIk/zTvVx0FoX1iNwhp3g
lx8uIQcIDsf4SYfj8Y9/vD7e3NzwhxTYK9kM2TFOKMlrP/IrKrITqEUtslrUGteJhqAf8pH+M+UT
lSy2mfhCGztFooaPOMdf9EuacaKLgXNiAtxS07QNhwyWMLRRM7HlnXCqgwI2RmXCyCpUwmkyoqFL
xoYGexSN4U0O/cxsUQO04bqwCZRrGg7dwUf2K+rHOX5WEhw6iVJlgquM3zSPzSUHoHL2JbKcqDZh
Hq8LvqIkx6AEb2qXDTGHIRBKWOjtqddsFIWoiCMpYdc4ngJDupZcQrXYFr1OjkEwE6ONFg5aUo4U
iZ3w+hIf3ry6iViuW1I3BRot3SNeINmZIoeGEV0LdZM4y1fPOlt5s5cjxnhHRoYLQj39fucYSC/S
3Ue4prRCPHkJdCFYPTlJuvq8WVgleksaBMrryxtWdy7biiXl9U3wyq+U/063FW5/erscnrdt0qMR
T64Sk3NpyIo3SGnzWahZJY7SxDM5WzkunepjeXO5pAkCZ9gJvJPRhVGQv3XYMHyO+cx4q5Ap8yu4
VyQNg5yUqiI7oSsr6KK5UzqhXH4fqY8CW73NEeJoEvsV0YCd8eejfjImuGBb5DGp+woAvDFOdTAC
W7ITKeGIRngjhjBAcyu0k4NUeS0YwNQFsR+F9oiPhhXplwGMNxw3o0JWT6MARyJpTg4g5ehCFJPa
QRctLxbkE7yn2qXN0UUTLLz0Za8HexdBJmJx+FavhYnIEDsLecI4yE5Y/ZQl8WIR9sFbkpp1E+Ei
0mPThaPxpXtE75KdiZ2kG4edUr/oq6wCzxl3tnSzs2L09rMdGRkueGV1d5y932Prcn65QRzZSlUl
nnFISU4yyE6Sa/EepxnR1ak2DkS6OvGmI+yDw0uEV1X4IxYfy1FLdAQInBrY8ZV+2Ii7S3k5ZMlh
SpvPXtBocwQtOdsgOznVx3Rz+WMTBM6zE95yDAbRWVGSBkpRS1xm/qomnU9Z39LuNPTHu2JEJ1rX
tzHkJ6+qtxl3C5MlvM10MzNo4SseMYfJHpVNlzeVRvComWKnOhiBHRw+0siS4I2DUepRNCbFRX1F
tqpft+XoQKCICT2Ev8boBmfZCWTobPIuIQyniuAPspPBy53apZIS3tSuuhZ1lrDovki9VlhiR0au
FAR4i6lF+YlOCIjESnYiNEr8B0cKaIvshL9lmcyAfLyJSvvlqyOdiuO+rtop9NRc6tdZZxsMIdFh
znakHC7STT39fo+3D87522DQDcqhY5CdxAs0cvXjqKLfG3EQiAKkCLFkFjspB+R4oek5aVhmCOBf
OUzSQwFcbt6D+KtfnnFg5Hn0z3L8OXtBVUXOxpPkbIOupas5GHoGbzQXLkZgEjvh/A7cIv0w5Q/u
OKCU60BFYkY4ygg7QaOndEaSHvufvKrG5hhUIuvnnR81pwvAHpVNx0GhvEnSIH6qg6xIYPWLHyhp
YGJOiwvHeIFoMD6ykBcOVRawE/7CiOMm7ZHx6dczv5IxJTvR78KUDpFt0QFk/MTciXJC5e/1U/Cm
dtH6IDuJbs8pvMHVvuUYp1smRgW0MhjMFM4ZVDQ9P8JOSksGb73ETtJIfTaol9GUGgZzJ/q5whTa
eO4kutNZZyvhTSPG2Y6MDBfJsc/e73R1XiM4w8hPplKV8Ex+FQcWOUm6+ugC25JaaIuDgO4+WbiY
nQwOyDEKlLcVW+dtVeZO1EGSe3zEX8jHhzfLIascSNPgqbamXDXimZytHJcEe9nHuJgmxQJ/XIzA
JHbCK0fX4Y9mfdRXGAEZMPiV1mSUv/ZKWwfZCZsb16kfSacGgkqbNTwxCaSbR7G5RINV1KMkMMhO
hBhvD1SX2GAHYQzvdoZDYa6wyhL81YoflUBeC1ykQe3Gq6m4qKip8JP0s8v8bYf7lsMBLedtzIES
H6PBcgPI84eIMm2ozvPSAWS8BMrR7dRFIWhUTpwjvNQstbCcvSAtEAiCJWqDqtRrWcV8D1tMSBJ2
zoGyIdWSA/CE1JNidHX2UZqj8mQJJ+nLmy6xE+FPLxoM6rKf0JGkpk7pArGcTfMuxqEJvnQt1JxM
pX6KRWdOzhbtHHSYsx0pNST/iXfHKdfipdG6ExocI9bEVphT0ZXVVUtOkq4+bz0epOM8j7jRQl6C
eH3jnRvdj6rK65sGZFWJPhZvKwrgWw4CUljqEYOBZPLYcsgqB1KNP2ehLm0eHNnSuCRnZvXUR3xE
u+Vd5pIaBPra76SmJ65LBDCspMTGYHBaDJe0KSu2WJUrTkQgLS2cWGsHYkdztjKzOOUijiQSplS3
jCgUTzyydeISZiedXIhmZsSfeumua9IGV+HoR3wTnVYyjgBn5XnElea7x+1ozhZzFdMvbslOykFg
urbDSh7N2fq/0GYn/V8jW2gEjIARMAJG4FgImJ0c63q7t0bACBgBI2AE+kfA7KT/a2QLjYARMAJG
wAgcC4Gp7CQ+FEOEuGKfB+bF574pYxWYOXOvpuP5dexJ61UrG03dqdQWq+Nyn92lZlZz8hPV4gbE
fK6BT+0OggNLJr6uqLSHD47F8omdwrK49DbK5oBMRK/swnhF2gnEFoMm/VjNMPGVnLyPpjQan0tC
lbm9mwiaxYyAEdgBAufZCXcb5KHBHYUYvDDWYFE9TkBNBp+VnQvQRelCuSln24dZpnS2JHmANA3Z
U/RARt1ZrGGkofLBn4lWnRKDQu7KwEusfc/4kb7E5yQjgQB3qXGJ8gkINDFlZ4Ky3eaATMRz7kMc
tBPwlpuvcKurie1CjI8WTzn02PBZ/VjSG1+YN7d3U4yxjBEwAvtA4Dw7wU8iBBUMQIPpEw1hZCcY
ffRMAXcm5mCE4R4n8XED8psYKvisP39AawiDBu6kwsK4uVZSmD6qUali/IvBL+6uA2P4VWqav/Di
70gO/TQpjbb0iVgY0eBXSYb7aihtkH7yRlU0QxrUHWkgVtSvOMEToq2fwrELqXesLpNixXj5qHYE
mXR7iGTEjY8ko703oDbSESXk2DV5F8TiZYqwCH/mZtARdEHCEZZYLojkkCk2TwQk+Xm8BRIg5RUZ
tIc0LtaFTvlqLKf/0055AuzRdY/+XzpAehSITwlRPwxLd2syntc0up9uxvJuit0ROyFuOIh/WSsa
wIYgE+/lBK8/GgEjsHUEzrMTjvIxcaI+x58+2gwHJIb70pDQkIIoSDBPwIGSahUPuAkP5LmHKcuh
QftZMXRpvy+O5lQIeXwbR1g2ykKccJtFHPHnHUdVxjzuh8tasWk2ClNhCc5JodAomkYJ/qJipBTc
xUhRFnVppzBhp1RR+SeUp/xTFGOUQuuQ52SHuiMNzHJxcGcMQAlT/Qz/RC92IfVOV1ZBLlZEQ0QY
f3E+gkx5V1AhrwW+ZXfElsROIBBJMJEnMgQWJTgh+ISUG50RFroWfYYOptwekaEZZXnpkGqafZkC
SOnnugUSIINXhDnImFsiSjGcJ1+N14s+htdPond0JNrDVIocBmLJAaJfSaE8lvc4+R8tIcJyJ97p
0Xt5gWhqupskzIY0gEAnLpmaSLXS1YExvKwTJ55Kb3SJETAC/SNwnp2wD4P58MROGC1UqMwEY4mi
AkcofsS4w1o8YhWWc0DkACrlpUKGrgi3hlcUMtKk2D84UEJMFdm0Irp+mCpacNCMjSLqKP7xhBsO
qgo7GCtGDJO7RLEYLFMwiBpkM2kfB32qFdpRPvVOBgjwWFG/p0lVR5Ap/Z4RDvYo8GjGEMIkH2Qe
0dNkhq4dexHdDOdMq7DvcbYu9pTl8epElysdUoSJYlMAGfTzEgqVDF6RlFsadA8W8o5g9+VgLI/s
JFLAdIfq1ohQ8DwCnpQLYbUbHTIaAz3pbmKLEQEp568gqkq10tWhI40A66+MgBHYAQJT2clgVyey
E4wmGJI43pFD8KePxlApj6EFwxZ+8/EHcWInpUKOpzG2RS5CbnSKnfD3On+QccRPTZNC8bdaihYM
isrHcHilsLLTjLspAKjiCDtBFYnFaMQBfTB+MG2A5pgnpySZhEBLbCb2TheCzaWKREbhB+cjyCSH
EQKJj8Jg9DFRgWRG6mwKsewaeQ9dazD4nWUnySGTSVMAGfTzwRtn5IpEO1G39Lfkq0kmshN8hZCv
tT6DDlP6FQ0eERbCzM0Ic1Yp/TneTRAeZCcwko4h5bFWGi7KG3kHA7G7YASMQELgGuyE8wtsmL+M
U9pcNsXQwl/SnFrGCTUwDpUKqZbJfGrTNIfedXeKnWiA1klsOvKM9EI4NgpqwnjJA0o40SOTyH7I
YNjBWDGO5uhsTFZHMQV1yHN8H4wfnPvAV4wcSZJKEqcUi0rzU5HPqXUyHlYZQQaqpJawKCaRjqib
nPk6xU5IK1NnIztRX+KkAKskKjnOTkqHjGGbl/UsIKVbRn+OTqJrV14RZdcoL4op7xKBlqvTr4C5
pnKSq4/Q2dKv2BApI05IuPE3vmaSly/NV6pR3QK8eePdpFuArejy6b4QYrFWujqxd7itvPqEYPow
AjtDoIqdYFwQ7eCPdaCjwvgjiT8rGTgpw484YlDEWIkSDjdcCKJBmV9JZ1KIclgSlywwpLEKmYEs
1CWkNvIY/norm4YAf30yjsYuy6Q4PnI1BhXylys04IRt8W+qqH4lC5OYzGBzUTgiIwDVcbbO39yo
FbuQeidkIAyxVJHf4qJo8uUUMqKGEWoaKWbDj4rBgzFGMTJ6V3IzXndgRajJ3nCgbuwpkWe/yvLS
ITXjwC5MBKR0SyEQmcrIFaGddBXCFb269FUKk5UST/SFcLEVgaxGTzlAvATyWBIIQYq2hJUMo826
RjKmvJuklmbLEuIWb+F4+6erEz0f1z3xYAHuEyNgBDaNQBU7uWjP9csMraQfshdtl+Ns/KV76eY2
pJ9x4qzBkBlcqHS2YimQWMICDQuqpPg9omEiIPCouBx7gUnXr0Lkx2cep1gV7yacp/VhpzT4HpyC
rWWMwI4R6JedMPdA6PnL9WqXITZ9tUY30RBCy5Qo2/BiIUrVbyw2F1v8cJ/Irq4PyNy+LJZnpnA6
UTvVULybJlIT3vITL8HiDrqiETACPSPQLzvpGTXbZgSMgBEwAkbACFwOAbOTy2FrzUbACBgBI2AE
jMASBMxOlqDmOkbACBgBI2AEjMDlEDjDTrj+v2wea+XiA41JgA+bXGLauHzu5nLQTNTccI2FWpyr
U4Cz4qxlOlj/Gx9jLhFO2nBZ2y4ZXryyAYY1WZKS1vk26eCUtcMTHWxcLF0drtLlkzuoOPd+SU+9
pV7M1VbTQbWVTEo65TwNAU9339lep0sw15Kz+mtgHKnLMZwHYZw77FzIsLZqJ8K7eBRabG2TFuc6
22JrV6k4xk4wxumR0Wgct+E69SwfQNdzFs2xW2sjplNr9Lgfa9srN1enAFfFWY84pYdiSoRLbYuf
oxn0h2VPhaRnU6dcglMXMT7rSz2LOygzSp1TLFwgk64OEOayZbgladZ0Koklq+mnSOrFLG0L+hKr
qK3xqJl2TKlsFNXLu+9sr9MlmHjp5Y1n9dd3qtTATYbgJNzpDtd91qBxCZPGdWKUmzXSzoV32ShU
g0OTFic6W42dK9YdYyeAD9eY7isTS0xxP0d+qh3ftY8T6upBDy3aZwlvEv125x4VHCKpNi3y150c
K/LhAlpI+VQ3qlVHOBYzwZO6wPeS4Fsaxv3cIM9f6tyEQy2yIyhkMFDGiBbGBBIk4+/yFAyiPdSp
bVoEwiAmAlxVNNAkebYeMyXlA7FEONoGbagSrwU3xCu9Vh3Ut/EyRX8gYsSfHsUmpBOGRVNLMMuf
RCVcsfV0EfkVLyI8nM3pYp3qIMV0OcqLLoTTqJH8HB9jj6AW5g36AwFJDslCXpEYVGIfiUaMfCP6
qRDMJv16FjK8oKVvJEAGL0G6dunKokq69LRT28Th2xSW4g14ip0kV+TDR1DLDp4aPeiBcbCKlpR3
X3kJojsRtDiCSXO8UkI1SpZMMRnGSxbFErCDg166Z+Ngrnsw3toTzYiDQ3l90ev4oF8chdJ1KV1U
N2ly9XFnPgtvOZ4ICsUCjgYalGiqnIffJvsJb7rZSw+nAMrTr6A4KJ0datiWxpk4KMWB9Ow4k1yi
q49j7IRRP8UzWA9MxVdwkfARQNN78C35OIMHmY12mYS2uMEalXP7LIKLb8GHGCd0t8SxiXdyqgg7
mf5lrbKu1Ap6bt7Fga/sArefovcwkEADIxbsxMESRVZZLoeDDPSja/FWp1oCQrrDrdsImuzRfQIZ
FFKGgXAQEwEeK+I8yfMjyuNIgWsUqScjEG3T/mZCQ5eprKVbhQbzKqTLFP0h9Vc/4IgGu0xyTNcq
waRAvJcSXKWT6CLSQuovrx2HpAQLG6IZQoZ+pYsuRyKnl23JEl4mshzeMjgnthHz6B7JIXkP0ki+
9k/DIvuIFtlBsZPkb7CQ5DtOjZW/w2IHGVSSbyRA0iUoe5quLAkr1MKYeCOg7/pRxL4IzJEbMDpD
aTkV8pan2cSc3qXRQzcRxWRJefcNXoLkTqgFPRzceH3TlWLwIKoc+nhx49VnlcgkeKXiRUzAxrE0
wpLOEzuJg950MzT+l3cur2/Msuse0TCu65J6nS600jylYaUzxxG7hJeJfzqAfpDE685xnl7HoYxo
03liXSiX/cS2vNnLwY2I4W907DQojQ81uo5QrmhSIlNam8aZEd/o4avzq2IHp/Z5VUhgNY4zYJR3
EfrJn2UahePvIQ73VKLxEWp5eejfQkqjLW9XVeRlJiUq6w4Ou9JZdoEjOwTi4B5jIfsYOxtZF8o5
WMTECV2HZEXBQ3qihQJQZrDkFCaSTxWTvIbX6HYRT5bHElqVzCDyg8FbvTh1mSQw2F85AG8htMIx
4hSY8YoM2lk6CaskZpOu3UgHee00cqWK0ZFKl5O7ppBAMIUnKpbukRwyBmx9xcunj5GdlAo5bKUB
aOQ2oYWlbyRAkquUPU1XthwrBl2onBAcuQHZqaQHlqu/+kowxtFDJiUN6W4auQSpIiRpf0pNlYMM
my4vFntUYhUvYgI2IpCucvxYXiCNANPNIKug2pHrS4HE+3VdxpuLI+1EZz4FL5GhQoWPBC9/dvI6
ymA6Saob/SoBS+XlVdPgE78idGlAGxlq1BbsEf6DYSX2dPD+HXGP1b86z05OmUhwY4fFJ0QJdaPC
fUlNUAt/Kcn7luWJnagQJ3L9eOekivyBQp5b1h1nJ2UXRtiJfuLITeW1BEp1QURgZIwBcewmocbB
LNwUdnIKk1PspJQHOEA+jvWx77S/9ODF7GTk+o6zE7TIexsH+dwImPLPZGfZeorc8Q5P1+4U/aLX
wbbBi37q5k+WnGUnHBmjeySHHAwqqQuRnZQKISzmV+JQlnyBmNz+x295BRMgZ9lJurIL2MnZGzCa
J38evDTk65Dhz2KOHqfYSbqbRi5BSbDEOeJYeip8Dl4sVCyxihexvGXKQa8cyUfYySwzAA7RG7m+
5fASR5uyuVMXeqIzj7MT+XOZO4EzcPCJvz3wA0l51li3HD9HbvZTP/bSncuP40NNvEOVciuR0TAC
OxkZ0/1bukRXJbPZCV82poDBsIGPetne4F1Ex6UkTjgoCKwyd6LJGojFDEQaJVWRtJH6y7rljRo5
RNmFEXaSIlw5llGACSf8jVRAdQlCfFlgtEc6UchbghHxFCan2MkpeYLPg6yR5+RJHIUJIyU54siM
eOFQJU0NkEpCA1PWVF5e38H+QpJXCrU0dQr9g2CS4EIYl55zVQmusnU1qlQzNZS5E9WNHRTOp3In
ciQmlgVysoSDCJ1E/aU/RMwH3UOqUJF3YnQqgsBO8UTyyd94TwE3XX1Woc0oB6pEhtjqgkbfKAFJ
l2Cwp/HKlmMFNJCPxjE3euzZG5BdgOWDrshusgn9LOaFY9fi3RctGRxVBi9BAo0NoVF1nBaWg0xs
Ol59yotLybviRUy3TPRqGiBvjCcj7IQWTjeD8x3JjKif7QpGGA/lMV6eGhIJVDI1GnbKmXkjqAlp
KLMU8brzloRO3cKQhw28I1Ldkp2UN7u8lwo1GNIrdDnioHR2qFEtjgNy6YRhaW0aZwa9op/CJeyE
dzIOXjDGMxwcyFDImMorITHODrKQ0Q4egG85DPGrGMulNg6gnLgpK/JeUpYl1Y1qaRguP21mldQF
mMSusTmcaPEHBzLya8ios2qCdSkvTNio1EohVSV7pJO0gHqoYRATyetEDUV5goYj4slCXQt2GZhQ
krc3L1w0Q8xANy3Nw63C3Myp6yt/iPhHh4kwskUAPgimeJV+1iS4SifRRaSnyc507dhlxXh6gq4g
Lz2vWlmRHZQAayVLOPTQALkfcRPm6jIbKh1S1whXM1nIj6ySHBj6qVB+leqy1xoo2VkBNegbEZB0
Ccqe0jBd2fLSR8fgrRcJND6evQEHXVE44Fv+uhUUlMfHNHyVlqS7b+QSRNBkT5rnlTfKNqGRrr7c
L3lXuogR2OicuselRycR/1ODXgJKzhPvAtTVmH/q+qZe8N6J1yX1Ol1o3bM4SZKDzjwCrxwANujH
laDgVY49ij82Ut1o/+DNPji40f1QV6DJCXWv0YCRoUZVNMKUyCRr0bU0zpQu0VXJbHbSlfXRmMhD
uzVylmHpZ/GsutOFF+DGKnB9shAdU5LJ0w07K5ksbwjXqQ6eNWmKQPmDsvwFNkVPcxmMwumCzm0i
XYKyp3MVMialuD5FyZVdcdwkBokpZlumQwSUY+vQtlkmdTLOTLd5J+ykjJTTIehWMuZaLmckYlL8
AX22IU5AQKxcLn3lITjNK7WCa6SDZ8GZIhB/TlG+/AU2Rc8lZE5NAUxsK12CsqcT9USxuOxsevUr
u+K4YXwAZ7rxluwKAXj1An7cVRd6G2cmgrMTdjKxtxYzAkbACBgBI2AE+kfA7KT/a2QLjYARMAJG
wAgcCwGzk2Ndb/fWCBgBI2AEjED/CIyxkzSv37YzXBLfSmdbba2ssh4jYASMgBEwAkZgAQJj7IQr
uS4U+Fut5+eKzibapsMXH+ufXsuSRsAIGAEjYASMwBQExtgJHi/EWmX85ZZzUsel+HxiG4WU4WPi
3AJEzyVKA+vq8W5u3YPnD1WLAnxynayIarU5CrfciGbwMXQI4OSsNuVpoFzr56FNO/lotwMssE8d
xFfcuJD2c481dX8KypYxAkbACBgBI2AEpiMwxk64ewF3xuQ2TTzABhjUuRkXvgJLEEVgOSV5wr0H
SCZQURtcplriJSAB1MZdF7mpFBlPfPQ8voiytCFpI3OCBp1EbbCTzINNpw6CxEAAZmv/HHKmWQ/i
Tr8kljQCRsAIGAEjcHAEzrOTwUkTxG/EbG7IHQVIRBDjwWm0aTFDPiM6t5vE37KWXgrAHEkU4B6U
KGRyRddMtOmsNiY/InPCuTaHhk4SKfGq2MFyL+TNbWtzcC93942AETACRmBbCCxhJyQZJASD7IR7
I5KUMGtCVqHN1JlxERUgpxHXYZ4msRO+tDamcEgmSuFBbRROu2KzEOkZJkW4NTUKUwfNTrbl07bW
CBgBI2AEto7AeXYCJpFmdhDCmRo5lTth1I8bjUOSgV/lgxkXkh5oxqxNFGDmg+yEjIcHLUnCyt9E
bRCGBk4txWsGIsL5KXZHbw6LHSzZCWeaUGvkHRZb9wzbbwSMgBEwAkZgLQQmPVGcXjSAkMyHVpB1
4CtktQG2Vq1qNSs7BgGyCi1KHazFhqgtCuAj0x5ax0q14AcoIZspbYjaIDw4RcW+UJtOUge5EiWZ
JDvjQt21rqLbNQJGwAgYASOwJwQutRsbl5F2hRQI07J3dnTVCxtjBIyAETACRmD3CFyKnVS+TuwS
uJuaXAJV6zQCRsAIGAEj0ByBS7GT5oZaoREwAkbACBgBI3AQBMxODnKh3U0jYASMgBEwAptB4Dw7
wYLTzfQmGDpxqzSu6r10B7Egd61VOFfo3aXRG9GfnjCX5MSr39xy7pU8V+2CKnObsDwRaHK/T79e
0yVp3ln5ZQ5G5adulj35xlkA1+rsgnG47Et97+o1XBPAM+/ZwSM25TtluI193ModSzrKVR2zgOCG
sA17zueZ+Tg0TNXm+qkJPS3c8JWEZRPcTAV/Z2FSoiEX5177U+DitnJRcqSnleZNsaetDJ8eL4/0
DPygzODlqHEDQM2XM0zpoy7l4KNk0w2e0la9DN84gQNm657ShkbQj5uXzsPNjcZbhJ64L0C9edM1
jO+jOH5b6e6Y4l1kA3FXhcFBMlp+1hNmOViJyambZTp660pOGZ007DOa8P0nMVRp2MTJrF+M0e1Z
sVTOHS7SYMt3pEwZWGCSRg85w4KB4tRlOutg617fsvUxdoJrwD1C9GIa1hfQuDzx9kvaJ97DrAXg
Jg7rUxDUECm19KSyrkarKa4/pelSRjjMuhkG24pj63Rt6RqN9HTWJVuGRttaNexkEMAaN5i1g3C5
ic5ZZKZf8bOqZglon2UYwL2FeKtyvOZwzM2dufnyuJ24N7lV4ywbWgmfvUYjxsvZJt4mc4PBWfmz
xo+jtHV2chb2ctinWwIWBX7tt3mWQycwy1BSKk+7fDE+8mbhZqTjFyhWlzMsGCgOwU6YNWGmJHY4
fmRWAGLkqhRmIW4GDl4YxUhgcQB0ncerldgJZbSRq9IqDLTceZbaeOFRguYUWvhqwER6eHNyQ1jo
4fioa68QLvPUKYjFAE+/YaMyRl4oxLjJm3AAw0MVWqjeoXWCQ3jZSuxOxAGS6AIO/uhnrYSnoFbY
oNoYdNkKg4RMIjK6ZGW/IEmGl8JPeUGJbRwKueWdMOclwKG973RBicOgAK9vBASSacBFRTbEfQIF
tRCmJfjIbfSgUPsX05jkBvhIR8IJ6/Kip1oo0dWhgOxU9YhJvJRyp3jJ5IQEhAcNjg5Gp9L1TeAI
DfZXVyqNy+mOoH4AqJtO7IRmxFtV74LgtkOw5Oz0AYyJYTjdL6m/7BEKdZ/y1qbD6HKMY6KLHvUk
H2O7uq2UK5I9wOTm5oaXgO3KttJjBRTdCXU5mBDS5Eu8snTLOM4kL0oORmsTDvIHOXx0pDgARuX8
8Tl+k5aAlMOjjGE8lkAc4uTJQi8OF8ntoz+n0WnwBimHfREIuRyHnZIcJ+MhlmKK3D76PL09Ko8J
RV5oolFOQURXF1yqTp0TB4o4TMWxIl5lQiE328QTrGfWneBKlN2Q6+tu59iRuL+GKpTjxmCGSoUj
Qx7ESFyoUN7AF/fwL77lWwCpM+VdYtPwD+jBX9bS/U8KpVGPty7EOIKg0dSunEnKISBjqJnbuLEh
jhSxy6wI/bSWhkXQaEPsTsRBaMf7IeEpqAGOIjcbkv0sh21ldl3ayn7hKyKTLlx5QaE/auZoTkDY
cV0CXVxqFvilgK5vAiSxE1Zk33nR6b1oOnoOoaDl0ByjdekG1Cm6wyEj1aLCGEHlRaqe0I4/iXh3
6JIls5PjycFIPqKnDYIDtfJDCki/cOCJ7oh4g/Mrhi6CGdkJkWHfOaDL2lMntFk2lPeLWozXjtcr
ZnEoptZ505WY6MKl+z35GLXpZhxMM8TcybjHRm1oN/0QSr4kt+dPbeEWxyKWy2eifo2rzGzpmtL/
5YfEKjYRveXsTVoCcmpY5pXiSMjbNsWF0ireGqXbJ3/WUDN+g0QXhQFwCfJy/fxQMBLUg8NdiilU
Qj+nwaVyklfePtQpEMoZ9nSDEDRZItDGB4pynIkOUMaaNNScvVvXFTi/Kra07xQ7oYfp4kWKoLsu
ennUk4Y8/QhgRV51BhhcLSgRrebNkH6xxabpUryK8T5hsEzsJKmK7QqH2IU4XpAElPekdPKE/idq
PMhO1J2EQ6k84Vlq411UshNKpjtQppb9GryaCg8Ehxe0HMhYl78gyZ94+XDCYZHmsdERAcgkQGJb
se/Uib840BD+xpEi3sA0G99yKBRBFGKiFyO1+JVAi16UqsuLBsdutR7NVhWqjRXT6F/eNXyHlK6L
7hrlRUbuiHTjMxrxCka3ET9g7mQ8fU16AQ1MXUTQUgxL1w6S/PXMLCBHA7pQUpIwkYfoZh/0MXZW
NpDlpB9mkZ2Me6y0oUoyIN4g8lJqKxFIThjvyiQvl+MITAKURjMac2psGb9JBwFJw7K84tRImO4g
foyoJrdP/hwH0pEbhMjQGPxl9kKLExgOEo0eGe50F0An+4WmxU5K5ZDnXYCGEkVLg228v3hzQTlH
v3hxxweK8WHqbKxJ93hvH2vZCTDlT0lBL049GM/ki4D1FDsRkY+DBX+9AT6Mj8m30k1I/9ANH31C
mum4pJYUoGEwSdebA6La1ZWLETEak6CQ8fGmQiETnmhUc0/sl2yQfIlD6akJzzjA6SvGg1P2R3zU
dNkvfMU7nFNCpTZd0MROGEjQCsf6eAnSaMXejQiUgMS2YkV2RESZDemXRGo3dkpuoFQHS8rIVEKh
qxPbTdWF28igk8xWlXF2UoIDPTH9nq4L1Y7cEeVQxWgR2YmoD0M+BOTMgyMdqnNAxwF7Rn5hlyCQ
ROpuZZ5gCjuhJH+yn/IxWpv4wakbR7fJFG2QKXMn0QPV09R66UVxmE3WcvBBFd6k8v9045NBxuvO
Rs/epDQ4ARKHxykjIZWkMVZuma546c+CffwGITL0E7pldEWOXRrN+NXgcJcqSqcGwFPKoY3UmQbQ
EubpB28KiunnEyoy38MrNXGgGBymzsaaU/Z0Ur6EnQA1QoYThhzdpcy5EVbAjY+4lvGuQwkvgxgo
gWAsoR7yG02HUwDoi5TIAJaU7ARKBrPQFOb4mK49ry6HV3yrABzbpSXqAk5oKuT5k2XQmRI7IT78
FcsbAE2wRdog+RIHYsLfr7Q/4TnITiAZf9GyFV4p5jPki7pkZb+ghD1NN3Z5QVMUhCqUsL+8KApR
HLXTWD8iUAKS2uLFhVrq5FhMp0LT6hQElLNBOYMWL19ygxgOiRI1p1r8SuOIvKisLqjLS6nWk9mq
wqbjaMXxjhd9EBzCzttEIyA+MgOhHg3eERLg2K17VrcqcVbf6cyQpP6SDOl3C6tEuqBeqNEEguIH
WuS1o/dOYSccWBIZSk7IdnX7QDPv0wQU9HBCmZ3VtZiiTcKJ6cYxR3hCeelF0iBroYr3LCvynJ0V
WUy+zdiZvOXsTToICD2W3lWOGPQBtj7Yr3jHQcPg3RqjgEanUzdIOeyjZJCd0FqNioPD3Sl2AlNZ
95RywhIjI12FJfgqOpXuQRlD9iNXHBkoSg+hH2oATLFmMDrojuvwZAk7AbjoZ7x42kUgleMjf7jE
68HqZQaYdakW3/JEFdNIERsqLzZ/ChDu8kHzWDdaTvlkXmpX40Ls/qBCGS/zeALD+PtGCwLYWfxV
1lqOUuIAySSWDFZzsjAODRyChXAJnS4ZJaMSEs1BtOMFjchACX9g6SaMANIHpDDuRcGmk0DpGKkt
2gyFuugEUGL8mACMAoOSAi1aG2vJ01K75bWIQ8CgJRRIZssz6TZqJT5hnsCJVAD4624avIKnHFjW
xsshx4ieEO8ytlVemoieehS7k1wrgqCvUMi26B4sH8GEpES+dMrH1FP5RnTpeFGmeGzSxiqDQ41w
0AWKHhLdNXWTCHB0ilAn/4+Dg8R4EseWKTdpCQiUjAzL7PVgvwatKt1+cPTj1T91g6Rhvxz8S0dK
Th7vtXgtiH+6E5NAGurjJRMZKsfP8mZJoJ0dKKLO6ABlrBkfkVJ3Vv+4hJ1c3+j0q2uKASkkT6lS
yixo92xDSjbw58hZ+UoBNNGkFf1enGuPCD47Pre65ZchoJ+DMRG4TNWmaw3OZ226RzGaNhnloHDZ
TXqJ4bHy0rQCpNKMVB1ArTL0XTnWtAUN2rbBTkiWm3d+isJLtKvfBFMM6ERmkPJPt23wh9f06pZc
hsBgpmSZqo3WGkzhbLQvpdmVd2VSuOAmvcTwuJur00NHthhrhNtm2EkPV9o2GAEjYASMgBEwAldA
wOzkCiC7CSNgBIyAETACRmAGApPYCVYDxSc7Zqg/kigWjaYdtwZ7vwzMicpH8NZmaJLBigRtAzDF
qrV8ID4We2WHAuyDuespcF3Z1Cs0x0eEdPQPQv1dMx1VeGm5BnN6dUle0+YF5l2/SitgYTmwnTgX
llx9pNdpVV/PN8Xm7t8xdqJrycXh8QrhyaWJlzldV0U4XEWFxj6XMtHys6FR3pme9zvl0CWYU274
icpPqeL6tTgHz2eJcRF5Kc9aBWfQozdTDG4lwwdHYd7ZC3G2Rfkze31WHgKQHFzOdhaupLzJwmQ5
5ETPnNLBWTJphelcEMq2msBSKtEgU941I0NN5SjE+2vQtaYHRUBUeaePDDsKTrBziv/PAkS3Z3k5
Zukp7Sewg7f/LGCheboldPUpYw5kYpfrbwoiIEea28eRO7r5/Ttr9FggPMZO4s4KvK7xcSw1Vq47
05N+lIkCAihexUh0UDf+Wh1cqFWu9Ikt6jHUqAdNnFLL8vS4XQllEpNA2vwg2Z+6z4/xJknoRTtj
NwfHrFQ3fhQIugTpzpTZ6teIVVBCioCTwVxCajr5SekhST4JRAzPdlz2pMutm1zGRFXJGXQ1y6s8
OKLpIo5cgnjpyyeeBt0pPpGYbgp9HHwIZaIZ7GaJmErQyuCvDgrEptFiORCfuvFTX8p7p7xYktHz
w8n4U0qinbzi0Z2iZ6aejoxCarr0ZI6Kkf0LTAknx4v2lONbFI7fDl61szdaHKUjO5FXxyuemhgB
5JSfoLnS1VsBW0acWcCid+JkyalG4pQa1cic3CaqTcN7RGnwtioH/xh3eDlG2GrpEoNXUzrP3r9l
1Fu35CQ7QT/RGe72AxC5oRb3w5ELct8Y7TPDnuAjxYgUnJXPNOIc5XqTFjcfixvyQAzC3EmGaRXu
LcNCwcTdhLQBEWrxuSlaoloU4FSL9qghyZVJlMdH7hcka2OSQM5Ba9Uu7YFClKMuTkr7uZFOeqRT
Yzq3ymEt2ole8CBnT91MeTnUgjEENqkqr1dEO5rNJwljpBm0mSixy4mNJR+g/Xp4OGLL6gQ57h+V
uhl9QE7Iq8BIw+qAPe5KB83amAsCvCKyhChFf2Z3yktQXuVytEXFiDB9OLl6hCU6idyY3YxuPGi2
jCSk8Q6SZyZPiC5X3qEEEGpxErcF45XVrcQbmS4nj6V8vILyCsrHG59m0LdRTg/neXnvlK1TBk3z
1ubf0v1KbBNEaUiRk8hUXZHoP3EUokC6H1WLF4X3V7yPeGtrY7pyII0OE2/teFk5dMjt2Sg049qd
vdFkoZBUK7qg6QaJ97jcoxzW5IqQ12QWzR509SbAJlgWAMshetCpBseBeAt8YVy+HZmFEmxgQElR
nwIRW141XgjWSsMsQeaopeuFj3HU0l3DO4g24wQyujXi/ZsGatl56v5NDtPDx3m5E/WQPY8bAKsz
QEoQA8e0/flg7kTuS1rAmyf+PE2BWXcpZDgEsIR6UDc2CmOSQLz8lKfBvGzpquiugHLeiilcRSeI
9lOSVVCubLP6pW8ZQhQ2kgHULzPko5FCJVXxRy0xKX/mymyelFZFm4Vt7D5Nij4Qu8BbK95vtFwu
gfMoz+Z0NWWPOs4TfYR8NFsWQkDxT0jKwTQ88UIn3KgkXWVUST9xEp7saXL1dGskn4kNqeOnzI4x
IF4IxYNBT6DawTsUCoE8x1nusIem423CHgnqxE7U07RvfbzxhTyViJSIpsRbGOdl6+km5cWiR/Fy
xHCVLpAGmdKd+NWgqYOjULoZ0+2fHF4OmUaSiKRsizdCDG/pTo83JpMuvHwaqU7daMly8Wn+EksD
nUZONRFvqDSsydo4PXT2cpTXYnCgY2EJLPU3ATYOhkKPdz2H4th3NJpGZpESYRhxKEdawpVqpdBQ
jlrlACi42C6vI28E0h2NA6fuFFpy6v4tXX31kip2QmiAhVaQsD/8MUFPwoFzJTbG2UkZPEr9uGxU
yB8r8WbWPcbRihcYAvxBzF9gdJR4i8bIoV2J0vAqf03DU/w4OJqzXRxaMJvGejYEgeTWI90k7MSK
Rxzdkqq57ERYRZsHuy8bdI3iCIjquOHLqBxLYpfTSxlPsRP94uQYXfKwiAx/oNBVIminLsGpbp5l
J1SYXD26bolDjKC0WRc0mR0vbrRQtZInJJcr7yCyFl5f/sLDSTSAzG/Qn6PDlwOxbnwNAjCe5nE4
TkFRsJSt07FTIOHHWewkDSmRHHCMSjdR2WtZEoedU+bJ4DiSDOqMLhFhkXAaphh+eO2m3Gjql0yV
n8jI5GlUzkOeVhoPHPgbPdJiiZ1y9UpgVb0e2NKp0viZ+p78nGRFGQuO3kL7FLapVhpm03gePb/8
iiM8Q6oyKOUdVN4pg/Ex+UlXH2vZCTqDQSdeHnaPwSb+PkhxdCSuaAziKKnZNWoQ6DxhKygXw0U5
7y7m9iOpjFddBgxGUF0kXXV5cJIvnSBqLpfxx2/ZNWAFOyNDj3Fd3eTgwvE0dYqhWqpKbMtAkmAc
t1m3K29FMi1cHY139IEy/VNiO5I7Yeo1hROVKBhDDNYSWP2WwsdEQaLNI7mTiFusIss5FtBz4hgU
/YGZ9sTR460xOGRTIV00Di7SrNGEneXfRGtKTyhdLt2hHFh5z5JU6WbRLcbkCsOPciT67cVc4+A7
/xLLjLE2xbN4L/NWja3znGE4lpfud5b5xbs+xqH0FNspJ1HrvF6xuVO5E/kJsR0MzLzuvKwlO9H9
mEIpJcdvtEi5oseW7CR5GtXKmJG7BlbF2yH2cS47SQMRDT6VO6kBlqnZQadK46fuMl64NDLTB2IW
MDqVrlfCNtWChnifzmIn6AhvJd7Ip+7f8k6Zcv8K4R5Ozjyzw8tApkZz2UMO2fwFRiqtzkAeByri
5ud1pQxvRZ7z/uFXyRXoPShnvKF8THrjQrJQYZt3FA42wXMKsCHKSw87xRL1BScMdfxK3SnZCb6N
dyYE2HQcg6iBw3fssnqHE9Je2skYSdwIXdlN3lrARKOk6iZV5fWKJeyaesETCQzaTHmCSQEcZCfJ
B1CoLsdWhCdBFvhJvsQwsZPYU11u+QNaifc5rzhRwlcgVby+6mx5CTSmCB/WlZfyHBp0sSI5piVQ
m2CRkwgHNKSrP262jORdJndST6MXpcs3eIfyHona5BLEil/BJ3kD6o4gOLqC6U6JN76gRnX6LbWl
wBlh0UWMgwnZCf2NOCf3I3S8AYVtCZGuuAZojVHxisQLkW6ZdD+qVnQD3UdpJCkdL8LI+10K42WN
wxQEIuAjN5qGCOmkx0Z2oqEv3iDyrujw5S2p+3dwnBx09XpgaUYNsMp2lE51ahxQ3+PIjL5APjIS
DRHE+RS2sVa6TwfZCfXIeXQ1eSvxJyJO+FNc1073b3mnjN+/0Vs6OZ+038kqtsYp83j5kzHldYVw
4vWr2L+zRhlxV++USMNgxq65eRgIOEaQfTbUH0e3hmq7VVX+3J9iaswcTJHft4zSLSt2M678YG57
RWPmNs04Uu9UMdU3fWSIteZafkz5ftmJ8s/8MXrq8pTsJOU2jnldL9HrmMG6hP4pOuEJ/GV8nauM
3x/8jVLO2kyxdkTmaOxEqxlm4Vbm/GZV35nwyI+0a/ZUN2DMcl3TgMVtIVhwGXjM+izQhurKAk4H
IdZa0OgBq/TLTg54MdxlI2AEjIARMAJGAAiYndgNjIARMAJGwAgYgb4QMDvp63rYGiNgBIyAETAC
RuDi7KR8vG3inB93uLrQFRp86O5UW9NXfsHgKZqXzcFPVH6qF1zHE5d2cg0HVlSwg8usutAFsloj
YASMgBE4MgIXZydYNJQ2LBlfD4gYTPn6ldVQgpCsVUvSDP3TlzJByThJik1MfFyoXMk7xQUnKj+l
ikQkfosLwWfu2cFlVk2x3DJGwAgYASNgBGYhcIadcBNJPrYQH5zhOQKzvqUASvjcKQKhDhoETkBh
sZNUHTLcmAh6cEJ2Avn4ICvtSXRHmtlQlOGD7FAVNdM8Gsy6Uqj+xhSIOotCnKcHiNQEFMpg7QzL
Xa1SlcgD+EBaMoCtEx/VLdkJn/JlXTYkrFA3Wpu6D3k+9M+sCZuQVYM2z/IqCxsBI2AEjIARqEFg
jJ1wu2I+f8VntRnG8BdfIcDzqU6UM9gj2uEcQY6Rj/suM6ZytwNuikp2UlYnsWBFPveFc2jjjlL4
FuV8wh4fFc6pGYW0IcngI5UkzXw2jwZry0u+ZIGsKKYZtGcimRP7KNDVBNkJUxSkKbSNBCtma+KG
S/iK++1AmBUJKbQRfF4FKo9zTCxHXWanaDOpEqlGtFbdF+tCu0SGOIidnLK5xslc1wgYASNgBIzA
LATG2ElMciDUaa89PrdNyoJ4qYgo+Tgpw5iqXYQVC8vqtFsxOCqhZv7WZ8AWP1A0ZfUkU1oCGRXK
4GRk2mUoBu9YnS0ONkH+wS2HaXOcz+K3cV8j4lPu4cH8BwlHYidRYYSXSkSAZF6ZepGG2MFTNs/y
KgsbASNgBIyAEahBYBI70T6P/ImvYEmWoMmdEXYS5zIoBiWp+hR2Qj044uQOzrXHM/MBkpnFTijM
vYYipovZCQkHjYmTOyyJtnF+JxEI1uWW1ePsJMJLPrSYnZyyucbJXNcIGAEjYASMwCwExtgJZyWg
Tj/NESkRMrm4AWFMqxzS+8lKTsBJE9TSupOy+ll2Mr49KEN4kpnFTmgSUx1N2Ak6qxW1kU6JOsR1
qZyjIaS0gT1KuRNkUzjrJCqDioJXbxRbzE5Km9HclAeRZrmdhY2AETACRsAIjCAwxk60l3wMsXHN
h15SRRKjlEN8GFjPwZLZaBUF5FN1Wsn1KFxgq3apOe5trxc88k0oTDMMyigXUmqWwTRSa0q4eEWo
UUxrTstHndWEOithpiJkHnXqW5oUv+VHtg5tOIQYlXPtDhkMhbWmlR/JXUprZVvqly7cKZvFmXwj
GQEjYASMgBG4DgIXf6L4Ot1o0opCOwN/E51WYgSMgBEwAkbACMxFwOzkzxBjUkSpi7lQWt4IGAEj
YASMgBFogoDZSRMYrcQIGAEjYASMgBFohoDZSTMorcgIGAEjYASMgBFogoDZSRMYrcQIGAEjYASM
gBFohsAZdqKd6WODKCwfu0WJnjstv0X15i+ZG1HIp1fwXI8e7WkGWIWitNJ2sXnlQ0NnjWr+SHAJ
fnoM+6xJiwWEG5/hwlNR03sn16WLLkBysdkXqqjnxaaDcNaS61zK8iGyEcPwYJoWrZ+1v1JgAZLT
+3Lp5fbNh9kpYC4YypKdzc1ecGs3t2EKdJTBk6cxVHGYStU1ZMXys2F3ug0dSo6xE4z7eug3mo6d
NuIuYdyfjcJEkDGDO6mrYtwxrAkQpxRq23i+6KdJW4uVwM/0cHJ6/eFc8wDvxPcjAoHUce52v7gX
ZcUSfD3+3bCVQVXCTeFqeu9oNt+WkDbEG2wrXr5L92uBfrn63Bdblm3Fnl7nUpabF48gEHcGauvJ
ZaOnCER5W6nu9L6kQWDBRR+sosGh+TCL5s4yqpGh7FTdZGcrs3WN4k5XE2/tVjbMvabxpSKoq40k
uN9V9DFFZBKaKWF3rjFdyY+xE1xgIKW3schuORzvSTIVfcsSfAQZLLdvRznGQQiQuGCjFP1SEZXh
y+2oEH7PF/VF1CgQ97OPVbhbCdTyQEV8m972Rxv0rr7BlwtGmUizeJ406JWHspytx3cEAg3W4vA6
Yl75MsLx9yPqFYDULAQEmshK2VN8BeUwWzvvSTheKaqCWHxlIM7jVVOnYjmvsnotk2KhrrKuSPkm
QjVN3CIgqXdnf/umtyXwRUgyjPv2ynNS4NFlZcfRdKqrj+mipIocX6IT0oBUKE/Q7RCtjReaILA6
XzFBz1dFnSiWnOqpaiUHSK4yeGXP9lpelIAd6Tj6wjdUDF503Ue0Z9AAXBRe0EFXjGMLzjW+ob+n
0E7+mfrC7ZroCUkyvh6kHIJOjUhxfIu3IS2PsDDEphswVS99iRd68N4U+OoL+pUI4qmhLNZN4J9i
J9Hhy+iQwIw403jdEWQn8fIlx4gjM+uW0I0MgMJKalkSx39ezehyBEreyCq8DYm/tmKnH8YMitxS
e5dPCbuyc4snY+yEzlEOoEQN33JjewKqEU3sJAKta4+T+HI77UwqYariNmUQ5tbysEGJL+5OBhnR
plgFYtqUTJc8ve2Pysm9+OY8mqShAe0mGbZIT4IB6VvehNy1jJiwm1CIwviyPbZIUnzKPNSieRCL
cZdN4Fs2h+pojiixnPebEIhRk6PnYE+JMOsyG6E9guOV4rUgReDtRNghw/tK90wq53jBjJoGtWRJ
vEDyKI4svANT0/RJAgIXZe9oOS/r+K0Y2UlCkr2jciYkEjtXx9EdWiUEkuvGi8LLHZGhw9PsONLx
opMe0dUJHQlHtDa6un4p8tqli0IAIRMddaSnvJTCk2boZpSHDLrTeK91KdHBm5sbDb4JjdRx/bjU
ReedRQ8HOHQS/OXtqXuBsBM0VildsXQV3lOn0GZsVuSTf8ZAQn8mI0+SwjYOQRxmdaETsOWQyFFL
lkdYyhszVWct9Q72Q4BgajCJKAl8+FvCVgacGspS3ah2kJ0kHFJ0GARTrg5j4tA3PkjSW07d2tJZ
DoAJeZrEQo7q5fifei1vjI4nNGA2PSoGCH7UGM6GJobd8ZGw82/Pr4otl24AHaKp8AmkcCHxEe5F
t+DYHeN9dEclFQg6/sKPySg1jPIkKYGkfnxQYVlFDcV7Jl5gjfV0KVKN9GsgyaAV3rr4y3NGCxFw
9oIdYbRmicJGtJxdO2WeNNCt5UAxpqo5oQH7iXzp1vLswZ5KLexhpBy8UsS5HI/UwdR0LGdcRHeI
DI5kSbqmDPmKpqealuU8ST81Rm68cSR11WhA7HUER+MIZUo/5AhSXhTKa6iNdurSszD+ztbtEL+K
g5psILyRMsoByu6wJPWU7UY8WRJdhd5S3jjjvY6XUtpYJd7pqePlvYMS3ZKoyGukK5Vg13APtaUr
ln4idpLuMqGd/DMiky5cKSls4wDCWrpHIrCDQ2KkJqybLo18eNAt9a3qRrNLlHQ50sUlmAgQp4ay
eOGS2kF2knDQNWV0OAVmvILpjkiXIzrG+K2tS59CVUI+3rC8X2inLC97LW88ZbYGyQQRTEIJ2SSj
1ZSwW7r3hkrOs5NTdy/KmT6RgLxH+A5eAOZCiDIE+IuHiHMo51XRNY4ROro7xcoqZ9kJ2mKkxKHk
m36B6Y5NMooo9Lz4bXJ0fIvxhT8341e6yTmUnLqlWYUZoAigBqBSJ9qiPePshJes7CkRJpg84RWM
Vyr1sRwFRtgJhXFEChgtSewEkmwaBwfx6GZqWoAocidXOXUfjiCpbJCGldh0BIdXUJe49MNTF0Xd
4eASr7K6Vo6q6mP8qrwK9Bz85URGcrmI5EhPExfRUFuGwNKdxnsdDZA29iiiETk38U8d0U3KtDm6
rGzryL2gsSW5YvKTs+wk+Sfxib4X/Tl6sjqSBhAyLamN92npV3RChShBkW5eQj1YPY1L8kCaXaKk
7gxiy0vAe6G8TCpJapOr82OJQ4wOJeyRNhGH8o6QVcn4KewkhaoS+dgL/qASz+b4P95rOV40W5eD
mSrJxHKizWM87Cbf3tbHKnZCXDgOyjM0aicgeAHkE0qFkd0LepwzW8NIlm57lvCaxYx6rKIrfeqe
QTmpDw6tNmdWMLpLlEE5fAUCLEwakqPH8LCAnVA5KqZYOxJTeZcCsXF2QpRST2PIiQNceaV0aZiA
5R0isVPsZDClkSxBXf4ogTAurjK60Q1YJTad2IlS/eyFLl95Q44gmXSOD2EJgeS6py5K0hnZT0xl
czEBXZ0/0UpfSlcBAso5sdeMYZo3GSQH7HKpXLkufMVbI7GTQXc622sIoKJMSleHaKSOo2SQnZDb
wTwOJrziI/dCckX4UpxWkyVn2cmgfw6yk1JSt0kcXnQdiXkCNvkVB8ZTidXyxkzV2c14uRM7KW/Y
yDDiOBNHy7PsJKkdZCcJB97vig6nwIwuNMJOkmOcZSflAFgiT3bOQVU3Mg1mWBzvdQkgHZhRKRFQ
XSYuM5gYdsvRb0MlS9gJBwUcTFLxCuEgW+SqnxICpbwgRhqr9QG4DMqY8TeQtEX2o/uKAqjChlIV
NaSTeF15UdUFGK/qaaiKMrwnoUe//uO30Km+EJBI6mktPZVdYKdOmacftbez5H+23Jh20i/VHHXy
VwWBlanRJLY42FMhDHsIzqkrhabZl2i8jKElqqty/h7ioVnCZAngIp5xzpVVOOoNNi3LdcIqVEI7
B29FyZdI0pnpnxpfdOFSB+l+UpL8MF2UhAzdSR2UnSTBbFHQ6c5K173UiVLIqmsAADoYSURBVFuJ
AzQ1CDeUQFvs70hP1V85ue6a6CGD7jTe69IkdjyhkToe7x3dBRp50r15yoCIJ11RCc7kJKfQppH8
lq3o8qVhKjpMkiyxxYWQZv4yScAmv6IN8e7WGMghcdwt2dnoCcmpyhuWPskfBoOtj4y0qpvUqgrt
4ceEA7+K0eEUmLqC0nB2kKRTnbq1iQlxVqga7LtMUvhQGq90udRrmg216KNImO7ZFI9oLQ5e34lh
N/n2tj4uYSfNexh/PjZXfn2F/KW7uF34H/1Sv1kXq9pKxTJDuxXLu7ITXkdmFn/JdWWhjTECcxHY
WXSY2/0jy6/PTkByBxcKbfeqgG6nNbaz+kLWD46yM1hGQIi/YGZhZeGEAH+qpp/yRskIbBSB/UWH
jV6IVcxen52s0m03agSMgBEwAkbACHSLgNlJt5fGhhkBI2AEjIAROCgCZicHvfDuthEwAkbACBiB
bhEYYyeYwE4PtTbsxhGWfKan5gbR4y7y8atTyGAtt5azoAorcpF/zTKXhtfUqoyAETACRsAINEFg
jJ2Ue43UN8loCj3l4+ZJeef0RR0ZwWQKO0F17dA6jgyfNIY8n83DCemj9rKrvzrWYASMgBEwAkag
BwTOsxM9QsLYqQdS8Hudz82iXM/9o5C7dODQ5o/a5SK9B4F7M/BJegZpPs/NaA0N3GhPMCVLIMZH
wyWvc1WhAJXQJDaEA+f4lgaIH5ASaQMAtcjtWGKL8dFzWp72F2GJ7CcyNEySNAl/x5FRd/hwHapz
ky496jKRBvXgcLbBCBgBI2AEjMBZBM6zE24WBEUIjXEbLm4sg4NBl7MMiO6gFIjW/H2f9pMhReA+
V5SEciVRKKwNT/UKG/UhWYLmmN1haGd1RW6coxWG87TtLGO5DOC2lewg+4K/ZBXKHkE/N2xWi+qI
MhlK9kCYszCkX7Kfu3pwr7a4gydbH0FGGpg+ESmJJ3HP47NX3QJGwAgYASNgBHpG4Dw7YUBFlEVM
RQCOsZznjOXcaCHO1zBvkaKmfuWXO2ejISYzGMUHp36iJTFhoNcZKFNC0OPHtA93uau3BPhV6gub
E9vQObMv/EjLtbdYSmmQOZGFgMxxY0e1Mo5MpDiClNsL4kgrV3p2ONtmBIyAETACRuAsAufZCUOp
AjZDvjbr5TbD+JbrZxOl4OROjJ0jMRiqoJYpjUF2kixJ7IQ20Ix46IU+NeyEmaFT7ASGsWkmaU6x
E1IToKd9u5lDYu5kIjuJi4GUOzl7mS1gBIyAETACRmBDCJxnJ5yn4HwEYz8+6rVtnGtgbI7TNBDj
2o60rTtngmJUVjjnfAeVo5DzMpFtJEsiVyAHog1xmQsng+LUCV9PwJmdm5sb1IKdbJEvO0C5GBVn
qUgguM5GuRN1hPqJAGeXmMxQQ9EboJCUgm1FEjaCTNQwwk7Qupa2bMgFbaoRMAJGwAgYgYTAGDvh
Y6uMyoziCvzxxSicjsEByfh8LORZMTXJwijJkM9ZG2jTGwETs0mWQD5OG1E4NUfDJMaP4D0iUqzF
ZbnMA0UlYiTUkFqUJC0/1VDsPlkLqRupTMJhEJmkQVdBQFGAq4Ls4kbACBgBI2AEto7Akt3YEF/T
GzK3iEKahCI7KSeGttg122wEjIARMAJGYNMILGQnTDZs+ii3QWPeYtOdsvFGwAgYASNgBHaAwBJ2
soNuuwtGwAgYASNgBIxAtwiYnXR7aWyYETACRsAIGIGDInCenZyd7OhtrQYMPmvztq52mkfrCvDp
c3yQnC7cwwVaxdomjWLBtVaCa0/nHiDdhA0RPRi8+IokPRP7npb09XOzRxxS1/oZctPFWnbt6jFf
1u5ED6HYFZqYZc8lhMfYCZ8rSQ/C4COeieUDsXzENz6/M2KiNufgJih8YBiF6SFYlcddX2f1PD73
O6viLOH04j2aHT2Ge8g2eT9fWq47EfBZ3VksnGzjlS21IVhCUs9jL25OFQXshTZ9KRdN19tcaih5
J58zj4d6On084gPwVIL7Kz3bdYmOjOicbva4YbFTpySb/CxJDS1eLC89WNB26jECXJ34VfnAQSc3
e7odEkTXGXKn+G26WOW1m+KNwpxvGuELTKa0Lpm5PjPFqmQAm0DFHTyhcgrbMXZCGsE9P1L96I4T
7x9V4XAJZBmrcOvGAKNyxvu5bgGFV7hVytCFEm7bKqBwrh1iZnl2KbwhdnKKjbW9KBH/BTf2lMtx
HXaSruygX4mvTBzySIvjQDmlv5eTmTg+nDVgyoWud7OEHqyaCHuyX3owhGLEK0kn5EnZ41e4cKmb
rdA7C++4QLrj0k+CetgrzTtFC8prN+VqCnN2E72bm02Z0krs8oKrrCaa/ABuhX9bPWPshFmT+GIX
tZ3YCW8/ZUG4IyqOdFEhgx83vBvFQnAer00s10Zq3BSfqZooD/O4CRu/pQGyjbXQHNklhVmibdNo
OTXzK/YxdYG9Ux/JPEpSpercDZYOpJ1h+YODwxa/ZXdoGE40okmAdpbsJBrDfXvZCwiruUjsuGEu
ZSCQENNVhgAHx0EBdJlbxrE5op1s4/Ca+oiPqIuDVdQ7zj7wwuHbVAtXTRClPkb8hfmgWhbGe0Zd
IxTl5aCwhuPY3xi6RpAkUMwyxtaTJzDvqD6q0egb6mkULj0Z+Girm5gs4W9xtst+Rbi4uw8KuXOg
nCfK0B+4GzI18BLTXXlnCSJqI3S8rBDAnoeqMniN5Lr0Q6KXLhPU6jcilahHuoXlZunX5Ii/sa6G
CPaFN45uGf3GGOlmedPFq3CK6cIwEhT5Zxx/CAvHxnQ/xksQHWzkDkq3La9OhDFd9HTHxS6oayzk
wUsfh03anHxGHwcH3uZDJYcpdTPdRAxtkFFn6djEHD3ikEX3iPc+sSoxLH0m+qquDq87v+JNpHsk
XaZyZE5NyCr2VMMyzWPvGmas40B6hfMz6064eWtpR2InHLkABMBSclJERNVRS2MxqnDI4xAmmchO
5Ci6c3DCjA4DGz/yr0YW2aZakOdAzIZEeiDAMR3lGme5YRo/qgsaodjHwd+4JHNUyBsYwpGf0TCU
QBtnanUbxGGdFmqUZzejnmSMstkUgyqSgHiwIb4uUbhFxNjf+IKCBKkGGlF16ky28eNIH2EbIYpX
Qd0nMviKfRREqY8Rf5oxqFbXQpE7GowLhF6XphI3NVH2lwL0rtL3BNTI76HoovHKlsbEngrq0pPj
PoFyezq27hR85Ogs+qhLQE4AATowa/EqELqoE0roYHTyOBmh+5GdInTCobxG8mTdoUJPneVlgh5+
pdAIX6WdcfQof8SP+Buzs3R7jeBxqOEtQyPHu1nedBGxQXZCqONXkSyyU/SH0s3SJdCdLv8p76DS
jdPdoctE5EfuuAgRLzSsBQLlsJnAlJ2nBl4JtBoq1ZDcoLyJOFDH0U9Q0OX4txxzBpVHn0m+qqtD
nXErUbWYLpPu9DgyxyZkVQoK/HXE+yWOMEJ4EyfnV8UOdiOxE43XjI5ASsQtVddlgCRkGNGjDDWo
hKBLIcdW/SKkV8XmeFVIAnRvcPQpbY6eyksosdSFdOuWww3NjhGXYwrVwir+DEqGnWIn4vIKgdHD
kjF0QeqnGM75i1kwooQ/r3mnDSIW78BTApAh2WdzsY/RB8o7eTAep97FWmWMj30cHCkE0f+/vTPd
cVxXmu1+6PP+342LBQQCkZIsD1Vd1Z3+YWggc4gcmKQlusjWiJVFg7hMUiji66UvHuvh4QIosl4V
9+kJE70pTF5Jd3WMVA1Uo7VDgERJEUCmRjDqCWaBzOd0ChE1UDM18BqJ3ckIO2S4RSoskaa7whc/
pKPj7lCvHCTUUR8mhQyKmS7qtBCe0QSkokMWMnoT9qR8qGYGXVlhpguCNN3MtihIgajczACiEfFI
qW2LVwSdha31us4qppyqTfNV2sTrcDmvHFAUOt9m4pUun02VM2TmFY841hG9JDMZW99Knhc5Z444
cClfTQocT2+f2YY2tJ9uWTLb4TETd0VTJmBEdgj/ioPPVydyrzl3NxZZnWRacQP7ij3VU5wEFNOS
YSsb4ivZixFF3xasRlaKBueFqcLN6oSkIy6ohj+Z2nTiw+rEktvzHFEgUMJQeVQi9lo9XdSGuVpR
4NQZavp6NYA786rXqpOcNBSFi9xaOs5McUH2rDoRkTvVSelLAcoofuZ76ajkCK6UJ5TJdDr1mvkI
e5Unm6MXS3TFJRSUGcNYDrT8gEMvVoYhxdiPsp4CJheWWFIpevHzSiLg02kjY0vBlJbKRJHVSRKB
+3V1cuEYjAROI6Jm9DJ7VBSfqanrDrq0QpkVZKBPjSVNDXX5iR2sINV19fWqktG+iKCzsD2rTs4i
LlWr6mSmTVckOVNKtz9LvJ9Kle9UJ4SPB/iH1cn0mfLVpGBD471GssxUmXmyOKtOyPbqnis0GZW/
4vjz1QnOB6xnPzEQsWfViYxKxsx5AEO+V3G9Fk2yJstQoduiJFadQkcHsr2uqDGCXZTwpUIVBCyc
pvxWR96gW0Qj9KlbmUkTjdYLsiR03SJbMSTQi5bX1QnqoB3s8MuslHWL2hnFzxCzbGcNEIa0+Fp1
okIKHDBZaneRW0vHxB8xLsjmmKeWOABeIWNNcxC3WRqmvgwMtuAFUCw/MGBDszxBV9DLGWQKk5q6
8fRkD9IWDDlzVGAUBHA3w/dc5TtgrSO8kJ8aVwc4OWLjrkQfLmeEHWW6q6po2gi3hIXopKXKTHCH
tWNTYpu7VPMcESFFU1cuHANsiQuvJKEpKCED0XetZgVdWoExmwBnf+oMzIw4L7PZ6GoJ+OVm+JJN
YJkvIugsbI05ycH6VsRlOJidcylGBDQI2pHS2RJbSnbyIQf6fCpVGuTM8EiYQcQVp+4a6T2ds72c
pSv1GcPymfLVtA4Vv4TBV8GNmUNmG1NO/NNMZ9UJmQff9uzI+P+Wgxerk3zB3co7C2PyQ1Dy4tnr
f/RNaiaY2TYb8CwIV0o2c8TSKZgpWJKzvlNHOKaZTcRk84DGtPH1JMsxt6Rmnk4o4Jt0dGwBCnz/
3qQuzAboe4hYyTwhxRaiya2SbepuxS0e2s2WSW1CRJcEGcrG8Izs3IwB3e1Lk9eE1/qCoVehrpFM
LqaZnoD8GQgXvuHG05PRMRdL0uhmDSPdyjg6jF+1nAZSL4tas/lyuTy1M9uxTZmixCiVpcpMHiTo
cmZ3u5a5nDlGwsWoULOpcrmZ1lIMHxcdtMiWhyGTBY2BSq/LgMWgRiCz0FkAnoVtZbxKIxVxhxBN
f07BytkqsmbidV59M1VWdio1OU3uKVhp5GCxr14TT9DKV898MmMks2sKeZbtuV5RrLqHBXVRyGo4
XeXnH79Ynfx8xaaEOTP7jfK/LLOnfULg93rqy+p/vGMNJB+n/5DgmSdrcHUmZbOih6ReazBHqdfo
VIlzQSR/dXqN1+zlZRWvAWTR9jKXtMJNIuI7l5lv9v3OZi+o9p3iLS8j4KVHVnB/KTL/UHUy59C/
1GaviZ3LFa9R2F418/tTgPxxT87FnndAOJz9HxKs9YZ3mFbfub71QeJLahH4UwjkesyfkuFNvv9Q
dfImUtt9EVgEFoFFYBFYBL4Hga1Ovgfn5bIILAKLwCKwCCwCdxH4THWihwQ/tdh7V/DR7ifI8LLw
23ERWAQWgUVgEVgEjMBnqpN65fVlfFXi+FG+Z589/JQMLwu/HReBRWARWAQWgUXgIwg8qE70MFq+
BCWW83U4XgmZD7jlK3/qmKdJJFmoTe7EYA3nO5Dz6fqU4fAlyXyDNF8SS6XuP6b3EfSXyCKwCCwC
i8AisAhMBK6qEzau0TevobK7C6/2MbrrFnfZByypsy+Nbqn4oKO+dUwXyEIhWUAKdt6GSB3ZI6j+
ug8K/lCdiAVbA+mU3XzZM8obMHvTIe9AxZY17PPIjkDrKIvAIrAILAKLwCLwBxG49cuOt8ajPmC7
hdzuqdZOajsEdjpSx+qSKyiwyLUTVyfsBMAtN9ABO/1VdeJThHRRQpmSgkGf/aB0cL0B/x+00LJe
BBaBRWARWAT+NQSuqhP2FfZuyrUrcFYS3GIdhW3Cs3RwR7Xx1tFqye6WyeKwOvF+w/zow6a/LKWw
UuIVGtZvvJxDR7UUI/rqigVg6SX3gzLZf80JVt9FYBFYBBaBReBHIXBVnXjkPvxbgafWTqgb5u7a
xeJhdaIG7MV+9tyJCyMfeCNICTD3uKzdKr3v79ft/vSjzL/CLAKLwCKwCCwCPxCBq+qEhRAeGZHo
/j8hD/w8DsJzIfO5EzqqjHBHEeGxFRY8oJksWOqo5068dsJySy1+GFO48MdL0KSjBOD/wGgJa/jm
2gl/HKUPPyTNJ2l+oPFWpEVgEVgEFoFF4K9E4NZzJz9H83w6xG/3XIs3F2x+jjorySKwCCwCi8Ai
sAhMBH5ZdeIHTbTIcfPlGv8R9pp/EVgEFoFFYBFYBH4FAr+sOvkVmK6Qi8AisAgsAovAIvAOAlud
vIPe9l0EFoFFYBFYBBaBzyOw1cnnMV2KLyOQr2LN17JeJrsdF4FFYBFYBH4XAo93stdzG6mSxgy9
GuOPX8F9qHa+1MMxRKrjZx8T0XMqX7o5PSp8ahx9StQf9c6zXoB6X556fvnwqef3uTx01PsNJPCf
lecwgu7L/8GWbFzkP8n6IOWnEL7fWInrzh+XToIPXb0ayEn08qDoCJyZA98ESipMCe+DUNzZy/sF
ke4g+QJZdUEkfdcwxK0ciXSFlz3zcwHFyyi9psjs9dmR7lNS/Sg6V9WJgopXc9PqSkO6zkU2Y60t
Q87UU3s2lRcF3kCGgneSpWPt5PYOWOx0ghbv0DnrmyrUxrWvsUNOee2dLC/tPlUVPSvtlLA2CxZB
6YJ4ygK8pP3wk38j4E1+s5cIQuomRGcc74t0LbPMdEc1Q/EQgfsNxJptCXlF/4+nWiWBrxiinrX4
/aAQgGdRlu4BwbwyXb2sVg2U5dhVge/MgQ/NPYfb6sL2ktDkoy5nCfkhtdxuKhk9DDeJ8dTM6qHi
bsBwo+/5DgQjhZSVjXTAZhOH6WKys1/dl+TjLT840n1cth9C8Ko6kcMpscrkc+hNZNlNRFfyr/Xk
0OVP/JEN8cMCDGTLq6Cc7qjGlJmmf0icUilhnVGqBtnM6QlR+T9CESfX66KZIkNpdKgCLDwwsx9u
Fv7Em3XJ9tBXsOnj8Sbbp4QWvmRjrlZQQMQ0Sc1QwHZuXxCBZ5mgJFQD/tVIakKHzXnFFPWdr8Wx
xMthNRdL8g+SEI+WyDwFMMJApDZTEVswRcLQZZE0imUGimps+bOLuetuQpHOOV3RFoGFvOtivM8h
UB2JLB2oi61gw83Mnv5Qbn+oSLlTwStRa3+gC5pgcj8oDi3+flDYT2a8lMdidAPug5kTcLCqTvyP
GYCWOdDRlwZy2ilUDwOTbOnZFwWQ816GdlKbGRXilLxTqgy3MzGyOsk2qRqmLNzUwEsj5XtqDFwX
08tEe45E5jhT4sWtFEPHJVXlUu5muq5lHidqu5zDp0Y6Dzokipl55gJSppS/7/iqOmFImHYVClWd
yHvs2azPM1bVzJLXgHE1D+21ni/KDGwsezAUiRphr1N9i1c6PUKykpHXWTtxHcCpm+VEwf/pQykm
djTm4EwjqyBNUYowhgVZD5GghvAMHuxTh5pqT/ZnAsq6FI5Y7UXQEhKWJRunup7zQnHRRyz4UyHy
lERiSiRelKE6vkDSJigJCQn20MMHiGdYAKALXB3YVbBLZtKc22FrsjmWEnEOzgSAoK2WtjaSQJEi
FcKwIGvY31jko85I89kByu7gAKoJhdPHdEVbRIx0Fwp23co7MlNWcoaxrHDmt+UP6VSlyHVkOZSE
Sc1hLmg+FRSHFv9IUJDBDuOl3EMyzCsTW6QSzf/+++9iISFzoP3E+SHTjlGV45XD2B/Ie3YGgouY
qtAuaplREYNvSBE7MM1wO/MHxECqaiMi5GTibuJGTiDiMhneHGsJNBpnemGIIYhmSry4lWLMbFCx
k5FOklEDzxaQikyrA5meARFM5khX3QlnZ55J+SZEv7fZ46diDydwVZ2gP07AUK0DRsGExgMkrqO7
Qp/xLOONoiSjzmOqPWAiTjjR1x/GGHwiB0JEdVS7OnE5lZKfaZQqODxQHEkKpRxUSGT4sQchi4EW
sz1D1wXaDv5DfNA6FSdX6ooHY5CfSKYJUq8URse+5awxcc5mltOLJbpCItMBKBHPKfkUwC2xadm6
hnOLNBFOae0k+OdhY8Rj5cC4UVFZtUyg9hMOoFkWoW/VH2nQbJ8EzQh8LiIRK9M+naoUgfj0h4I3
AafLBc2ngsKautenggKCh/EyfWBeKWxTqmnutF3mwPSTXGJxe+M8ATfOWIcKIJ1/hnbmtAxni5Fq
SiPnhAq36Q9ZnZTPiI6Xi1gjqdHBUlUyTNAujqs6oWUmugsTH95KMabdrR0s0oKOZUeWYxwEXPxh
JqNK+9ndI+MZ5ZsQ/d5mj6uTQ90uqhPdouLTJ1cyMo2S8sjs9Smb6a68mcHSfqxjiuI0v/lOmjR2
d1fTszqxSBnJZxpZBcvMDNKJr1BKX6d2lqgsD2T9NBFQM9onQQ8thba0E2K5DsFsAABzjCdgXEix
VAY1vo1kmaCyldNBhtyz1UkOxuLOSimIsZjk0+SStlZLZRbWqC5snXSmRQ6rE8qFw8agVHav8emi
OpmuCPjY5Syt1HKjT6s6OfPb8ofy0nTgM38oeBNwZL6g+VRQzOpkWuG1oHCvGS93qpPC9mwYO7Sg
0UvHyMLCvWZ1MleaxZqLMitzdHpVaKeNKpxnqBL+8sAaR8/8QY2JEX1mGw+9OEblq8y0mQzPnL+u
P6xO1P7CxPOW2luMadaKneSuxs4D9RMMdQa6e2Wl8vzsnnY5o3wTpV/a7PPViczACIFbFC72xfvV
CV1cXkCTyXSlwprx08B/UOxSlHm245zZTKVUewa/UxxqZBVMqibN4iI6EoCfckgQrEWxVMCx33ua
YlT7mYjPZMvB3rpwkCEngg4kiWH6hWSZ4J3qhIJVQLEgAffUgsRqy6oBMuvKHKtMAZrkQSiYPgUE
hiB7JgKFMDlC334cqtJfms8OUHb3Wi5im4JY84tbiZfykL90BUXcpeJIzWw4/wZa1cmFb6Rgac3p
wKBX/jDhzTGmQumdoDi0+EeConw44+VOdTKxRSqXmxfjgbEyquLo6TWmwXuzjil/doDQXt2rlKnQ
TmoVzhZDHoULgcZcOznLD1mdzDaQnZFOJrfYlQxvPmNxpzoBqzMT160U4yIbwHdGOt1r4GO6qPZA
impVnWSOonuq5vQ1h9QLT/vtt16sToSvvcfTdNmAlEqRWPNvkHJjVvkmfKasBtQEUNMxp3lMdxmM
ixmQuo5PkO51SlFPSzrKt3TqH31TKfKFPoymhxqlCuhuFurIYG8ZSCIUzkbGp0gIOFZntk8JD9Gm
byHPVIAJE0IagURJzc6QLBOkhCBpYSwhqrkWQTVlIgDxwgDX9Y3n6JM6eqai9giP5BaAAzq6yjy0
tUiBDIw4ngiTmtP0Vu2wMYN32d30UdNQeGmnXDEt4nmtDtTeXdAxP3YtZDi0wqHflj8k4KXImT/M
ULIVphHfCYpp8WmF14KCXofxku5h69thzrKcHUyY25mn1SDu6zYiXSrtkKAysWTkEix0lJ9UTOEP
iE1lY2oVztaXn13oiB8ehtvMtOoII30OfUaB72G1fNJoZDLMuD7EMAE02iblbKyDQxPjV4e3UoyZ
DSp2DiNdYpSZ6KXGcASKOdKZta1g1erWNSZ/zd0Xq5O/Rv8vVWSuMXwpu59PvGbYFrhWepzIFMnU
bZ5cXujIktibIOS8+SGpj3AsLl4YyEH3oSS/qMEGxS8y1kdEpTz9CKlvJvJUNvhm2f4FdludfKGV
/9YB5mXIzpJULlfmvJMpjnpdPISRs6j3lz1rYelC09ce4nsInSdJN1e2HxL8aQ02KH6aRb5aHl42
+WouX0H/fjb4Cu5Lc6uT9YFFYBFYBBaBRWAR+FkIbHXys+yx0iwCi8AisAgsAovAVifrA4vAIrAI
LAKLwCLwsxD42uok33c41FuPyPE8+eFnPvr+kOA76Ootm4u9w0X5+lH8ZF3PbL8j1Vf31bMafn/1
KR1fFuw+jHdYfKlLXAjAS1i//SmKm+ihLB+/3a2Dhw/6fNbW1/7g12ruuM2dNr/duK+F8y99gvWO
QX/dcyQ3w/OO7r+xzddWJ/nG9iE6+bLGbKBnIUl/DpiHBN+xAS9wXlCwPA+5fNyrFFd3ngx9KFg1
4CVDv/msuxPzZ2k+bA+LNzW67xK8OvhQqosGh/maAvTOGyg/Ld0n8jcDym+l8o63FFdHv5j6LHTv
2OKsryqJZwNEXa7j/Y5xv0KXmzQfyp/hXDQv+p69WHdTqjfjenK5o+ZN2T71Ds63RfTN8DxU//28
dxPVr2t2VZ0QunIOb/mqLJ+nusseps7+7F3mKwZ3dlRfv2nmHMGb/WgrOn6blA2yyIm6LhlqxWWK
imx+8UENJANvnOo6x/pmVxKYmjt3zcIqW07USeL172vqW7kSWGDk7uAmstXd9jZrtvHxFDZhR2zv
fJD4m44aiHtt3euRJt1rYu67VG80gKAhKrtjvmyQkEKhNKr25mWQ0ze8S9KhS6Sy7MUnXrUqlm5c
4JQ5kld5kbgzgKWnGeRDJMs62dE4n0HhBsWiXL1irZy5kJ8BdRiq3rDBuzVkdXixQJJ5PN1e5nA0
+SDRSK+eKmQQAYt3xEmUHOZcLENnl0OtbdwMnDMh7fNVCpc11Z1otQoVlSiui1wXOPn2VnJP+YtL
xqwzm2kWXKX7YXVyLVV6dcb1YdoR9xnUF+miLFsjTuYusZNfVUwlZVcnaqnriXzVqYkJjWGkZmcJ
oZQ9dFqIVP4vbGlDgsqcLxkcaJZ8jr+MMpX3zgyR6P3A46vqRNCwJZRSDCO6cxlDL9veCTUd8AMB
MypgpQHLv9XRBqBc8I57fndUV2wbsWAfXxBnDwwIGtASFdaigPCcskjAHqDSS3d1YGpqQzJCWomN
v+pYB3hDqsNFq1lSyRtyWQiBRZN5p7QjNs66o1eyVhdAmLDrIrcoifRhd5DMkuLLzob5k5MnxOmX
yJmYc5eYxFKgijqEa9kdRohhz0lIEcYaVfvkhWtJABHMevHCJVJZdUHs8haCHw9BZYNTPjbdz16E
z+Bp7p77exaSZR3JSfhk5XQBhc1ULJJOxVo5MxTKl9J1z0JVvTCl/SerkxqP052yOplubz+fAZte
nfFIF+R0DPqf6nKMIcyxr7qUod1FJjjT2sYVHYdeZpWHoceo4ECQGEjlPMNcK2cyZiroSLCH3FP+
ycUmALpS5Fr3w+rkQqry6vSuw7SDrTOoD9OF7MVAyw92FDQA4hEnPY1gxEsdjDOaAETfoswoo450
MbXyB8YdfZOCzhJCKnsYd6ZfgXDoZuKi6/mPkmJN9EF8opGjTOa9meIKtx97+qA6YbKOOYkTHTN4
5AAMlDRzxuGUBJ0djQXVgE5xQeA27pwiQKVjHJG+yc6iIhui2h09PpmamDIwOIYza5iyC1WrY9YM
0pYzpcq8TLN0Aoo5JDnsznWzNrYTdjF1aLHIxFib+ACy66ECTdaRhCVMJak0LilAV1xBlt3dF2kd
7ck3CVb7vIVrgUYCeO0SqazhpXsVjmmaM3Mkr/KitDjNpmC+UtYhrVdquIDCLYtF0qlYK+ShMOPU
AXUWqmpAvnMhQmUvbMvNSp2MAt1Kt6c4JvZnwNqrD1WwV4gmFqyEMA0xDe0uDxOUx7PKKjdDL+PR
trvDFPe44J7gJxeSQGW2NP2F7mfVCbzgkqTKq9O7Ku1Yqgrq8vk0rj2zIrfa4HUXwWgHEy8EhiD+
iQfqo+v6nqYh0bk0P0wIqeyh02ZoZCBY7DQ0jSt3kQMlnj5zIKhRxn2n52OI64csK5D/yOkT1QmV
KVAyOHnAYH1pZj2P+tnReqYzqSVLcMzkXKzgRs9WJ+qlLtB30Q2ppJbzv0xwch0GbDu9h9jKg1Rd
D6uTcjL1onq4rk6IN1gb2wl7xSSn+uSMFvzFNMd4FpBsjvvViYggvz6y2rS77eUyPyHNFF8W8Zwj
5dSxXCJXfa5dopQt8Ct75l2YTmtO97MAFwnRdLI6KeuQ9WrGDyaHUBRcZmE6FaTQSWfWlYvqZHbP
rJTjVpUdZ8krm5XbMxdk/joDNoGdKuRdYjCvHKI0De0uZ1q7gWO8ssrD0GP8M/302ztM1cb2uoCo
uPBrtT5M+hMcm/5C94fVSUqFRunV6V0ZiSkVUeagrnRRpiwrYFxGnPK6i2DMaGKsoa+OPcxT8fBd
A5baoOZZAOp6pZ3ptJa2AmG6mbNf5S6CpUYEozFLmaxQra8O4JjLyWfx+2evP/5lB2VYjPIIwcgn
g1F/seRF/FCU5VA3O04PI4GqL+hXSXGnOkE2RMXt8g+Z0nKmdladpCHRVDSdoaQOHQl+eOEHh4FE
dzTKYkuUr6uTZJ0xX7BnTM5FGpgiZ62dEJb4aJkM46ZrpgDEMHfV8dDukK0pTsJVY2S2rwKCObp/
c4XvmUtMZSto0zdY3XW2rZrYwF5XJ/RitRniMpyzYYpa1sG+rGAbaltkrkdmm2SRdM5iLau9i+rk
rHthrtOqTqRFGYgu2QwY7fYgk4k4A7aGKIA1AjMGZ/uy2jS0u5xpPcO5ssrD0HMDc7dUd5hWHXDG
fXJJV7muTg6zOnHtGNdpQlFSlVfPeVSlHTuGg7p8Pn/CcE1jD8wRZwoJRBmMM7GQ96AjHT3cpHfV
SOcixgMfjZ1bznIsTisZshSoQJhuRobPHAI7JHdM1UBQo4xlm55vTX/4wYPqRIoJi1xF4BQHZZHD
p1iIK0zKZWNyFtWoWwKK0Ddlpxsu4gTujhgi5SusbmUQlqiWDT9zRx2bqV2Qu9BEAIuqA90tIlaH
We+Uapb20KRyovskW0plG8RG8oI9ezGL4pMLd/Dyz7HGLduD58TcgZGrF1ST+njthFPsbrJ0KUjN
whpVewydyWLO5y5copT1g1MmKCFhjXNaF59yYGAnL3uR2pgapadPZWXouHtZxx6b4/o1FKhQLIpO
xlohbwSM/HTdw1ClI+7HJw2EjhmPxQjHKLenl+lUwBr8MxUqBit2UlrrWIaGsmc1YJKVomnaIc+E
TJ/P0DMLF/SJ4SHUyRRIz7ib+OSSZnJmS1IXuiOhEzKkLqSaOSe96zDtQN9BXT7vkEGSFLVSXwkp
PG1igvEsmkTHP6pKDIab/KRpPH9wr8OEkGmnnLaiowJhutnMIZZNI6wXvAsNfF4fVMu8V55fyv7Y
01u/7NyUvqa8d3rlfOhO+7M2c378DrX3+8pFpse/T/ZnUnjB7k8pUgswT/Xdxj8ZAarbnyzhPyvb
V2ewjwR1CTnXzx6aj/LlYbM3G3yQxadGzDc1+p7uV9VJrjfckaamvHe6KDcdLgjf6ZttnhX1WfrP
ts/nOZ7t++vav2D3p3SUcf+dUu8pZH574w9m7d8OxU+T/yNp+UKpjwR1CTnXzx6iqkSdT309bP9a
g089f8ov0a/J8Bt7fe1ubL8RkZV5EVgEFoFFYBFYBP4sAlud/Fn8l/sisAgsAovAIrAINAJbnaxP
LAKLwCKwCCwCi8DPQuBWdfLC00Y/S8uVZhFYBBaBRWARWAR+DwJbnfweW62ki8AisAgsAovAv4HA
g+qE96T1XRuc+D1AXt3mvXze0s4NA/4NDFfLRWARWAQWgUVgEfgkAlfVCXsosWMdW0uxxR5XJIWK
EvYyUjPu6nhf/vykfZbWIrAILAKLwCLw7yFwVZ14Lz+eO8mnT1SUeGd3g7YLJ/+e/6zGi8AisAgs
AovA5xF4sTpRITKrExZR/qnN7D5vkKW4CCwCi8AisAj88wg8+GVHv93wXwb+ZUdFiTbXy192+Jcp
/nvJP/p89UbI/7zhFoBFYBFYBBaBReCvReDBU7H8mqNnSngMVt9c8cMl/F0CmwFzy/8J+ante/9a
7FexRWARWAQWgUVgEThC4NYbxQvdIrAILAKLwCKwCCwC34bAViffBvUyWgQWgUVgEVgEFoFbCGx1
cgumbbQILAKLwCKwCCwC34bAViffBvUyWgQWgUVgEVgEFoFbCDyuTh4+3Kp3dm6xeruRHsVNXnpW
922SrxP4s9xfl3t7/t//YbuPW/DjBCWkHP5ie8MvUuRf8JGvMNZ34nY/686W17or4T/M+dea6iUJ
vRtxX8KXcbtvRES63/5lkb4isVwI876x3tH0q/teVSeyqD56DYeN6vmwdb3eKNaHzWS9ads7st7x
G7asdeTo9OMBoF3mriXxUHGTuyACFnVkX11d4c8BipH/NOAdGC/6wlcf/wvBO4ws/x3DyUn0ucnO
iN1s72Y3Nylmnx71umnB+2I8RfDOACBvF85n0H2dIvdVvtnyKQe4SfOpZuWlhu4pIj+q8f2sWy0f
6v7+f74qEBSM9yU8BPahzzxUJMki0lMRetPcGiLJqwyICtjJ5eWc9lCG9431kMUfbHBVnTCgysl4
YTg/CcqbXgjZh34zffFhlxdgvR7hUoab3A3U//73P4YZPFUlQm5bJ5wpAT9ebxkE8/2IvQzUR6il
pe6UO9Oy91PV1w3qN10C4e+klWuCX6fIC4Hzw7s8O0L/cHUk3v24e1b3O555gY/il1RzX8LX0L4f
8hbpqQh9SqrroeG1nHZHgDeNdYfFH2xzVZ2wasKc/ro60dArw+ubZjqgnMyxll3d9MFUnsrrmAUY
UchpIkRYL6G92qQkuBqlK3UrzbzcnWsV3MVN+ZQ8SE53ay2y6VgpA/pC6kJr3VJLTZRdi7h9hoqr
E+MMZbVhqcN6STZ9UpEJJn1rzp18qS0MBcgYcNuxZMjVHeTRlf/++49j2cIERT8lRGYMnbKxDmfB
0B2gDm9ZHsplNibWRXzA7pFQSwwJ4478OJhrJwYWdSb+WZqnzzjlWWa7BBM188UQqbv6Slp9kmMB
6KCwAOXqF9VJBaB0nL4KdACShkMdR7QMoVPkxI64JVKVRdJqeWwHSMp4na7YiGfgIwCj3VQt5YFC
AZVeSgNDlz6fBgWZclfSgsRwfkjz2cQXcBlqQmzmmUOOVpADMpLEwEYOnwxngOKuqwS68z2DEUz4
kHL9malYV0SWpEEXQ+FpGHxfzs9nPoPXpSKFqu46Z7JCaZHUi59KMyHMDFBIpvslLHlc1UmFG4Cf
jTjpwM+6Osur6RiVxg8T6ZkWP+36g+dOCNEpdK2dUIUQObIBnppDMi7l3xTsLvJdGuM3ZmQi3MpB
xW3oUj/0SFoiHxbFSO0VM3RJeYomJndo+W65ICOuWLCj7qHWakB+N4yIPbf8JySACJo68N67xgfk
U5FsDFwIDG6pGp5K6pnIqD3I0LFkqJmK5XHu8xWpxt8wGWp7S8l2OLvi4uEt1MlRGe0kdoo3RaKZ
oUMMGyIdxnAVL66nz0yOIugijL/1dp037TInPQWgJbRI5epn1cl0RQtWvmo/IfQwHOBzRQf4LaHt
uLBbFkpptTy2sqYMQeHp1GE1dTDJejfIirJDM80ff8/WD2oJMP3z0GSUAhULGWIc83vchMshSfTN
PFMB4gZOFwz2aSN4VTjbBwhDtXc4y0Xt/3aA/NUD17VSMxWrOw0oLnXAAwCmxgF8X87PZz5zqAh2
BASkYmpdItUoA4vrIQNFHv4afjE0GIrDEedNV58uVC791StYGbYfP378VOwhy6pO7AQykm4xi3WR
zl3shxPrQB8aHFYnSV8+p74zI9jVqBYz8TmzFKMkkvJkfkEF5Cym5YIkVhqfaZ2BapRoP588UAww
I8koyqHU7A4lQWCDD6lSzannAhm4TxnAmUD1XXt/hgGjjlMt+k7ZyLlV/kLn8JbnYZbQ2l1XJ8z4
RRkxCtJK1tBMXsVl+gYyGxOzEFMBTm1ddkkPn07CCFTJVFfS1UsRr2xNVzQd+yoqnPHN2XaFtjvW
zBgM02p5bGWrcNR1mcb/jGGRCnz3mqodmqmA0ulZdcKCGb5BcEkehqtrk2UsIHZ6IKN1mtg1txOj
GLmBw+3MSUhKySUx0a0K58m6nHNqVwRtiyQFLJUZdMVLv1nKmOBr+fnMZ2aU5XBDReKVNh1XdUXS
zoRAoOV3jU13BviLocHudzjivOnq5ULiVS59mEht3B9+8PnqRIbPKWPpT0zOKrIScRLRLX448GiX
GVOkWGQ2BUKFoqcYTSLIYyEhMk0+E1Bl/Guta+S+8AlmBil2jXwe6Y2GJ6C4ZqFkXgx4DpULZAB8
yqC+cy1nVicC8LA6OZONhRbLmVjlLXfHiEXtojqxaQq6Q4dBjOJ16MOTowh6im+0Wc6dul9UJwCY
Lo0A5eqzzKLZdMXpq4fVifleVCcObZfR4lhhlVbj+GykkUYsIeQi3wTf8pRqZ2aaOeGsOtF1Jgk0
wL3VnZ8mK5TKZI6F8hmdUuXoO+EyF7tT5ZkLjhfVycwY5QOo5nA+DJ+UrdScqdjuxECo9p5g6NTL
DOb7Wn6+8BlY2OvKuKzZW98UCckrIYjUxZAxrVbZgNM71YnD09H3vqvPoapcGqaVYw9V+IEXP1+d
SEk5AahlmcKyG37AM6G0wbN1XQ3s2UQ+FMjUZ9UJHdVSVmGQYwXC40QySiIpjw1zXZ1IKlHGtyrj
n2kN5YfVCUGuDwmR2aROvdRByQIaul4TNRoDFM3omw7n8ZKl4DIBcynAPJSB35i9wmz1Ya2MoLtI
yyCdEjqESjYkodSwqGA1b+ESai8iSKhvMUWqNA1cRAEh6QKjhM4qpMMgxuTF9fIZnMEzb3IiCMiC
4uhafNoFqbz4DPEEMH0M7uXqZ9XJdMXyVQeXCGLW4ntRnegW7fU9UUqr5fHZSIONWE6wA0yyGT6Z
W87MNHOCvRQuCR1JKVV2UVLuai0qFmxHHNJRTFIyXOLriNZFfikjmVieM46H1QnOJhbCocLZ4WDn
dEpx+BQvywlZspaEnKnY7gQXzOdfAGcgv5afz3xmKlKoyppqk/Moi3SYEHT3YsgAByiQhE0tD+5U
J3PEed/VpwuRJO3Shzn2UIUfePHF6iRfs/bEN8cYXcwJsTRnfdttOM02Oq4fO6pB0hdBn0I2+2Y6
K0YlwCHN1G42QGZfLyhKa2dD274I+nopW3CRwiCOpkmHtSVPQGmZ89FDgRMZogs6OU6kyVLCgpEu
JcYFRMhW7ROrw1sIXKZP9/NxuYT1SuhmSZTxOXmd+TDzbEt1hpgtmGY69C43mK4y9SpPOHSnaYjy
ruk/NmgekArTDQqlpJPHjpE0lijL5bBIPrhgnBPSNM2FAKl+5gTLOcOQSDFELEUUjFjkLNJ118kn
ZZtw2edhd5hnMnizgVnY2VDK3lKJznetmqMgM+fMG4cZ5jD2/cQGpsxTvN0R/UJ+PvMZY5iej2ro
lT5WIk0ojOrFkJEp8Sx7lzAoXirMlP6+q5+5UCalORZkNP3k4xerk5+sUnnkTxb158hGdfJz5PlO
SdZhbqLtidrN9g+bebFBU9KLvP+QzgcbfDAKPg7XB9X8CCkvY+Ry2kPK3xlurPD9KJEeCrMNjMBf
WJ3Mp03X3ncQ+CHDwx1RP9tmHeYmnjlRu9nlYbNarnvY/qsbfDAKvgKur1b/BfrPTs1/YLj9QJFe
MMTf1+UvrE7+PiOtRovAIrAILAKLwD+FwFYn/5S5V9lFYBFYBBaBReAXIPB91Ymei364p82zgPFs
+Vd/9JTcly79vaaFRMrH974ahJfpfyl0D6UySs8a8Y/D+6zAD6HYBovAIrAI/CIEvq86+dQzYho2
vLd3vek+cf/I+O036L7IrqmFfvY+e2kN7qrw/Gj6nSf4eLuMvqKcz58fqmP6F8ryDiGPNF5jIlHv
CHmH6Wvg+2nfZ434xx8TviOw3Pu+h2fgnIGJ+2Fc+yFX+Lxmhe21CCwCi8CzCDyuTuolQBjkG3TJ
koEzX3Lz3axO/CBVTqyzl59N42KOqTlsMK7Pl2DN9LB8qTfEitd8LI5xQtfz8e98C3GCni+FZq8q
DnQqBEpI2vud2yI+X3AvgWf9IflFTZ8cXaYkMKoicr6KSZVDY16m5zjFKItYhZtMTTBpTvwn7NMt
L6qTepqv6Keb6VY5STp5eWBCUTSt13yPIF8zplnuKsGVM6fKIMp3JotL1VtnlrVBc0vDCfWhTYsm
XjdVu6C2txaBRWARAIGr6oQNo9hvSk09iLKrTN1lDyLeevd0mXERTh722BkJyvXGvJppwGMzJWb8
zOHYigM6OmULIETSgTcQI5/6VMf+jzrbmxk/bzCaEdTgRffM7HmdH6dKyFLQwwDUUKTggh28sjrJ
0XQKI5nVmG3T1BL10eKQBYKJNRsWIbz3JRNrb0tvTEw/1az1D1cnbA6Rpp/EacwiCnbHlGmIZIrM
ZZpE0g0YR9lJTAcsJBSjs+oknRCnsqWg744pibyifPsiCibNZKSOXliS/CyBJCZUJ7MWT7LEVO3m
WVzs+Rk4duC0bGpHLzzzbMkE+TPcMvrSP6f1LdUeLAKLwCJwiMBVdaLUw7SMQYiihBzKd95l/IOH
J+uZ+2pSnsOGulCmVPYnqXkyV8MG2RMZPNG0AEzTa1ni7FV7mokIvxmVqL7OruRTSJjOVQ22cbRI
CZclqbWThOVQmMnFapZF0t4UWCUJ6hQmpp9q1hZVDO0elsr0qAlxj21s4OjrZ0ynj2KaRJI2/vsM
CYObYZpidLF2oi6+O+nXSkOCzHrAwyiYNFNr9AI6gCpMzqqTJJsVvylMLhU4Z5a9UPn//6gz/vXa
UIv+pEl1AusyyrTyXlkEFoFFoBC4qk68S7ESE08GMPHNdQvSlu7miE5+rB/F3YBpugcV5vRQ9nwL
shrnquzIEcUDhg6cyukoyQ+rkyo7mPjS3kQYM5iO87EMpO8pJM1m3QBWFG0FZrI4WztBhRLmojop
FmnpM3YS7w792spTvZjWl+JpER1ndYK5QRuOiXCdqm+ZJpEsu3jVx+VCMjqrTsoJJ313LEnKty/M
OmlKTbfHKzSo6woLJ4deN9dOkqy7ODB1d3IBMZNKmmlZr+UY4cO1E4zIIpl9YNLMK2X9ykF7uggs
AovARODW2kmOB/6BwDP1OUQxoufCiZPvTJGUJjSea8tPVSdu7IPrtRPffVidsH6jb6k/hQQBL7DX
f65qIETrfD4AUup1sXbybHVSLM6qEzVjRUdySoabaye5gkXZ4U8Oq0VcbWic82yQzCdqZ3VSpoEX
SJovlZ/8x7/oTUaH1cnhOF30c1kFjhYpffs6CormXLoDf5z/cO3EFUP5CVAYN9zpkI7hska1zpGW
FQW/WOclsTK3CV6snYhmVidlfVGoh6XSnfZ4EVgEFgEhcFWdMMoyVSKbMC0DuLpbA4zXq+cYJprc
ddbz9JFsbqaMbTkgQY0GOWDQTDJA1tVJCp99GUQZ3lwbmVfpks3AoYSEMvNgN0ZOxgzdmmBazSzj
pAWqnQnD332JrFsah8ligq8rDIdoTZmSp6Z/piayZfAkXJM4jRkRMYd/H7QMyRTKZZpE0qxFB2/k
cRxMU4wmnnaDdMJJPzumk6h7+vZFFBzKDAJoR3UoggKQWi0NYQcoP0mytSTm93eSS1rKgXPowGpJ
SYFdbGVTK7tTOXF3ekv6ZxkFe6Vge7wILAKLQCHw+J2d1yBjUnizr4fJm+232W9BQDP+GtJ+i+QX
cj7l23+BvqvCIrAILALfj8BXVSe5HnCtlR9k+X7ll+OXIsCMOZ8v+VJ230b8vm9/m0jLaBFYBBaB
vwyBr6pO/jKYVp1FYBFYBBaBRWAR+DYEtjr5NqiX0SKwCCwCi8AisAjcQuD/Ab5ZyCwn3RZOAAAA
AElFTkSuQmCC

--_004_41DEA4B02DBDEF40A0F3B6D0DDB123797FF52044ORSMSX101amrcor_--

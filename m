Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BB0EE0172C
	for <yocto@yoctoproject.org>; Mon, 11 Nov 2013 08:34:02 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 11 Nov 2013 08:34:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,679,1378882800"; 
	d="scan'208,217";a="431415488"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
	by fmsmga002.fm.intel.com with ESMTP; 11 Nov 2013 08:33:59 -0800
Received: from orsmsx159.amr.corp.intel.com (10.22.240.24) by
	ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Mon, 11 Nov 2013 08:33:59 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.126]) by
	ORSMSX159.amr.corp.intel.com ([169.254.11.53]) with mapi id
	14.03.0123.003; Mon, 11 Nov 2013 08:33:58 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Michael Gloff <mgloff@emacinc.com>, "Robert P. J. Day"
	<rpjday@crashcourse.ca>
Thread-Topic: [yocto] i think the explanation of "Build Directory" in dev
	manual is wrong
Thread-Index: AQHO3TPLXH+7aew+LkKXZiyDU3xzwpoeYhUAgAHaydA=
Date: Mon, 11 Nov 2013 16:33:58 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F459E2@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1311090504360.18437@oneiric>
	<CALXw4G6K7Ku3jYJhai_QgWn=F4poy2=XA_VykabO7UQ26D3=1g@mail.gmail.com>
In-Reply-To: <CALXw4G6K7Ku3jYJhai_QgWn=F4poy2=XA_VykabO7UQ26D3=1g@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: i think the explanation of "Build Directory" in dev manual is wrong
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
X-List-Received-Date: Mon, 11 Nov 2013 16:34:03 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_41DEA4B02DBDEF40A0F3B6D0DDB1237983F459E2ORSMSX101amrcor_"

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237983F459E2ORSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Robert,

I think you are correct here.  I tried them and no intermediate directory i=
s created using the second example and the third example created a build di=
rectory whose name is "mybuilds".  I need to fix these up and will do that.

Scott

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Michael Gloff
Sent: Saturday, November 09, 2013 8:13 PM
To: Robert P. J. Day
Cc: Yocto discussion list
Subject: Re: [yocto] i think the explanation of "Build Directory" in dev ma=
nual is wrong


The build dir will definitely be created by the script(s) (assuming permiss=
ions). The default build dir will be created under the level of the script =
as 'build', but you can specify any path.

As you point this out I see the sentence:

The TOPDIR<http://www.yoctoproject.org/docs/1.6/ref-manual/ref-manual.html#=
var-TOPDIR> variable points to the Build Directory.
can be ambiguous. TOPDIR is not well defined. Maybe it should be called BUI=
LD_DIR and defined somewhere in local.conf as a default commented out like =
DL_DIR and TMPDIR in addition to the ability to specify BUILD_DIR on the co=
mmand line.
Michael Gloff


On Sat, Nov 9, 2013 at 4:09 AM, Robert P. J. Day <rpjday@crashcourse.ca<mai=
lto:rpjday@crashcourse.ca>> wrote:

  here:

http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#yocto-pr=
oject-terms

explanation of "Build Directory", one reads (start quote):

Provide a directory path and specifically name the build directory.
This next example creates a Build Directory named YP-11.0.0 in your
home directory within the directory mybuilds. If mybuilds does not
exist, the directory is created for you:

     $ source poky-tbd-11.0.0/oe-init-build-env $HOME/mybuilds/YP-11.0.0

Provide an existing directory to use as the Build Directory and use
the default build name.

     $ source poky-tbd-11.0.0/oe-init-build-env $HOME/mybuilds/

 =3D=3D=3D end quote =3D=3D=3D

  i don't think either of those is correct, are they? pretty sure that
oe-init-build-env *doesn't* create intermediate directories and, in
that second example, wouldn't that just use ~/mybuilds as the build
directory? i don't foresee a default build name subdirectory being
created there. or am i just confused?

rday

--

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto



--
Michael Gloff

mgloff@emacinc.com<mailto:mgloff@emacinc.com>
http://www.emacinc.com/

Engineer
EMAC, Inc.
618-529-4525 Ext. 310
618-457-0110 Fax
2390 EMAC Way
Carbondale, Il 62901

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237983F459E2ORSMSX101amrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
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
code
	{mso-style-priority:99;
	font-family:"Courier New";}
span.EmailStyle18
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
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Robert,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">I think you are correct h=
ere.&nbsp; I tried them and no intermediate directory is created using the =
second example and the third example created a build directory
 whose name is &#8220;mybuilds&#8221;.&nbsp; I need to fix these up and wil=
l do that.<o:p></o:p></span></p>
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
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> yocto-bo=
unces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Michael Gloff<br>
<b>Sent:</b> Saturday, November 09, 2013 8:13 PM<br>
<b>To:</b> Robert P. J. Day<br>
<b>Cc:</b> Yocto discussion list<br>
<b>Subject:</b> Re: [yocto] i think the explanation of &quot;Build Director=
y&quot; in dev manual is wrong<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">The build dir will definitely be created by the scri=
pt(s) (assuming permissions). The default build dir will be created under t=
he level of the script as 'build', but you can specify any path.<br>
&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">As you point this out=
 I see the sentence:<br>
<br>
The <a href=3D"http://www.yoctoproject.org/docs/1.6/ref-manual/ref-manual.h=
tml#var-TOPDIR" target=3D"_blank">
<code><span style=3D"font-size:10.0pt">TOPDIR</span></code></a> variable po=
ints to the Build Directory.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">can be ambiguous. TOP=
DIR is not well defined. Maybe it should be called BUILD_DIR and defined so=
mewhere in local.conf as a default commented out like DL_DIR and TMPDIR in =
addition to the ability to specify BUILD_DIR
 on the command line. <o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Michael Gloff<o:p></o=
:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">On Sat, Nov 9, 2013 at 4:09 AM, Robert P. J. Day &lt=
;<a href=3D"mailto:rpjday@crashcourse.ca" target=3D"_blank">rpjday@crashcou=
rse.ca</a>&gt; wrote:<o:p></o:p></p>
<p class=3D"MsoNormal"><br>
&nbsp; here:<br>
<br>
<a href=3D"http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.ht=
ml#yocto-project-terms" target=3D"_blank">http://www.yoctoproject.org/docs/=
latest/dev-manual/dev-manual.html#yocto-project-terms</a><br>
<br>
explanation of &quot;Build Directory&quot;, one reads (start quote):<br>
<br>
Provide a directory path and specifically name the build directory.<br>
This next example creates a Build Directory named YP-11.0.0 in your<br>
home directory within the directory mybuilds. If mybuilds does not<br>
exist, the directory is created for you:<br>
<br>
&nbsp; &nbsp; &nbsp;$ source poky-tbd-11.0.0/oe-init-build-env $HOME/mybuil=
ds/YP-11.0.0<br>
<br>
Provide an existing directory to use as the Build Directory and use<br>
the default build name.<br>
<br>
&nbsp; &nbsp; &nbsp;$ source poky-tbd-11.0.0/oe-init-build-env $HOME/mybuil=
ds/<br>
<br>
&nbsp;=3D=3D=3D end quote =3D=3D=3D<br>
<br>
&nbsp; i don't think either of those is correct, are they? pretty sure that=
<br>
oe-init-build-env *doesn't* create intermediate directories and, in<br>
that second example, wouldn't that just use ~/mybuilds as the build<br>
directory? i don't foresee a default build name subdirectory being<br>
created there. or am i just confused?<br>
<br>
rday<br>
<br>
--<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
Robert P. J. Day &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Ottawa, Ontario, CANA=
DA<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; <a href=3D"http://crashcourse.ca" target=3D"_blank">http://crashco=
urse.ca</a><br>
<br>
Twitter: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <a href=
=3D"http://twitter.com/rpjday" target=3D"_blank">
http://twitter.com/rpjday</a><br>
LinkedIn: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <a href=3D"http://ca.linkedin.com/i=
n/rpjday" target=3D"_blank">
http://ca.linkedin.com/in/rpjday</a><br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><o:p></o:p></p>
</div>
<p class=3D"MsoNormal"><br>
<br clear=3D"all">
<br>
-- <o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal">Michael Gloff<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><br>
<a href=3D"mailto:mgloff@emacinc.com" target=3D"_blank">mgloff@emacinc.com<=
/a><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><a href=3D"http://www.emacinc.com/" target=3D"_blank=
"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">http=
://www.emacinc.com/</span></a><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">Engineer<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">EMAC, Inc.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">618-529-4525 Ext. 310<o:p></o:p></p>
</div>
</div>
<div>
<p class=3D"MsoNormal">618-457-0110<span style=3D"font-size:10.0pt;font-fam=
ily:&quot;Arial&quot;,&quot;sans-serif&quot;">&nbsp;Fax</span><o:p></o:p></=
p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">2390 EMAC Way<br>
Carbondale, Il 62901</span><o:p></o:p></p>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237983F459E2ORSMSX101amrcor_--

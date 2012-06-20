Return-Path: <david.c.stewart@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DB37E01304
	for <yocto@yoctoproject.org>; Tue, 19 Jun 2012 18:09:23 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 19 Jun 2012 18:09:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; 
	d="scan'208,217";a="155742744"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by orsmga001.jf.intel.com with ESMTP; 19 Jun 2012 18:09:22 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 19 Jun 2012 18:09:21 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.138]) by
	ORSMSX153.amr.corp.intel.com ([169.254.13.115]) with mapi id
	14.01.0355.002; Tue, 19 Jun 2012 18:09:21 -0700
From: "Stewart, David C" <david.c.stewart@intel.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: developing with devshell and effect of the bitbake.conf file
Thread-Index: AQHNTkdKxEmAbdFRHUKFcg3RzFg5jpcCZfUg
Date: Wed, 20 Jun 2012 01:09:21 +0000
Message-ID: <CDED78A957032E45B3239CDDA7642D151C85CF96@ORSMSX105.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A11736@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A11736@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: developing with devshell and effect of the bitbake.conf file
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
X-List-Received-Date: Wed, 20 Jun 2012 01:09:23 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CDED78A957032E45B3239CDDA7642D151C85CF96ORSMSX105amrcor_"

--_000_CDED78A957032E45B3239CDDA7642D151C85CF96ORSMSX105amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Is anybody using devshell actively who can recreate this section of bitbake=
.conf?

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Rifenbark, Scott M
Sent: Tuesday, June 19, 2012 11:14 AM
To: Yocto discussion list
Subject: [yocto] developing with devshell and effect of the bitbake.conf fi=
le

Hi,
I want to throw this out for discussion.  I recently was looking at a secti=
on in the YP Reference manual (http://www.yoctoproject.org/docs/current/pok=
y-ref-manual/poky-ref-manual.html#platdev-appdev-devshell) where it talks a=
bout developing using devshell.  I asked Darren Hart if this was a valid de=
velopment model and he says it is.  There is a part of the section though t=
hat talks about the bitbake.conf file.  That section in the conf file does =
not seem to exist anymore.  And, Darren (after some testing) doesn't see ho=
w what is in the bitbake.conf file affects development with devshell.  Any =
comments welcome.
Thanks,
ScottR

From: Scott Rifenbark [mailto:srifenbark@gmail.com<mailto:srifenbark@gmail.=
com>]
Sent: Thursday, June 14, 2012 8:42 AM
To: Rifenbark, Scott M
Subject: Fwd: Next question regarding development practices....


---------- Forwarded message ----------
From: Darren Hart <darren.hart@intel.com<mailto:darren.hart@intel.com>>
Date: Wed, Jun 13, 2012 at 2:19 PM
Subject: Re: Next question regarding development practices....
To: Scott Rifenbark <srifenbark@gmail.com<mailto:srifenbark@gmail.com>>
On 06/12/2012 11:34 AM, Scott Rifenbark wrote:
> Hi Darren,
>
> So check out section
> http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.=
html#platdev-appdev-devshell.
> This talks about the whole devshell model.  One thing in this section is
> not current and that is the UI/Interfaces Configuration section
> reference in bitbake.conf file.  Regarding the section though, is this
> still a valid development model?  Is it worth keeping around in the docs?
>
> As you can tell, I value your opinions greatly :)
As I understand it, this is still a perfectly valid working model.
Someone was just recommending it this week on the list.

As for the bitbake.conf file... I'm not sure. I thought this would have
been controlled by the following in local.conf.

# If you do not use (or have installed) gnome-terminal you will need to
# uncomment these variables and set them to the terminal you wish to use
# when resolving patches which cannot be applied
# Supported shell prefixes for *_TERMCMD and *_TERMCMDRUN ARE:
# GNOME, SCREEN, XTERM and SCREEN
TERMCMD =3D "${SCREEN_TERMCMD}"
TERMCMDRUN =3D "${SCREEN_TERMCMDRUN}"

But... it clearly is not after some testing. Hrm... I don't see anything
matching in bitbake.conf either. Where this has migrated off to would be
a good question for the list, hopefully someone like Paul E. can answer
this quickly.

--
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel



--_000_CDED78A957032E45B3239CDDA7642D151C85CF96ORSMSX105amrcor_
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
	color:#1F497D;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
span.EmailStyle20
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
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Is anybody using devshell=
 actively who can recreate this section of bitbake.conf?<o:p></o:p></span><=
/p>
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
<b>On Behalf Of </b>Rifenbark, Scott M<br>
<b>Sent:</b> Tuesday, June 19, 2012 11:14 AM<br>
<b>To:</b> Yocto discussion list<br>
<b>Subject:</b> [yocto] developing with devshell and effect of the bitbake.=
conf file<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">Hi,
</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">I want to throw this out for discussion=
.&nbsp; I recently was looking at a section in the YP Reference
 manual (</span><a href=3D"http://www.yoctoproject.org/docs/current/poky-re=
f-manual/poky-ref-manual.html#platdev-appdev-devshell" target=3D"_blank">ht=
tp://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.html=
#platdev-appdev-devshell</a>) where
 it talks about developing using devshell.&nbsp; I asked Darren Hart if thi=
s was a valid development model and he says it is.&nbsp; There is a part of=
 the section though that talks about the bitbake.conf file.&nbsp; That sect=
ion in the conf file does not seem to exist anymore.&nbsp;
 And, Darren (after some testing) doesn&#8217;t see how what is in the bitb=
ake.conf file affects development with devshell.&nbsp; Any comments welcome=
.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Thanks,
<span style=3D"color:#1F497D"><br>
</span>ScottR<span style=3D"color:#1F497D"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><b><span style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,=
&quot;sans-serif&quot;">From:</span></b><span style=3D"font-size:10.0pt;fon=
t-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Scott Rifenbark [mailt=
o:<a href=3D"mailto:srifenbark@gmail.com" target=3D"_blank">srifenbark@gmai=
l.com</a>]
<br>
<b>Sent:</b> Thursday, June 14, 2012 8:42 AM<br>
<b>To:</b> Rifenbark, Scott M<br>
<b>Subject:</b> Fwd: Next question regarding development practices....</spa=
n><o:p></o:p></p>
</div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;margin-bottom:12.0p=
t">&nbsp;<o:p></o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;margin-bottom:12.0p=
t">---------- Forwarded message ----------<br>
From: <b>Darren Hart</b> &lt;<a href=3D"mailto:darren.hart@intel.com" targe=
t=3D"_blank">darren.hart@intel.com</a>&gt;<br>
Date: Wed, Jun 13, 2012 at 2:19 PM<br>
Subject: Re: Next question regarding development practices....<br>
To: Scott Rifenbark &lt;<a href=3D"mailto:srifenbark@gmail.com" target=3D"_=
blank">srifenbark@gmail.com</a>&gt;<o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;margin-bottom:12.0p=
t">On 06/12/2012 11:34 AM, Scott Rifenbark wrote:<br>
&gt; Hi Darren,<br>
&gt;<br>
&gt; So check out section<br>
&gt; <a href=3D"http://www.yoctoproject.org/docs/current/poky-ref-manual/po=
ky-ref-manual.html#platdev-appdev-devshell" target=3D"_blank">
http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.ht=
ml#platdev-appdev-devshell</a>.<br>
&gt; This talks about the whole devshell model. &nbsp;One thing in this sec=
tion is<br>
&gt; not current and that is the UI/Interfaces Configuration section<br>
&gt; reference in bitbake.conf file. &nbsp;Regarding the section though, is=
 this<br>
&gt; still a valid development model? &nbsp;Is it worth keeping around in t=
he docs?<br>
&gt;<br>
&gt; As you can tell, I value your opinions greatly :)<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;margin-bottom:12.0p=
t">As I understand it, this is still a perfectly valid working model.<br>
Someone was just recommending it this week on the list.<br>
<br>
As for the bitbake.conf file... I'm not sure. I thought this would have<br>
been controlled by the following in local.conf.<br>
<br>
# If you do not use (or have installed) gnome-terminal you will need to<br>
# uncomment these variables and set them to the terminal you wish to use<br=
>
# when resolving patches which cannot be applied<br>
# Supported shell prefixes for *_TERMCMD and *_TERMCMDRUN ARE:<br>
# GNOME, SCREEN, XTERM and SCREEN<br>
TERMCMD =3D &quot;${SCREEN_TERMCMD}&quot;<br>
TERMCMDRUN =3D &quot;${SCREEN_TERMCMDRUN}&quot;<br>
<br>
But... it clearly is not after some testing. Hrm... I don't see anything<br=
>
matching in bitbake.conf either. Where this has migrated off to would be<br=
>
a good question for the list, hopefully someone like Paul E. can answer<br>
this quickly.<br>
<span style=3D"color:#888888"><br>
--<br>
Darren Hart<br>
Intel Open Source Technology Center<br>
Yocto Project - Linux Kernel</span><o:p></o:p></p>
</div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</body>
</html>

--_000_CDED78A957032E45B3239CDDA7642D151C85CF96ORSMSX105amrcor_--

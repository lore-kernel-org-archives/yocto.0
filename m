Return-Path: <rohit2.jindal@aricent.com>
Received: from jaguar.aricent.com (jaguar.aricent.com [121.241.96.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40050E015A4
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2013 22:55:15 -0700 (PDT)
Received: from jaguar.aricent.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id 4855836B98;
	Tue, 17 Sep 2013 11:24:56 +0530 (IST)
Received: from GUREXHT02.ASIAN.AD.ARICENT.COM (gurexht02.asian.ad.aricent.com
	[10.203.171.138])
	by jaguar.aricent.com (Postfix) with ESMTP id 326C236B87;
	Tue, 17 Sep 2013 11:24:56 +0530 (IST)
Received: from GUREXMB01.asian.ad.aricent.com ([10.203.171.134]) by
	GUREXHT02.ASIAN.AD.ARICENT.COM ([10.203.171.138]) with mapi;
	Tue, 17 Sep 2013 11:24:55 +0530
From: Rohit2 Jindal <rohit2.jindal@aricent.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Tue, 17 Sep 2013 11:24:54 +0530
Thread-Topic: [yocto] yocto query on SR_URI creation
Thread-Index: Ac6uNtOudYd63yWmQJm+qSCffiPUggFMy3nA
Message-ID: <17797116383D4341B029FDF34C22BF6A5D7F898A52@GUREXMB01.ASIAN.AD.ARICENT.COM>
References: <mailman.7042.1376600669.19864.yocto@yoctoproject.org>
	<17797116383D4341B029FDF34C22BF6A5D7F5F6077@GUREXMB01.ASIAN.AD.ARICENT.COM>
	<CAP71WjxsyY39wb3tnBUMV=AuURNi1DrpRBB-aG0qPOA220Fw_g@mail.gmail.com>
	<17797116383D4341B029FDF34C22BF6A5D7F5F632C@GUREXMB01.ASIAN.AD.ARICENT.COM>
	<CAP71WjyQa-Ozds+fQT=93+kTTdh33F4yW2NvZo8K1=hC=f2Uxw@mail.gmail.com>
In-Reply-To: <CAP71WjyQa-Ozds+fQT=93+kTTdh33F4yW2NvZo8K1=hC=f2Uxw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-TM-AS-MML: No
Subject: Re: yocto query on SR_URI creation
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
X-List-Received-Date: Tue, 17 Sep 2013 05:55:17 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_17797116383D4341B029FDF34C22BF6A5D7F898A52GUREXMB01ASIA_"

--_000_17797116383D4341B029FDF34C22BF6A5D7F898A52GUREXMB01ASIA_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

Please suggest me the way to git clone from two repos parallel in the same =
recipe Is possible in yocto .If yes how to do that.
Eg
SRC_URI =3D "git://ep-code.xyz.com/sysconfig.git;branch=3Dxxx-ep-20130823-3=
.0-alpha;protocol=3Dssh<http://ep-code.xyz.com/sysconfig;branch=3Dxxx-ep-20=
130823-3.0-alpha;protocol=3Dssh>
SRC_URI =3D "git://ep-code.xyz.com/xload.git;branch=3Dxxx-ep-20130823-3.0-a=
lpha;protocol=3Dssh<http://ep-code.xyz.com/sysconfig;branch=3Dxxx-ep-201308=
23-3.0-alpha;protocol=3Dssh>
When I tries to do this it unpacks the source downloaded to WORKDIR/git so =
overwrites the first unpack with the other. So please suggest me the
way that two download two repos in same recipes with their detstined cloned=
 folder changed to folder with my required naming convention
instead of generic git name folder in workdir.

Regards,
Rohit Jindal


From: Nicolas Dechesne [mailto:nicolas.dechesne@linaro.org]
Sent: Tuesday, September 10, 2013 8:32 PM
To: Rohit2 Jindal
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] yocto query on SR_URI creation


On Tue, Sep 10, 2013 at 4:35 PM, Rohit2 Jindal <rohit2.jindal@aricent.com<m=
ailto:rohit2.jindal@aricent.com>> wrote:

Thanks for your prompt reply.

Actually I am able to create my own SRC_URI on your guided lines as
#SRC_URI =3D "git://ep-code.xyz.com/sysconfig;branch=3Dxxx-ep-20130823-3.0-=
alpha;protocol=3Dssh<http://ep-code.xyz.com/sysconfig;branch=3Dxxx-ep-20130=
823-3.0-alpha;protocol=3Dssh>"
But when do_fetch task starts executing it prompts me to input the passphra=
se for the same server when I am not able to pass . Please suggest me is th=
e way I mentioned the path is need to be modified or

There is something that enable me to pass password for git server ie userna=
me and password are possible to be passed as argument to git path or some o=
ther way exist to give input to bitbake do_fetch task as runtime I don't th=
ink we can pass any input.

Please suggest me the way.


you need to be able to use 'password-less' connection to your ssh server th=
at hosts the private trees. typically that means using a pair of SSH keys (=
private/public).  if you are not familiar with that, i suggest you read thi=
s first:

http://www.debian-administration.org/article/SSH_with_authentication_key_in=
stead_of_password

with such a method SSH authentication can be done 'automatically' without t=
he need for prompting user's passwd.

if you actually decide to use passphrase for your SSH (private) key, you mi=
ght be able to setup SSH agent to do that, but you would need to do that ea=
ch time you log, iirc. But i am not familiar with this, to be honest. You c=
an read more about that here:

http://www.solomonson.com/content/setting-ssh-agent-ask-passphrase-only-onc=
e

cheers





=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
Please refer to http://www.aricent.com/legal/email_disclaimer.html
for important disclosures regarding this electronic communication.
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D

--_000_17797116383D4341B029FDF34C22BF6A5D7F898A52GUREXMB01ASIA_
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
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hi,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Please suggest me the way=
 to git clone from two repos parallel in the same recipe Is possible in yoc=
to .If yes how to do that.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Eg<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">SRC_URI =3D &quot;git://<=
a href=3D"http://ep-code.xyz.com/sysconfig;branch=3Dxxx-ep-20130823-3.0-alp=
ha;protocol=3Dssh" target=3D"_blank">ep-code.xyz.com/sysconfig.git;branch=
=3Dxxx-ep-20130823-3.0-alpha;protocol=3Dssh</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">SRC_URI =3D &quot;git://<=
a href=3D"http://ep-code.xyz.com/sysconfig;branch=3Dxxx-ep-20130823-3.0-alp=
ha;protocol=3Dssh" target=3D"_blank">ep-code.xyz.com/xload.git;branch=3Dxxx=
-ep-20130823-3.0-alpha;protocol=3Dssh</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">When I tries to do this i=
t unpacks the source downloaded to WORKDIR/git so overwrites the first unpa=
ck with the other. So please suggest me the
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">way that two download two=
 repos in same recipes with their detstined cloned folder changed to folder=
 with my required naming convention
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">instead of generic git na=
me folder in workdir.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Regards,<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Rohit Jindal</span><span =
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&=
quot;;color:#1F497D"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Nicolas =
Dechesne [mailto:nicolas.dechesne@linaro.org]
<br>
<b>Sent:</b> Tuesday, September 10, 2013 8:32 PM<br>
<b>To:</b> Rohit2 Jindal<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] yocto query on SR_URI creation<o:p></o:p></span=
></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">On Tue, Sep 10, 2013 at 4:35 PM, Rohit2 Jindal &lt;<=
a href=3D"mailto:rohit2.jindal@aricent.com" target=3D"_blank">rohit2.jindal=
@aricent.com</a>&gt; wrote:<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">Thanks for your prompt reply.</span><o:=
p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">Actually I am able to create my own SRC=
_URI on your guided lines as</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">#SRC_URI =3D &quot;git://<a href=3D"htt=
p://ep-code.xyz.com/sysconfig;branch=3Dxxx-ep-20130823-3.0-alpha;protocol=
=3Dssh" target=3D"_blank">ep-code.xyz.com/sysconfig;branch=3Dxxx-ep-2013082=
3-3.0-alpha;protocol=3Dssh</a>&quot;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">But when do_fetch task starts executing=
 it prompts me to input the passphrase for the same server
 when I am not able to pass . Please suggest me is the way I mentioned the =
path is need to be modified or
</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">There is something that enable me to pa=
ss password for git server ie username and password are possible
 to be passed as argument to git path or some other way exist to give input=
 to bitbake do_fetch task as runtime I don&#8217;t think we can pass any in=
put.</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">Please suggest me the way.</span><o:p><=
/o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
</div>
<p class=3D"MsoNormal"><br>
you need to be able to use 'password-less' connection to your ssh server th=
at hosts the private trees. typically that means using a pair of SSH keys (=
private/public). &nbsp;if you are not familiar with that, i suggest you rea=
d this first:&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><a href=3D"http://www.debian-administration.org/arti=
cle/SSH_with_authentication_key_instead_of_password">http://www.debian-admi=
nistration.org/article/SSH_with_authentication_key_instead_of_password</a><=
o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">with such a method SSH authentication can be done 'a=
utomatically' without the need for prompting user's passwd.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">if you actually decide to use passphrase for your SS=
H (private) key, you might be able to setup SSH agent to do that, but you w=
ould need to do that each time you log, iirc. But i am not familiar with th=
is, to be honest. You can read more
 about that here:<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><a href=3D"http://www.solomonson.com/content/setting=
-ssh-agent-ask-passphrase-only-once">http://www.solomonson.com/content/sett=
ing-ssh-agent-ask-passphrase-only-once</a><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">cheers<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</div>
<br>
<font face=3D"Arial" color=3D"Gray" size=3D"2"><br>
<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br>
Please refer to http://www.aricent.com/legal/email_disclaimer.html<br>
for important disclosures regarding this electronic communication.<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br>
</font>
</body>
</html>

--_000_17797116383D4341B029FDF34C22BF6A5D7F898A52GUREXMB01ASIA_--

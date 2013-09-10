Return-Path: <rohit2.jindal@aricent.com>
Received: from jaguar.aricent.com (jaguar.aricent.com [121.241.96.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6069E01358
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2013 07:35:38 -0700 (PDT)
Received: from jaguar.aricent.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id 1A90736B5B;
	Tue, 10 Sep 2013 20:05:08 +0530 (IST)
Received: from GUREXHT01.ASIAN.AD.ARICENT.COM (gurexht01.asian.ad.aricent.com
	[10.203.171.136])
	by jaguar.aricent.com (Postfix) with ESMTP id 0DE2036B4A;
	Tue, 10 Sep 2013 20:05:08 +0530 (IST)
Received: from GUREXMB01.asian.ad.aricent.com ([10.203.171.134]) by
	GUREXHT01.ASIAN.AD.ARICENT.COM ([10.203.171.136]) with mapi;
	Tue, 10 Sep 2013 20:05:07 +0530
From: Rohit2 Jindal <rohit2.jindal@aricent.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Tue, 10 Sep 2013 20:05:07 +0530
Thread-Topic: [yocto] yocto query on SR_URI creation
Thread-Index: Ac6tWnPG7d9jkg9NSjerYQ/aOhgIGwA18fGQ
Message-ID: <17797116383D4341B029FDF34C22BF6A5D7F5F632C@GUREXMB01.ASIAN.AD.ARICENT.COM>
References: <mailman.7042.1376600669.19864.yocto@yoctoproject.org>
	<17797116383D4341B029FDF34C22BF6A5D7F5F6077@GUREXMB01.ASIAN.AD.ARICENT.COM>
	<CAP71WjxsyY39wb3tnBUMV=AuURNi1DrpRBB-aG0qPOA220Fw_g@mail.gmail.com>
In-Reply-To: <CAP71WjxsyY39wb3tnBUMV=AuURNi1DrpRBB-aG0qPOA220Fw_g@mail.gmail.com>
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
X-List-Received-Date: Tue, 10 Sep 2013 14:35:42 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_17797116383D4341B029FDF34C22BF6A5D7F5F632CGUREXMB01ASIA_"

--_000_17797116383D4341B029FDF34C22BF6A5D7F5F632CGUREXMB01ASIA_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi ,

Thanks for your prompt reply.

Actually I am able to create my own SRC_URI on your guided lines as
#SRC_URI =3D "git://ep-code.xyz.com/sysconfig;branch=3Dxxx-ep-20130823-3.0-=
alpha;protocol=3Dssh"
But when do_fetch task starts executing it prompts me to input the passphra=
se for the same server when I am not able to pass . Please suggest me is th=
e way I mentioned the path is need to be modified or

There is something that enable me to pass password for git server ie userna=
me and password are possible to be passed as argument to git path or some o=
ther way exist to give input to bitbake do_fetch task as runtime I don't th=
ink we can pass any input.

Please suggest me the way.

Regards,
Rohit Jindal

From: Nicolas Dechesne [mailto:nicolas.dechesne@linaro.org]
Sent: Monday, September 09, 2013 6:15 PM
To: Rohit2 Jindal
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] yocto query on SR_URI creation


On Mon, Sep 9, 2013 at 9:47 AM, Rohit2 Jindal <rohit2.jindal@aricent.com<ma=
ilto:rohit2.jindal@aricent.com>> wrote:
Actually I want to access external git server of our client using yocto SRC=
_URI. But I am not able to create path to git server .


I just have following info of external server with me

1)~/.ssh/config file

host xyz
user epuser
hostname ep-code.xyz.com<http://ep-code.xyz.com>
port 22
identityfile ~/.ssh/abc_r.j


2)abc_r.j.pub file
3)abc_r.j file

I am not able to understand which URI protocols will work for me to set pat=
h in SRC_URI of .bb file


Same thing on linux prompt works like this
$git clone xyz:sysconfig



$buildroot>make git-checkout
Available tag used is xxx-ep-20130823-3.0-alpha
Available server epuser@ep-code.xyz.com:/<mailto:epuser@ep-code.xyz.com:/>


The following should work:

SRC_URI =3D "git://foo.xyz.com/folder/project.git;protocol=3Dssh<http://foo=
.xyz.com/folder/project.git;protocol=3Dssh>"

And in ~/.ssh/config

Host foo.xyz.com<http://foo.xyz.com>
  User <your username>
  IdentityFile ~/.ssh/abc_r.j

You would need to ssh once to that server outside of OE so that i records t=
he server in ~/.ssh/known_hosts first.





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

--_000_17797116383D4341B029FDF34C22BF6A5D7F5F632CGUREXMB01ASIA_
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
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hi ,<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Thanks for your prompt re=
ply.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Actually I am able to cre=
ate my own SRC_URI on your guided lines as<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">#SRC_URI =3D &quot;git://=
ep-code.xyz.com/sysconfig;branch=3Dxxx-ep-20130823-3.0-alpha;protocol=3Dssh=
&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">But when do_fetch task st=
arts executing it prompts me to input the passphrase for the same server wh=
en I am not able to pass . Please suggest me is the way
 I mentioned the path is need to be modified or <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">There is something that e=
nable me to pass password for git server ie username and password are possi=
ble to be passed as argument to git path or some other way
 exist to give input to bitbake do_fetch task as runtime I don&#8217;t thin=
k we can pass any input.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Please suggest me the way=
.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Regards,<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Rohit Jindal<o:p></o:p></=
span></p>
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
<b>Sent:</b> Monday, September 09, 2013 6:15 PM<br>
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
<p class=3D"MsoNormal">On Mon, Sep 9, 2013 at 9:47 AM, Rohit2 Jindal &lt;<a=
 href=3D"mailto:rohit2.jindal@aricent.com" target=3D"_blank">rohit2.jindal@=
aricent.com</a>&gt; wrote:<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">Actually I want to access external git server of our=
 client using yocto SRC_URI. But I am not able to create path to git server=
 .<br>
<br>
<br>
I just have following info of external server with me<br>
<br>
1)~/.ssh/config file<br>
<br>
host xyz<br>
user epuser<br>
hostname <a href=3D"http://ep-code.xyz.com" target=3D"_blank">ep-code.xyz.c=
om</a><br>
port 22<br>
identityfile ~/.ssh/abc_r.j<br>
<br>
<br>
2)abc_r.j.pub file<br>
3)abc_r.j file<br>
<br>
I am not able to understand which URI protocols will work for me to set pat=
h in SRC_URI of .bb file<br>
<br>
<br>
Same thing on linux prompt works like this<br>
$git clone xyz:sysconfig<br>
<br>
<br>
<br>
$buildroot&gt;make git-checkout<br>
Available tag used is xxx-ep-20130823-3.0-alpha<br>
Available server <a href=3D"mailto:epuser@ep-code.xyz.com:/">epuser@ep-code=
.xyz.com:/</a><o:p></o:p></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<p class=3D"MsoNormal"><br>
The following should work:<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<div>
<p class=3D"MsoNormal">SRC_URI =3D &quot;git://<a href=3D"http://foo.xyz.co=
m/folder/project.git;protocol=3Dssh" target=3D"_blank">foo.xyz.com/folder/p=
roject.git;protocol=3Dssh</a>&quot;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">And in ~/.ssh/config<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Host <a href=3D"http://foo.xyz.com" target=3D"_blank=
">foo.xyz.com</a><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">&nbsp; User &lt;your username&gt;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">&nbsp;&nbsp;IdentityFile ~/.ssh/abc_r.j<o:p></o:p></=
p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">You would need to ssh once to that server outside of=
 OE so that i records the server in ~/.ssh/known_hosts first.<o:p></o:p></p=
>
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

--_000_17797116383D4341B029FDF34C22BF6A5D7F5F632CGUREXMB01ASIA_--

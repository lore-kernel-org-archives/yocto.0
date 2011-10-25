Return-Path: <jessica.zhang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B027E005BB
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2011 13:17:19 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 25 Oct 2011 13:17:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208,217";a="67088487"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by orsmga002.jf.intel.com with ESMTP; 25 Oct 2011 13:17:18 -0700
Received: from orsmsx103.amr.corp.intel.com (10.22.225.130) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 25 Oct 2011 13:17:18 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.14]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.11]) with mapi id
	14.01.0323.003; Tue, 25 Oct 2011 13:17:17 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Jack Mitchell <ml@communistcode.co.uk>
Thread-Topic: [yocto] Eclipse Plugin:  ADT Version too old
Thread-Index: AQHMkiv231TYZIjTK0CFy+cF5GJFspWLrLaAgAABiYD///IxoIAAeCoA//+NZiCAAfRcgP//5yKw
Date: Tue, 25 Oct 2011 20:17:17 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C16E99C6C@ORSMSX101.amr.corp.intel.com>
References: <4EA529F5.4010706@communistcode.co.uk>
	<C10D3FB0CD45994C8A51FEC1227CE22F340768DA90@shsmsx502.ccr.corp.intel.com>
	<4EA52E9F.9070001@communistcode.co.uk>
	<C6510F6D410BB64A8C15398EDC6B847C16E996E5@ORSMSX101.amr.corp.intel.com>
	<4EA587D6.1090406@communistcode.co.uk>
	<C6510F6D410BB64A8C15398EDC6B847C16E9970A@ORSMSX101.amr.corp.intel.com>
	<4EA6CB6F.9060304@communistcode.co.uk>
In-Reply-To: <4EA6CB6F.9060304@communistcode.co.uk>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Eclipse Plugin: ADT Version too old
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
X-List-Received-Date: Tue, 25 Oct 2011 20:17:19 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_C6510F6D410BB64A8C15398EDC6B847C16E99C6CORSMSX101amrcor_"

--_000_C6510F6D410BB64A8C15398EDC6B847C16E99C6CORSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Jack,



One other thing to check, did you do git update of your Edison branch befor=
e running a fresh build?



From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Jack Mitchell
Sent: Tuesday, October 25, 2011 7:45 AM
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Eclipse Plugin: ADT Version too old



On 24/10/2011 16:55, Zhang, Jessica wrote:

OK missed your env post. Then this is your problem:

16.export OECORE_DISTRO_VERSION=3D"1.1+snapshot-20111021"
17.export OECORE_SDK_VERSION=3D"1.1+snapshot"

They need to be 1.1 instead of 1.1+snapshot.  You need to update your Ediso=
n branch then do "bitbake meta-ide-support"

-----Original Message-----
From: Jack Mitchell [mailto:ml@communistcode.co.uk]
Sent: Monday, October 24, 2011 8:44 AM
To: Zhang, Jessica
Cc: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: Re: [yocto] Eclipse Plugin: ADT Version too old

On 24/10/2011 16:42, Zhang, Jessica wrote:

   Hi Jack,

   So you mean you did "bitbake meta-ide-support" to use the build tree?

   I just tried with my Edison build tree mode on my laptop and it works fi=
ne. So can you check under your build/tmp directory, there should be an env=
ironment-setup-*-poky-linux file, where * is your target arch.  At the end =
file do you have several OECORE_* settings ? If not, you need to rerun "bit=
bake meta-ide-support" and ensure there're OECORE_* settings at the end.

   Thanks,
   Jessica

   -----Original Message-----
   From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.o=
rg> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Jack Mitchell
   Sent: Monday, October 24, 2011 2:24 AM
   To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
   Subject: Re: [yocto] Eclipse Plugin: ADT Version too old

   On 24/10/2011 10:18, Lu, Lianhao wrote:

      Jack Mitchell wrote on 2011-10-24:

         I am trying to use the new eclipse plugin, which I have had workin=
g
         fine for the past couple of weeks until I switched from the master=
 branch to edison.

         I performed a fresh build using the stable edison branch, installe=
d
         the new 1.1 eclipse plugin and now whenever I try to setup the Yoc=
to
         eclipse environment I receive the following error:

         Yocto Preferences Configuration Error!
         OECORE related items are not found in envrionement setup files.
         The ADT version you're using is too old.
         Please upgrade to our latest ADT Version!

         This pops up in a message box, not the eclipse console. I have
         followed the ADT Setup guide to the letter and it's not playing ba=
ll -
         could someone confirm this as working or point me towards a reason=
 why I may be getting this error?


      Hi Jack,

      How did you install your ADT? You can check the ADT version by "cat" =
the file /opt/poky/${version}/version-xxxx, where xxxx is your target sys a=
rchitecture.

      -Lianhao
      _______________________________________________
      yocto mailing list
      yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
      https://lists.yoctoproject.org/listinfo/yocto

   Hi Lianhao,

   I am using the yocto build tree so I don't have an installed ADT in /opt
   but one that has been generated within my build directory, this is
   correct yes?

   Jack.
   _______________________________________________
   yocto mailing list
   yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
   https://lists.yoctoproject.org/listinfo/yocto


Hi Jessica,

I posted my environment settings earlier, which are located here:
http://pastebin.com/4vnWPAD2

Yes, I did use bitbake meta-ide-support to build my roo


Hi Jessica,

I just did a full fresh re-build from scratch and now my environment variab=
les are as follows:

http://ix.io/1Wf

My current git status is:

# On branch edision
# Untracked files:
#   (use "git add <file>..." to include in what will be committed)
#
#    ../bitbake/lib/bb/pysh/pyshtables.py
#    ../conf/
#    ./
#    ../qemuarm-toolchain/
nothing added to commit but untracked files present (use "git add" to track=
)

The environment variables are still wrong, can I manually change them, I un=
derstand this is bad practice but I can't develop until I fix this.



t.




--_000_C6510F6D410BB64A8C15398EDC6B847C16E99C6CORSMSX101amrcor_
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
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	color:black;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";
	color:black;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;
	color:black;}
span.moz-txt-tag
	{mso-style-name:moz-txt-tag;}
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
<body bgcolor=3D"white" lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Jack,<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">One other thing to check,=
 did you do git update of your Edison branch before running a fresh build?<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;;color:windowtext">From:</span></b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif=
&quot;;color:windowtext"> yocto-bounces@yoctoproject.org [mailto:yocto-boun=
ces@yoctoproject.org]
<b>On Behalf Of </b>Jack Mitchell<br>
<b>Sent:</b> Tuesday, October 25, 2011 7:45 AM<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Eclipse Plugin: ADT Version too old<o:p></o:p><=
/span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">On 24/10/2011 16:55, Zhang, Jessica wrote: <o:p></o:=
p></p>
<pre>OK missed your env post. Then this is your problem:<o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>16.export OECORE_DISTRO_VERSION=3D&quot;1.1&#43;snapshot-20111021&quot=
;<o:p></o:p></pre>
<pre>17.export OECORE_SDK_VERSION=3D&quot;1.1&#43;snapshot&quot;<o:p></o:p>=
</pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>They need to be 1.1 instead of 1.1&#43;snapshot.&nbsp; You need to upd=
ate your Edison branch then do &quot;bitbake meta-ide-support&quot;<o:p></o=
:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>-----Original Message-----<o:p></o:p></pre>
<pre>From: Jack Mitchell [<a href=3D"mailto:ml@communistcode.co.uk">mailto:=
ml@communistcode.co.uk</a>]<o:p></o:p></pre>
<pre>Sent: Monday, October 24, 2011 8:44 AM<o:p></o:p></pre>
<pre>To: Zhang, Jessica<o:p></o:p></pre>
<pre>Cc: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</=
a><o:p></o:p></pre>
<pre>Subject: Re: [yocto] Eclipse Plugin: ADT Version too old<o:p></o:p></p=
re>
<pre><o:p>&nbsp;</o:p></pre>
<pre>On 24/10/2011 16:42, Zhang, Jessica wrote:<o:p></o:p></pre>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<pre>Hi Jack,<o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>So you mean you did &quot;bitbake meta-ide-support&quot; to use the bu=
ild tree?<o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>I just tried with my Edison build tree mode on my laptop and it works =
fine. So can you check under your build/tmp directory, there should be an e=
nvironment-setup-*-poky-linux file, where * is your target arch.&nbsp; At t=
he end file do you have several OECORE_* settings ? If not, you need to rer=
un &quot;bitbake meta-ide-support&quot; and ensure there're OECORE_* settin=
gs at the end.<o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>Thanks,<o:p></o:p></pre>
<pre>Jessica<o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>-----Original Message-----<o:p></o:p></pre>
<pre>From: <a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@=
yoctoproject.org</a> [<a href=3D"mailto:yocto-bounces@yoctoproject.org">mai=
lto:yocto-bounces@yoctoproject.org</a>] On Behalf Of Jack Mitchell<o:p></o:=
p></pre>
<pre>Sent: Monday, October 24, 2011 2:24 AM<o:p></o:p></pre>
<pre>To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</=
a><o:p></o:p></pre>
<pre>Subject: Re: [yocto] Eclipse Plugin: ADT Version too old<o:p></o:p></p=
re>
<pre><o:p>&nbsp;</o:p></pre>
<pre>On 24/10/2011 10:18, Lu, Lianhao wrote:<o:p></o:p></pre>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<pre>Jack Mitchell wrote on 2011-10-24:<o:p></o:p></pre>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<pre>I am trying to use the new eclipse plugin, which I have had working<o:=
p></o:p></pre>
<pre>fine for the past couple of weeks until I switched from the master bra=
nch to edison.<o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>I performed a fresh build using the stable edison branch, installed<o:=
p></o:p></pre>
<pre>the new 1.1 eclipse plugin and now whenever I try to setup the Yocto<o=
:p></o:p></pre>
<pre>eclipse environment I receive the following error:<o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>Yocto Preferences Configuration Error!<o:p></o:p></pre>
<pre>OECORE related items are not found in envrionement setup files.<o:p></=
o:p></pre>
<pre>The ADT version you're using is too old.<o:p></o:p></pre>
<pre>Please upgrade to our latest ADT Version!<o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>This pops up in a message box, not the eclipse console. I have<o:p></o=
:p></pre>
<pre>followed the ADT Setup guide to the letter and it's not playing ball -=
<o:p></o:p></pre>
<pre>could someone confirm this as working or point me towards a reason why=
 I may be getting this error?<o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
</blockquote>
<pre>Hi Jack,<o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>How did you install your ADT? You can check the ADT version by &quot;c=
at&quot; the file /opt/poky/${version}/version-xxxx, where xxxx is your tar=
get sys architecture.<o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>-Lianhao<o:p></o:p></pre>
<pre>_______________________________________________<o:p></o:p></pre>
<pre>yocto mailing list<o:p></o:p></pre>
<pre><a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><o=
:p></o:p></pre>
<pre><a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://list=
s.yoctoproject.org/listinfo/yocto</a><o:p></o:p></pre>
</blockquote>
<pre>Hi Lianhao,<o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>I am using the yocto build tree so I don't have an installed ADT in /o=
pt<o:p></o:p></pre>
<pre>but one that has been generated within my build directory, this is<o:p=
></o:p></pre>
<pre>correct yes?<o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>Jack.<o:p></o:p></pre>
<pre>_______________________________________________<o:p></o:p></pre>
<pre>yocto mailing list<o:p></o:p></pre>
<pre><a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><o=
:p></o:p></pre>
<pre><a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://list=
s.yoctoproject.org/listinfo/yocto</a><o:p></o:p></pre>
</blockquote>
<pre><o:p>&nbsp;</o:p></pre>
<pre>Hi Jessica,<o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>I posted my environment settings earlier, which are located here:<o:p>=
</o:p></pre>
<pre><a href=3D"http://pastebin.com/4vnWPAD2">http://pastebin.com/4vnWPAD2<=
/a><o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>Yes, I did use bitbake meta-ide-support to build my roo<o:p></o:p></pr=
e>
<p class=3D"MsoNormal"><br>
Hi Jessica, <br>
<br>
I just did a full fresh re-build from scratch and now my environment variab=
les are as follows:
<br>
<br>
<a href=3D"http://ix.io/1Wf">http://ix.io/1Wf</a> <br>
<br>
My current git status is: <br>
<br>
# On branch edision <br>
# Untracked files: <br>
#&nbsp;&nbsp; (use &quot;git add &lt;file&gt;...&quot; to include in what w=
ill be committed) <br>
# <br>
#&nbsp;&nbsp;&nbsp; ../bitbake/lib/bb/pysh/pyshtables.py <br>
#&nbsp;&nbsp;&nbsp; ..<span class=3D"moz-txt-tag"><i>/</i></span><i>conf<sp=
an class=3D"moz-txt-tag">/</span></i>
<br>
#&nbsp;&nbsp;&nbsp; ./ <br>
#&nbsp;&nbsp;&nbsp; ..<span class=3D"moz-txt-tag"><i>/</i></span><i>qemuarm=
-toolchain<span class=3D"moz-txt-tag">/</span></i>
<br>
nothing added to commit but untracked files present (use &quot;git add&quot=
; to track) <br>
<br>
The environment variables are still wrong, can I manually change them, I un=
derstand this is bad practice but I can't develop until I fix this.
<br>
<br>
<o:p></o:p></p>
<pre>t.<o:p></o:p></pre>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_C6510F6D410BB64A8C15398EDC6B847C16E99C6CORSMSX101amrcor_--

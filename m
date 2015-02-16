Return-Path: <lars@linbit.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A6AFE00769; Mon, 16 Feb 2015 09:34:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [212.69.166.240 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 595 seconds by postgrey-1.32 at yocto-www;
	Mon, 16 Feb 2015 09:34:16 PST
Received: from zimbra13.linbit.com (zimbra13.linbit.com [212.69.166.240])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8960E00754
	for <yocto@yoctoproject.org>; Mon, 16 Feb 2015 09:34:16 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by zimbra13.linbit.com (Postfix) with ESMTP id B07AD3E54C9;
	Mon, 16 Feb 2015 18:24:16 +0100 (CET)
Received: from zimbra13.linbit.com ([127.0.0.1])
	by localhost (zimbra13.linbit.com [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id 6VTAMW1oUzYE; Mon, 16 Feb 2015 18:24:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by zimbra13.linbit.com (Postfix) with ESMTP id 8D3823EE236;
	Mon, 16 Feb 2015 18:24:16 +0100 (CET)
X-Virus-Scanned: amavisd-new at linbit.com
Received: from zimbra13.linbit.com ([127.0.0.1])
	by localhost (zimbra13.linbit.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id PDPrMB1HSp8I; Mon, 16 Feb 2015 18:24:16 +0100 (CET)
Received: from [10.185.160.8] (178.165.133.221.wireless.dyn.drei.com
	[178.165.133.221])
	by zimbra13.linbit.com (Postfix) with ESMTPSA id 41CB63E54C9;
	Mon, 16 Feb 2015 18:24:15 +0100 (CET)
User-Agent: K-9 Mail for Android
In-Reply-To: <DDB0C57E45663A458C5CACB7B5688BC21D7B2084@SESTOEX04.enea.se>
References: <1423890031-5704-1-git-send-email-akuster808@gmail.com>
	<CABcZANnOS=DoQspvKv1P5YVPv4Z_woTqJP4H9QENbb5Q+Z+2hA@mail.gmail.com>
	<DDB0C57E45663A458C5CACB7B5688BC21D7B2084@SESTOEX04.enea.se>
MIME-Version: 1.0
From: Lars Ellenberg <lars@linbit.com>
Date: Mon, 16 Feb 2015 18:24:09 +0100
To: Alexandru Vaduva <Alexandru.Vaduva@enea.com>,
	Christopher Larson <clarson@kergoth.com>,
	Armin Kuster <akuster808@gmail.com>
Message-ID: <60DDAC69-DBB2-481A-B72A-74D5496FA6D5@linbit.com>
X-Mailman-Approved-At: Tue, 17 Feb 2015 05:12:25 -0800
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [meta-cgl][PATCH] heartbeat: fix license issue
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
X-List-Received-Date: Mon, 16 Feb 2015 17:34:21 -0000
Content-Type: multipart/alternative;
	boundary="----KPAFD1FCJV7IX222V5TRAC9OY662TJ"
Content-Transfer-Encoding: 7bit

------KPAFD1FCJV7IX222V5TRAC9OY662TJ
Content-Type: text/plain;
 charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Am 16. Februar 2015 10:18:29 MEZ, schrieb Alexandru Vaduva <Alexandru.Vad=
uva@enea.com>:
>Hello Christopher,
>
>Your observation is very accurate.
>After a quick inspection I observed the following:
>
>Inside heartbeat-suse.spec the next information: License:        GPL v2
>only; LGPL v2.1 or later
>Link here:
>http://hg.linux-ha.org/heartbeat-STABLE_3_0/file/545554f6fc0a/heartbeat-=
suse.spec
>
>Inside heartbeat-fedora.spec the next information: License:        =20
>GPLv2 and LGPLv2+
>Link here:
>http://hg.linux-ha.org/heartbeat-STABLE_3_0/file/545554f6fc0a/heartbeat-=
fedora.spec
>
>I added Lars Ellenberg one of the authors behind heartbeat or drbd to
>the discussion.
>Hello Lars, sorry for disturbing you but maybe you could help us with
>our little problem.
>
>If anyone from the Yocto Project community has any input on this matter
>please help.
>For me at least this problem is not clear. Should the =E2=80=9C|=E2=80=9D=
 sign remain
>or should it be replaced with the =E2=80=9C&=E2=80=9D one between the li=
censes.
>
>
>Thanks guys,
>Alex Vaduva
>
>
>
>From: yocto-bounces@yoctoproject.org
>[mailto:yocto-bounces@yoctoproject.org] On Behalf Of Christopher Larson
>Sent: Sunday, February 15, 2015 4:01 PM
>To: Armin Kuster
>Cc: yocto
>Subject: Re: [yocto] [meta-cgl][PATCH] heartbeat: fix license issue
>
>
>On Fri, Feb 13, 2015 at 10:00 PM, Armin Kuster
><akuster808@gmail.com<mailto:akuster808@gmail.com>> wrote:
>-LICENSE =3D "GPLv2 LGPLv2+"
>+LICENSE =3D "GPLv2 | LGPLv2+"
>
>Are you sure this is correct? Afaict this is wrong, as there are parts
>of the source tree under the GPL, and parts under LGPL, which means
>it's an AND relationship -- both apply, not an OR relationship, where
>you can choose which to use.
>--
>Christopher Larson
>clarson at kergoth dot com
>Founder - BitBake, OpenEmbedded, OpenZaurus
>Maintainer - Tslib
>Senior Software Engineer, Mentor Graphics

It is an "and".
Some parts have been taken from LGPL or dual license whatever/LGPL origin=
. Some GPL. So it is both, not an option or choice. Which parts are what =
however I do not know from the top of my head, I'd have to check, if it i=
s relevant to you.

Thanks,
     Lars

------KPAFD1FCJV7IX222V5TRAC9OY662TJ
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html v=3D"urn:schemas-microsoft-com:vml" o=3D"urn:schemas-microsoft-com:=
office:office" w=3D"urn:schemas-microsoft-com:office:word" m=3D"http://sc=
hemas.microsoft.com/office/2004/12/omml"><head><meta http-equiv=3D"Conten=
t-Type" content=3D"text/html; charset=3Dutf-8" /><meta name=3D"Generator"=
 content=3D"Microsoft Word 14 (filtered medium)" /><style><!--
/* Font Definitions */
@font-face
 {font-family:Calibri;
 panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
 {font-family:Tahoma;
 panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
 {margin:0cm;
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
pre
 {mso-style-priority:99;
 mso-style-link:"HTML Preformatted Char";
 margin:0cm;
 margin-bottom:.0001pt;
 font-size:10.0pt;
 font-family:"Courier New";}
span.EmailStyle17
 {mso-style-type:personal-reply;
 font-family:"Calibri","sans-serif";
 color:#1F497D;}
span.HTMLPreformattedChar
 {mso-style-name:"HTML Preformatted Char";
 mso-style-priority:99;
 mso-style-link:"HTML Preformatted";
 font-family:"Courier New";
 mso-fareast-language:RO;}
.MsoChpDefault
 {mso-style-type:export-only;
 font-family:"Calibri","sans-serif";
 mso-fareast-language:EN-US;}
@page WordSection1
 {size:612.0pt 792.0pt;
 margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
 {page:WordSection1;}
--></style></head><body lang=3D"RO" link=3D"blue" vlink=3D"purple"><div c=
lass=3D"gmail_quote">Am 16. Februar 2015 10:18:29 MEZ, schrieb Alexandru =
Vaduva &lt;Alexandru.Vaduva@enea.com&gt;:<blockquote class=3D"gmail_quote=
" style=3D"margin: 0pt 0pt 0pt 0.8ex; border-left: 1px solid rgb(204, 204=
, 204); padding-left: 1ex;">




<!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->


<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;fon=
t-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hello =
Christopher,<p></p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;fon=
t-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><p>&nb=
sp;</p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;fon=
t-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Your o=
bservation is very accurate.<p></p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;fon=
t-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">After =
a quick inspection I observed the following:<p></p></span></p>
<pre><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,&quot;sans-serif&quot;;color:#1F497D">&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; Inside heartbeat-suse.spec the next information: </span=
><span lang=3D"EN-US">License:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
GPL v2 only; LGPL v2.1 or later<p></p></span></pre>
<p class=3D"MsoNormal" style=3D"text-indent:35.4pt"><span lang=3D"EN-US" =
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;;color:#1F497D">Link here:
<a href=3D"http://hg.linux-ha.org/heartbeat-STABLE_3_0/file/545554f6fc0a/=
heartbeat-suse.spec">
http://hg.linux-ha.org/heartbeat-STABLE_3_0/file/545554f6fc0a/heartbeat-s=
use.spec</a><p></p></span></p>
<pre><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,&quot;sans-serif&quot;;color:#1F497D">&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; Inside heartbeat-fedora.spec the next information: </sp=
an><span lang=3D"EN-US">License:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; GPLv2 and LGPLv2&#43;<p></p></span></pre>
<p class=3D"MsoNormal" style=3D"text-indent:35.4pt"><span lang=3D"EN-US" =
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;;color:#1F497D">Link here:
<a href=3D"http://hg.linux-ha.org/heartbeat-STABLE_3_0/file/545554f6fc0a/=
heartbeat-fedora.spec">
http://hg.linux-ha.org/heartbeat-STABLE_3_0/file/545554f6fc0a/heartbeat-f=
edora.spec</a><p></p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;fon=
t-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><p>&nb=
sp;</p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;fon=
t-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">I adde=
d
</span><span lang=3D"EN-US">Lars Ellenberg </span><span lang=3D"EN-US" st=
yle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&=
quot;;color:#1F497D">one of the authors behind heartbeat or drbd to the d=
iscussion.
<p></p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;fon=
t-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hello =
Lars, sorry for disturbing you but maybe you could help us with our littl=
e problem.<p></p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;fon=
t-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><p>&nb=
sp;</p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;fon=
t-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">If any=
one from the Yocto Project community has any input on this matter please =
help.<p></p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;fon=
t-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">For me=
 at least this problem is not clear. Should the
</span><span lang=3D"EN-US">=E2=80=9C|=E2=80=9D</span><span lang=3D"EN-US=
" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-se=
rif&quot;;color:#1F497D"> sign remain or should it be replaced with the
</span><span lang=3D"EN-US">=E2=80=9C&amp;=E2=80=9D</span><span lang=3D"E=
N-US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;san=
s-serif&quot;;color:#1F497D"> one between the licenses.<p></p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;fon=
t-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><p>&nb=
sp;</p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;fon=
t-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><p>&nb=
sp;</p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;fon=
t-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Thanks=
 guys,<p></p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;fon=
t-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Alex V=
aduva
<p></p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;fon=
t-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><p>&nb=
sp;</p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:35.4pt"><span lang=3D"EN-US" =
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;;color:#1F497D"><p>&nbsp;</p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;fon=
t-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><p>&nb=
sp;</p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;=
font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><s=
pan lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quo=
t;,&quot;sans-serif&quot;"> yocto-bounces@yoctoproject.org [mailto:yocto-=
bounces@yoctoproject.org]
<b>On Behalf Of </b>Christopher Larson<br />
<b>Sent:</b> Sunday, February 15, 2015 4:01 PM<br />
<b>To:</b> Armin Kuster<br />
<b>Cc:</b> yocto<br />
<b>Subject:</b> Re: [yocto] [meta-cgl][PATCH] heartbeat: fix license issu=
e<p></p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><p>&nbsp;</p></span></p>
<div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><p>&nbsp;</p></span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">On Fri, Feb 13, 2015 at 10:00=
 PM, Armin Kuster &lt;<a href=3D"mailto:akuster808@gmail.com" target=3D"_=
blank">akuster808@gmail.com</a>&gt; wrote:<p></p></span></p>
<div id=3D":2m4">
<p class=3D"MsoNormal"><span lang=3D"EN-US">-LICENSE =3D &quot;GPLv2 LGPL=
v2&#43;&quot;<br />
&#43;LICENSE =3D &quot;GPLv2 | LGPLv2&#43;&quot;<p></p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><br />
Are you sure this is correct? Afaict this is wrong, as there are parts of=
 the source tree under the GPL, and parts under LGPL, which means it's an=
 AND relationship -- both apply, not an OR relationship, where you can ch=
oose which to use.<br />
-- <p></p></span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Christopher Larson<br />
clarson at kergoth dot com<br />
Founder - BitBake, OpenEmbedded, OpenZaurus<br />
Maintainer - Tslib<br />
Senior Software Engineer, Mentor Graphics<p></p></span></p>
</div>
</div>
</div>
</div>


</blockquote></div><br clear=3D"all">It is an &quot;and&quot;.<br>
Some parts have been taken from LGPL or dual license whatever/LGPL origin=
. Some GPL. So it is both, not an option or choice. Which parts are what =
however I do not know from the top of my head, I&#39;d have to check, if =
it is relevant to you.<br>
<br>
Thanks,<br>
     Lars</body></html>

------KPAFD1FCJV7IX222V5TRAC9OY662TJ--

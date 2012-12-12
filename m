Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A433E00348
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 12:42:23 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 12 Dec 2012 12:42:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,268,1355126400"; 
	d="scan'208,217";a="230690611"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by azsmga001.ch.intel.com with ESMTP; 12 Dec 2012 12:42:22 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.81]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.66]) with mapi id
	14.01.0355.002; Wed, 12 Dec 2012 12:42:21 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Bill Traynor <wmat@alphatroop.com>
Thread-Topic: [yocto] Difference of toolchain recipes
Thread-Index: Ac3R0s0/UEOxKwlOQ72h3AL1xJ4hNABxX2jAACG/uIAA8XAKAAA6UTcAAAu08DD//8vhAIAAdASg
Date: Wed, 12 Dec 2012 20:42:21 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946ACCA3A@ORSMSX101.amr.corp.intel.com>
References: <CA452391058F6D4E9715FB2C29D9312A0137811C@039-SN2MPN1-021.039d.mgd.msft.net>
	<50C0DE57.2040904@windriver.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946ACC3C0@ORSMSX101.amr.corp.intel.com>
	<50C8B9F6.1010700@windriver.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946ACC99E@ORSMSX101.amr.corp.intel.com>
	<CAGfZjq6DM7hO1L2OLfhom2ekpbTQhjXXEGgrb_LyT87ug9mv9w@mail.gmail.com>
In-Reply-To: <CAGfZjq6DM7hO1L2OLfhom2ekpbTQhjXXEGgrb_LyT87ug9mv9w@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Difference of toolchain recipes
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
X-List-Received-Date: Wed, 12 Dec 2012 20:42:24 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946ACCA3AORSMSX101amrcor_"

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946ACCA3AORSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks Bill,

I will put together my draft for the section and send it your way.  You can=
 give it a good technical review.

Scott

From: Bill Traynor [mailto:wmat@alphatroop.com]
Sent: Wednesday, December 12, 2012 11:37 AM
To: Rifenbark, Scott M
Cc: Mark Hatle; yocto@yoctoproject.org
Subject: Re: [yocto] Difference of toolchain recipes

I can likely help with this, Scott.

On Wed, Dec 12, 2012 at 2:33 PM, Rifenbark, Scott M <scott.m.rifenbark@inte=
l.com<mailto:scott.m.rifenbark@intel.com>> wrote:
Thanks for the feedback Mark.  I will go ahead with it.

Scott

>-----Original Message-----
>From: Mark Hatle [mailto:mark.hatle@windriver.com<mailto:mark.hatle@windri=
ver.com>]
>Sent: Wednesday, December 12, 2012 9:08 AM
>To: Rifenbark, Scott M
>Cc: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
>Subject: Re: [yocto] Difference of toolchain recipes
>
>On 12/11/12 3:20 PM, Rifenbark, Scott M wrote:
>> I think what I am going to do is document these in general as part of
>the "Terms" section in the YP Development Manual where the term "Cross-
>Development Toolchain" is defined.  Would putting such a high-level list
>in the YP documentation be unnecessary or helpful?
>
>I think it would.  The set of compiler/toolchain elements we have is
>definitely
>confusing to someone new.
>
>--Mark
>
>> Scott
>>
>>> -----Original Message-----
>>> From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.=
org> [mailto:yocto-<mailto:yocto->
>>> bounces@yoctoproject.org<mailto:bounces@yoctoproject.org>] On Behalf Of=
 Mark Hatle
>>> Sent: Thursday, December 06, 2012 10:05 AM
>>> To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
>>> Subject: Re: [yocto] Difference of toolchain recipes
>>>
>>> On 12/6/12 4:00 AM, Luo Zhenhua-B19537 wrote:
>>>> Can anybody shed some light, please?
>>>>
>>>>
>>>> Best Regards,
>>>>
>>>> Zhenhua
>>>>
>>>>
>>>>> -----Original Message-----
>>>>> From: Luo Zhenhua-B19537
>>>>> Sent: Tuesday, December 04, 2012 11:53 AM
>>>>> To: openembedded-core@lists.openembedded.org<mailto:openembedded-core=
@lists.openembedded.org>;
>>> 'yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>'
>>>>> Subject: Difference of toolchain recipes
>>>>>
>>>>> It is a bit confused for the different recipes of toolchian, can
>>> somebody
>>>>> help to explain what's the difference for those recipes? E.g. gcc-
>>> cross,
>>>>> gcc-cross-canadian, gcc-cross-initial, gcc-cross-intermediate, gcc-
>>>>> crosssdk, gcc-crosssdk-initial, gcc-crosssdk-intermediate, gcc-
>>> runtime,
>>>>> etc.
>>>
>>> gcc-cross-initial - This is the initial compiler needed to bootstrap
>the
>>> toolchain to build software on the host for the target.  (This is a
>>> 'native'
>>> package.)
>>>
>>> gcc-cross-intermediate - This is the second stage of the bootstrap
>>> process to
>>> build software on the host for the target. (This is a 'native'
>package.)
>>>
>>> gcc-cross - this is the the final stage of the bootstrap process, and
>>> results in
>>> the cross compiler to build software on the host for the target.
>(This
>>> is a
>>> 'native' package.)  If you are replacing the cross compiler toolchain
>>> with a
>>> custom version, this is what you must replace.
>>>
>>> gcc-runtime - these are the runtime libraries, but from the toolchain
>>> bootstrapping process.  This results in a 'target' binary.
>>>
>>> gcc-crosssdk-initial/intermediate - stage 1 and 2 of the a cross
>>> compiler to
>>> build from the 'host' to the 'sdk'.  Often the SDK is not the same
>>> target as the
>>> host.  (This is a 'native' binary.)
>>>
>>> gcc-crosssdk - this the final stage of the SDK compiler.  Again, this
>is
>>> to
>>> build on the host, for the sdk.  This is a 'native' binary.
>>>
>>> gcc-cross-canadian - This is the compiler included with the SDK to
>build
>>> on the
>>> SDK machine creating software for the target.  This is an 'nativesdk'
>>> package.
>>>
>>>>> Is there any document for those description?
>>>
>>> Not that I know of.. It's one of those things that you kind of need
>to
>>> know in
>>> order to work with it.  It likely should be documented somewhere
>>> officially.
>>>
>>> --Mark
>>>
>>>>>
>>>>>
>>>>> Best Regards,
>>>>>
>>>>> Zhenhua
>>>>
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
>>> https://lists.yoctoproject.org/listinfo/yocto

_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto


--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946ACCA3AORSMSX101amrcor_
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
span.hoenzb
	{mso-style-name:hoenzb;}
span.EmailStyle18
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
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Thanks Bill,
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">I will put together my dr=
aft for the section and send it your way.&nbsp; You can give it a good tech=
nical review.<o:p></o:p></span></p>
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
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Bill Tra=
ynor [mailto:wmat@alphatroop.com]
<br>
<b>Sent:</b> Wednesday, December 12, 2012 11:37 AM<br>
<b>To:</b> Rifenbark, Scott M<br>
<b>Cc:</b> Mark Hatle; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Difference of toolchain recipes<o:p></o:p></spa=
n></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I can likely help with this, Scott.<o:p></o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">On Wed, Dec 12, 2012 at 2:33 PM, Rifenbark, Scott M =
&lt;<a href=3D"mailto:scott.m.rifenbark@intel.com" target=3D"_blank">scott.=
m.rifenbark@intel.com</a>&gt; wrote:<o:p></o:p></p>
<p class=3D"MsoNormal">Thanks for the feedback Mark. &nbsp;I will go ahead =
with it.<br>
<span style=3D"color:#888888"><br>
<span class=3D"hoenzb">Scott</span></span><o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><br>
&gt;-----Original Message-----<br>
&gt;From: Mark Hatle [mailto:<a href=3D"mailto:mark.hatle@windriver.com">ma=
rk.hatle@windriver.com</a>]<br>
&gt;Sent: Wednesday, December 12, 2012 9:08 AM<br>
&gt;To: Rifenbark, Scott M<br>
&gt;Cc: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a=
><br>
&gt;Subject: Re: [yocto] Difference of toolchain recipes<br>
&gt;<o:p></o:p></p>
</div>
<div>
<div>
<p class=3D"MsoNormal">&gt;On 12/11/12 3:20 PM, Rifenbark, Scott M wrote:<b=
r>
&gt;&gt; I think what I am going to do is document these in general as part=
 of<br>
&gt;the &quot;Terms&quot; section in the YP Development Manual where the te=
rm &quot;Cross-<br>
&gt;Development Toolchain&quot; is defined. &nbsp;Would putting such a high=
-level list<br>
&gt;in the YP documentation be unnecessary or helpful?<br>
&gt;<br>
&gt;I think it would. &nbsp;The set of compiler/toolchain elements we have =
is<br>
&gt;definitely<br>
&gt;confusing to someone new.<br>
&gt;<br>
&gt;--Mark<br>
&gt;<br>
&gt;&gt; Scott<br>
&gt;&gt;<br>
&gt;&gt;&gt; -----Original Message-----<br>
&gt;&gt;&gt; From: <a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-=
bounces@yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-">yocto-</a><b=
r>
&gt;&gt;&gt; <a href=3D"mailto:bounces@yoctoproject.org">bounces@yoctoproje=
ct.org</a>] On Behalf Of Mark Hatle<br>
&gt;&gt;&gt; Sent: Thursday, December 06, 2012 10:05 AM<br>
&gt;&gt;&gt; To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproje=
ct.org</a><br>
&gt;&gt;&gt; Subject: Re: [yocto] Difference of toolchain recipes<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On 12/6/12 4:00 AM, Luo Zhenhua-B19537 wrote:<br>
&gt;&gt;&gt;&gt; Can anybody shed some light, please?<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Best Regards,<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Zhenhua<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; -----Original Message-----<br>
&gt;&gt;&gt;&gt;&gt; From: Luo Zhenhua-B19537<br>
&gt;&gt;&gt;&gt;&gt; Sent: Tuesday, December 04, 2012 11:53 AM<br>
&gt;&gt;&gt;&gt;&gt; To: <a href=3D"mailto:openembedded-core@lists.openembe=
dded.org">openembedded-core@lists.openembedded.org</a>;<br>
&gt;&gt;&gt; '<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.=
org</a>'<br>
&gt;&gt;&gt;&gt;&gt; Subject: Difference of toolchain recipes<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; It is a bit confused for the different recipes of tool=
chian, can<br>
&gt;&gt;&gt; somebody<br>
&gt;&gt;&gt;&gt;&gt; help to explain what's the difference for those recipe=
s? E.g. gcc-<br>
&gt;&gt;&gt; cross,<br>
&gt;&gt;&gt;&gt;&gt; gcc-cross-canadian, gcc-cross-initial, gcc-cross-inter=
mediate, gcc-<br>
&gt;&gt;&gt;&gt;&gt; crosssdk, gcc-crosssdk-initial, gcc-crosssdk-intermedi=
ate, gcc-<br>
&gt;&gt;&gt; runtime,<br>
&gt;&gt;&gt;&gt;&gt; etc.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; gcc-cross-initial - This is the initial compiler needed to boo=
tstrap<br>
&gt;the<br>
&gt;&gt;&gt; toolchain to build software on the host for the target. &nbsp;=
(This is a<br>
&gt;&gt;&gt; 'native'<br>
&gt;&gt;&gt; package.)<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; gcc-cross-intermediate - This is the second stage of the boots=
trap<br>
&gt;&gt;&gt; process to<br>
&gt;&gt;&gt; build software on the host for the target. (This is a 'native'=
<br>
&gt;package.)<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; gcc-cross - this is the the final stage of the bootstrap proce=
ss, and<br>
&gt;&gt;&gt; results in<br>
&gt;&gt;&gt; the cross compiler to build software on the host for the targe=
t.<br>
&gt;(This<br>
&gt;&gt;&gt; is a<br>
&gt;&gt;&gt; 'native' package.) &nbsp;If you are replacing the cross compil=
er toolchain<br>
&gt;&gt;&gt; with a<br>
&gt;&gt;&gt; custom version, this is what you must replace.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; gcc-runtime - these are the runtime libraries, but from the to=
olchain<br>
&gt;&gt;&gt; bootstrapping process. &nbsp;This results in a 'target' binary=
.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; gcc-crosssdk-initial/intermediate - stage 1 and 2 of the a cro=
ss<br>
&gt;&gt;&gt; compiler to<br>
&gt;&gt;&gt; build from the 'host' to the 'sdk'. &nbsp;Often the SDK is not=
 the same<br>
&gt;&gt;&gt; target as the<br>
&gt;&gt;&gt; host. &nbsp;(This is a 'native' binary.)<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; gcc-crosssdk - this the final stage of the SDK compiler. &nbsp=
;Again, this<br>
&gt;is<br>
&gt;&gt;&gt; to<br>
&gt;&gt;&gt; build on the host, for the sdk. &nbsp;This is a 'native' binar=
y.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; gcc-cross-canadian - This is the compiler included with the SD=
K to<br>
&gt;build<br>
&gt;&gt;&gt; on the<br>
&gt;&gt;&gt; SDK machine creating software for the target. &nbsp;This is an=
 'nativesdk'<br>
&gt;&gt;&gt; package.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Is there any document for those description?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Not that I know of.. It's one of those things that you kind of=
 need<br>
&gt;to<br>
&gt;&gt;&gt; know in<br>
&gt;&gt;&gt; order to work with it. &nbsp;It likely should be documented so=
mewhere<br>
&gt;&gt;&gt; officially.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; --Mark<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Best Regards,<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Zhenhua<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt;&gt; yocto mailing list<br>
&gt;&gt;&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproje=
ct.org</a><br>
&gt;&gt;&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt; yocto mailing list<br>
&gt;&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.o=
rg</a><br>
&gt;&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" targ=
et=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><o:p></o:p></p>
</div>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</div>
</body>
</html>

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946ACCA3AORSMSX101amrcor_--

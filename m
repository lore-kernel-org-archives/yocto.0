Return-Path: <steven.muellener@sius.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7C5EE00E05; Tue, 22 Sep 2015 15:34:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MIME_QP_LONG_LINE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from mail-wi0-f177.google.com (mail-wi0-f177.google.com
	[209.85.212.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C0B2E00707
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2015 15:34:09 -0700 (PDT)
Received: by wiclk2 with SMTP id lk2so214443714wic.0
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2015 15:34:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:content-type:mime-version:subject:from
	:in-reply-to:date:cc:content-transfer-encoding:message-id:references
	:to; bh=NWX0uCzcoj0kMuYC/xP+YWZABJj34WFaEQtroILhY7o=;
	b=kfdNKpD5bAKSpD/y8ckim/hSXaDrQXQhmbmmisfK5BveLmnCWd8V5AE/BFCwrllEqQ
	TYgS/Mrc6WLhaccui6AQcjB4h3coiS1Cu+7IO0wTFL9+ruMIDi/C/mrVwbKJvCYuU10I
	Y1LLaWUejykt/FEo4FTxlCmuPfFgdl/60C1tRj+hFzZuFfkLRy/sKHqbdh56HBQeLEZ8
	jwWkC1Yr3ZhOWVkPCQgLsu32QQoAO7jD1tHOnC8g1a3ZZK4VxYYbxBFc49Oymh2MyzSy
	72lwtOfND2WLW64uwKUFyg7U+AQgWFGOU9ACRf+Eo61SgoDF7lTqtaoNYfVJStzuBd5w
	12hQ==
X-Gm-Message-State: ALoCoQnQyMYdn4PsNJWOcOx0XF79nQfmRmqsMx7unM5WcWkZS0wFMDAkVjC9MsL+oviL5roXSqpP
X-Received: by 10.180.72.112 with SMTP id c16mr129105wiv.15.1442961248613;
	Tue, 22 Sep 2015 15:34:08 -0700 (PDT)
Received: from [10.167.190.254]
	(217.228.197.178.dynamic.wless.zhbmb00p-cgnat.res.cust.swisscom.ch.
	[178.197.228.217]) by smtp.gmail.com with ESMTPSA id
	xt1sm4044810wjb.32.2015.09.22.15.34.07
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 22 Sep 2015 15:34:08 -0700 (PDT)
Mime-Version: 1.0 (1.0)
From: =?utf-8?Q?Steven_M=C3=BCllener?= <steven.muellener@sius.com>
X-Mailer: iPhone Mail (12H321)
In-Reply-To: <1FFB62CE8AEB0D4298B51122D8903E96260F8A0C@irsmsx110.ger.corp.intel.com>
Date: Wed, 23 Sep 2015 00:34:06 +0200
Message-Id: <3D99828D-9985-48FC-8036-891DA57FCC15@sius.com>
References: <CAAstOJQ0jCTpJRCMHDfthGtouJ5KzViNDEzEgH0Ee9iYh0dVGw@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847CA109BDC8@ORSMSX103.amr.corp.intel.com>
	<1FFB62CE8AEB0D4298B51122D8903E96260F8A0C@irsmsx110.ger.corp.intel.com>
To: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
X-Mailman-Approved-At: Thu, 24 Sep 2015 07:33:50 -0700
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Eclipse Yocto Plugin: Preference Profile	"Save As..."-Button not working
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
X-List-Received-Date: Tue, 22 Sep 2015 22:34:14 -0000
Content-Type: multipart/alternative;
	boundary=Apple-Mail-E79B1CEF-FB24-439E-9D26-03FA59C51A45
Content-Transfer-Encoding: 7bit

--Apple-Mail-E79B1CEF-FB24-439E-9D26-03FA59C51A45
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Alex
Thanks for the reply.. very kind! I debugged the plugin using the its Eclips=
e SDK and found that the Pluginis using the sdk's folder's name to determine=
 the host architecture and fails without any warning/hint if the sdk folder c=
an not be found or follows a different naming convention.
So it's working for me now, but an error message should be implemented for s=
ure if the sdk folder is not found or is namd differently.
I could try to propose an improvement and send a pull request but do not hav=
e the time right now.
Best regards,
Steven



> Am 22.09.2015 um 15:58 schrieb Georgescu, Alexandru C <alexandru.c.georges=
cu@intel.com>:
>=20
> Hi Steven,
> Saving profiles, should work in the eclipse plugin.=20
> =20
> Here are the steps for saving Preference Profile when using a build system=
 derived toolchain:
> Open Window->Preferences->Yocto Project ADT and set up :
> =C2=B7        Cross Compiler Options : =E2=80=9CBuild system derived toolc=
hain=E2=80=9D
> =C2=B7        Toolchain Root Location: You must point to your =E2=80=9C$PA=
TH/poky/build=E2=80=9D  (ex: /home/$user/poky/build)
> =C2=B7        Sysroot Location : You must point to your =E2=80=9C$PATH/pok=
y/build/tmp/sysroots/x86_64-linux=E2=80=9D
> =C2=B7        Target architecture: The target arch must appear if you have=
 entered a correct sysroot and toolchain root location.
> =C2=B7        Target Options : =E2=80=9CExternal HW=E2=80=9D
> =20
> Then, you should be able to press =E2=80=9CApply=E2=80=9D to save it, or Y=
ou can save the profile using the =E2=80=9CSave as=E2=80=9D button on the to=
p right. Here is also the docs I could find regarding eclipse-plugin configu=
ration: http://www.yoctoproject.org/docs/current/mega-manual/mega-manual.htm=
l#configuring-the-eclipse-yocto-plug-in
> =20
> Hope that helps,
> AlexG
> =20
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.or=
g] On Behalf Of Zhang, Jessica
> Sent: Friday, September 18, 2015 8:24 PM
> To: M=C3=BCllener, Steven <steven.muellener@sius.com>; yocto@yoctoproject.=
org
> Subject: Re: [yocto] Eclipse Yocto Plugin: Preference Profile "Save As..."=
-Button not working
> =20
> Please file a bug in Bugzilla.
> =20
> Thanks,
> Jessica
> =20
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.or=
g] On Behalf Of M=C3=BCllener, Steven
> Sent: Thursday, September 10, 2015 2:12 AM
> To: yocto@yoctoproject.org
> Subject: [yocto] Eclipse Yocto Plugin: Preference Profile "Save As..."-But=
ton not working
> =20
> I have the problem that my Eclipse Yocto Plugin Preferences can not be sav=
ed and seem to be lost after closing the Preferences Window. It seems like o=
ther people have the same problem as well
> =20
> e.g. http://community.phytec.com/forum/topic/Yocto-Projects-in-Eclipse.htm=

> =20
> I tried many combinations of Eclipse versions (Kepler, Luna, Mars) with th=
eir corresponding Yocto Plugin releases without any luck.
> =20
> I also changed the permissions for the entire folder <Eclipse installation=
 folder> as well as the <Eclipse workspace folder> recursively to rwx for ev=
eryone without any success. Also running Eclipse as root did not help.
> =20
> What could be the problem here?=20
> =20
> Thank you
> =20
> =20
> =20

--Apple-Mail-E79B1CEF-FB24-439E-9D26-03FA59C51A45
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><div>Hi Alex</div><div>Thanks for the reply=
.. very kind! I debugged the plugin using the its Eclipse SDK and found that=
 the Pluginis using the sdk's folder's name to determine the host architectu=
re and fails without any warning/hint if the sdk folder can not be found or f=
ollows a different naming convention.</div><div>So it's working for me now, b=
ut an error message should be implemented for sure if the sdk folder is not f=
ound or is namd differently.</div><div>I could try to propose an improvement=
 and send a pull request but do not have the time right now.</div><div>Best r=
egards,</div><div>Steven<br><br><br></div><div><br>Am 22.09.2015 um 15:58 sc=
hrieb Georgescu, Alexandru C &lt;<a href=3D"mailto:alexandru.c.georgescu@int=
el.com">alexandru.c.georgescu@intel.com</a>&gt;:<br><br></div><blockquote ty=
pe=3D"cite"><div>

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
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
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle19
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:102385156;
	mso-list-type:hybrid;
	mso-list-template-ids:-1155904312 67698699 67698691 67698693 676986=
89 67698691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:=EF=83=98;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1
	{mso-list-id:1671447461;
	mso-list-type:hybrid;
	mso-list-template-ids:-1702753410 67698689 67698691 67698693 676986=
89 67698691 67698693 67698689 67698691 67698693;}
@list l1:level1
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level9
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
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


<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif;color:#1F497D">Hi Steven,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif;color:#1F497D">Saving profiles, should work in the ecl=
ipse plugin.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif;color:#1F497D">Here are the steps for saving Preferenc=
e Profile when using a
<b>build system derived toolchain:</b><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif;color:#1F497D">Open
<b>Window-&gt;Preferences-&gt;Yocto Project AD</b>T and set up :<o:p></o:p><=
/span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l1 level1=
 lfo3"><!--[if !supportLists]--><span style=3D"font-size:11.0pt;font-family:=
Symbol;color:#1F497D"><span style=3D"mso-list:Ignore">=C2=B7<span style=3D"f=
ont:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;
</span></span></span><!--[endif]--><span style=3D"font-size:11.0pt;font-fami=
ly:&quot;Calibri&quot;,sans-serif;color:#1F497D">Cross Compiler Options : =E2=
=80=9C</span><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;=
,sans-serif;color:red">Build system derived toolchain</span><span style=3D"f=
ont-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">=E2=
=80=9D
<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l1 level1=
 lfo3"><!--[if !supportLists]--><span style=3D"font-size:11.0pt;font-family:=
Symbol;color:#1F497D"><span style=3D"mso-list:Ignore">=C2=B7<span style=3D"f=
ont:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;
</span></span></span><!--[endif]--><span style=3D"font-size:11.0pt;font-fami=
ly:&quot;Calibri&quot;,sans-serif;color:#1F497D">Toolchain Root Location: Yo=
u must point to your =E2=80=9C</span><span style=3D"font-size:11.0pt;font-fa=
mily:&quot;Calibri&quot;,sans-serif;color:red">$PATH/poky/build</span><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1=
F497D">=E2=80=9D
 &nbsp;(ex: /home/$user/poky/build)<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l1 level1=
 lfo3"><!--[if !supportLists]--><span style=3D"font-size:11.0pt;font-family:=
Symbol;color:#1F497D"><span style=3D"mso-list:Ignore">=C2=B7<span style=3D"f=
ont:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;
</span></span></span><!--[endif]--><span style=3D"font-size:11.0pt;font-fami=
ly:&quot;Calibri&quot;,sans-serif;color:#1F497D">Sysroot Location : You must=
 point to your =E2=80=9C</span><span style=3D"font-size:11.0pt;font-family:&=
quot;Calibri&quot;,sans-serif;color:red">$PATH/poky/build/tmp/sysroots/x86_6=
4-linux</span><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot=
;,sans-serif;color:#1F497D">=E2=80=9D<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l1 level1=
 lfo3"><!--[if !supportLists]--><span style=3D"font-size:11.0pt;font-family:=
Symbol;color:#1F497D"><span style=3D"mso-list:Ignore">=C2=B7<span style=3D"f=
ont:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;
</span></span></span><!--[endif]--><span style=3D"font-size:11.0pt;font-fami=
ly:&quot;Calibri&quot;,sans-serif;color:#1F497D">Target architecture:
</span><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-=
serif;color:red">The target arch must appear if you have entered a correct s=
ysroot and toolchain root location.</span><span style=3D"font-size:11.0pt;fo=
nt-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p></o:p></span></=
p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l1 level1=
 lfo3"><!--[if !supportLists]--><span style=3D"font-size:11.0pt;font-family:=
Symbol;color:#1F497D"><span style=3D"mso-list:Ignore">=C2=B7<span style=3D"f=
ont:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;
</span></span></span><!--[endif]--><span style=3D"font-size:11.0pt;font-fami=
ly:&quot;Calibri&quot;,sans-serif;color:#1F497D">Target Options : =E2=80=9C<=
/span><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-s=
erif;color:red">External HW</span><span style=3D"font-size:11.0pt;font-famil=
y:&quot;Calibri&quot;,sans-serif;color:#1F497D">=E2=80=9D<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif;color:#1F497D">Then, you should be able to press =E2=80=
=9CApply=E2=80=9D to save it, or You can save the profile using the =E2=80=9C=
Save as=E2=80=9D button on the top right. Here is also the docs I could find=

 regarding eclipse-plugin configuration: <a href=3D"http://www.yoctoproject.=
org/docs/current/mega-manual/mega-manual.html#configuring-the-eclipse-yocto-=
plug-in">
http://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#config=
uring-the-eclipse-yocto-plug-in</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif;color:#1F497D">Hope that helps,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif;color:#1F497D">AlexG</span><span style=3D"font-size:11=
.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><a name=3D"_MailEndCompose"><span style=3D"font-size:=
11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;=
</o:p></span></a></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in 0=
in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot;=
Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;fo=
nt-family:&quot;Calibri&quot;,sans-serif"> <a href=3D"mailto:yocto-bounces@y=
octoproject.org">yocto-bounces@yoctoproject.org</a> [<a href=3D"mailto:yocto=
-bounces@yoctoproject.org">mailto:yocto-bounces@yoctoproject.org</a>]
<b>On Behalf Of </b>Zhang, Jessica<br>
<b>Sent:</b> Friday, September 18, 2015 8:24 PM<br>
<b>To:</b> M=C3=BCllener, Steven &lt;<a href=3D"mailto:steven.muellener@sius=
.com">steven.muellener@sius.com</a>&gt;; <a href=3D"mailto:yocto@yoctoprojec=
t.org">yocto@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] Eclipse Yocto Plugin: Preference Profile "Save A=
s..."-Button not working<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif;color:#1F497D">Please file a bug in Bugzilla.<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif;color:#1F497D">Thanks,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif;color:#1F497D">Jessica<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot;=
Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;fo=
nt-family:&quot;Calibri&quot;,sans-serif">
<a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoproject=
.org</a> [<a href=3D"mailto:yocto-bounces@yoctoproject.org">mailto:yocto-bou=
nces@yoctoproject.org</a>]
<b>On Behalf Of </b>M=C3=BCllener, Steven<br>
<b>Sent:</b> Thursday, September 10, 2015 2:12 AM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org<=
/a><br>
<b>Subject:</b> [yocto] Eclipse Yocto Plugin: Preference Profile "Save As...=
"-Button not working<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal">I have the problem that my Eclipse Yocto Plugin Prefe=
rences can not be saved and seem to be lost after closing the Preferences Wi=
ndow. It seems like other people have the same problem as well<o:p></o:p></p=
>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">e.g. <a href=3D"http://community.phytec.com/forum/top=
ic/Yocto-Projects-in-Eclipse.htm">
http://community.phytec.com/forum/topic/Yocto-Projects-in-Eclipse.htm</a><o:=
p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">I tried many combinations of Eclipse versions (Kepler=
, Luna, Mars) with their corresponding Yocto Plugin releases without any luc=
k.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">I also changed the permissions for the entire folder &=
lt;Eclipse installation folder&gt; as well as the &lt;Eclipse workspace fold=
er&gt; recursively to rwx for everyone without any success. Also running Ecl=
ipse as root did not help.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">What could be the problem here?&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Thank you<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</div>


</div></blockquote></body></html>=

--Apple-Mail-E79B1CEF-FB24-439E-9D26-03FA59C51A45--

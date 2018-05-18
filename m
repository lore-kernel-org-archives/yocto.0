Return-Path: <kumar.ugesh003@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C507E009CA; Thu, 17 May 2018 22:45:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLYTO_END_DIGIT,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	REPTO_QUOTE_YAHOO autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kumar.ugesh003[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [106.10.242.139 listed in list.dnswl.org]
	* 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
	digit
	*      ("kumar.ugesh003[at]yahoo.com" <kumar.ugesh003[at]yahoo.com>
	) * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.6 REPTO_QUOTE_YAHOO Yahoo! doesn't do quoting like this
Received: from sonic302-19.consmr.mail.sg3.yahoo.com
	(sonic302-19.consmr.mail.sg3.yahoo.com [106.10.242.139])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4E64E00942
	for <yocto@yoctoproject.org>; Thu, 17 May 2018 22:45:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1526622305; bh=60G6rHxwnA3VZzkTPS8uMy6SKzK2rbMTJuQJbLyXcZo=;
	h=Date:From:Reply-To:To:In-Reply-To:References:Subject:From:Subject;
	b=OK2UGwQZ3fIBItUHEidFCXAeLQxddtqOqK2lfbE9hNtffnFVlRHjsLV1jS/6SuCGm4dKFcu6ZZHKSZOd+DKCkLmGievDQXlmgEpKWKuJkolNO/GXeH86l1yr/D3GqQMP3tUKjaD29ccvJyMg0rpi2dBm2g1GveJhOVq1J+C0yiFhNpS9+MaiJzLKmDaTHYIl4Xzq0hxvjl/5XRC2MT1q7r4XcobhmQL2ngqIktobO7bgA1SwOh5IWKsdvEjmt7cm1RFRTcccCd8NGvFgB1vT4gDn/fM1owbEMZ12B6VpoOzs1naPwsbnK/rA3DS/CAJnnVSymdsXGTZFIxE1Prw0Pw==
X-YMail-OSG: lebFJkMVM1ltK5_8e19xNtuOKDqggW4_nL_xp51wlMbluwKc8nn73_tR1dsegpo
	0AVpwDGHoDfwpxLhlz0LCfSQdiLM6Eb_hUfSSwxC5.Ydmfla5ZvzzWIXWEPN67pPpuEpmHQC8HUb
	vWWnlxOR7oihUWidfFjMyfJqs9vg8D.6wJRTFADkujH371FEJyIStVyF9OihPYq4HSJhYBkViTOf
	iX.JEOsm9VUITozFS7B9JZOVUonUTgLv2cc1yLnnUg0UPAL5ApqovWMMD3CPWNiUwerkMBgZjROu
	pgnVYsfAgBsAGupm5uMQL3yz7GK6CBcH5fd85PhsFQtVixqjTt4Th8_BuMRT0XyfSbkl4Y2SZWhC
	KPi_wcwCJeeBmRpEdxNMN97_56XsHfR29d6npiyj2zBbhGGocA9diqfDpTBWI0MvbCUDyjArc7aN
	hZhVQWckjycSy_buhzp0Js1y9R9GxzfSTmc.adeTdciNm_QO5eeSRXjhOqjkdxKg5bUsLOK0Mozi
	BkXU4NqveWZsiT3H6kGrVu3kLZdMHMfHbcYw5ZCa46Wy8ENqAKjUHT38pcmCAb1OZXXkqhKK0Q7m
	_xLZbD.OmiMpxh7Za4J8RtTD508rTAJM6afWAw5TWOe1sjmruLojGKZ9EnkngawRpp7cpKPPNRX9
	Nuw7o3.iCftlnlMM-
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic302.consmr.mail.sg3.yahoo.com with HTTP;
	Fri, 18 May 2018 05:45:05 +0000
Date: Fri, 18 May 2018 05:44:59 +0000 (UTC)
From: Ugesh Reddy <kumar.ugesh003@yahoo.com>
To: "chandrasekhar@evolute.in" <chandrasekhar@evolute.in>, 
	'Yocto-mailing-list' <yocto@yoctoproject.org>
Message-ID: <2114034351.2762560.1526622299302@mail.yahoo.com>
In-Reply-To: <000901d3ee5e$aab1ec80$0015c580$@in>
References: <1621704137.2131896.1526488025606.ref@mail.yahoo.com>
	<1621704137.2131896.1526488025606@mail.yahoo.com>
	<000c01d3ed93$cc662ce0$653286a0$@in>
	<1610363301.2651115.1526610116510@mail.yahoo.com>
	<000901d3ee5e$aab1ec80$0015c580$@in>
MIME-Version: 1.0
X-Mailer: WebService/1.1.11871 YahooMailAndroidMobile YMobile/1.0
	(com.yahoo.mobile.client.android.mail/5.24.8; Android/6.0;
	MPB24.65-34-3; titan_umtsds; motorola; XT1068; 4.69; 1184x720; )
Subject: Re: Enabling the recipe from menuconfig
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: "kumar.ugesh003@yahoo.com" <kumar.ugesh003@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 18 May 2018 05:45:08 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_2762559_145616005.1526622299298"

------=_Part_2762559_145616005.1526622299298
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

The similar kind is required for my custom layer. So that I could enable th=
e receipt from the menu config
  On Fri, 18 May 2018 at 9:44 a.m., chandrasekhar<chandrasekhar@evolute.in=
> wrote:   #yiv1946153965 #yiv1946153965 -- _filtered #yiv1946153965 {font-=
family:Helvetica;panose-1:2 11 6 4 2 2 2 2 2 4;} _filtered #yiv1946153965 {=
font-family:Helvetica;panose-1:2 11 6 4 2 2 2 2 2 4;} _filtered #yiv1946153=
965 {font-family:Calibri;panose-1:2 15 5 2 2 2 4 3 2 4;} _filtered #yiv1946=
153965 {font-family:Tahoma;panose-1:2 11 6 4 3 5 4 4 2 4;} _filtered #yiv19=
46153965 {font-family:New;panose-1:0 0 0 0 0 0 0 0 0 0;}#yiv1946153965 #yiv=
1946153965 p.yiv1946153965MsoNormal, #yiv1946153965 li.yiv1946153965MsoNorm=
al, #yiv1946153965 div.yiv1946153965MsoNormal {margin:0in;margin-bottom:.00=
01pt;font-size:12.0pt;font-family:New;}#yiv1946153965 a:link, #yiv194615396=
5 span.yiv1946153965MsoHyperlink {color:blue;text-decoration:underline;}#yi=
v1946153965 a:visited, #yiv1946153965 span.yiv1946153965MsoHyperlinkFollowe=
d {color:purple;text-decoration:underline;}#yiv1946153965 p.yiv1946153965ms=
onormal, #yiv1946153965 li.yiv1946153965msonormal, #yiv1946153965 div.yiv19=
46153965msonormal {margin-right:0in;margin-left:0in;font-size:12.0pt;font-f=
amily:New;}#yiv1946153965 p.yiv1946153965msochpdefault, #yiv1946153965 li.y=
iv1946153965msochpdefault, #yiv1946153965 div.yiv1946153965msochpdefault {m=
argin-right:0in;margin-left:0in;font-size:12.0pt;font-family:New;}#yiv19461=
53965 span.yiv1946153965msohyperlink {}#yiv1946153965 span.yiv1946153965mso=
hyperlinkfollowed {}#yiv1946153965 span.yiv1946153965emailstyle17 {}#yiv194=
6153965 p.yiv1946153965msonormal1, #yiv1946153965 li.yiv1946153965msonormal=
1, #yiv1946153965 div.yiv1946153965msonormal1 {margin:0in;margin-bottom:.00=
01pt;font-size:12.0pt;}#yiv1946153965 span.yiv1946153965msohyperlink1 {colo=
r:blue;text-decoration:underline;}#yiv1946153965 span.yiv1946153965msohyper=
linkfollowed1 {color:purple;text-decoration:underline;}#yiv1946153965 span.=
yiv1946153965emailstyle171 {color:#1F497D;}#yiv1946153965 p.yiv1946153965ms=
ochpdefault1, #yiv1946153965 li.yiv1946153965msochpdefault1, #yiv1946153965=
 div.yiv1946153965msochpdefault1 {margin-right:0in;margin-left:0in;font-siz=
e:10.0pt;font-family:New;}#yiv1946153965 span.yiv1946153965EmailStyle27 {co=
lor:#1F497D;}#yiv1946153965 .yiv1946153965MsoChpDefault {font-size:10.0pt;}=
 _filtered #yiv1946153965 {margin:1.0in 1.0in 1.0in 1.0in;}#yiv1946153965 d=
iv.yiv1946153965Section1 {}#yiv1946153965=20
you want to see in kernel menuconfig??
=20
 =C2=A0
=20
From:yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] OnBehalf Of Ugesh Reddy
Sent: Friday, May 18, 2018 7:52 AM
To: 'Yocto-mailing-list'; chandrasekhar
Subject: Re: [yocto] Enabling the recipe from menuconfig
=20
 =C2=A0
=20
Hi,
=20
Thanksfor the response,
=20
 =C2=A0
=20
=C2=A0Thiswill add the recipe as a part of image but I want=C2=A0to build =
and add therecipe when it has been selected from the menuconfig.
=20
Howto make visible=C2=A0the recipe in menuconfig?
=20
On Thursday, 17 May, 2018, 9:32:15 AM IST, chandrasekhar<chandrasekhar@evo=
lute.in> wrote:=20
=20
 =C2=A0
=20
 =C2=A0
=20
Hi=20
=20
You can use=20
=20
IMAGE_INSTALL +=3D "Package Name/Recipes name"
=20
=C2=A0
=20
Regards,
=20
Chandrasekhar
=20
=C2=A0
=20
From:yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] OnBehalf Of Ugesh Reddy
Sent: Wednesday, May 16, 2018 9:57 PM
To: Yocto-mailing-list
Subject: [yocto] Enabling the recipe from menuconfig
=20
=C2=A0
=20
Hello Team,
=20
=C2=A0
=20
=C2=A0I have a list of recipes in my custom layer. The recipesin this=C2=
=A0layer shall be enabled/selected through the menuconfig, once it isenabl=
ed then it shall be the part of image. is it possible to achieve=C2=A0it ?d=
o we have any references?=C2=A0
=20
=C2=A0
=20
Regards,
=20
Ugesh
  =20

------=_Part_2762559_145616005.1526622299298
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

The similar kind is required for my custom layer. So that I could enable the receipt from the menu config<br id="yMail_cursorElementTracker_1526622068143"><br><div id="ymail_android_signature"><a href="https://overview.mail.yahoo.com/mobile/?.src=Android"></a></div> <br> <blockquote style="margin: 0 0 20px 0;"> <div style="font-family:Roboto, sans-serif; color:#6D00F6;"> <div>On Fri, 18 May 2018 at 9:44 a.m., chandrasekhar</div><div>&lt;chandrasekhar@evolute.in&gt; wrote:</div> </div> <div style="padding: 10px 0 0 20px; margin: 10px 0 0 0; border-left: 1px solid #6D00F6;"> <div id="yiv1946153965"><style>
#yiv1946153965 #yiv1946153965 --
  
 _filtered #yiv1946153965 {font-family:Helvetica;panose-1:2 11 6 4 2 2 2 2 2 4;}
 _filtered #yiv1946153965 {font-family:Helvetica;panose-1:2 11 6 4 2 2 2 2 2 4;}
 _filtered #yiv1946153965 {font-family:Calibri;panose-1:2 15 5 2 2 2 4 3 2 4;}
 _filtered #yiv1946153965 {font-family:Tahoma;panose-1:2 11 6 4 3 5 4 4 2 4;}
 _filtered #yiv1946153965 {font-family:New;panose-1:0 0 0 0 0 0 0 0 0 0;}
#yiv1946153965  
#yiv1946153965 p.yiv1946153965MsoNormal, #yiv1946153965 li.yiv1946153965MsoNormal, #yiv1946153965 div.yiv1946153965MsoNormal
	{margin:0in;margin-bottom:.0001pt;font-size:12.0pt;font-family:New;}
#yiv1946153965 a:link, #yiv1946153965 span.yiv1946153965MsoHyperlink
	{color:blue;text-decoration:underline;}
#yiv1946153965 a:visited, #yiv1946153965 span.yiv1946153965MsoHyperlinkFollowed
	{color:purple;text-decoration:underline;}
#yiv1946153965 p.yiv1946153965msonormal, #yiv1946153965 li.yiv1946153965msonormal, #yiv1946153965 div.yiv1946153965msonormal
	{margin-right:0in;margin-left:0in;font-size:12.0pt;font-family:New;}
#yiv1946153965 p.yiv1946153965msochpdefault, #yiv1946153965 li.yiv1946153965msochpdefault, #yiv1946153965 div.yiv1946153965msochpdefault
	{margin-right:0in;margin-left:0in;font-size:12.0pt;font-family:New;}
#yiv1946153965 span.yiv1946153965msohyperlink
	{}
#yiv1946153965 span.yiv1946153965msohyperlinkfollowed
	{}
#yiv1946153965 span.yiv1946153965emailstyle17
	{}
#yiv1946153965 p.yiv1946153965msonormal1, #yiv1946153965 li.yiv1946153965msonormal1, #yiv1946153965 div.yiv1946153965msonormal1
	{margin:0in;margin-bottom:.0001pt;font-size:12.0pt;}
#yiv1946153965 span.yiv1946153965msohyperlink1
	{color:blue;text-decoration:underline;}
#yiv1946153965 span.yiv1946153965msohyperlinkfollowed1
	{color:purple;text-decoration:underline;}
#yiv1946153965 span.yiv1946153965emailstyle171
	{color:#1F497D;}
#yiv1946153965 p.yiv1946153965msochpdefault1, #yiv1946153965 li.yiv1946153965msochpdefault1, #yiv1946153965 div.yiv1946153965msochpdefault1
	{margin-right:0in;margin-left:0in;font-size:10.0pt;font-family:New;}
#yiv1946153965 span.yiv1946153965EmailStyle27
	{color:#1F497D;}
#yiv1946153965 .yiv1946153965MsoChpDefault
	{font-size:10.0pt;}
 _filtered #yiv1946153965 {margin:1.0in 1.0in 1.0in 1.0in;}
#yiv1946153965 div.yiv1946153965Section1
	{}
#yiv1946153965 
</style><div>

<div class="yiv1946153965Section1">

<p class="yiv1946153965MsoNormal"><span style="font-size:11.0pt;">you want to see in kernel menuconfig??</span></p> 

<p class="yiv1946153965MsoNormal"><span style="font-size:11.0pt;"> &nbsp;</span></p> 

<div class="yiv1946153965yqt2760772024 yQTDBase" id="yiv1946153965yqt05922"><div>

<div style="border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in 0in 0in;">

<p class="yiv1946153965MsoNormal"><b><span style="font-size:10.0pt;">From:</span></b><span style="font-size:10.0pt;">
yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] <b>On
Behalf Of </b>Ugesh Reddy<br clear="none">
<b>Sent:</b> Friday, May 18, 2018 7:52 AM<br clear="none">
<b>To:</b> 'Yocto-mailing-list'; chandrasekhar<br clear="none">
<b>Subject:</b> Re: [yocto] Enabling the recipe from menuconfig</span></p> 

</div>

</div>

<p class="yiv1946153965MsoNormal"> &nbsp;</p> 

<div>

<div>

<p class="yiv1946153965MsoNormal"><span style="font-size:10.0pt;">Hi,</span><span style=""></span></p> 

</div>

<div>

<p class="yiv1946153965MsoNormal"><span style="font-size:10.0pt;">Thanks
for the response,</span><span style=""></span></p> 

</div>

<div>

<p class="yiv1946153965MsoNormal"><span style=""> &nbsp;</span></p> 

</div>

<div>

<p class="yiv1946153965MsoNormal"><span style="font-size:10.0pt;">&nbsp;This
will add the recipe as a part of image but I want&nbsp;to build and add the
recipe when it has been selected from the menuconfig.</span><span style=""></span></p> 

</div>

<div>

<p class="yiv1946153965MsoNormal"><span style="font-size:10.0pt;">How
to make visible&nbsp;the recipe in menuconfig?</span><span style=""></span></p> 

</div>

<div id="yiv1946153965yahoo_quoted_7582411903">

<div>

<div>

<p class="yiv1946153965MsoNormal"><span style="font-size:10.0pt;">On Thursday, 17 May, 2018, 9:32:15 AM IST, chandrasekhar
&lt;chandrasekhar@evolute.in&gt; wrote: </span></p> 

</div>

<div>

<p class="yiv1946153965MsoNormal"><span style="font-size:10.0pt;"> &nbsp;</span></p> 

</div>

<div>

<p class="yiv1946153965MsoNormal"><span style="font-size:10.0pt;"> &nbsp;</span></p> 

</div>

<div>

<div id="yiv1946153965">

<div>

<div>

<p class="yiv1946153965msonormal"><span style="font-size:11.0pt;">Hi </span><span style="font-size:10.0pt;"></span></p> 

<p class="yiv1946153965msonormal"><span style="font-size:11.0pt;">You can use </span><span style="font-size:10.0pt;"></span></p> 

<p class="yiv1946153965msonormal"><span style="font-size:11.0pt;">IMAGE_INSTALL += "Package Name/Recipes name"</span><span style="font-size:10.0pt;"></span></p> 

<p class="yiv1946153965msonormal"><span style="font-size:11.0pt;">&nbsp;</span><span style="font-size:10.0pt;"></span></p> 

<p class="yiv1946153965msonormal"><span style="font-size:11.0pt;">Regards,</span><span style="font-size:10.0pt;"></span></p> 

<p class="yiv1946153965msonormal"><span style="font-size:11.0pt;">Chandrasekhar</span><span style="font-size:10.0pt;"></span></p> 

<p class="yiv1946153965msonormal"><span style="font-size:11.0pt;">&nbsp;</span><span style="font-size:10.0pt;"></span></p> 

<div id="yiv1946153965yqt99373">

<div>

<div style="border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in 0in 0in;">

<p class="yiv1946153965msonormal"><b><span style="font-size:10.0pt;">From:</span></b><span style="font-size:10.0pt;">
yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] <b>On
Behalf Of </b>Ugesh Reddy<br clear="none">
<b>Sent:</b> Wednesday, May 16, 2018 9:57 PM<br clear="none">
<b>To:</b> Yocto-mailing-list<br clear="none">
<b>Subject:</b> [yocto] Enabling the recipe from menuconfig</span></p> 

</div>

</div>

<p class="yiv1946153965msonormal"><span style="font-size:10.0pt;">&nbsp;</span></p> 

<div>

<div>

<p class="yiv1946153965msonormal"><span style="font-size:10.0pt;">Hello Team,</span></p> 

</div>

<div>

<p class="yiv1946153965msonormal"><span style="font-size:10.0pt;">&nbsp;</span></p> 

</div>

<div>

<p class="yiv1946153965msonormal"><span style="font-size:10.0pt;">&nbsp;I have a list of recipes in my custom layer. The recipes
in this&nbsp;layer shall be enabled/selected through the menuconfig, once it is
enabled then it shall be the part of image. is it possible to achieve&nbsp;it ?
do we have any references?&nbsp;</span></p> 

</div>

<div>

<p class="yiv1946153965msonormal"><span style="font-size:10.0pt;">&nbsp;</span></p> 

</div>

<div>

<p class="yiv1946153965msonormal"><span style="font-size:10.0pt;">Regards,</span></p> 

</div>

<div>

<p class="yiv1946153965msonormal"><span style="font-size:10.0pt;">Ugesh</span></p> 

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div></div>

</div>

</div></div> </div> </blockquote>

------=_Part_2762559_145616005.1526622299298--

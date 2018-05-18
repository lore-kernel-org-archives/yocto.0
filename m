Return-Path: <kumar.ugesh003@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25846E009E2; Fri, 18 May 2018 00:22:30 -0700 (PDT)
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
	*      [106.10.241.209 listed in list.dnswl.org]
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
Received: from sonic308-19.consmr.mail.sg3.yahoo.com
	(sonic308-19.consmr.mail.sg3.yahoo.com [106.10.241.209])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBE13E009B9
	for <yocto@yoctoproject.org>; Fri, 18 May 2018 00:22:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1526628146; bh=ts4PcYkUAXLzJwZ/iNv3Zw2zz3xKmFHQ2PD0dorD2eg=;
	h=Date:From:Reply-To:To:Cc:In-Reply-To:References:Subject:From:Subject;
	b=hmXWS9YXjizqO9m5Yozb/5o2Yp17hijPNMG7AJ2FUs2v9bPI7wwEwBixhn8hfM6C0Hogp/VPsyh15josNrMtyaAjRcrmhsLQRclV+nZUIlXoHiNLIVTf+6ZMb7IIposAHaq7PO+vU/m10/k5FEl8BvtJrF/jDHUcC7mNCWL8T5+6nyWOcxpg9nqjOAzDroyxknNpl4iJ5LRd5iRn4i0KfoBdU1WMceHTsTca1xy+0K/WZvEibRC8yykqpjCNRkJkXJiJI0ElG/o7T5yotpt5TkC1mV3L6gtsF1K8WiKGQKk6Nv/jxozRF1TNDrEjDdyZ3E3ixoaa1dxTFHYVIIo9mw==
X-YMail-OSG: 5ahgUREVM1lLtrLuI.tE3QN4bcOJpguuv6ECvk3tQ78gBpFWxkE4SEMY.UtGhx3
	c_KQUMhLQbnpbHa7ID2Gh4Gy9.vOzBWAiCULgx_.BlW3KIaGcMRQZrbfJZt61PR.pFZ4PO2QZfRW
	nm2MBb61BzeYFyyFRFqc6aPBOMWEYDanQP_iKsGPqZ3FJj1SPdBVIvK_VTD1en__22DLWgV3C_UD
	U2Eqy_zT2v5D4mgj2YOcYnOxBFgZ9mudaYARgbejuTC.QrtDzTlb4zwDxfnIjLvwEx3ol7D.Z.VJ
	xQX.2qQrYDCQ6uFsssTXjHfL5YH6E559mZCXJ1lqFEeBVjpVlQ8uCHJQJSDLg04eK6vyK6zRbtR5
	GFp1srrElJLX0qs6RyA1T5Qe1N5ZxA21QyQYN9ota662AINwQEY8hKzjpiZyROfx5rebWFVYGek5
	PA_73WgPImziSmb3IQLuSmuMXqB.mh7GwJyy5thkXacBTPeLzrw6wsjFyeeY35t5O1VWQGvrZiyX
	BmGZ..5h0wtkmPcT3qoiRv5JCBVwafx9dgLTbsKHabyoylEBI2dkH7Z9N3eCo5j8eiCjA4D1FOSz
	9GmgAEi4WJNc_6wDY40F_7lReW3RMN59q5blmAoTUTkHu3UP5rezHdSbkNvDKzZiUZx2J3ud2JL8
	DKnEP5xELESTzhbo-
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic308.consmr.mail.sg3.yahoo.com with HTTP;
	Fri, 18 May 2018 07:22:26 +0000
Date: Fri, 18 May 2018 07:22:24 +0000 (UTC)
From: Ugesh Reddy <kumar.ugesh003@yahoo.com>
To: "gizero@gmail.com" <gizero@gmail.com>, 
	chandrasekhar <chandrasekhar@evolute.in>
Message-ID: <1706775371.2737239.1526628144518@mail.yahoo.com>
In-Reply-To: <CAC+thW0QMu8UHtz2J_MpjabG_YV1K6++aqgOgZ5y6X4PcZjYnw@mail.gmail.com>
References: <1621704137.2131896.1526488025606.ref@mail.yahoo.com>
	<1621704137.2131896.1526488025606@mail.yahoo.com>
	<000c01d3ed93$cc662ce0$653286a0$@in>
	<1610363301.2651115.1526610116510@mail.yahoo.com>
	<000901d3ee5e$aab1ec80$0015c580$@in>
	<CAC+thW0QMu8UHtz2J_MpjabG_YV1K6++aqgOgZ5y6X4PcZjYnw@mail.gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.11871 YahooMailAndroidMobile YMobile/1.0
	(com.yahoo.mobile.client.android.mail/5.24.8; Android/6.0;
	MPB24.65-34-3; titan_umtsds; motorola; XT1068; 4.69; 1184x720; )
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 18 May 2018 07:22:30 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_2737238_309018884.1526628144516"

------=_Part_2737238_309018884.1526628144516
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,=C2=A0I want to create such a menuconfig like kernal. So it shall displa=
y my recipe in menuconfig
  On Fri, 18 May 2018 at 11:55 a.m., Andrea Galbusera<gizero@gmail.com> wr=
ote:   On Fri, May 18, 2018 at 6:14 AM, chandrasekhar <chandrasekhar@evolut=
e.in> wrote:
> you want to see in kernel menuconfig??
>
>
>
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.=
org]
> On Behalf Of Ugesh Reddy
> Sent: Friday, May 18, 2018 7:52 AM
> To: 'Yocto-mailing-list'; chandrasekhar
> Subject: Re: [yocto] Enabling the recipe from menuconfig
>
>
>
> Hi,
>
> Thanks for the response,
>
>
>
>=C2=A0 This will add the recipe as a part of image but I want to build an=
d add the
> recipe when it has been selected from the menuconfig.
>
> How to make visible the recipe in menuconfig?

Unlike other distribution build systems, Yocto/OE don't provide any
menuconfig based configuration interface for selecting which package
to include in images you build. There is indeed support for accessing
menuconfig interfaces provided by specific recipes like the linux
kernel. If you need a high level recipe selection tool, your best bet
is probably to look at Toaster.

>
> On Thursday, 17 May, 2018, 9:32:15 AM IST, chandrasekhar
> <chandrasekhar@evolute.in> wrote:
>
>
>
>
>
> Hi
>
> You can use
>
> IMAGE_INSTALL +=3D "Package Name/Recipes name"
>
>
>
> Regards,
>
> Chandrasekhar
>
>
>
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.=
org]
> On Behalf Of Ugesh Reddy
> Sent: Wednesday, May 16, 2018 9:57 PM
> To: Yocto-mailing-list
> Subject: [yocto] Enabling the recipe from menuconfig
>
>
>
> Hello Team,
>
>
>
>=C2=A0 I have a list of recipes in my custom layer. The recipes in this l=
ayer
> shall be enabled/selected through the menuconfig, once it is enabled the=
n it
> shall be the part of image. is it possible to achieve it ? do we have an=
y
> references?
>
>
>
> Regards,
>
> Ugesh
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
  

------=_Part_2737238_309018884.1526628144516
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,<div id=3D"yMail_cursorElementTracker_1526628026195">&nbsp;I want to cre=
ate such a menuconfig like kernal. So it shall display my recipe in menucon=
fig<br id=3D"yMail_cursorElementTracker_1526628007462"><br><div id=3D"ymail=
_android_signature"><a href=3D"https://overview.mail.yahoo.com/mobile/?.src=
=
=3DAndroid"></a></div> <br> <blockquote style=3D"margin: 0 0 20px 0;"> <di=
v style=3D"font-family:Roboto, sans-serif; color:#6D00F6;"> <div>On Fri, 18=
 May 2018 at 11:55 a.m., Andrea Galbusera</div><div>&lt;gizero@gmail.com&gt=
; wrote:</div> </div> <div style=3D"padding: 10px 0 0 20px; margin: 10px 0 =
0 0; border-left: 1px solid #6D00F6;"> On Fri, May 18, 2018 at 6:14 AM, cha=
ndrasekhar &lt;<a shape=3D"rect" ymailto=3D"mailto:chandrasekhar@evolute.in=
" href=3D"mailto:chandrasekhar@evolute.in">chandrasekhar@evolute.in</a>&gt;=
 wrote:<br clear=3D"none">&gt; you want to see in kernel menuconfig??<br cl=
ear=3D"none">&gt;<br clear=3D"none">&gt;<br clear=3D"none">&gt;<br clear=3D=
"none">&gt; From: <a shape=3D"rect" ymailto=3D"mailto:yocto-bounces@yoctopr=
oject.org" href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoc=
toproject.org</a> [mailto:<a shape=3D"rect" ymailto=3D"mailto:yocto-bounces=
@yoctoproject.org" href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bou=
nces@yoctoproject.org</a>]<br clear=3D"none">&gt; On Behalf Of Ugesh Reddy<=
br clear=3D"none">&gt; Sent: Friday, May 18, 2018 7:52 AM<br clear=3D"none"=
>&gt; To: 'Yocto-mailing-list'; chandrasekhar<br clear=3D"none">&gt; Subjec=
t: Re: [yocto] Enabling the recipe from menuconfig<br clear=3D"none">&gt;<b=
r clear=3D"none">&gt;<br clear=3D"none">&gt;<br clear=3D"none">&gt; Hi,<br =
clear=3D"none">&gt;<br clear=3D"none">&gt; Thanks for the response,<br clea=
r=3D"none">&gt;<br clear=3D"none">&gt;<br clear=3D"none">&gt;<br clear=3D"n=
one">&gt;&nbsp; This will add the recipe as a part of image but I want to b=
uild and add the<br clear=3D"none">&gt; recipe when it has been selected fr=
om the menuconfig.<br clear=3D"none">&gt;<br clear=3D"none">&gt; How to mak=
e visible the recipe in menuconfig?<br clear=3D"none"><br clear=3D"none">Un=
like other distribution build systems, Yocto/OE don't provide any<br clear=
=3D"none">menuconfig based configuration interface for selecting which pac=
kage<br clear=3D"none">to include in images you build. There is indeed supp=
ort for accessing<br clear=3D"none">menuconfig interfaces provided by speci=
fic recipes like the linux<br clear=3D"none">kernel. If you need a high lev=
el recipe selection tool, your best bet<br clear=3D"none">is probably to lo=
ok at Toaster.<div class=3D"yqt3373937361 yQTDBase" id=3D"yqtfd06407"><br c=
lear=3D"none"><br clear=3D"none">&gt;<br clear=3D"none">&gt; On Thursday, 1=
7 May, 2018, 9:32:15 AM IST, chandrasekhar<br clear=3D"none">&gt; &lt;<a sh=
ape=3D"rect" ymailto=3D"mailto:chandrasekhar@evolute.in" href=3D"mailto:cha=
ndrasekhar@evolute.in">chandrasekhar@evolute.in</a>&gt; wrote:<br clear=3D"=
none">&gt;<br clear=3D"none">&gt;<br clear=3D"none">&gt;<br clear=3D"none">=
&gt;<br clear=3D"none">&gt;<br clear=3D"none">&gt; Hi<br clear=3D"none">&gt=
;<br clear=3D"none">&gt; You can use<br clear=3D"none">&gt;<br clear=3D"non=
e">&gt; IMAGE_INSTALL +=3D "Package Name/Recipes name"<br clear=3D"none">&g=
t;<br clear=3D"none">&gt;<br clear=3D"none">&gt;<br clear=3D"none">&gt; Reg=
ards,<br clear=3D"none">&gt;<br clear=3D"none">&gt; Chandrasekhar<br clear=
=3D"none">&gt;<br clear=3D"none">&gt;<br clear=3D"none">&gt;<br clear=3D"n=
one">&gt; From: <a shape=3D"rect" ymailto=3D"mailto:yocto-bounces@yoctoproj=
ect.org" href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yocto=
project.org</a> [mailto:<a shape=3D"rect" ymailto=3D"mailto:yocto-bounces@y=
octoproject.org" href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounc=
es@yoctoproject.org</a>]<br clear=3D"none">&gt; On Behalf Of Ugesh Reddy<br=
 clear=3D"none">&gt; Sent: Wednesday, May 16, 2018 9:57 PM<br clear=3D"none=
">&gt; To: Yocto-mailing-list<br clear=3D"none">&gt; Subject: [yocto] Enabl=
ing the recipe from menuconfig<br clear=3D"none">&gt;<br clear=3D"none">&gt=
;<br clear=3D"none">&gt;<br clear=3D"none">&gt; Hello Team,<br clear=3D"non=
e">&gt;<br clear=3D"none">&gt;<br clear=3D"none">&gt;<br clear=3D"none">&gt=
;&nbsp; I have a list of recipes in my custom layer. The recipes in this la=
yer<br clear=3D"none">&gt; shall be enabled/selected through the menuconfig=
, once it is enabled then it<br clear=3D"none">&gt; shall be the part of im=
age. is it possible to achieve it ? do we have any<br clear=3D"none">&gt; r=
eferences?<br clear=3D"none">&gt;<br clear=3D"none">&gt;<br clear=3D"none">=
&gt;<br clear=3D"none">&gt; Regards,<br clear=3D"none">&gt;<br clear=3D"non=
e">&gt; Ugesh</div><br clear=3D"none">&gt;<br clear=3D"none">&gt;<br clear=
=3D"none">&gt; --<br clear=3D"none">&gt; _________________________________=
______________<br clear=3D"none">&gt; yocto mailing list<br clear=3D"none">=
&gt; <a shape=3D"rect" ymailto=3D"mailto:yocto@yoctoproject.org" href=3D"ma=
ilto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br clear=3D"none">&=
gt; <a shape=3D"rect" href=3D"https://lists.yoctoproject.org/listinfo/yocto=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><div c=
lass=3D"yqt3373937361 yQTDBase" id=3D"yqtfd35355"><br clear=3D"none">&gt;<b=
r clear=3D"none"></div> </div> </blockquote></div>

------=_Part_2737238_309018884.1526628144516--

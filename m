Return-Path: <kumar.ugesh003@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61B85E009CA; Thu, 17 May 2018 19:22:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kumar.ugesh003[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [106.10.242.39 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from sonic303-22.consmr.mail.sg3.yahoo.com
	(sonic303-22.consmr.mail.sg3.yahoo.com [106.10.242.39])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9D61E00942
	for <yocto@yoctoproject.org>; Thu, 17 May 2018 19:21:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1526610117; bh=0XWcL9xsdJm0vWUx8vDB7XX9dLGrjW8DC05DJMbm4Lg=;
	h=Date:From:To:In-Reply-To:References:Subject:From:Subject;
	b=Da2GQbBzdYAeSxLHEgyKman053029uTVAvt1TCyjRYMddwm9e8XmsbarpzJ93PTgyuFx1/LXzy4sfHFCkBIsq9vqLZaI/LHUakbCUSawHZmjPRL6P8zp7GRmHED2SYimU7AuSRZrepng8f7G6dBrg0H1rY5IsuCi1MCj6L50GsKtXKbT6e/CZi7tzxeKcLb9teYDyLgci0DxLxnhIVNewhn6iRXMjJvMPN9/Bg4c3FSLaiXGcHkmHpZBMvt85LQd25jnmf6sIUnI+U7jkD692xW74EDhwOSWcA+8yA5REEDhI91/iLdxIhu/OCJtKPNgy3frR0vb/uaTg3ZpOm16Ug==
X-YMail-OSG: BOIDrJ8VM1mfHXrisF8M.qDCV0IpIawRqNNUjrtnS4dopXM311QxUtXHB7G9wwN
	2LVdNTpIrCovVZikqs2S7wtUPNbnRBOF2FQCItOcksuFfukxuRqXXLPXPCT8.Sa4.Kn5wwK0ZKT8
	y1yaoKqSzP9CV2wlxH4N6Q3Zzx1fV93.dp0Op_zqPzoAK9p7.zFWxME7mO1WvOBelrWz11UsPDjD
	pHqMXVsZqkh0y7h8yIMMJ_MAXgmVKZd6V7MHedQeeF.sEEj8VYWTErfnpiu8g8AW_CyufcZ6A6hx
	YKGgnpKK8rptsTW89iftQam9_4P7FMapQRzwTohTiJsttk8rr.p1UCxCw1pYicSMA4yyZ0Urmqri
	90qArWN8GPMzxaOM6f6LOrbNa5oXlKJ7h6stoofqfM6vQivr0vFHuQdFoI0Mm4kJjb.DhQCPBVUQ
	EaTyQfQirqd1GaOZFAly6Zrb.Ya8Jla7b1FaZ8Kcb_5_vmXQsjYhuDH.4u90hDtY_lr29cb73joj
	GyG7uSlvKkcf753ne9X9RJ5xAEAWxke201xYWBQZ8bYg4RaI.20i6GVce2KXLb1aOR4gIKsqpGdn
	ykV58g41nRzyD.4rZETRmCyDAzvrz7BJ4H.Ww1HDZMJw6ROU7M7ilLOvV
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic303.consmr.mail.sg3.yahoo.com with HTTP;
	Fri, 18 May 2018 02:21:57 +0000
Date: Fri, 18 May 2018 02:21:56 +0000 (UTC)
From: Ugesh Reddy <kumar.ugesh003@yahoo.com>
To: 'Yocto-mailing-list' <yocto@yoctoproject.org>, 
	chandrasekhar <chandrasekhar@evolute.in>
Message-ID: <1610363301.2651115.1526610116510@mail.yahoo.com>
In-Reply-To: <000c01d3ed93$cc662ce0$653286a0$@in>
References: <1621704137.2131896.1526488025606.ref@mail.yahoo.com>
	<1621704137.2131896.1526488025606@mail.yahoo.com>
	<000c01d3ed93$cc662ce0$653286a0$@in>
MIME-Version: 1.0
X-Mailer: WebService/1.1.11871 YMailNorrin Mozilla/5.0 (X11;
	Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu
	Chromium/64.0.3282.167 Chrome/64.0.3282.167 Safari/537.36
Subject: Re: Enabling the recipe from menuconfig
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
X-List-Received-Date: Fri, 18 May 2018 02:22:02 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_2651113_2121111703.1526610116504"

------=_Part_2651113_2121111703.1526610116504
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi,Thanks for the response,
=C2=A0This will add the recipe as a part of image but I want=C2=A0to build =
and add the recipe when it has been selected from the menuconfig.How to mak=
e visible=C2=A0the recipe in menuconfig?    On Thursday, 17 May, 2018, 9:32=
:15 AM IST, chandrasekhar <chandrasekhar@evolute.in> wrote: =20
=20
 #yiv3901952822 #yiv3901952822 -- _filtered #yiv3901952822 {font-family:Hel=
vetica;panose-1:2 11 6 4 2 2 2 2 2 4;} _filtered #yiv3901952822 {panose-1:2=
 4 5 3 5 4 6 3 2 4;} _filtered #yiv3901952822 {font-family:Calibri;panose-1=
:2 15 5 2 2 2 4 3 2 4;} _filtered #yiv3901952822 {font-family:Tahoma;panose=
-1:2 11 6 4 3 5 4 4 2 4;}#yiv3901952822 #yiv3901952822 p.yiv3901952822MsoNo=
rmal, #yiv3901952822 li.yiv3901952822MsoNormal, #yiv3901952822 div.yiv39019=
52822MsoNormal {margin:0in;margin-bottom:.0001pt;font-size:12.0pt;font-fami=
ly:New;}#yiv3901952822 a:link, #yiv3901952822 span.yiv3901952822MsoHyperlin=
k {color:blue;text-decoration:underline;}#yiv3901952822 a:visited, #yiv3901=
952822 span.yiv3901952822MsoHyperlinkFollowed {color:purple;text-decoration=
:underline;}#yiv3901952822 span.yiv3901952822EmailStyle17 {color:#1F497D;}#=
yiv3901952822 .yiv3901952822MsoChpDefault {font-size:10.0pt;} _filtered #yi=
v3901952822 {margin:1.0in 1.0in 1.0in 1.0in;}#yiv3901952822 div.yiv39019528=
22Section1 {}#yiv3901952822=20
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
From:yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]=
 OnBehalf Of Ugesh Reddy
Sent: Wednesday, May 16, 2018 9:57 PM
To: Yocto-mailing-list
Subject: [yocto] Enabling the recipe from menuconfig
=20
 =C2=A0
=20
HelloTeam,
=20
 =C2=A0
=20
=C2=A0Ihave a list of recipes in my custom layer. The recipes in this=C2=A0=
layer shallbe enabled/selected through the menuconfig, once it is enabled t=
hen it shall bethe part of image. is it possible to achieve=C2=A0it ? do we=
 have anyreferences?=C2=A0
=20
 =C2=A0
=20
Regards,
=20
Ugesh
  =20

------=_Part_2651113_2121111703.1526610116504
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;"><div></div>
            <div><font size="2">Hi,</font></div><div><font size="2">Thanks for the response,</font></div><div><font size="2"><br></font></div><div><font size="2">&nbsp;This will add the recipe as a part of image but I want&nbsp;to build and add the recipe when it has been selected from the menuconfig.</font></div><div><font size="2">How to make visible&nbsp;the recipe in menuconfig?</font></div>
            
            <div id="yahoo_quoted_7582411903" class="yahoo_quoted">
                <div style="font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;font-size:13px;color:#26282a;">
                    
                    <div>
                        On Thursday, 17 May, 2018, 9:32:15 AM IST, chandrasekhar &lt;chandrasekhar@evolute.in&gt; wrote:
                    </div>
                    <div><br></div>
                    <div><br></div>
                    <div><div id="yiv3901952822"><style>
#yiv3901952822 #yiv3901952822 --
  
 _filtered #yiv3901952822 {font-family:Helvetica;panose-1:2 11 6 4 2 2 2 2 2 4;}
 _filtered #yiv3901952822 {panose-1:2 4 5 3 5 4 6 3 2 4;}
 _filtered #yiv3901952822 {font-family:Calibri;panose-1:2 15 5 2 2 2 4 3 2 4;}
 _filtered #yiv3901952822 {font-family:Tahoma;panose-1:2 11 6 4 3 5 4 4 2 4;}
#yiv3901952822  
#yiv3901952822 p.yiv3901952822MsoNormal, #yiv3901952822 li.yiv3901952822MsoNormal, #yiv3901952822 div.yiv3901952822MsoNormal
	{margin:0in;margin-bottom:.0001pt;font-size:12.0pt;font-family:New;}
#yiv3901952822 a:link, #yiv3901952822 span.yiv3901952822MsoHyperlink
	{color:blue;text-decoration:underline;}
#yiv3901952822 a:visited, #yiv3901952822 span.yiv3901952822MsoHyperlinkFollowed
	{color:purple;text-decoration:underline;}
#yiv3901952822 span.yiv3901952822EmailStyle17
	{color:#1F497D;}
#yiv3901952822 .yiv3901952822MsoChpDefault
	{font-size:10.0pt;}
 _filtered #yiv3901952822 {margin:1.0in 1.0in 1.0in 1.0in;}
#yiv3901952822 div.yiv3901952822Section1
	{}
#yiv3901952822 
</style><div>

<div class="yiv3901952822Section1">

<p class="yiv3901952822MsoNormal"><span style="font-size:11.0pt;">Hi </span></p> 

<p class="yiv3901952822MsoNormal"><span style="font-size:11.0pt;">You can use </span></p> 

<p class="yiv3901952822MsoNormal"><span style="font-size:11.0pt;">IMAGE_INSTALL += "Package Name/Recipes name"</span></p> 

<p class="yiv3901952822MsoNormal"><span style="font-size:11.0pt;"> &nbsp;</span></p> 

<p class="yiv3901952822MsoNormal"><span style="font-size:11.0pt;">Regards,</span></p> 

<p class="yiv3901952822MsoNormal"><span style="font-size:11.0pt;">Chandrasekhar</span></p> 

<p class="yiv3901952822MsoNormal"><span style="font-size:11.0pt;"> &nbsp;</span></p> 

<div class="yiv3901952822yqt1003813865" id="yiv3901952822yqt99373"><div>

<div style="border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in 0in 0in;">

<p class="yiv3901952822MsoNormal"><b><span style="font-size:10.0pt;">From:</span></b><span style="font-size:10.0pt;">
yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] <b>On
Behalf Of </b>Ugesh Reddy<br clear="none">
<b>Sent:</b> Wednesday, May 16, 2018 9:57 PM<br clear="none">
<b>To:</b> Yocto-mailing-list<br clear="none">
<b>Subject:</b> [yocto] Enabling the recipe from menuconfig</span></p> 

</div>

</div>

<p class="yiv3901952822MsoNormal"> &nbsp;</p> 

<div>

<div>

<p class="yiv3901952822MsoNormal"><span style="font-size:10.0pt;">Hello
Team,</span><span style=""></span></p> 

</div>

<div>

<p class="yiv3901952822MsoNormal"><span style=""> &nbsp;</span></p> 

</div>

<div>

<p class="yiv3901952822MsoNormal"><span style="font-size:10.0pt;">&nbsp;I
have a list of recipes in my custom layer. The recipes in this&nbsp;layer shall
be enabled/selected through the menuconfig, once it is enabled then it shall be
the part of image. is it possible to achieve&nbsp;it ? do we have any
references?&nbsp;</span><span style=""></span></p> 

</div>

<div>

<p class="yiv3901952822MsoNormal"><span style=""> &nbsp;</span></p> 

</div>

<div>

<p class="yiv3901952822MsoNormal"><span style="font-size:10.0pt;">Regards,</span><span style=""></span></p> 

</div>

<div>

<p class="yiv3901952822MsoNormal"><span style="font-size:10.0pt;">Ugesh</span><span style=""></span></p> 

</div>

</div></div>

</div>

</div></div></div>
                </div>
            </div></div></body></html>

------=_Part_2651113_2121111703.1526610116504--

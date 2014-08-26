Return-Path: <anoojgopi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1ECFAE0074B; Mon, 25 Aug 2014 17:06:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (anoojgopi[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.169 listed in list.dnswl.org]
Received: from mail-we0-f169.google.com (mail-we0-f169.google.com
	[74.125.82.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8492AE00566
	for <yocto@yoctoproject.org>; Mon, 25 Aug 2014 17:06:44 -0700 (PDT)
Received: by mail-we0-f169.google.com with SMTP id u56so14056823wes.0
	for <yocto@yoctoproject.org>; Mon, 25 Aug 2014 17:06:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=W7i/cNZM3JQoPW13eT8I2VajRj+ToYYOvo/9EqWQKfw=;
	b=xCUVlGDI/cE6hIfyA4QqvY+GdugJ596icAfSFoKe1GxKC6mGPLwAnuzlaolEq7S+zA
	NUIyAH0IJgeZyV/18EaR9fCB6e3RhqY7HBRbftbVslH3/XtjabEN346RH/B9q2NdxOBQ
	hw1aiSLxTGy20XvgvdFDrmvSaEROKQJBQpLKFZ/XGeHqwwgm34gjs4gtFNKdbWkgV8Y6
	c2tx4LG9DOzdNLOVuuekWql5uOdWCwpYdFybGU9W97v4eb/p+U5dBC/AwnfWDJ8VmKm8
	3hmg6IYFfvuihaNp74IIJv0t0DCY6tSWE/XV6sqPFl0Kxs+LCASDhOsnlDkA8fod7DDN
	PL5w==
MIME-Version: 1.0
X-Received: by 10.194.87.102 with SMTP id w6mr25763130wjz.24.1409011603699;
	Mon, 25 Aug 2014 17:06:43 -0700 (PDT)
Received: by 10.194.19.193 with HTTP; Mon, 25 Aug 2014 17:06:43 -0700 (PDT)
In-Reply-To: <CA+gsK-qz-D_rfJD=kWif5=T0uHOyD8it0Hu7tOJqAsSY63n=QQ@mail.gmail.com>
References: <1408933563.20144.YahooMailNeo@web140706.mail.bf1.yahoo.com>
	<CA+gsK-qz-D_rfJD=kWif5=T0uHOyD8it0Hu7tOJqAsSY63n=QQ@mail.gmail.com>
Date: Tue, 26 Aug 2014 02:06:43 +0200
Message-ID: <CALkREYBFS__og8StGTOm9hziTH2469ot48W=9Cwyy6TnzPXz+Q@mail.gmail.com>
From: Anooj Gopi <anoojgopi@gmail.com>
To: Rudolf Streif <rstreif@linuxfoundation.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: best bet for WiFi Yocto experience?
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
X-List-Received-Date: Tue, 26 Aug 2014 00:06:48 -0000
Content-Type: multipart/alternative; boundary=047d7bf198501f7f1205017d144a

--047d7bf198501f7f1205017d144a
Content-Type: text/plain; charset=UTF-8

May be this helps:

http://www.wandboard.org/


On Mon, Aug 25, 2014 at 10:53 PM, Rudolf Streif <rstreif@linuxfoundation.org
> wrote:

> Hi Pete,
>
>
>  Please provide a recommendation for a low cost, out of the box WiFi
>> (802.11n) experience using Yocto.
>>
>> Are you looking for a board that has WiFi on board? The Wandboard (
> http://www.wandboard.org/) or the Cubietruck (
> http://www.cubietruck.com/products/cubietruck-cubieboard3-cortex-a7-dual-core-2gb-ram-8gb-flash-with-wifi-bt-1)
> have that for example.
>
>
>
>>  AFAIK, Raspberry Pi doesn't come with WiFi built in.
>>
>> Correct, but you could use a WiFi/BT USB dongle for a couple of bucks.
>
>
>>  I would like to spend less than $100 but could stretch it.
>>
>> Wandboard and Cubietruck are both less than $100.
>
>
> Cheers,
> :rjs
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--047d7bf198501f7f1205017d144a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">May be this helps: <br><br><a href=3D"http://www.wandboard=
.org/">http://www.wandboard.org/</a><br></div><div class=3D"gmail_extra"><b=
r><br><div class=3D"gmail_quote">On Mon, Aug 25, 2014 at 10:53 PM, Rudolf S=
treif <span dir=3D"ltr">&lt;<a href=3D"mailto:rstreif@linuxfoundation.org" =
target=3D"_blank">rstreif@linuxfoundation.org</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi Pete,<br><div class=3D"g=
mail_extra"><br><br><div class=3D"gmail_quote"><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-c=
olor:rgb(204,204,204);border-left-style:solid;padding-left:1ex">

<div><div style=3D"color:rgb(0,0,0);font-family:HelveticaNeue,&#39;Helvetic=
a Neue&#39;,Helvetica,Arial,&#39;Lucida Grande&#39;,sans-serif;font-size:12=
pt;background-color:rgb(255,255,255)"><div style=3D"color:rgb(0,0,0);font-s=
ize:16px;font-family:HelveticaNeue,&#39;Helvetica Neue&#39;,Helvetica,Arial=
,&#39;Lucida Grande&#39;,sans-serif;font-style:normal;background-color:tran=
sparent">

Please provide a recommendation for a low cost, out of the box WiFi (802.11=
n) experience using Yocto.=C2=A0 <br></div><div style=3D"color:rgb(0,0,0);f=
ont-size:16px;font-family:HelveticaNeue,&#39;Helvetica Neue&#39;,Helvetica,=
Arial,&#39;Lucida Grande&#39;,sans-serif;font-style:normal;background-color=
:transparent">

<br></div></div></div></blockquote><div>Are you looking for a board that ha=
s WiFi on board? The Wandboard (<a href=3D"http://www.wandboard.org/" targe=
t=3D"_blank">http://www.wandboard.org/</a>) or the Cubietruck (<a href=3D"h=
ttp://www.cubietruck.com/products/cubietruck-cubieboard3-cortex-a7-dual-cor=
e-2gb-ram-8gb-flash-with-wifi-bt-1" target=3D"_blank">http://www.cubietruck=
.com/products/cubietruck-cubieboard3-cortex-a7-dual-core-2gb-ram-8gb-flash-=
with-wifi-bt-1</a>) have that for example.</div>

<div><br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,20=
4,204);border-left-style:solid;padding-left:1ex"><div><div style=3D"color:r=
gb(0,0,0);font-family:HelveticaNeue,&#39;Helvetica Neue&#39;,Helvetica,Aria=
l,&#39;Lucida Grande&#39;,sans-serif;font-size:12pt;background-color:rgb(25=
5,255,255)">

<div style=3D"color:rgb(0,0,0);font-size:16px;font-family:HelveticaNeue,&#3=
9;Helvetica Neue&#39;,Helvetica,Arial,&#39;Lucida Grande&#39;,sans-serif;fo=
nt-style:normal;background-color:transparent"></div><div style=3D"color:rgb=
(0,0,0);font-size:16px;font-family:HelveticaNeue,&#39;Helvetica Neue&#39;,H=
elvetica,Arial,&#39;Lucida Grande&#39;,sans-serif;font-style:normal;backgro=
und-color:transparent">

AFAIK, Raspberry Pi doesn&#39;t come with WiFi built in.=C2=A0 <br></div><d=
iv style=3D"color:rgb(0,0,0);font-size:16px;font-family:HelveticaNeue,&#39;=
Helvetica Neue&#39;,Helvetica,Arial,&#39;Lucida Grande&#39;,sans-serif;font=
-style:normal;background-color:transparent">

<br></div></div></div></blockquote><div>Correct, but you could use a WiFi/B=
T USB dongle for a couple of bucks.</div><div>=C2=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;bo=
rder-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">

<div><div style=3D"color:rgb(0,0,0);font-family:HelveticaNeue,&#39;Helvetic=
a Neue&#39;,Helvetica,Arial,&#39;Lucida Grande&#39;,sans-serif;font-size:12=
pt;background-color:rgb(255,255,255)"><div style=3D"color:rgb(0,0,0);font-s=
ize:16px;font-family:HelveticaNeue,&#39;Helvetica Neue&#39;,Helvetica,Arial=
,&#39;Lucida Grande&#39;,sans-serif;font-style:normal;background-color:tran=
sparent">

</div><div style=3D"color:rgb(0,0,0);font-size:16px;font-family:HelveticaNe=
ue,&#39;Helvetica Neue&#39;,Helvetica,Arial,&#39;Lucida Grande&#39;,sans-se=
rif;font-style:normal;background-color:transparent">I would like to spend l=
ess than $100 but could stretch it.=C2=A0 <br>

</div><div style=3D"color:rgb(0,0,0);font-size:16px;font-family:HelveticaNe=
ue,&#39;Helvetica Neue&#39;,Helvetica,Arial,&#39;Lucida Grande&#39;,sans-se=
rif;font-style:normal;background-color:transparent"><br></div></div></div>

</blockquote><div>Wandboard and Cubietruck are both less than $100.</div><d=
iv><br></div><div></div></div><div dir=3D"ltr"><div><font face=3D"garamond,=
 serif"><span style=3D"border-collapse:collapse;color:rgb(102,102,102);font=
-family:arial,sans-serif;font-size:13px"><br>

</span></font></div><div><font face=3D"garamond, serif"><span style=3D"bord=
er-collapse:collapse;color:rgb(102,102,102);font-family:arial,sans-serif;fo=
nt-size:13px">Cheers,</span></font></div><div><font face=3D"garamond, serif=
"><span style=3D"border-collapse:collapse;color:rgb(102,102,102);font-famil=
y:arial,sans-serif;font-size:13px">:rjs</span></font></div>

</div>
</div></div>
<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--047d7bf198501f7f1205017d144a--

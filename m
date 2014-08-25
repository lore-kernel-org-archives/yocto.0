Return-Path: <rstreif@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4782E006B5; Mon, 25 Aug 2014 13:53:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.172 listed in list.dnswl.org]
Received: from mail-ig0-f172.google.com (mail-ig0-f172.google.com
	[209.85.213.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 735E3E004FF
	for <yocto@yoctoproject.org>; Mon, 25 Aug 2014 13:53:02 -0700 (PDT)
Received: by mail-ig0-f172.google.com with SMTP id h15so3454729igd.17
	for <yocto@yoctoproject.org>; Mon, 25 Aug 2014 13:53:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=DfgsFKJy66zXY7cpRDNyitax8x/+0iv420tMz0cGVkQ=;
	b=e1HgCtLZk+GWrw4MaLhmWDTcf8OE097bBsgIQgfz0zsyV8X89BPfB9ebInJ4rfrGeu
	dO403RPy2P5KXmude5S7nZd1LnFA5jyhveBvcE2vGei5HnrhpDuWO5hSGIPYmLsfdTBi
	S8Fl+Dn9nGV6KCcfwqs7JDNd6irTLmL4ntHAc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=DfgsFKJy66zXY7cpRDNyitax8x/+0iv420tMz0cGVkQ=;
	b=HpGSsP768xfP3D0bMDRsRyFblJ01MY0cTsYoox3iyAc7bqM7HSCholr89bq3NDuUvX
	Ivu3gDYhJGb23MTa05SSlZO4jn7jP0PNtRQrOOoy7nYH9mc1GnIql3BS4YO914ZZOeaj
	OVTfhVNmOb4eYaRDG11t/qcrR9ogeM770h37YodCHlMV92ClO2Sw7pKKRGdf8czg/2CW
	70tWp9lEi5+V122iLHkVp6l+DoR2mUtWa8CW73VY6jd8qfo6WbzviN7It7QfCJuRMsUX
	6vrScYF1IG1AgiKB2ruPxd5eYLWAa+vTAv67rHwaVFV1142Wfqa7p4RVeuLyMlpsa6ZT
	Sj7g==
X-Gm-Message-State: ALoCoQkiukVvqyVQMTNApzLGJ+FPSM79LwYqkJfkbcG1+yFaQVB60bVviK9suqxSj5RY7kzttOE2
MIME-Version: 1.0
X-Received: by 10.50.41.104 with SMTP id e8mr17699789igl.35.1408999981310;
	Mon, 25 Aug 2014 13:53:01 -0700 (PDT)
Received: by 10.107.149.73 with HTTP; Mon, 25 Aug 2014 13:53:01 -0700 (PDT)
In-Reply-To: <1408933563.20144.YahooMailNeo@web140706.mail.bf1.yahoo.com>
References: <1408933563.20144.YahooMailNeo@web140706.mail.bf1.yahoo.com>
Date: Mon, 25 Aug 2014 13:53:01 -0700
Message-ID: <CA+gsK-qz-D_rfJD=kWif5=T0uHOyD8it0Hu7tOJqAsSY63n=QQ@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Peter Tornel <petertornel@yahoo.com>
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
X-List-Received-Date: Mon, 25 Aug 2014 20:53:11 -0000
Content-Type: multipart/alternative; boundary=089e01161a265ffb7805017a5fd6

--089e01161a265ffb7805017a5fd6
Content-Type: text/plain; charset=UTF-8

Hi Pete,


Please provide a recommendation for a low cost, out of the box WiFi
> (802.11n) experience using Yocto.
>
> Are you looking for a board that has WiFi on board? The Wandboard (
http://www.wandboard.org/) or the Cubietruck (
http://www.cubietruck.com/products/cubietruck-cubieboard3-cortex-a7-dual-core-2gb-ram-8gb-flash-with-wifi-bt-1)
have that for example.



> AFAIK, Raspberry Pi doesn't come with WiFi built in.
>
> Correct, but you could use a WiFi/BT USB dongle for a couple of bucks.


> I would like to spend less than $100 but could stretch it.
>
> Wandboard and Cubietruck are both less than $100.


Cheers,
:rjs

--089e01161a265ffb7805017a5fd6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Pete,<br><div class=3D"gmail_extra"><br><br><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-l=
eft-style:solid;padding-left:1ex">
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
s WiFi on board? The Wandboard (<a href=3D"http://www.wandboard.org/">http:=
//www.wandboard.org/</a>) or the Cubietruck (<a href=3D"http://www.cubietru=
ck.com/products/cubietruck-cubieboard3-cortex-a7-dual-core-2gb-ram-8gb-flas=
h-with-wifi-bt-1">http://www.cubietruck.com/products/cubietruck-cubieboard3=
-cortex-a7-dual-core-2gb-ram-8gb-flash-with-wifi-bt-1</a>) have that for ex=
ample.</div>
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

--089e01161a265ffb7805017a5fd6--

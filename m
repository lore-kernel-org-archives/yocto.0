Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91F30E008DC; Mon, 26 Jan 2015 23:40:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wi0-f177.google.com (mail-wi0-f177.google.com
	[209.85.212.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C41E7E0083A
	for <yocto@yoctoproject.org>; Mon, 26 Jan 2015 23:40:07 -0800 (PST)
Received: by mail-wi0-f177.google.com with SMTP id r20so2977621wiv.4
	for <yocto@yoctoproject.org>; Mon, 26 Jan 2015 23:40:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=xFGrsq3vFntUwbdoOdoI1qMNVxrUGl6Uz5s5NKt/IwY=;
	b=hUmzi6qWvZ6yD619XqmFK5yYErgPTlFhkfkzWeOejDlpIyM0tHU/5P/EzvKDXMQIbc
	BshH/M21wMScwS+tCrZTWiEIY4ha1399AYf42yrVrA0FjusCWfKrIGDRfoNlGlxRGLqM
	g2tuNLUDS1owDh98mIqYsHIdmN32uv3+vhCmAx6J7qjeD2EyrDRyUql++ecPr7arL8G4
	7nAECgYJ90Hxx4+GrbALDd4oKd5YNJraBQ0jA4adtcde32w/K5qng2UYLheDikhSj+Ga
	K/iSFPhGnT53GN8c6P/rKPusLMfvD3hHFawhtSc7ACRszqtFbnmgWTP7fOFQ2QBqnk5B
	yonw==
X-Gm-Message-State: ALoCoQm3ntEX39r5S9CxyRD9ZEd8U6OZg+q5Lp/AuIDkkUez3ZGeF85r8FQ2Cmx26yQ1jK8SJtsB
MIME-Version: 1.0
X-Received: by 10.194.243.165 with SMTP id wz5mr23448026wjc.1.1422344406495;
	Mon, 26 Jan 2015 23:40:06 -0800 (PST)
Received: by 10.216.107.132 with HTTP; Mon, 26 Jan 2015 23:40:05 -0800 (PST)
X-Originating-IP: [109.100.140.128]
Received: by 10.216.107.132 with HTTP; Mon, 26 Jan 2015 23:40:05 -0800 (PST)
In-Reply-To: <CAK18fxHW3K+MEejyO4ZCzRu2O+XuOrEVM1hVH3Hz9thJ1tkoEg@mail.gmail.com>
References: <20141218.082256.838554820950505606.petter@gustad.com>
	<20141218091228.GA10057@localhost.localdomain>
	<20141218.164239.741521888848437712.petter@gustad.com>
	<20141218154555.GE10057@localhost.localdomain>
	<CAK18fxHW3K+MEejyO4ZCzRu2O+XuOrEVM1hVH3Hz9thJ1tkoEg@mail.gmail.com>
Date: Tue, 27 Jan 2015 09:40:05 +0200
Message-ID: <CAK18fxGMMNWVGgDnj4nt+jcCwm81yiX6uNEkvyVL2XD4XhSPQQ@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
To: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Image will halt soon after boot
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
X-List-Received-Date: Tue, 27 Jan 2015 07:40:17 -0000
Content-Type: multipart/alternative; boundary=089e0149411c190e2d050d9d5d98

--089e0149411c190e2d050d9d5d98
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Dizzy branch created. Enjoy!
On Jan 26, 2015 12:35 AM, "Andrei Gherzan" <andrei@gherzan.ro> wrote:

> Dizzy branch on its way. Maintainer received the ping.
>
> On Thu, Dec 18, 2014 at 5:45 PM, Maciej Borzecki <
> maciej.borzecki@open-rnd.pl> wrote:
>
>> On 12/18 16:42, Petter Gustad wrote:
>> > From: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
>> > Subject: Re: [yocto] [meta-raspberrypi] Image will halt soon after boo=
t
>> > Date: Thu, 18 Dec 2014 10:12:28 +0100
>> >
>> > > Have you seen the same on 1.7 or current master? I'm using a number =
of
>> > > Yocto built images (sone on 1.7.x, other mostly follow poky +
>> > > meta-raspberrypi master branches) and things seem to work just fine.
>> >
>> > Thanks! I just tried the master branch as given below and it works
>> > fine. I will switch to a more recent release. However, I can't seem to
>> > find a dizzy branch in meta-raspberrypi?
>>
>> It seems that thee is no dizzy branch at all in meta-raspberrypi. You
>> might want to ping the layer's maintainers about that.
>>
>> --
>> Maciej Borz=C4=99cki
>> Senior Software Developer at Open-RnD Sp. z o.o., Poland
>> www.open-rnd.pl
>> mobile: +48 889 117 365, fax: +48 42 657 9079
>>
>>
>> Niniejsza wiadomo=C5=9B=C4=87 wraz z za=C5=82=C4=85cznikami mo=C5=BCe
>> zawiera=C4=87 chronione prawem lub poufne informacje i zosta=C5=82a
>> wys=C5=82ana wy=C5=82=C4=85cznie do wiadomo=C5=9Bci i u=C5=BCytku os=C3=
=B3b, do kt=C3=B3rych
>> zosta=C5=82a zaadresowana. Je=C5=9Bli wiadomo=C5=9B=C4=87 zosta=C5=82a o=
trzymana
>> przypadkowo zabrania si=C4=99 jej kopiowania lub rozsy=C5=82ania do os=
=C3=B3b
>> trzecich. W takim przypadku uprasza si=C4=99 o natychmiastowe
>> zniszczenie wiadomo=C5=9Bci oraz poinformowanie nadawcy o
>> zaistnia=C5=82ej sytuacji za pomoc=C4=85 wiadomo=C5=9Bci zwrotnej.
>> Dzi=C4=99kujemy.
>>
>> This message, including any attachments hereto,
>> may contain privileged or confidential information and is sent
>> solely for the attention and use of the intended addressee(s).
>> If you are not an intended addressee, you may neither use this
>> message nor copy or deliver it to anyone. In such case, you
>> should immediately destroy this message and kindly notify the
>> sender by reply email. Thank you.
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>
>
> --
> *Andrei Gherzan*
>

--089e0149411c190e2d050d9d5d98
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Dizzy branch created. Enjoy! </p>
<div class=3D"gmail_quote">On Jan 26, 2015 12:35 AM, &quot;Andrei Gherzan&q=
uot; &lt;<a href=3D"mailto:andrei@gherzan.ro">andrei@gherzan.ro</a>&gt; wro=
te:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"=
>Dizzy branch on its way. Maintainer received the ping.</div><div class=3D"=
gmail_extra"><br><div class=3D"gmail_quote">On Thu, Dec 18, 2014 at 5:45 PM=
, Maciej Borzecki <span dir=3D"ltr">&lt;<a href=3D"mailto:maciej.borzecki@o=
pen-rnd.pl" target=3D"_blank">maciej.borzecki@open-rnd.pl</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><span>On 12/18 16:42, Petter Gustad =
wrote:<br>
&gt; From: Maciej Borzecki &lt;<a href=3D"mailto:maciej.borzecki@open-rnd.p=
l" target=3D"_blank">maciej.borzecki@open-rnd.pl</a>&gt;<br>
&gt; Subject: Re: [yocto] [meta-raspberrypi] Image will halt soon after boo=
t<br>
&gt; Date: Thu, 18 Dec 2014 10:12:28 +0100<br>
&gt;<br>
&gt; &gt; Have you seen the same on 1.7 or current master? I&#39;m using a =
number of<br>
&gt; &gt; Yocto built images (sone on 1.7.x, other mostly follow poky +<br>
&gt; &gt; meta-raspberrypi master branches) and things seem to work just fi=
ne.<br>
&gt;<br>
&gt; Thanks! I just tried the master branch as given below and it works<br>
&gt; fine. I will switch to a more recent release. However, I can&#39;t see=
m to<br>
&gt; find a dizzy branch in meta-raspberrypi?<br>
<br>
</span>It seems that thee is no dizzy branch at all in meta-raspberrypi. Yo=
u<br>
might want to ping the layer&#39;s maintainers about that.<br>
<span><br>
--<br>
Maciej Borz=C4=99cki<br>
Senior Software Developer at Open-RnD Sp. z o.o., Poland<br>
<a href=3D"http://www.open-rnd.pl" target=3D"_blank">www.open-rnd.pl</a><br=
>
mobile: <a href=3D"tel:%2B48%20889%20117%20365" value=3D"+48889117365" targ=
et=3D"_blank">+48 889 117 365</a>, fax: <a href=3D"tel:%2B48%2042%20657%209=
079" value=3D"+48426579079" target=3D"_blank">+48 42 657 9079</a><br>
<br>
<br>
Niniejsza wiadomo=C5=9B=C4=87 wraz z za=C5=82=C4=85cznikami mo=C5=BCe<br>
zawiera=C4=87 chronione prawem lub poufne informacje i zosta=C5=82a<br>
wys=C5=82ana wy=C5=82=C4=85cznie do wiadomo=C5=9Bci i u=C5=BCytku os=C3=B3b=
, do kt=C3=B3rych<br>
zosta=C5=82a zaadresowana. Je=C5=9Bli wiadomo=C5=9B=C4=87 zosta=C5=82a otrz=
ymana<br>
przypadkowo zabrania si=C4=99 jej kopiowania lub rozsy=C5=82ania do os=C3=
=B3b<br>
trzecich. W takim przypadku uprasza si=C4=99 o natychmiastowe<br>
zniszczenie wiadomo=C5=9Bci oraz poinformowanie nadawcy o<br>
zaistnia=C5=82ej sytuacji za pomoc=C4=85 wiadomo=C5=9Bci zwrotnej.<br>
Dzi=C4=99kujemy.<br>
<br>
This message, including any attachments hereto,<br>
may contain privileged or confidential information and is sent<br>
solely for the attention and use of the intended addressee(s).<br>
If you are not an intended addressee, you may neither use this<br>
message nor copy or deliver it to anyone. In such case, you<br>
should immediately destroy this message and kindly notify the<br>
sender by reply email. Thank you.<br>
</span><div><div>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
<div><div dir=3D"ltr"><div style=3D"text-align:center"></div><div style=3D"=
text-align:center"><div align=3D"left"><b style=3D"font-family:Arial;font-s=
ize:small;color:rgb(51,51,51);text-align:center">Andrei Gherzan</b><br></di=
v></div></div></div>
</div>
</blockquote></div>

--089e0149411c190e2d050d9d5d98--

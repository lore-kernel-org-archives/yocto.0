Return-Path: <bit.coyote@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 107B8E00CAB; Fri, 17 May 2019 13:14:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bit.coyote[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.44 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
	[209.85.221.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E70BE00C7D
	for <yocto@yoctoproject.org>; Fri, 17 May 2019 13:14:16 -0700 (PDT)
Received: by mail-wr1-f44.google.com with SMTP id h4so8368580wre.7
	for <yocto@yoctoproject.org>; Fri, 17 May 2019 13:14:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=IjuM5A7qdp1ji37+vrF9YVKX5P/YijsSeGZICjQTpRw=;
	b=WUmNsYmsdqXf+MT0atdjDGacQ/3/tp20azmZdvP869kvYU36QITcE9iznDwoz/1nhi
	yWzhaLGTsjNa2VvXmVEKiwAkirIpuikk2AfHQnTkyc4OD6kWSs0HMnVuijkG0baGGf5Y
	zGh9KJ+Kkdj6UAXRC+eQ5WvURejdFHc/NPAcgZS7ac3Anc0RS6yMbT0Z0bh9nbyPZ7bV
	68C3nXyqdGQn245P238lM3iBDf858XZMaR5zS6GzSK4PTq4L4qhbM/ce6u8SgVNjpZvQ
	puwDsmPS+5CVgusI3vLVBIfi8OK2uFnLphNkomFwFrRvioZVvAD9nelYWwEXETgNmCCc
	NMXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=IjuM5A7qdp1ji37+vrF9YVKX5P/YijsSeGZICjQTpRw=;
	b=fP4va7QVeuorxhVz/47vGzsO9rck1LPMhlumDD2mxuo+OD+wreoMRaYH9Vo6spa+e2
	UxrHp/r/0qPsGuqfRUwMy1v15F423a5QOkQULO5zdN6WPOcoWriayxZ8Qy/Lmb+3L7Tn
	fGFh2ESB1m4Sy4d2sB5mFUFLZ6K8Hp5SiV7DZVceLxWfhqLt1YPdmfETd7H5iZStBjW9
	urX6fE0euUOJNP4tSKDZiiwM8gtKI5MBxKPyc4cyhVaAwHpvFiV6HCdEXzxxB5glANz2
	fg7Xp8/eroXOtvi92H4iu3csx/d1FlEzoekfKgJUcI4LioSmt46iJud/RJqHG1v6bWuC
	nDNw==
X-Gm-Message-State: APjAAAXHWXRkcUgfwuIPS0sAIGX2YuDk+iIUdQnN52XykucWv858LLEb
	BW0Dt0O0AZpopgT1m1QryYXXjHRidkRhbUKyTzI=
X-Google-Smtp-Source: APXvYqyh45bIC2ALNmnEL6oImELS3njYCk7jie+MYmHSy3zg+Z3WSKOp2nchLpfV74qFl8XAOtKXrP4LjwUSmUDDSI4=
X-Received: by 2002:adf:978b:: with SMTP id s11mr12546698wrb.169.1558124055252;
	Fri, 17 May 2019 13:14:15 -0700 (PDT)
MIME-Version: 1.0
References: <db5fdd69-f031-1932-27bb-6ed1a6f60f4c@ibeeto.com>
	<b5e1d2d9-15cd-4872-ac8a-b578f2a9ae70@www.fastmail.com>
	<16605f9d-2158-451c-592e-1c40aab160d5@ibeeto.com>
	<37a421a4-3786-66ba-60ce-208f7b89c71e@gherzan.ro>
	<09f13d52-4fc1-6720-bceb-683f0b336b6b@ibeeto.com>
In-Reply-To: <09f13d52-4fc1-6720-bceb-683f0b336b6b@ibeeto.com>
From: Bernhard Mayritsch <bit.coyote@gmail.com>
Date: Fri, 17 May 2019 22:14:05 +0200
Message-ID: <CAD04zYoGXx3+ipjFgN4f6he3HPfaL4MzG3Ub2v4Se6ri=KE-pA@mail.gmail.com>
To: Rudolf J Streif <rudolf.streif@ibeeto.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] RPi 7" Touch Display
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
X-List-Received-Date: Fri, 17 May 2019 20:14:17 -0000
Content-Type: multipart/alternative; boundary="000000000000d453b605891b06bc"

--000000000000d453b605891b06bc
Content-Type: text/plain; charset="UTF-8"

I don't know if it's helpful, but I'm struggling with a similar issue on my
RPi 3 B+, where the official touchscreen, as well as, the HDMI don't output
any graphics, although detected correctly. (See:
https://lists.yoctoproject.org/pipermail/yocto/2019-May/045277.html)
After experimenting with sumo, thud and the latest master recipes, I
remembered a conversation on Andrei's GitHub project (
https://github.com/agherzan/meta-raspberrypi/issues/228), which isn't
exactly related to my issue, but I gave it a try to switch the machine from
"raspberrypi3-64" to "raspberrypi3" in order to get a 32 bit version of the
same build (of master) for core-image-x11.
However, ... this image works for the DSI port, as well as, for the HDMI.

This isn't a real solution, but at least a point to start investigating the
problem and comparing the two builds. Will try to find some time, during
the coming week, to do so, ... although I'm not experienced with the RPis -
maybe I can find something.

Regards,
Bernhard



Am Do., 16. Mai 2019 um 19:34 Uhr schrieb Rudolf J Streif <
rudolf.streif@ibeeto.com>:

> No, unfortunately not. HDMI works just fine but no video on the touch
> display.
>
> On 5/16/19 9:46 AM, Andrei Gherzan wrote:
> > Hi,
> >
> > On 16/05/2019 17.24, Rudolf J Streif wrote:
> >> Thank you, Paul. I did read Andrei's excellent documentation and
> >> enabled I2C and SPI etc.
> > And it didn't work?
> >
> --
> -----
> Rudolf J Streif
> CEO/CTO ibeeto
> +1.855.442.3396 x700
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000d453b605891b06bc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I don&#39;t know if it&#39;s helpful, but I&#39;m struggli=
ng with a similar issue on my RPi 3 B+, where the official touchscreen, as =
well as, the HDMI don&#39;t output any graphics, although detected correctl=
y. (See:=C2=A0

<a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2019-May/045277.h=
tml">https://lists.yoctoproject.org/pipermail/yocto/2019-May/045277.html</a=
>)<div>After experimenting with sumo, thud and the latest master recipes, I=
 remembered a conversation on Andrei&#39;s GitHub project (<a href=3D"https=
://github.com/agherzan/meta-raspberrypi/issues/228">https://github.com/aghe=
rzan/meta-raspberrypi/issues/228</a>), which isn&#39;t exactly related to m=
y issue, but I gave it a try to switch the machine from &quot;<span style=
=3D"color:rgb(36,41,46);font-family:-apple-system,BlinkMacSystemFont,&quot;=
Segoe UI&quot;,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&qu=
ot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;;font-size:14px">raspber=
rypi3-64&quot; to &quot;</span><span style=3D"color:rgb(36,41,46);font-fami=
ly:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Helvetica,Arial,sa=
ns-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Seg=
oe UI Symbol&quot;;font-size:14px">raspberrypi3&quot; in order to get a 32 =
bit version of the same build (of master) for core-image-x11.=C2=A0</span><=
/div><div><span style=3D"color:rgb(36,41,46);font-family:-apple-system,Blin=
kMacSystemFont,&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif,&quot;Apple =
Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;;fo=
nt-size:14px">However, ... this image works for the DSI port, as well as, f=
or the HDMI.=C2=A0<br><br>This isn&#39;t a real solution, but at least a po=
int to start investigating the problem and comparing the two builds. Will t=
ry to find some time, during the coming week, to do so, ... although I&#39;=
m not experienced with the RPis - maybe I can find something.</span></div><=
div><span style=3D"color:rgb(36,41,46);font-family:-apple-system,BlinkMacSy=
stemFont,&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif,&quot;Apple Color =
Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;;font-siz=
e:14px"><br></span></div><div>Regards,</div><div>Bernhard</div><div><span s=
tyle=3D"color:rgb(36,41,46);font-family:-apple-system,BlinkMacSystemFont,&q=
uot;Segoe UI&quot;,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;=
,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;;font-size:14px"><br=
></span></div><div><span style=3D"color:rgb(36,41,46);font-family:-apple-sy=
stem,BlinkMacSystemFont,&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif,&qu=
ot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol=
&quot;;font-size:14px"><br></span></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">Am Do., 16. Mai 2019 um 19:34=C2=A0=
Uhr schrieb Rudolf J Streif &lt;<a href=3D"mailto:rudolf.streif@ibeeto.com"=
>rudolf.streif@ibeeto.com</a>&gt;:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">No, unfortunately not. HDMI works just fine but no video=
 on the touch <br>
display.<br>
<br>
On 5/16/19 9:46 AM, Andrei Gherzan wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; On 16/05/2019 17.24, Rudolf J Streif wrote:<br>
&gt;&gt; Thank you, Paul. I did read Andrei&#39;s excellent documentation a=
nd<br>
&gt;&gt; enabled I2C and SPI etc.<br>
&gt; And it didn&#39;t work?<br>
&gt;<br>
-- <br>
-----<br>
Rudolf J Streif<br>
CEO/CTO ibeeto<br>
+1.855.442.3396 x700<br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--000000000000d453b605891b06bc--

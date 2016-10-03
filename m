Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 640E6E00756; Mon,  3 Oct 2016 14:35:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f67.google.com (mail-vk0-f67.google.com
	[209.85.213.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 333F2E00529
	for <yocto@yoctoproject.org>; Mon,  3 Oct 2016 14:35:25 -0700 (PDT)
Received: by mail-vk0-f67.google.com with SMTP id 2so2059243vkb.1
	for <yocto@yoctoproject.org>; Mon, 03 Oct 2016 14:35:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=gos3D460Ast944V4MZTMqtmiF+niZuwaK5FdWZhjPGo=;
	b=dNQXOp7ihelXVjmr79EEVvCeYFVU1LrzW5FkafaO4KNIkwv+f58V7BQTvA8mSOcMmw
	JJNEZlQjLZeRRbHq+nH+LqepCV7phmgXbhjqsYe+XSvi1qusbU2cfLOLFyfl0uxMwsgl
	3YPR73SzaMz9VskVnLQmZibmeKHhRFM1WTsap7XYkoxFr+Z9vPLx1p8v6HK3Iu3WRe2A
	gJeFBUuVUWdvpf4TeOPb7A+rKtOHlLzHB1s/UeCp9bOtsNEOELh5SwkShgCAOwlEHihq
	029t2EUOjQri4wROMWvTRsyBTWxFruEF9eKaSqKkGRtPkiFxR5XYbfYV3PG8ycQLHB7k
	gPmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=gos3D460Ast944V4MZTMqtmiF+niZuwaK5FdWZhjPGo=;
	b=j+WEIZxYc70uosdHRkwLTBfO3FqDGw/J8Q19UXAUQaakZ4DX2WcF7vx2PB3mPVKNMe
	Hup/kW3QPxBpupv2xOafTSj1zbBwcn+6c7KYu8P6yfV8yTl67I05sSiuyWIH4rCtYwsf
	/KEcg+DTrwx5RPyMjovUnpyeJTQIw0wGPHWl4IyIJibhWBvgXvGPDcplBKvS9nI0ndW1
	GFY9ZErVz8xvoyRLZ33O8X5gF1zB6da0OT/+3bTnOCEJG+WWheJMj68aShByv3+6B4mG
	ZoJnJ4eFe2m94vysr+GLoj5tI/iZAGcq0KzGCeS6wZXrhhwIaGky4nbdbdU6nzlCVjRC
	EpYg==
X-Gm-Message-State: AA6/9RlI36wSjcDPtQHwHY2q8hiUojoLZoyRH+EEcD1mP5VSnjHUHVXQp3Fr1NurETVCM97y4kwf79xsbaIecw==
X-Received: by 10.31.183.78 with SMTP id h75mr133993vkf.148.1475530524909;
	Mon, 03 Oct 2016 14:35:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.86.206 with HTTP; Mon, 3 Oct 2016 14:35:22 -0700 (PDT)
Received: by 10.176.86.206 with HTTP; Mon, 3 Oct 2016 14:35:22 -0700 (PDT)
In-Reply-To: <CAHUNapR6wknC-T2BjivbKPnAywiEbpoE0pzfXp6xuPX34siP9A@mail.gmail.com>
References: <20161002143422.GA24664@openSUSE-i7.site>
	<DC4D7174-E554-4A40-A0BC-B20623C83300@gmail.com>
	<HE1PR01MB18837565069037BC361486E792C20@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
	<HE1PR01MB188308CD0299E2BC792EF3C692C20@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
	<20161003184826.GA30939@openSUSE-i7.site>
	<CAHUNapR6wknC-T2BjivbKPnAywiEbpoE0pzfXp6xuPX34siP9A@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 3 Oct 2016 14:35:22 -0700
Message-ID: <CAMKF1srfOo=CJqKTEbXnheCk3fhDCBtAb5BMjm3EkR3Q-ZBuxA@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] taskhash mismatch
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
X-List-Received-Date: Mon, 03 Oct 2016 21:35:29 -0000
Content-Type: multipart/alternative; boundary=001a1143a4c2caec4f053dfcb883

--001a1143a4c2caec4f053dfcb883
Content-Type: text/plain; charset=UTF-8

I guess you need to look at sognatures and see why its changing.

On Oct 3, 2016 1:39 PM, "Trevor Woerner" <twoerner@gmail.com> wrote:

> Odd... even with this patch I'm still seeing sporadic failures :-(
>
> On Mon, Oct 3, 2016 at 2:48 PM, Trevor Woerner <twoerner@gmail.com> wrote:
> > On Mon 2016-10-03 @ 06:45:55 PM, Karim ATIKI wrote:
> >> Note: I just launched the build again with bitbake -k
> core-image-x11....and
> >>
> >>  the error did not occur again.
> >> Well, a bit weird. Don't really know why does this error raised though.
> >
> > It looks like the patch to which Khem refers was just added and pushed
> within
> > the last couple hours :-)
> >
> >> is it due to use of DATE and TIME issue ? I think there was such a
> patch proposed to meta-rpi see
> >> http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/commit/?id=
> 4c02c7ce07121c2f5367204445f93199d828bb10
>

--001a1143a4c2caec4f053dfcb883
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">I guess you need to look at sognatures and see why its chang=
ing.</p>
<div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Oct 3, 2016 1:=
39 PM, &quot;Trevor Woerner&quot; &lt;<a href=3D"mailto:twoerner@gmail.com"=
>twoerner@gmail.com</a>&gt; wrote:<br type=3D"attribution"><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex">Odd... even with this patch I&#39;m still seeing sporadic fa=
ilures :-(<br>
<br>
On Mon, Oct 3, 2016 at 2:48 PM, Trevor Woerner &lt;<a href=3D"mailto:twoern=
er@gmail.com">twoerner@gmail.com</a>&gt; wrote:<br>
&gt; On Mon 2016-10-03 @ 06:45:55 PM, Karim ATIKI wrote:<br>
&gt;&gt; Note: I just launched the build again with bitbake -k core-image-x=
11....and<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 the error did not occur again.<br>
&gt;&gt; Well, a bit weird. Don&#39;t really know why does this error raise=
d though.<br>
&gt;<br>
&gt; It looks like the patch to which Khem refers was just added and pushed=
 within<br>
&gt; the last couple hours :-)<br>
&gt;<br>
&gt;&gt; is it due to use of DATE and TIME issue ? I think there was such a=
 patch proposed to meta-rpi see<br>
&gt;&gt; <a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberr=
ypi/commit/?id=3D4c02c7ce07121c2f5367204445f93199d828bb10" rel=3D"noreferre=
r" target=3D"_blank">http://git.yoctoproject.org/<wbr>cgit/cgit.cgi/meta-<w=
br>raspberrypi/commit/?id=3D<wbr>4c02c7ce07121c2f5367204445f931<wbr>99d828b=
b10</a><br>
</blockquote></div></div>

--001a1143a4c2caec4f053dfcb883--

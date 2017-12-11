Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B9EAE00D55; Mon, 11 Dec 2017 03:34:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f195.google.com (mail-qt0-f195.google.com
	[209.85.216.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 771B2E008FB
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 03:34:29 -0800 (PST)
Received: by mail-qt0-f195.google.com with SMTP id i40so37506796qti.8
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 03:34:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=o4BockkJhixOQWS0H0hPBdKouFuaIBshI5ekcDaqDmE=;
	b=jViVAkUTfAKnRQr3PQp/qWtrz8XHoAApB9gEA0YSzKyHzCJCVQZTFtcR7sBL/gjF7V
	e1vxU9JZzY2Idiu4mumKpLUtLjikPh3Atrt8U7YHCIMo2gxQ4j1TNJ5zJVWK+OZ6zbQ/
	8uYeGP4LaAI20SIU+PoP1JBMhdDKnmpAFTf3Q1bN0De+1iQankRirUN4qldvh1mDs6Gs
	YQij3anzFX1IgXsvbJbodPc/ThbmRSptx4GyYanUaT/8v7fMQVhdfuD9vwbjUxGxIomY
	BmuJVYaq+PGr7EbHjcKfY3yi+9f+Q7Lv+TwwwLE5hKXkmHJ7iP5TWJ+paG1Q5KjH8Cm3
	dTSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=o4BockkJhixOQWS0H0hPBdKouFuaIBshI5ekcDaqDmE=;
	b=FhtY7mKbEznXK7vRsGXxCv0TPtjnRPh9z6IIliLsl4QTiacsXnKnpDYH4kQOMQowf+
	nDWOiGBEmRXI6Ie7uW78LOgkzykD1BX9X0ffYUuMRGsvI5Pwzo3/P09wWFUX4WqbqwSO
	jm2O/wOOkE+LQ0zdOlN4/TCtdLg3SgpHOce/l/HKJjQRfQH3riFieiYW76+DeG+pe9Gh
	yCMzvr6zZH87u5QGAYBv6if5M6BWlDn6kDRhPjXtKlWWO1KGjirqmqKF+q/fXUS+fVGS
	oNf137YsHmmeJ0Pugg9V3ub2P1TEoVWxKWLSoogmc0caqRc/7p+KgzW1RsUZIoZVDmYY
	bb3w==
X-Gm-Message-State: AKGB3mKoqGrdxqJv/zEZBFagjIf0dBNw4IxX4JQnXPHmp+trOROAGN0x
	kM0jeXAGA1Kvb2+0FqboURXXBJjABr6pnwysGLQ=
X-Google-Smtp-Source: ACJfBovl5/OkGgBmRqLSwm4+f31lXAZbrgVTNR9ertPdgE55EoTuTF+PFiU3UjcLkLpJPSsT5rDbdV7qYfX9TcsMowU=
X-Received: by 10.200.57.80 with SMTP id t16mr121739qtb.98.1512992068606; Mon,
	11 Dec 2017 03:34:28 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.21.241 with HTTP; Mon, 11 Dec 2017 03:34:27 -0800 (PST)
Received: by 10.140.21.241 with HTTP; Mon, 11 Dec 2017 03:34:27 -0800 (PST)
In-Reply-To: <CAF3SDA7qCEUGNfmoJ0MXM4OAMSsC=rgnx3xPira7cZSch0ATMQ@mail.gmail.com>
References: <CAF3SDA6zXJyGF-cBSXXr=D2kY59VCyj8c6TbgDkVK0NB7DmQZA@mail.gmail.com>
	<CAPyrkgxkcO+3UW4jqy9Uh0pVSRwFH9Pss5d2ihVBtRZ3Y+B08A@mail.gmail.com>
	<CAF3SDA7qCEUGNfmoJ0MXM4OAMSsC=rgnx3xPira7cZSch0ATMQ@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Mon, 11 Dec 2017 09:34:27 -0200
Message-ID: <CAF3SDA61uYo3jYxWBzhTUs0ywyXMtQGWpBAWb3VmJT5CFU9F=g@mail.gmail.com>
To: Paul Barker <pbarker@toganlabs.com>
Cc: yocto@yoctoproject.org
Subject: Re: .kernel-meta/configs folder missing make linux-raspberrypi to fail
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
X-List-Received-Date: Mon, 11 Dec 2017 11:34:30 -0000
Content-Type: multipart/alternative; boundary="001a11406a52cc200b05600eea89"

--001a11406a52cc200b05600eea89
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I can anticipate some info for you. I'm on version 2.4 Rocko. Building
rpi-hwup-image for MACHINE=3Drasbiberrypi3-64. Also is worth noting that I'=
m
running Fedora 27 which wasn't tested...

I'll try to get the full log tonight and let you know

Regards

On Dec 11, 2017 9:26 AM, "Daniel." <danielhilst@gmail.com> wrote:

> Yeah but I got to face the error again, maybe tonight when I get home :)
>
> On Dec 11, 2017 9:17 AM, "Paul Barker" <pbarker@toganlabs.com> wrote:
>
>> On Sun, Dec 10, 2017 at 5:14 PM, Daniel. <danielhilst@gmail.com> wrote:
>> > Hi everybody,
>> >
>> > I'm building a vanilla image for MACHINE=3Draspberrypi3-64. I'm doing =
the
>> > build for the first time and faced an error at
>> > linux-raspberrypi:do_kernel_configme. I found that .kernel-meta/config=
s
>> > folder was missing, so I fired a devshell and created it. After that
>> > everything works as expected and linux-raspberrypi build fines.
>> >
>> > The solution I got is palliative, what would be the real solution and
>> what
>> > is this .kernel-meta folder? I had never seem this folder before.
>>
>> I have seen this issue occasionally when the do_kernel_configme task
>> is re-executed. A "bitbake virtual/kernel -c clean" has always
>> resolved this for me, allowing the next build to succeed. It doesn't
>> occur on my autobuild systems though so I figure it's an edge case I'm
>> hitting when building locally as I'm hacking around on recipes.
>>
>> I've never seen this on the first build of the kernel though.
>>
>> Which version of Yocto are you using? Could you send us the build
>> configuration summary and the full error messages printed by bitbake?
>>
>> Thanks,
>>
>> --
>> Paul Barker
>> Tog=C3=A1n Labs Ltd
>>
>

--001a11406a52cc200b05600eea89
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I can anticipate some info for you. I&#39;m on version 2.=
4 Rocko. Building rpi-hwup-image for MACHINE=3Drasbiberrypi3-64. Also is wo=
rth noting that I&#39;m running Fedora 27 which wasn&#39;t tested...=C2=A0<=
div dir=3D"auto"><br></div><div dir=3D"auto">I&#39;ll try to get the full l=
og tonight and let you know<br><div dir=3D"auto"><br></div><div dir=3D"auto=
">Regards</div></div></div><div class=3D"gmail_extra"><br><div class=3D"gma=
il_quote">On Dec 11, 2017 9:26 AM, &quot;Daniel.&quot; &lt;<a href=3D"mailt=
o:danielhilst@gmail.com">danielhilst@gmail.com</a>&gt; wrote:<br type=3D"at=
tribution"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex"><div dir=3D"auto">Yeah but I got =
to face the error again, maybe tonight when I get home :)</div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On Dec 11, 2017 9:17 AM, &q=
uot;Paul Barker&quot; &lt;<a href=3D"mailto:pbarker@toganlabs.com" target=
=3D"_blank">pbarker@toganlabs.com</a>&gt; wrote:<br type=3D"attribution"><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex">On Sun, Dec 10, 2017 at 5:14 PM, Daniel. &lt;<=
a href=3D"mailto:danielhilst@gmail.com" target=3D"_blank">danielhilst@gmail=
.com</a>&gt; wrote:<br>
&gt; Hi everybody,<br>
&gt;<br>
&gt; I&#39;m building a vanilla image for MACHINE=3Draspberrypi3-64. I&#39;=
m doing the<br>
&gt; build for the first time and faced an error at<br>
&gt; linux-raspberrypi:do_kernel_co<wbr>nfigme. I found that .kernel-meta/c=
onfigs<br>
&gt; folder was missing, so I fired a devshell and created it. After that<b=
r>
&gt; everything works as expected and linux-raspberrypi build fines.<br>
&gt;<br>
&gt; The solution I got is palliative, what would be the real solution and =
what<br>
&gt; is this .kernel-meta folder? I had never seem this folder before.<br>
<br>
I have seen this issue occasionally when the do_kernel_configme task<br>
is re-executed. A &quot;bitbake virtual/kernel -c clean&quot; has always<br=
>
resolved this for me, allowing the next build to succeed. It doesn&#39;t<br=
>
occur on my autobuild systems though so I figure it&#39;s an edge case I&#3=
9;m<br>
hitting when building locally as I&#39;m hacking around on recipes.<br>
<br>
I&#39;ve never seen this on the first build of the kernel though.<br>
<br>
Which version of Yocto are you using? Could you send us the build<br>
configuration summary and the full error messages printed by bitbake?<br>
<br>
Thanks,<br>
<br>
--<br>
Paul Barker<br>
Tog=C3=A1n Labs Ltd<br>
</blockquote></div></div>
</blockquote></div></div>

--001a11406a52cc200b05600eea89--

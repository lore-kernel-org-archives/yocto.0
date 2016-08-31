Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07FCDE00EF9; Wed, 31 Aug 2016 06:40:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,MISSING_HEADERS,
	PLING_QUERY,RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	*  1.0 MISSING_HEADERS Missing To: header
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 PLING_QUERY Subject has exclamation mark and question mark
Received: from mail-ua0-f181.google.com (mail-ua0-f181.google.com
	[209.85.217.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46E8FE00EF5
	for <yocto@yoctoproject.org>; Wed, 31 Aug 2016 06:40:03 -0700 (PDT)
Received: by mail-ua0-f181.google.com with SMTP id m60so88540241uam.3
	for <yocto@yoctoproject.org>; Wed, 31 Aug 2016 06:40:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:cc; 
	bh=CXzsHyvZXvLAeZvtrloiTpZyxmsBWbGhWFjOsNWQIZQ=;
	b=HYsLSErN9q/SFNsP3FlfBYYy04k1pcQ4A7zXOnAkNCyNxSQ7LlSTv5pYryikgP69d8
	HFsVwnbA/RWNbzCD0labylfsat9+fl+iG5eiWHh8trynQMAtgvKgLgjd+JY3PzK9kG44
	M8W3xcVNrK80zouIiOOjnreupUj455T0Uk0V9ktJs71ZDtlvOu1acaEaLp0m5nnlW4+H
	+oaMUDCIXtWuyg2opKxXPzZmcc5s4nEQdb+kimVvLEx1WvWWsFjRwF0JfcQ+d9k8FndE
	hkwEpPnlnpldyBBNcVNNJ6UKGNFTEGcZAhjs4FeAbvHIunkREYfRXkhLQjmzvVLZt7Es
	JgNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:cc;
	bh=CXzsHyvZXvLAeZvtrloiTpZyxmsBWbGhWFjOsNWQIZQ=;
	b=ItbC3TKJaaPPCaeC8px57b9e4LBb3xAxdj75VJv7x9tCf16BzEMJ8O+JBjEDx1R6Tl
	8c/6YIxgOuIhD7sv1Kepnh4CHobHMQbx6sxRCBX+H4+US9CBQkEjYWtcgPNZd+EUbVEV
	9OA6AnGF+OmXuwIAx6ubPjYAJWsE81mdMHa3PESB4oyX1DZ/+7deWK8cpcbTJPIJFy20
	aV3pHRBioR8M5zSLHB6IIIU3Lj+H2SVVtM3k4P1dttI/NEykPzv3e1abE1DkE3snK32a
	KTtcCw0NW6Hji+XJfzcjqk0qv5fUV/eF/K29LyWMZ89+IHGTdS2MYXPK0g0/YDQKsJ3Y
	DefA==
X-Gm-Message-State: AE9vXwPer/9VKCLlAunXNDokPu0jbXfETvVFptE7uyP5Zou+xZVGQ7N6eyGoJXVuUV9oV9/0bpWGU4mx9qQ/vg==
X-Received: by 10.31.206.68 with SMTP id e65mr4662256vkg.129.1472650803123;
	Wed, 31 Aug 2016 06:40:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.81.41 with HTTP; Wed, 31 Aug 2016 06:40:02 -0700 (PDT)
In-Reply-To: <57C67245.90001@topic.nl>
References: <CAF3SDA445Eh-L501nQvd+VBuVGpER0kX4DZd3GZ16RvvQ_qZOQ@mail.gmail.com>
	<57C67245.90001@topic.nl>
From: "Daniel." <danielhilst@gmail.com>
Date: Wed, 31 Aug 2016 10:40:02 -0300
Message-ID: <CAF3SDA5C5+59PFqCH-13yMjHSCZn7X0_MrOBubM=RpUw=G9Fvg@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Automating imaging building and testing, what aproach to use!?
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
X-List-Received-Date: Wed, 31 Aug 2016 13:40:07 -0000
X-Groupsio-MsgNum: 31721
Content-Type: multipart/related; boundary=001a114e607e00bc9e053b5e3c7c

--001a114e607e00bc9e053b5e3c7c
Content-Type: multipart/alternative; boundary=001a114e607e00bc9b053b5e3c7b

--001a114e607e00bc9b053b5e3c7b
Content-Type: text/plain; charset=UTF-8

Thanks Randy and Mark for the replies!

In my case we have a two boards running basically the same distribuition,
diverging only on some peripherals. I was planing to install/wire
everything up and then use https://mender.io/ to automate update process.
After that I can create post installations tests and see they run at every
image update. I'll have to design the tests so that the output of then goes
to some web interface or pdf+email but this is not a problem.

Another option is using buildbot to automate recipe builing and using it to
feed some intranet rpm/debi/ipk repo. Configure my testing targets with
something like "auto-update". After that is the same mater of creating post
install tests. The pro here is that this way I'll be testing by recipe
builds too, and that updates are faster. The con is that mender updates are
safer ...

The major complexity comes from the fact that we're using distribuited
hardware as may be the case of other people here. We have a "master"
hardware that connects to "slave" hardware, where master is the Linux and
slave are some embedded boards. To test everything up I need to wire
everything up before testing. I would like to hear people solutions for
that case since mulitple "setups" are possible testing every possible setup
is not feasible.

By the way, that LAVA seems promissing! I'll take a closer look on it!
Thanks for sharing :)

Regards,


2016-08-31 2:59 GMT-03:00 Mike Looijmans <mike.looijmans@topic.nl>:

> On 30-08-16 22:18, Daniel. wrote:
> > Hey everybody!
> >
> > While writing software we're used to delivery packages, libraries and
> > stacks. There are out there a lot of continuos integration solutions
> > to automaticaly build and test these kinds of software. But when
> > dealing to images the thing is more tricky.
> >
> > I can't run the tests at the same machine that build the image because
> > crosscompilation take place on 99% of the cases. What is aproach that
> > you guys are using to automate and increase the quality of your
> > images?
> >
> > Automating the build is the easy part my concert is about automating
> > the runtime tests that need the target board to run. In my case I
> > depend on hardware to fully test the image features. Is there any
> > reliable way to automate image installation and boot!?
>
> It helps a lot if you take testing into account when designing the
> hardware.
>
> We have a bunch of hardware targets in a corner. The board can be powered
> on/off forcibly by controlling/monitoring the RTS/DTR/CTS/DSR lines of the
> serial debug port (FTDI chip).
>
> A python script on a PC boots a board, puts it into USB "DFU" mode by
> "typing"
> commands into u-boot, and then sends an image over USB into RAM. The board
> then configures its USB OTG port as network, and the Python script
> connects to
> the board via SSH (paramiko) over that USB connection when it sees the
> "network" come up. Using the SSH connection, it can run whatever tests it
> needs doing (send data and even executables, run shell commands, and get
> reliable feedback on process completion).
>
> One test PC can control multiple boards (each board needs two USB
> connectors
> in this setup).
>
> I'd also be interested to know what other projects are doing.
>
>
>
> Kind regards,
>
>
>
> Mike Looijmans
>
> System Expert
>
>
>
>
>
> *TOPIC Products*
>
>
>
>
>
> Materiaalweg 4
>
>
>
>
>
> 5681 RJ Best
>
> T:
>
> +31 (0) 499 33 69 69
>
> Postbus 440
>
> E:
>
> mike.looijmans@topicproducts.com
>
> 5680 AK Best
>
> W:
>
> www.topicproducts.com
> The Netherlands
>
> <https://www.facebook.com/TopicProducts>
> <https://twitter.com/TopicProducts>
> <https://www.linkedin.com/company/topic-embedded-products>
> Please consider the environment before printing this e-mail
>
> Topic zoekt gedreven (embedded) software specialisten!
> <http://topic.nl/vacancy/topic-zoekt-technische-software-engineers/>
>
>


-- 
*"Do or do not. There is no try"*
  *Yoda Master*

--001a114e607e00bc9b053b5e3c7b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Thanks Randy and Mark for the replies!<br><br></=
div>In my case we have a two boards running basically the same distribuitio=
n, diverging only on some peripherals. I was planing to install/wire everyt=
hing up and then use <a href=3D"https://mender.io/">https://mender.io/</a> =
to automate update process. After that I can create post installations test=
s and see they run at every image update. I&#39;ll have to design the tests=
 so that the output of then goes to some web interface or pdf+email but thi=
s is not a problem.<br><br></div><div>Another option is using buildbot to a=
utomate recipe builing and using it to feed some intranet rpm/debi/ipk repo=
. Configure my testing targets with something like &quot;auto-update&quot;.=
 After that is the same mater of creating post install tests. The pro here =
is that this way I&#39;ll be testing by recipe builds too, and that updates=
 are faster. The con is that mender updates are safer ... <br><br></div><di=
v>The major complexity comes from the fact that we&#39;re using distribuite=
d hardware as may be the case of other people here. We have a &quot;master&=
quot; hardware that connects to &quot;slave&quot; hardware, where master is=
 the Linux and slave are some embedded boards. To test everything up I need=
 to wire everything up before testing. I would like to hear people solution=
s for that case since mulitple &quot;setups&quot; are possible testing ever=
y possible setup is not feasible.<br><br></div><div>By the way, that LAVA s=
eems promissing! I&#39;ll take a closer look on it! Thanks for sharing :)<b=
r></div><div><br>Regards,<br><br></div></div><div class=3D"gmail_extra"><br=
><div class=3D"gmail_quote">2016-08-31 2:59 GMT-03:00 Mike Looijmans <span =
dir=3D"ltr">&lt;<a href=3D"mailto:mike.looijmans@topic.nl" target=3D"_blank=
">mike.looijmans@topic.nl</a>&gt;</span>:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
>


<div>
<p></p><div><span class=3D"">On 30-08-16 22:18, Daniel. wrote:<br>&gt; Hey =
everybody!<br>&gt;<br>&gt; While writing software we&#39;re used to deliver=
y packages, libraries and<br>&gt; stacks. There are out there a lot of cont=
inuos integration solutions<br>&gt; to automaticaly build and test these ki=
nds of software. But when<br>&gt; dealing to images the thing is more trick=
y.<br>&gt;<br>&gt; I can&#39;t run the tests at the same machine that build=
 the image because<br>&gt; crosscompilation take place on 99% of the cases.=
 What is aproach that<br>&gt; you guys are using to automate and increase t=
he quality of your<br>&gt; images?<br>&gt;<br>&gt; Automating the build is =
the easy part my concert is about automating<br>&gt; the runtime tests that=
 need the target board to run. In my case I<br>&gt; depend on hardware to f=
ully test the image features. Is there any<br>&gt; reliable way to automate=
 image installation and boot!?<br><br></span>It helps a lot if you take tes=
ting into account when designing the hardware.<br><br>We have a bunch of ha=
rdware targets in a corner. The board can be powered <br>on/off forcibly by=
 controlling/monitoring the RTS/DTR/CTS/DSR lines of the <br>serial debug p=
ort (FTDI chip).<br><br>A python script on a PC boots a board, puts it into=
 USB &quot;DFU&quot; mode by &quot;typing&quot; <br>commands into u-boot, a=
nd then sends an image over USB into RAM. The board <br>then configures its=
 USB OTG port as network, and the Python script connects to <br>the board v=
ia SSH (paramiko) over that USB connection when it sees the <br>&quot;netwo=
rk&quot; come up. Using the SSH connection, it can run whatever tests it <b=
r>needs doing (send data and even executables, run shell commands, and get =
<br>reliable feedback on process completion).<br><br>One test PC can contro=
l multiple boards (each board needs two USB connectors <br>in this setup).<=
br><br>I&#39;d also be interested to know what other projects are doing.<br=
></div><p></p>
<p><font face=3D"Calibri Light"></font>=C2=A0</p>
<p><font face=3D"Calibri Light">Kind regards,</font></p>
<p><font face=3D"Calibri Light"></font>=C2=A0</p>
<p><font style=3D"font-family:Calibri Light;font-size:12pt;font-weight:bold=
">Mike Looijmans</font></p>
<p><font style=3D"font-family:Calibri Light;font-size:12pt">System Expert</=
font></p>
<p><font face=3D"Calibri Light"></font>=C2=A0</p>
<p><font face=3D"Calibri Light"></font></p>
<p><font face=3D"Calibri Light"></font></p>
<p><img style=3D"border:0px Solid" src=3D"cid:imagec5944f.PNG@43f21132.42ba=
1771" height=3D"74" width=3D"375"><br><br></p>
<p>
</p><table style=3D"HEIGHT:72px;BORDER-COLLAPSE:collapse;WIDTH:475px" cols=
=3D"3" border=3D"0" cellpadding=3D"0" cellspacing=3D"0">
  <tbody>
  <tr>
    <td style=3D"WIDTH:205px">
      <p><font face=3D"Calibri Light" size=3D"1"><strong>TOPIC
      Products</strong></font></p></td>
    <td style=3D"WIDTH:6px">
      <p><font face=3D"Calibri Light" size=3D"1"></font>=C2=A0</p></td>
    <td style=3D"WIDTH:256px">
      <p><font face=3D"Calibri Light" size=3D"1"></font>=C2=A0</p></td></tr=
>
  <tr>
    <td>
      <p><font face=3D"Calibri Light" size=3D"1">Materiaalweg
      4</font></p></td>
    <td style=3D"WIDTH:29px">
      <p><font face=3D"Calibri Light" size=3D"1"></font>=C2=A0</p></td>
    <td>
      <p><font face=3D"Calibri Light" size=3D"1"></font>=C2=A0</p></td></tr=
>
  <tr>
    <td>
      <p><font face=3D"Calibri Light" size=3D"1">5681
      RJ=C2=A0Best</font></p></td>
    <td>
      <p><font face=3D"Calibri Light" size=3D"1">T:</font></p></td>
    <td>
      <p><font face=3D"Calibri Light" size=3D"1">+31 (0) 499 33
      69 69</font></p></td></tr>
  <tr>
    <td style=3D"HEIGHT:14px">
      <p><font face=3D"Calibri Light" size=3D"1">Postbus
      440</font></p></td>
    <td>
      <p><font face=3D"Calibri Light" size=3D"1">E:</font></p></td>
    <td>
      <p><font style=3D"font-family:Calibri Light;font-size:8pt"><a href=3D=
"mailto:mike.looijmans@topicproducts.com" target=3D"_blank">mike.looijmans@=
topicproducts.<wbr>com</a></font></p></td></tr>
  <tr>
    <td>
      <p><font face=3D"Calibri Light" size=3D"1">5680 AK
      Best</font></p></td>
    <td>
      <p><font face=3D"Calibri Light" size=3D"1">W:</font></p></td>
    <td>
      <p><font face=3D"Calibri Light" size=3D"1"><a href=3D"http://www.topi=
cproducts.com" target=3D"_blank">www.topicproducts.com</a></font></p></td><=
/tr>
  <tr>
    <td><font face=3D"Calibri Light" size=3D"1">The Netherlands</font></td>
    <td><font face=3D"Calibri Light" size=3D"1"></font></td>
    <td><font face=3D"Calibri Light" size=3D"1"></font></td>
    <td><font face=3D"Calibri Light" size=3D"1"></font></td></tr></tbody></=
table><p></p>
<p><a href=3D"https://www.facebook.com/TopicProducts" target=3D"_blank"><fo=
nt face=3D"Calibri Light" size=3D"1"><img src=3D"cid:imageab7767.JPG@5b4855=
6e.428db7b0" height=3D"19" width=3D"20" border=3D"0"> </font></a><a href=3D=
"https://twitter.com/TopicProducts" target=3D"_blank"><font face=3D"Calibri=
 Light" size=3D"1"><img src=3D"cid:image32a64f.JPG@4a3d86e6.4090342c" heigh=
t=3D"19" width=3D"20" border=3D"0"></font></a><a href=3D"https://www.linked=
in.com/company/topic-embedded-products" target=3D"_blank"><font face=3D"Cal=
ibri Light" size=3D"1"><img src=3D"cid:image312119.JPG@5ff75fe5.4b8c58c7" h=
eight=3D"18" width=3D"20" border=3D"0"></font></a><br><font face=3D"Calibri=
 Light" color=3D"green" size=3D"1">Please consider the environment before p=
rinting this
e-mail<br></font></p><br><a href=3D"http://topic.nl/vacancy/topic-zoekt-tec=
hnische-software-engineers/" target=3D"_blank"><font style=3D"font-family:A=
rial;font-size:8pt">Topic zoekt gedreven (embedded) software specialisten!<=
/font></a><br><br>
<p></p>
<p><font face=3D"Calibri Light"></font></p>
<p><font face=3D"Calibri Light"></font></p></div>
</blockquote></div><br><br clear=3D"all"><br>-- <br><div class=3D"gmail_sig=
nature" data-smartmail=3D"gmail_signature"><div style=3D"text-align:right">=
<i>&quot;Do or do not. There is no try&quot;</i><br><i>=C2=A0 </i><i><b>Yod=
a Master</b></i><br></div></div>
</div>

--001a114e607e00bc9b053b5e3c7b--

--001a114e607e00bc9e053b5e3c7c
Content-Type: image/png; name="imagec5944f.PNG"
Content-Disposition: inline; filename="imagec5944f.PNG"
Content-Transfer-Encoding: base64
Content-ID: <imagec5944f.PNG@43f21132.42ba1771>
X-Attachment-Id: 8c88fa03af53acc8_0.1

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
AAAAAElFTkSuQmCC

--001a114e607e00bc9e053b5e3c7c
Content-Type: image/jpeg; name="image32a64f.JPG"
Content-Disposition: inline; filename="image32a64f.JPG"
Content-Transfer-Encoding: base64
Content-ID: <image32a64f.JPG@4a3d86e6.4090342c>
X-Attachment-Id: 8c88fa03af53acc8_0.3

/9j/4AAQSkZJRgABAQEAYABgAAD/4QAiRXhpZgAATU0AKgAAAAgAAQESAAMAAAABAAEAAAAAAAD/
2wBDAAIBAQIBAQICAgICAgICAwUDAwMDAwYEBAMFBwYHBwcGBwcICQsJCAgKCAcHCg0KCgsMDAwM
BwkODw0MDgsMDAz/2wBDAQICAgMDAwYDAwYMCAcIDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwM
DAwMDAwMDAwMDAwMDAwMDAwMDAwMDAz/wAARCAATABQDASIAAhEBAxEB/8QAGQABAAMBAQAAAAAA
AAAAAAAAAAUGBwQJ/8QAJxAAAQIGAgIBBQEAAAAAAAAAAQIDAAQFBgcREiEIMRMjJEGBoaL/xAAY
AQADAQEAAAAAAAAAAAAAAAAFBgcECP/EACYRAAEDAwIFBQAAAAAAAAAAAAECAwQAESEFEhMiMUKR
FEGBsdH/2gAMAwEAAhEDEQA/APUHHk45m3L98qqNyVVEpb76WUsSc0WlBS1rA2dHQSEnQA/kVzK9
g33jSnVWrNXCqdodPWXA8ioAvpY5AJccR1rWwFa3qIfEtabt/MGUach1pqqVydZekkuuJaEz8Trn
NtKlaHIhewCRviQO4u/khX5i4MFXFJzVKatJLkukpebmmlmoqC0/alIBVpfZPH1x763FP4bjUpKW
7bDtFiBgEDIHX3PT5rm/1bciAtbpPETvVcE5IKrA4tbANjatx8Wb9evzB1Fqc2+mcefStPygk8wl
ZSO/1CILwdp5lPGe3WyFJKA6NetfVVCEPUo7SZbgA7j91aNAkyHNNjrWclCb+BXNkvAlo1O83516
isqmJwB55SXXEha1b5HiFAAn30PffvuIGdwHaK2ATR0bSRo/O6Nf6hCNcaW/wk858mhknTIan3Cp
pJ5j2j8rc7SteQtq3ZWQkJcSsnKoCGmkKUAkez+dkkkkk9kmEIQIUTemZtCQkACv/9k=

--001a114e607e00bc9e053b5e3c7c
Content-Type: image/jpeg; name="image312119.JPG"
Content-Disposition: inline; filename="image312119.JPG"
Content-Transfer-Encoding: base64
Content-ID: <image312119.JPG@5ff75fe5.4b8c58c7>
X-Attachment-Id: 8c88fa03af53acc8_0.4

/9j/4AAQSkZJRgABAQEAYABgAAD/2wBDAAIBAQIBAQICAgICAgICAwUDAwMDAwYEBAMFBwYHBwcG
BwcICQsJCAgKCAcHCg0KCgsMDAwMBwkODw0MDgsMDAz/2wBDAQICAgMDAwYDAwYMCAcIDAwMDAwM
DAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAz/wAARCAASABQDASIA
AhEBAxEB/8QAGgABAAIDAQAAAAAAAAAAAAAAAAYIBAUHCf/EAC0QAAEDBAIAAwYHAAAAAAAAAAEC
AwQFBgcRABIICSETFSIxQWEjQlFWYpGV/8QAGAEAAgMAAAAAAAAAAAAAAAAABgcDBAX/xAAmEQAB
AwMDAgcAAAAAAAAAAAABAgMRAAQxBSEyQXEGEzNRYaGx/9oADAMBAAIRAxEAPwC0OIs3UHO+GclX
cg3Q9VrbqrURDobSmK1Jfe6hMgrO1Fa1gbB/MNbJO9tfOPMpY0sKtXNW7UqFPotutKfqL3tm3XGG
QCVOhlKitbYHbagCPhPz0d1cwP4n7c8NODcz43ueDXGLlue6YUoMtsNBMJUGY2t1p0OLSpDn4SgB
1PrrZHzHQqz5m9i1bxcZuvzpdfuDJVlItmlRFlkuRpCY6G+7jft+iG+wWeySo/EfT1Omo9pdyh5Y
YRKMjrIhOI95O++KSzPiC1LCPPXC4gjEGVbkEbxCRHzXoV5Uuc4ucvCRFrEByU/DZq02I0p5BRoI
c2eoJJ67USN/rxyA+Q5bMug+XnRhIjuMtSqvPfjLUNJkNFwJDiDobQVJUAfrrjgFqrKEXjqE4Cj+
0wtJun3bJpw9Ug/Qq2ldxnbdy1RUuo2/RKhKUEgvSYLTrhA1odlJJ+g5hN4Us39pWx/lsfb+P2H9
Djjlpj0x2qJzme5qSBpMdhlDaUoQlsAJSNAccccxlcjRG3xFf//Z

--001a114e607e00bc9e053b5e3c7c
Content-Type: image/jpeg; name="imageab7767.JPG"
Content-Disposition: inline; filename="imageab7767.JPG"
Content-Transfer-Encoding: base64
Content-ID: <imageab7767.JPG@5b48556e.428db7b0>
X-Attachment-Id: 8c88fa03af53acc8_0.2

/9j/4AAQSkZJRgABAQEAYABgAAD/4QAiRXhpZgAATU0AKgAAAAgAAQESAAMAAAABAAEAAAAAAAD/
2wBDAAIBAQIBAQICAgICAgICAwUDAwMDAwYEBAMFBwYHBwcGBwcICQsJCAgKCAcHCg0KCgsMDAwM
BwkODw0MDgsMDAz/2wBDAQICAgMDAwYDAwYMCAcIDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwM
DAwMDAwMDAwMDAwMDAwMDAwMDAwMDAz/wAARCAATABQDASIAAhEBAxEB/8QAGQABAAMBAQAAAAAA
AAAAAAAAAAYHCAUJ/8QAKhAAAQMCBQQBBAMAAAAAAAAAAQIDBAURAAYHCBIJEyExgRQVFkEiMlH/
xAAYAQADAQEAAAAAAAAAAAAAAAAEBgcCBf/EACcRAAEEAQIDCQAAAAAAAAAAAAEAAgMEEQUSIVGx
EzEyQWFxkdHw/9oADAMBAAIRAxEAPwC/91O8yqSNx2cIP5Yts0mpvwwymX2+ylDikhPEnwABaw8f
v3fF25K0qrVF2mTdRs61DU1NScLxhUumsEqitpSotyJCVJJ7R481LuAEEe7485d7GXkSd5OpncSL
O5hmkBQ/skvLHz6I+MbC1M10zs30QsrVT80rwrlQzK7S5cwTj9RIglyW2Y61ey1wSlPE+LAYteoa
bI2jUFXDd7mtJxx4jpzSFXnY6aUyEnAJ7/X9hb72DasP6ybT8p5glzPur0xp1JlBfPuhLq0j+RN1
WAtf92wxB+kZSDE6fuQmi2pHabkp42txtJd8YYlGqVomXJWDyceqa6s0vYt9gpNrHsU0l1Dz3Ir1
YyVTZdVqZLsp8OvNd5fgcilCwnkbC5AuT5Nz5xwHenVow48hpWR4paSsEI+ul2Bv/ndwwwfVv2hA
1okdjHM/axJBFv8ACPhaDyRkik6eZTgUSiQI9MpVNaDUaMwOKGk+/kkkkk3JJJJJOGGGOCSSclGA
DC//2Q==

--001a114e607e00bc9e053b5e3c7c--

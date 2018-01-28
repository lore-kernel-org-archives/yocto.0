Return-Path: <schnitzeltony@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F4E9E00DCA; Sun, 28 Jan 2018 12:30:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f180.google.com (mail-yw0-f180.google.com
	[209.85.161.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CC02E00942
	for <yocto@yoctoproject.org>; Sun, 28 Jan 2018 12:30:54 -0800 (PST)
Received: by mail-yw0-f180.google.com with SMTP id q6so1996310ywg.3
	for <yocto@yoctoproject.org>; Sun, 28 Jan 2018 12:30:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Bl2xYsgIURyJwLWaDre245C4Gh+1+vMG4sADivkHNG0=;
	b=LKe9ePWZmR1V8imnqDBULMH0do2x2jm3l9k6YGqCbdPsJm4umVqHRjfOKP8VrhOFSQ
	G0wFBMQo+5HpzDftY6wo29LY4rkHymwoTaSi0vLR8DnpR+8wRTIDgnlmKQuwKWtvCjhw
	idksz64z0iw+Qh0DboAuNL5Q3QlphWixbhqFMy1RhMrmKvVeKK9jkAmdKbJfGlQDSWSU
	uDrQdDchdI1NSrLopt5D8fByzZqc1DteeD+O5n3kNQwOEihu0sj9QgMW8wJtQ3VnHAAm
	tHbyvWMnRws+XSSClnBLu70L68WLNH2ugxNfxB2aFI8a072/bR1WT17nwmzyBbxXjffb
	XOHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Bl2xYsgIURyJwLWaDre245C4Gh+1+vMG4sADivkHNG0=;
	b=Ln9oQ7+PytiYy9wPdhIZPAuEg3UwFbQtxgdD/2/uyAhzvrFQLVwSRa6Sklf5qZhNDn
	dBUXPTliPVSOMzRXWY5vzwebOenVVNDsN3KulKkpgGR89kT/HMs05gsTnorgzUHh31QO
	GP/VWDCC1/oQKrpEPOndSZIV8Bg+657dno7qUMTTFcsvRhuiWJMyxl0UhxSIAWIqvu2X
	UieTxAJFkUGmafaZbOhi5EFHC/8QjID9QsMBfWb7Zj/GgxEoqnHKh/m+M5nowvNm1h3H
	jK0SaPnhPzUCyV1RPDfpGNTPzHMr/q4gom3zM011vjlbQv56iaOZ6ZeCu/14vEfcj4HO
	w4vw==
X-Gm-Message-State: AKwxyteB/u6EBwMdTdZeSuBodmyHN0Hyh29nocGM2rxJQoUqlEHkTDNM
	AMCUzq9gCjwYW/ll1nt1lsPUwbcyGY/Mq6GG6us=
X-Google-Smtp-Source: AH8x225vPjnx/31xC91RWQh117qkjnAHGqJZqCe+L0K9PEUHNyk4vj8u2z/6o8QJN/w6+cXHN2fkl47y6WCOdXKnfSA=
X-Received: by 10.13.255.133 with SMTP id p127mr15230668ywf.360.1517171454032; 
	Sun, 28 Jan 2018 12:30:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.37.199.133 with HTTP; Sun, 28 Jan 2018 12:30:53 -0800 (PST)
In-Reply-To: <CAPyrkgwxYUBGb4wLa83Bcm5dRDFh0m7X3o0tZx9sCYy2PEZV=A@mail.gmail.com>
References: <CAPyrkgwxYUBGb4wLa83Bcm5dRDFh0m7X3o0tZx9sCYy2PEZV=A@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Date: Sun, 28 Jan 2018 21:30:53 +0100
Message-ID: <CALbNGRQDOpbFhkpTpXYjc0PnpaWsCchT-Oe3n_2kmOxpEhkSPA@mail.gmail.com>
To: Paul Barker <pbarker@toganlabs.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	"openembedded-members@lists.openembedded.org"
	<openembedded-members@lists.openembedded.org>, openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: [Openembedded-architecture] OpenEmbedded stand at FOSDEM 2018
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
X-List-Received-Date: Sun, 28 Jan 2018 20:30:56 -0000
Content-Type: multipart/alternative; boundary="94eb2c08844a94c0a30563dc014b"

--94eb2c08844a94c0a30563dc014b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 11, 2017 at 9:55 AM, Paul Barker <pbarker@toganlabs.com> wrote:

> Hi all,
>
> We've got confirmation for an OpenEmbedded stand at FOSDEM 2018! We're
> in the AW building as usual, you can see the full list of stands and
> location details here: https://fosdem.org/2018/stands/
>
> What we need:
>
> * People to help out on the stand and chat about the project. If
> you're going to FOSDEM and don't know many people in the OE project
> this is a great way to get to know some. Even if you can only help out
> for an hour or two this would be much appreciated!
>
> * Device/product demos which show off the features of OE. We only have
> one table this year so please let us know if you're bringing hardware,
> that way we can make sure everything fits. Preference will go to
> hobbyist projects as this is FOSDEM but we're happy with commercial
> projects as long as they're not an explicit sales pitch.
>
> * Build system demo. I really want us to show off toaster again as
> that got a lot of interest last time we demo'd it at FOSDEM.
> Unfortunately I'm on holiday before FOSDEM and I'm not travelling
> directly from home so I'll be unable to bring something to run this
> demo on. So if someone could bring a laptop or mini-PC/monitor/etc to
> run a build system demo on that would be excellent. If not I'll see if
> I can get something shipped to Brussels.
>
> I've created a wiki page here:
> https://www.openembedded.org/wiki/FOSDEM_2018. Please add to this if
> you're planning to bring anything or just attend.
>
> Look forward to seeing many of you in Feb :)
>
> --
> Paul Barker
> Tog=C3=A1n Labs Ltd
>

My machine is finally done - it turned larger and heavier than expected
originally. Pictures at [1] taken with my very old mobile. Would like to
bring this with me with smaller keyboard - hope there is some place for
it...

[1]
https://drive.google.com/drive/folders/1VUMqcRO8WxWpwMKYy06WZPZcSgrokq0h?us=
p=3Dsharing

Andreas

--94eb2c08844a94c0a30563dc014b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div class=3D"gmail_extra"><div class=3D"gmail_quote"=
>On Mon, Dec 11, 2017 at 9:55 AM, Paul Barker <span dir=3D"ltr">&lt;<a href=
=3D"mailto:pbarker@toganlabs.com" target=3D"_blank">pbarker@toganlabs.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">H=
i all,<br>
<br>
We&#39;ve got confirmation for an OpenEmbedded stand at FOSDEM 2018! We&#39=
;re<br>
in the AW building as usual, you can see the full list of stands and<br>
location details here: <a href=3D"https://fosdem.org/2018/stands/" rel=3D"n=
oreferrer" target=3D"_blank">https://fosdem.org/2018/<wbr>stands/</a><br>
<br>
What we need:<br>
<br>
* People to help out on the stand and chat about the project. If<br>
you&#39;re going to FOSDEM and don&#39;t know many people in the OE project=
<br>
this is a great way to get to know some. Even if you can only help out<br>
for an hour or two this would be much appreciated!<br>
<br>
* Device/product demos which show off the features of OE. We only have<br>
one table this year so please let us know if you&#39;re bringing hardware,<=
br>
that way we can make sure everything fits. Preference will go to<br>
hobbyist projects as this is FOSDEM but we&#39;re happy with commercial<br>
projects as long as they&#39;re not an explicit sales pitch.<br>
<br>
* Build system demo. I really want us to show off toaster again as<br>
that got a lot of interest last time we demo&#39;d it at FOSDEM.<br>
Unfortunately I&#39;m on holiday before FOSDEM and I&#39;m not travelling<b=
r>
directly from home so I&#39;ll be unable to bring something to run this<br>
demo on. So if someone could bring a laptop or mini-PC/monitor/etc to<br>
run a build system demo on that would be excellent. If not I&#39;ll see if<=
br>
I can get something shipped to Brussels.<br>
<br>
I&#39;ve created a wiki page here:<br>
<a href=3D"https://www.openembedded.org/wiki/FOSDEM_2018" rel=3D"noreferrer=
" target=3D"_blank">https://www.openembedded.org/<wbr>wiki/FOSDEM_2018</a>.=
 Please add to this if<br>
you&#39;re planning to bring anything or just attend.<br>
<br>
Look forward to seeing many of you in Feb :)<br>
<span class=3D"gmail-HOEnZb"><font color=3D"#888888"><br>
--<br>
Paul Barker<br>
Tog=C3=A1n Labs Ltd</font></span><br></blockquote></div></div><div class=3D=
"gmail_extra"><br></div>My machine is finally done - it turned larger and h=
eavier than expected originally. Pictures at [1] taken with my very old mob=
ile. Would like to bring this with me with smaller keyboard - hope there is=
 some place for it...<br><br>[1] <a href=3D"https://drive.google.com/drive/=
folders/1VUMqcRO8WxWpwMKYy06WZPZcSgrokq0h?usp=3Dsharing">https://drive.goog=
le.com/drive/folders/1VUMqcRO8WxWpwMKYy06WZPZcSgrokq0h?usp=3Dsharing</a><br=
><br></div>Andreas<br></div>

--94eb2c08844a94c0a30563dc014b--

Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8E5CE00D07; Tue, 31 Oct 2017 11:27:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 665B9E00D01
	for <yocto@yoctoproject.org>; Tue, 31 Oct 2017 11:27:43 -0700 (PDT)
Received: by mail-pg0-f65.google.com with SMTP id b192so15383374pga.2
	for <yocto@yoctoproject.org>; Tue, 31 Oct 2017 11:27:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=4HNsJ1bnbLHuLxPHPfhWDB8MJ7lbllwsQ2D2SwDabPo=;
	b=sEsupkE2cm6Z8SWZIjVPWFCwpx+0s7/nS71YyNmxqKvB9ZeACMFt5S6M84aZjPeeAr
	7dni4RIQl4uWXnWoeuIoHlsqFepGyHTEE0AB/Aw9pl6bittAgIbwV8YjHXkjFg4RroBk
	u1yXirFqt5FYCj/hbujU0w7H0ZyfA3nFc6u9zHCD4l2h8G6x2/6rcsG6pps9oDF4Ck+C
	YKqloLBY+Z9WnpDcinKXCBM3cWKrrqly3fE8/AN1qtAIfjrN9CJMGNVMQvBqQ9Huz4TS
	w3fAYca8Q/2C+4Cz/vP9zljyCez2d+jcQltRlUgBvHSxr7bp9JIPVTG01L9FBNshrDsS
	hIQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=4HNsJ1bnbLHuLxPHPfhWDB8MJ7lbllwsQ2D2SwDabPo=;
	b=plmHSMj54y2UoUY5S4zeQL7+aNltu3sSSsCxwne3GkE+VtVdI71ZXfmtRJEYymUIVA
	QrQgFzS0iTq4wRcNGRSR13Dd2MoiNt/9denhBzMHMVNjqLwCjYMKn4FQnB7F1PT9VYFX
	GdlIBf2xKoMaECuz8IAnpwIGyo+dkebA2JIaB+u67rRPah3GSsnyvOJGqVQzIIEQ/GRi
	Dlh1J7DKoQbW/lXulI7god/ETTEouQlBk5SHDA2ZMdG3uKaW2hQ+KxlbSsewCaYNWwiW
	w5Nv5d+kqs+hSN5W6eahHLuyR4/Lm2m0Aj3DXui4pR9QARKZDdBeeOPecRraju88uOcx
	kKPw==
X-Gm-Message-State: AMCzsaUaLMiOsfeQcTMynCExd2l5CLARhVLMR9184ZDm67uamWj3EUuh
	NiRWpap7a39QpIhbTvuVhui3n7khWq4KVbUrCKk=
X-Google-Smtp-Source: ABhQp+TcXDYZMx13FCJWkPsO7Ym2/oSm0MDka0XVUIrLU2hAJ38g5iA6IN6UI4lB0XB/vlgvJm5fkRKwE4L3SZFF0Fw=
X-Received: by 10.98.102.132 with SMTP id s4mr2981164pfj.168.1509474463353;
	Tue, 31 Oct 2017 11:27:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAOsp8o87Tu-jsEQts=f-kmM1mtwcMrDN0eM-Zs0w0c+iF36gFQ@mail.gmail.com>
	<CAMKF1spbS2++NDZ8=mifSPP+i-TOMn1bmNQTnx+H6HdwsPkaDQ@mail.gmail.com>
	<CAOsp8o_a353XUeojQdeLq-AuqL=eXNwBoma57=C6Cq=29q02GA@mail.gmail.com>
	<CAJTo0LYPxRO1sB8T=bE2m6aG6jgODWr+fSyujzwcQsEst0eb9w@mail.gmail.com>
In-Reply-To: <CAJTo0LYPxRO1sB8T=bE2m6aG6jgODWr+fSyujzwcQsEst0eb9w@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 31 Oct 2017 18:27:32 +0000
Message-ID: <CAMKF1srJ61R+ouYD_pnCjmDtGJesByEP0M208BkCvd7p599Nmw@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>,
	Michael Habibi <mikehabibi@gmail.com>
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Using site.conf
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
X-List-Received-Date: Tue, 31 Oct 2017 18:27:44 -0000
Content-Type: multipart/alternative; boundary="001a11412ae22f9223055cdbe93f"

--001a11412ae22f9223055cdbe93f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 31, 2017 at 7:25 AM Burton, Ross <ross.burton@intel.com> wrote:

> On 31 October 2017 at 14:15, Michael Habibi <mikehabibi@gmail.com> wrote:
>
>> Is there an example of this somewhere? I haven't had any luck in
>> documentation or example code to see how to make the site.conf be used.
>>
>>
> site.conf is loaded if it is present in a conf/ directory anywhere.  I
> have a meta-ross which contains conf/site.conf, I add that layer to every
> build tree and bitbake will read the site.conf.  There's not a lot more t=
o
> it really.
>

You don=E2=80=99t want to add a site.conf file in any Layer especially if y=
ou are
tweaking a global distri config it would be a bad practice

>
> Ross
>

--001a11412ae22f9223055cdbe93f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br><div class=3D"gmail_quote"><div dir=3D"auto">On Tue, Oct 31, 2017 =
at 7:25 AM Burton, Ross &lt;<a href=3D"mailto:ross.burton@intel.com">ross.b=
urton@intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div=
>On 31 October 2017 at 14:15, Michael Habibi <span>&lt;<a href=3D"mailto:mi=
kehabibi@gmail.com" target=3D"_blank">mikehabibi@gmail.com</a>&gt;</span> w=
rote:<br></div><div><div class=3D"gmail_extra"><div class=3D"gmail_quote"><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex"><div>Is there an example of this somewhere? I=
 haven&#39;t had any luck in documentation or example code to see how to ma=
ke the site.conf be used.</div><div class=3D"gmail_extra"><br></div></block=
quote><div><br></div></div></div></div><div><div class=3D"gmail_extra"><div=
 class=3D"gmail_quote"><div>site.conf is loaded if it is present in a conf/=
 directory anywhere.=C2=A0 I have a meta-ross which contains conf/site.conf=
, I add that layer to every build tree and bitbake will read the site.conf.=
=C2=A0 There&#39;s not a lot more to it really.</div></div></div></div><div=
><div class=3D"gmail_extra"><div class=3D"gmail_quote"><div></div></div></d=
iv></div></blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">You don=
=E2=80=99t want to add a site.conf file in any Layer especially if you are =
tweaking a global distri config it would be a bad practice=C2=A0</div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex"><div><div class=3D"gmail_extra"><div class=3D"gma=
il_quote"><div><br></div><div>Ross=C2=A0</div></div></div></div></blockquot=
e></div></div>

--001a11412ae22f9223055cdbe93f--

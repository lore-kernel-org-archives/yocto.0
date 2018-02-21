Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67275E00E4F; Tue, 20 Feb 2018 20:59:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f172.google.com (mail-qt0-f172.google.com
	[209.85.216.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B55FAE00DCE
	for <yocto@yoctoproject.org>; Tue, 20 Feb 2018 20:59:53 -0800 (PST)
Received: by mail-qt0-f172.google.com with SMTP id d26so508527qtj.4
	for <yocto@yoctoproject.org>; Tue, 20 Feb 2018 20:59:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=vWs/X56XVUnvxdwO1qX5GcSILnTbziZKlRzWMQe4aHg=;
	b=DCoP7WGWNkEwvgkmuyQypp2CHeEzirbefdHGOmyVuLXVPsGDTRPr11nEvNwHjeF3pw
	AKnmp9eEHejZyhttRDiptMUYXGIDGfFloPQDoCBVpz1U4Sjnuevl+uJEkXUXgRV3gP3B
	Gzt+NDlpUfGnlcqY4CCmhPQtwGbyHn4vijnjF3yiU7jZMYWfRhzU6jXWTL0NL4recR4F
	bVDt/XiZTiI9gyrLLz8tv7ZS5ULMXrrq9duZuHLICsRR1VgsSJCE3649iYYlUnYtsViA
	UdC1i/x6aBsAd1nPgcbqZSjmMK6LSWkLyS8SWSig99wP/FdIsU7xP+AOdiguqaFPrbuK
	/0GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=vWs/X56XVUnvxdwO1qX5GcSILnTbziZKlRzWMQe4aHg=;
	b=QOe9Ae7928WyQSZPpsh13pisjVm43FedADK2Fgeo8A2dLX0h2xZELQhHv51aXgg3rB
	ajIDYpWPD0OKwhI27eWof+4Tisr9TBa5MZC3SYxXIP7ExOsbbTc75HDXAye+v1SgXtRW
	6yv8a5p3VF5T2eWQ2CFRxeHSCU35/d9w54ztqiVWmJC6EPW8Ozlxa/eDiyVlXPEwPckR
	mUdpXgqyYwN+Ts78u5IwhI15jTO9TYRF9f4JYePVd9/d58SlJuLb/YTqXGYuewFnGZ9L
	puv+tbC5/7Mm6LMIle12ARqIbfl7e1dI7a6jHSZDHsEBBBKEMoQElgqNoro68RNr3ku0
	8E4Q==
X-Gm-Message-State: APf1xPAch0j/Nma/MAMuTtt27VW9XxTLQ3zq1Ryv62412EipPwLEy1CA
	m682jKRUcyM/03oxG6LqeJao+uR/N1zFV6Kz8lg=
X-Google-Smtp-Source: AH8x226jTpi8VxqGjGNFoGz7nGbpe8vuoAvCNYlKbxl5Wp27/b/1iNICpn6CX/KQtpq3/0HeYWHseIonUCU0h+1uI9k=
X-Received: by 10.200.27.122 with SMTP id p55mr3374912qtk.254.1519189192509;
	Tue, 20 Feb 2018 20:59:52 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.130.66 with HTTP; Tue, 20 Feb 2018 20:59:52 -0800 (PST)
In-Reply-To: <6607842.Grd7vgFIgl@peggleto-mobl.ger.corp.intel.com>
References: <CAGAf8LzVXn02A=USYyg6sA00Lew1c-+9SD0WzjSB-0q5KL6b+g@mail.gmail.com>
	<6607842.Grd7vgFIgl@peggleto-mobl.ger.corp.intel.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 21 Feb 2018 05:59:52 +0100
Message-ID: <CAGAf8LwuRZKM3APUs+LQ=HUSoMVtr6JwDE=3x1uMF_K6nrkxrw@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Small documentation issue
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
X-List-Received-Date: Wed, 21 Feb 2018 04:59:54 -0000
Content-Type: multipart/alternative; boundary="94eb2c0b29f62a8c7a0565b1cc84"

--94eb2c0b29f62a8c7a0565b1cc84
Content-Type: text/plain; charset="UTF-8"

Hello Paul,

> If you prefer to do this in local.conf or your distro configuration,
you'll need to change the first line to INHERIT += "extrausers".

I see. Makes it very clear.

Thank you,
Zoran
_______

On Wed, Feb 21, 2018 at 3:51 AM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> Hi Zoran,
>
> On Tuesday, 20 February 2018 7:33:22 PM NZDT Zoran Stojsavljevic wrote:
> > Just to point to the documentation issue on YOCTO Projects wiki page:
> > https://wiki.yoctoproject.org/wiki/FAQ:How_do_I_set_or_
> change_the_root_password
> >
> > This line:
> > inherit extrausers
> >
> > Should be changed as:
> > INHERIT += "extrausers"
> >
> > To be inline with bitbake syntax. It is somehow confusing.
>
> I've now fixed the page - basically that only applies if you are setting it
> in your configuration, the example was for an image recipe (although it
> did not state as such, it does now).
>
> Thanks,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>
>
>

--94eb2c0b29f62a8c7a0565b1cc84
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Paul,<div><br></div><div><span style=3D"color:rgb(0,=
0,0);font-family:sans-serif;font-size:12.7px;font-style:normal;font-variant=
-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:n=
ormal;text-align:start;text-indent:0px;text-transform:none;white-space:norm=
al;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style=
:initial;text-decoration-color:initial;float:none;display:inline"><span>&gt=
;=C2=A0</span>If you prefer to do this in local.conf or your distro configu=
ration, you&#39;ll need to change the first line to<span>=C2=A0</span></spa=
n><code style=3D"font-family:monospace,Courier;background-color:rgb(249,249=
,249);color:rgb(0,0,0);font-size:12.7px;font-style:normal;font-variant-liga=
tures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal=
;text-align:start;text-indent:0px;text-transform:none;white-space:normal;wo=
rd-spacing:0px;text-decoration-style:initial;text-decoration-color:initial"=
>INHERIT +=3D &quot;extrausers&quot;</code><span style=3D"color:rgb(0,0,0);=
font-family:sans-serif;font-size:12.7px;font-style:normal;font-variant-liga=
tures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal=
;text-align:start;text-indent:0px;text-transform:none;white-space:normal;wo=
rd-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:init=
ial;text-decoration-color:initial;float:none;display:inline">.</span>

<br></div><div><br></div><div>I see. Makes it very clear.</div><div><br></d=
iv><div>Thank you,</div><div>Zoran</div><div>_______</div></div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed, Feb 21, 2018 at 3:5=
1 AM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@l=
inux.intel.com" target=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</sp=
an> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex">Hi Zoran,<br>
<span class=3D""><br>
On Tuesday, 20 February 2018 7:33:22 PM NZDT Zoran Stojsavljevic wrote:<br>
&gt; Just to point to the documentation issue on YOCTO Projects wiki page:<=
br>
&gt; <a href=3D"https://wiki.yoctoproject.org/wiki/FAQ:How_do_I_set_or_chan=
ge_the_root_password" rel=3D"noreferrer" target=3D"_blank">https://wiki.yoc=
toproject.org/<wbr>wiki/FAQ:How_do_I_set_or_<wbr>change_the_root_password</=
a><br>
&gt;<br>
&gt; This line:<br>
&gt; inherit extrausers<br>
&gt;<br>
&gt; Should be changed as:<br>
&gt; INHERIT +=3D &quot;extrausers&quot;<br>
&gt;<br>
&gt; To be inline with bitbake syntax. It is somehow confusing.<br>
<br>
</span>I&#39;ve now fixed the page - basically that only applies if you are=
 setting it<br>
in your configuration, the example was for an image recipe (although it<br>
did not state as such, it does now).<br>
<br>
Thanks,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
<br>
<br>
</font></span></blockquote></div><br></div>

--94eb2c0b29f62a8c7a0565b1cc84--

Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 435B3E00827; Sun, 25 Jan 2015 15:15:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
Received: from mail-wg0-f41.google.com (mail-wg0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0472EE003AB
	for <yocto@yoctoproject.org>; Sun, 25 Jan 2015 15:15:38 -0800 (PST)
Received: by mail-wg0-f41.google.com with SMTP id a1so6278293wgh.0
	for <yocto@yoctoproject.org>; Sun, 25 Jan 2015 15:15:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=ZPyPoHQRImhfKN2m2TXSGvXPz6ELS55+w0tWqAWG7H0=;
	b=UbZZzZ8teVaR8e5RztrO8dp3elrPfGdcVvIW+LyO+/tmjqhNEHDPdjMOF2a6YuCbru
	j2UxUnSSaLv/5Pxx/s2jwGsjCv5RJcDFqHA6o6qRc/3rMZERNJuyQe2iqApMCCx/tVzN
	SNOhs4ecBQ6bKE7Jp6GIP9oKeeTM7IknUQDPu0eoEh8aSUTBVIkzNoWt9BOQ9ENeKjn6
	xOD4h0EeBr0NhvZGBtZVCfCA0FaRh8BDkMfHrs06eEkNkyj9RZE+TGr35bCp345OMKo4
	IvUWy0lUUzbAbIaCbYmtpjOLM09MeqHyMrjk537Wk/v9Ftc0+TK/K+5T7qs+2Z77cwrC
	6j9Q==
X-Gm-Message-State: ALoCoQlmDK0xPFS9Y6HW5I4r9QtJv8/AgZgvSmnkDi+bUTAqjmNUNJ2p0JyqH2HH92GImKcrow23
X-Received: by 10.194.48.11 with SMTP id h11mr38399145wjn.23.1422227737191;
	Sun, 25 Jan 2015 15:15:37 -0800 (PST)
MIME-Version: 1.0
Received: by 10.216.107.132 with HTTP; Sun, 25 Jan 2015 15:15:16 -0800 (PST)
X-Originating-IP: [109.100.140.128]
In-Reply-To: <CAAkv465A4n-xaP6McmAHsRLkDQNpuKyGAuAiX7ifwgqkgMiqeQ@mail.gmail.com>
References: <CAAkv465A4n-xaP6McmAHsRLkDQNpuKyGAuAiX7ifwgqkgMiqeQ@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 26 Jan 2015 01:15:16 +0200
Message-ID: <CAK18fxHqY_O3+TWJ8vNt3h-U5d7XtuGjhJBMqqdvhmTm_2ijgw@mail.gmail.com>
To: Tran TriTin <tritini@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Meta-Raspberry and Meta-Oracle-Java: ERROR
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
X-List-Received-Date: Sun, 25 Jan 2015 23:15:48 -0000
Content-Type: multipart/alternative; boundary=047d7bacbd8210c226050d823349

--047d7bacbd8210c226050d823349
Content-Type: text/plain; charset=UTF-8

Hi Tran,

On Tue, Nov 25, 2014 at 5:52 PM, Tran TriTin <tritini@gmail.com> wrote:

> Hi all,
>
> i am newbie to Yocto. Last days i tried to build an image for my
> RaspberryPi with Meta-Raspberry and Meta-Oracle-Java but it did not work.
> This is error i received. Can anyone help me?
> Thanks in advance.
>
>
Did you manage to fix this in the meanwhile? I realized you got no answer
because most probably nobody is actually using java on rpi :) and that
includes me too. Maybe we can check this out and work in fixing rpi with
meta-oracle-java  too.

-- 
*Andrei Gherzan*

--047d7bacbd8210c226050d823349
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Tran,<br><div class=3D"gmail_extra"><br><div class=3D"g=
mail_quote">On Tue, Nov 25, 2014 at 5:52 PM, Tran TriTin <span dir=3D"ltr">=
&lt;<a href=3D"mailto:tritini@gmail.com" target=3D"_blank">tritini@gmail.co=
m</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">=
<div><div>Hi all,<br><br></div>i am newbie to Yocto. Last days i tried to b=
uild an image for my RaspberryPi with Meta-Raspberry and Meta-Oracle-Java b=
ut it did not work. This is error i received. Can anyone help me?<br></div>=
Thanks in advance.<br><div><br></div></div></blockquote><div><br></div><div=
>Did you manage to fix this in the meanwhile? I realized you got no answer =
because most probably nobody is actually using java on rpi :) and that incl=
udes me too. Maybe we can check this out and work in fixing rpi with meta-o=
racle-java =C2=A0too.</div></div><div><br></div>-- <br><div class=3D"gmail_=
signature"><div dir=3D"ltr"><div style=3D"text-align:center"></div><div sty=
le=3D"text-align:center"><div align=3D"left"><b style=3D"font-family:Arial;=
font-size:small;color:rgb(51,51,51);text-align:center">Andrei Gherzan</b><b=
r></div></div></div></div>
</div></div>

--047d7bacbd8210c226050d823349--

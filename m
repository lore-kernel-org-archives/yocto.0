Return-Path: <pawan4749@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A642CE00857; Tue, 27 Mar 2018 02:19:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pawan4749[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f194.google.com (mail-ot0-f194.google.com
	[74.125.82.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C46FE00857
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2018 02:19:15 -0700 (PDT)
Received: by mail-ot0-f194.google.com with SMTP id v23-v6so23746309oth.9
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2018 02:19:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=2cbgd65GtEXcaUvZWU+do1CEQ1Wi+y9nsyXZoZP4K44=;
	b=Zka3ZxQcEeY9lvXtZnPCGz4+RG3U0qMtpXYFMB+85OgRJvOYi5NEkbm0HbUdMUqXHZ
	Alc9/tCw2KOCB0ZeQwlHQh+bW9hgZ2NJCUr4l8GGNhYY2nl+EKH98L7RH48+rha9pJxg
	kozuI6SeH3AiKL0Rhy/n6E6VYJ8fTyGLOVZ2YabMy1ZLt7iuxZmGKYP+rfAh5dCFoynE
	zDyASvZbpHemtp/oZPilM/DzL7iM7euUd1Xn/QHc6b/ejwjunbXliVB3To21mamquMtr
	R+9sVjjlwfQttp8YJxjm1uHpfdxvjrLZVy2PYk8sbGn0xsXAHL7f3VNxGEM6JO3IpckV
	vGYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=2cbgd65GtEXcaUvZWU+do1CEQ1Wi+y9nsyXZoZP4K44=;
	b=tqNCqEEeYWpYw3ZJhfrt4N6DYi7CgoRzlGhyLq8REjddz8ghjvOrfLq7XfYfAeJacj
	5Zay73PpXRZn2qFdQ/6Khw01o5Ri6qTEHwUstXk7JuvwPzT0jO9WBkW21Qq3W6bmzNaF
	yt6C7tsV70lZTDLRsqJsJn6IdUFkGLwe6sPmGH5qLiF0gU/PBH05jyaBjo4cLvaP94Qc
	ItU2U1SvnsW7JMONGGngiItg7vJ3ptarPKbRksgqwA+F3z1/+Zuu2wMfpPnq1qIPFCkv
	NqbgphCk9P+R2vWpoAhvo30p9Ci5BF7JAUE82zznuod+H+H3c30YakOh3f+v+cxW0hf9
	Jxlw==
X-Gm-Message-State: AElRT7EXELkaPAHhXZUtk+TiQcsdv/yTcgc7IosWOLa30VptglxAKdPu
	GJMoGAq5LuLIDQG5dtDIJkU1ilb387tfpRMQXo8=
X-Google-Smtp-Source: AG47ELsZT0YJmhCU6M/dPM8oYjJhk1ELxEJyMbV1jdHPjWDnDjrdzlWx/0NAbmCC8k8JSORqydUoeknMtkB7Hz9PZDc=
X-Received: by 2002:a9d:f28:: with SMTP id 37-v6mr20772064ott.0.1522142355355; 
	Tue, 27 Mar 2018 02:19:15 -0700 (PDT)
MIME-Version: 1.0
References: <CALd6x_uezA39f9aRX_de7SrTCcdFUoLKW1_2URuVR_prMMhQsg@mail.gmail.com>
	<1521820243.3242.187.camel@gmail.com>
In-Reply-To: <1521820243.3242.187.camel@gmail.com>
From: pawanKumar <pawan4749@gmail.com>
Date: Tue, 27 Mar 2018 09:19:04 +0000
Message-ID: <CALd6x_s20N1+cW6XmF0BE1g0UnONXq9i+m4_y5hVHg+Cic6gcw@mail.gmail.com>
To: Joshua Watt <jpewhacker@gmail.com>
X-Mailman-Approved-At: Tue, 27 Mar 2018 09:15:13 -0700
Cc: yocto@yoctoproject.org
Subject: Re: Bitbake failure:
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
X-List-Received-Date: Tue, 27 Mar 2018 09:19:17 -0000
Content-Type: multipart/alternative; boundary="000000000000637ee70568616242"

--000000000000637ee70568616242
Content-Type: text/plain; charset="UTF-8"

Thanks for your tip.
Can I use capital c in place of small c.

On Fri, Mar 23, 2018, 9:20 PM Joshua Watt <jpewhacker@gmail.com> wrote:

> On Fri, 2018-03-23 at 07:31 +0000, pawanKumar wrote:
>
> Hi team,
> When I tried to run (bitbate -c fetchall) it is giving error as
> "target do_fetchall is not found for image core-image-sato".
> How to over come this error.
>
>
> I believe fetchall was superseded by --runall. Try:
>
> bitbake --runall fetch core-image-sato
>
>
> Regards
> Pavan.
>
>

--000000000000637ee70568616242
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Thanks for your tip.<div dir=3D"auto">Can I use capital c=
 in place of small c.</div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr">On Fri, Mar 23, 2018, 9:20 PM Joshua Watt &lt;<a href=3D"mailto:jpewh=
acker@gmail.com">jpewhacker@gmail.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex"><div><div>On Fri, 2018-03-23 at 07:31 +0000, pawanKumar w=
rote:</div><blockquote type=3D"cite" style=3D"margin:0 0 0 .8ex;border-left=
:2px #729fcf solid;padding-left:1ex"><div dir=3D"auto">Hi team,<div dir=3D"=
auto">When I tried to run (bitbate -c fetchall) it is giving error as</div>=
<div dir=3D"auto">&quot;target do_fetchall is not found for image core-imag=
e-sato&quot;.=C2=A0</div><div dir=3D"auto">How to over come this error.</di=
v></div></blockquote><div><br></div><div>I believe fetchall was superseded =
by --runall. Try:</div><div><br></div><div>bitbake --runall fetch core-imag=
e-sato</div><div><br></div><blockquote type=3D"cite" style=3D"margin:0 0 0 =
.8ex;border-left:2px #729fcf solid;padding-left:1ex"><div dir=3D"auto"><div=
 dir=3D"auto"><br></div><div dir=3D"auto">Regards</div><div dir=3D"auto">Pa=
van.</div></div>
</blockquote></div></blockquote></div>

--000000000000637ee70568616242--

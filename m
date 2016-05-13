Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B238CE00C44; Fri, 13 May 2016 02:26:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f174.google.com (mail-ig0-f174.google.com
	[209.85.213.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70E2CE00C1E
	for <yocto@yoctoproject.org>; Fri, 13 May 2016 02:26:46 -0700 (PDT)
Received: by mail-ig0-f174.google.com with SMTP id s8so7331186ign.0
	for <yocto@yoctoproject.org>; Fri, 13 May 2016 02:26:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=2Nr/2MysgCWk9TR8P0kG3KmNv++Tpt7E5bpH8TNpI8c=;
	b=VMNfpdN5dehoWjDv8CxzH3L94K7a12+CwNc8UuGbOpbe8eqHuh8KMtigacxH0DrnMY
	R0hzuhK7teHDQvOgFLWzD7zUOIsuvKJQBzYX0sQuFHI1z06JvyF19vXsn0Mk0BHb6HCS
	dyF8oJInHoLn+x5txT+SMi4+rSOtKg38vTlFaWVJGKyO59+nHXNNAcmU5+yF6pSAmB10
	o4fJiVbauDbtWMJ7G+t2c6Qj/hI2vRershp1Ly4fRUpuPMACspuWMtRC5hB0poG10cwk
	4R08k2nJOsLMW1EB9eFeJtDpK6sq8czwZkKfQfZOsQjmjutM4IMZxbYYB+19SPAElTFA
	j/sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=2Nr/2MysgCWk9TR8P0kG3KmNv++Tpt7E5bpH8TNpI8c=;
	b=amdZGvxVQl9/muhKM4ZyovxNRrvZUVx0id1uUUEeM1DntOzNxYWhf2VKeJCS1PKtHm
	xT/Oet4FEniorthIkSAflk9qubs8AarUZxm+GKT+7BSON0gw0SzH9Zz5Oy7i8JUzTbqE
	s/ELbeEIJHXmqlwqJsK6kK523LGqnM5N9hOMGnYAiYJuDBDXgMI9cQwoZQ5/ufRq0B/2
	sfL6RUwm3I9hKviYdMdrw12dngUHmCSUWbFM28dpRJiOAiZth43mBDAlePGzJhPES4Fb
	wmjorBCFOECHv9Krr8FIDdwFDEiZLfzfBfCIY54+xajUsQ4qfKy2/sCNKGF4HerXcnib
	fafg==
X-Gm-Message-State: AOPr4FUM9lauuRfsiq39fNtCjpgkXa87N9+9iexQRhHNK/OxVgxLMBSD5cCIHAph6J4K8qVoq2f/VCPqUmKsh16L
X-Received: by 10.50.60.132 with SMTP id h4mr40298igr.78.1463131605504; Fri,
	13 May 2016 02:26:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Fri, 13 May 2016 02:26:26 -0700 (PDT)
In-Reply-To: <005e01d1ace8$9e241510$da6c3f30$@icnexus.com.tw>
References: <005e01d1ace8$9e241510$da6c3f30$@icnexus.com.tw>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 13 May 2016 10:26:26 +0100
Message-ID: <CAJTo0LbrexPW0h5DfFbeS91GgSYxpCH5uyFOrXJKdbXzksfD_A@mail.gmail.com>
To: "Chandrakanth Sherkhane (IC Nexus)" <chan@icnexus.com.tw>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: help
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
X-List-Received-Date: Fri, 13 May 2016 09:26:49 -0000
Content-Type: multipart/alternative; boundary=bcaec5015c9b9b23ea0532b5df22

--bcaec5015c9b9b23ea0532b5df22
Content-Type: text/plain; charset=UTF-8

On 13 May 2016 at 08:25, Chandrakanth Sherkhane (IC Nexus) <
chan@icnexus.com.tw> wrote:

> Could anyone help to provide more details for,
>
> 1. Yocto Virtual Keyboard in French language - is it available now?
>
> 2. If not available, when will it be available?
>
> 3. Is the Yocto Virtual Keyboard available in any other languages?
>

There's no such thing as the Yocto Virtual Keyboard.  I presume you mean
matchbox-keyboard.  Looking at the sources:

$ ls layouts/*xml
layouts/keyboard-dvorak.xml    layouts/keyboard-fi.xml
 layouts/keyboard-ru.xml  layouts/keyboard.xml
layouts/keyboard-extended.xml  layouts/keyboard-numpad.xml
 layouts/keyboard-us.xml

There's no French layout, but these should provide plenty of examples as to
how to build it yourself.  If you implement the layout, please consider
sending the patch so everyone else can use it.

Ross

--bcaec5015c9b9b23ea0532b5df22
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 13 May 2016 at 08:25, Chandrakanth Sherkhane (IC Nexus) <span dir=3D"ltr=
">&lt;<a href=3D"mailto:chan@icnexus.com.tw" target=3D"_blank">chan@icnexus=
.com.tw</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,2=
04,204);border-left-style:solid;padding-left:1ex"><p class=3D"MsoNormal"><s=
pan style=3D"font-family:&#39;Times New Roman&#39;,serif">Could anyone help=
 to provide more details for,<u></u><u></u></span></p><p class=3D"MsoNormal=
"><span style=3D"font-family:&#39;Times New Roman&#39;,serif">1. Yocto Virt=
ual Keyboard in French language - is it available now?<u></u><u></u></span>=
</p><p class=3D"MsoNormal"><span style=3D"font-family:&#39;Times New Roman&=
#39;,serif">2. If not available, when will it be available?<u></u><u></u></=
span></p><p class=3D"MsoNormal"><span style=3D"font-family:&#39;Times New R=
oman&#39;,serif">3. Is the Yocto Virtual Keyboard available in any other la=
nguages?</span></p></blockquote></div><br>There&#39;s no such thing as the =
Yocto Virtual Keyboard.=C2=A0 I presume you mean matchbox-keyboard.=C2=A0 L=
ooking at the sources:</div><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra"><div class=3D"gmail_extra">$ ls layouts/*xml</div><div cla=
ss=3D"gmail_extra">layouts/keyboard-dvorak.xml =C2=A0 =C2=A0layouts/keyboar=
d-fi.xml =C2=A0 =C2=A0 =C2=A0layouts/keyboard-ru.xml =C2=A0layouts/keyboard=
.xml</div><div class=3D"gmail_extra">layouts/keyboard-extended.xml =C2=A0la=
youts/keyboard-numpad.xml =C2=A0layouts/keyboard-us.xml</div><div class=3D"=
gmail_extra"><br></div><div class=3D"gmail_extra">There&#39;s no French lay=
out, but these should provide plenty of examples as to how to build it your=
self.=C2=A0 If you implement the layout, please consider sending the patch =
so everyone else can use it.</div><div class=3D"gmail_extra"><br></div><div=
 class=3D"gmail_extra">Ross</div></div></div>

--bcaec5015c9b9b23ea0532b5df22--

Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29785E006EF; Tue, 13 Jan 2015 15:57:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-we0-f170.google.com (mail-we0-f170.google.com
	[74.125.82.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4932E003E3
	for <yocto@yoctoproject.org>; Tue, 13 Jan 2015 15:57:30 -0800 (PST)
Received: by mail-we0-f170.google.com with SMTP id w61so5900550wes.1
	for <yocto@yoctoproject.org>; Tue, 13 Jan 2015 15:57:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=MFjyJCwMLy4c94zHS6qr/NoNj70/Ue9G5y5o0XL6b+s=;
	b=ldqdm0YESwmyLSXbZi4/BxXtC1hDIGea9KKLzYGf+tX3xEAQE+MxMM2WQzXqcVl/bW
	S2SAfCg5MMz7sYX8qSe0Y0IWxIULza4fBxiZ8R8uiFjSYKug5tesYS54QNom6hB97mDI
	P6UwdT+ODswO8E+ge4XLoh2R6ZDQv3DCljwT4JBum+xiXwncJa1K4evnLnxPEnIU6qGB
	EKOe1bij+jVRQNmEG5wyrrpMRwm/Rvc6siTKMnFwSyMOW/coT/QKEx3pmeBtmQ5KsoIF
	NHkwaTYNWnxJ/jxfPJeDLDHPZpIzdLQtaL2zZR8ot61DSW8MoLNbk5S32rSDgTsV6ARG
	yQpQ==
X-Gm-Message-State: ALoCoQmuDnJEK32xH8Y5u1kDQa8vpkayizIo1h2TxAqnWmycKEoPDZnXi0YeAFqJ8LHvssghpHLT
X-Received: by 10.180.211.195 with SMTP id ne3mr36849603wic.52.1421193449684; 
	Tue, 13 Jan 2015 15:57:29 -0800 (PST)
MIME-Version: 1.0
Received: by 10.216.107.132 with HTTP; Tue, 13 Jan 2015 15:57:09 -0800 (PST)
X-Originating-IP: [195.249.186.165]
In-Reply-To: <1078450525.611902.1418929833293.JavaMail.yahoo@jws10942.mail.sg3.yahoo.com>
References: <1078450525.611902.1418929833293.JavaMail.yahoo@jws10942.mail.sg3.yahoo.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 14 Jan 2015 00:57:09 +0100
Message-ID: <CAK18fxGAQdzCUZ6_fgEymRMqgau=t33Lr=qMqa_06BvJRXjgbw@mail.gmail.com>
To: abhishek srivastava <just_abhi22@yahoo.co.in>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: basic questions on LINUX costomization for raspberrypi
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
X-List-Received-Date: Tue, 13 Jan 2015 23:57:37 -0000
Content-Type: multipart/alternative; boundary=001a11c34850b9d601050c916202

--001a11c34850b9d601050c916202
Content-Type: text/plain; charset=UTF-8

Hello,

Please read the meta-raspberrypi README for basic information and use .
http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/tree/README

1) it depends on the image you are baking. What do you mean by reference
list?
2) IMAGE_INSTALL_append
http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-IMAGE_INSTALL
What process are you talking about?
3) You modify the kernel config, recompile the kernel and then the image.
We are developing a better way to configure kernel. Is already in review -
hope to get some time for that soon.
4) Applications should be packages, right? Could you please rephrase your
question?

Cheers!

On Thu, Dec 18, 2014 at 8:10 PM, abhishek srivastava <
just_abhi22@yahoo.co.in> wrote:

> Hi allPlease answer to these questions regarding LINUX kernel image build
> using yocto project:
> 1) What basic LINUX packages needed for raspberrypi ? any list for
> reference ?
> 2) What if I want to add any package after my image is build ? Do i need
> to repeat the complete process again?
> 3) How can i add any driver (ex: TFT driver) to the build kernel image?
> 4) How to add any desired applications to packages?
>
> Thank you for your help
>
> regards
>
> Abhishek
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


-- 
*Andrei Gherzan*

--001a11c34850b9d601050c916202
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>Please read the meta-raspberrypi=
 README for basic information and use .=C2=A0</div><div><a href=3D"http://g=
it.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/tree/README">http://git.=
yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/tree/README</a><br></div><d=
iv><br></div><div>1) it depends on the image you are baking. What do you me=
an by reference list?</div><div>2) IMAGE_INSTALL_append=C2=A0<a href=3D"htt=
p://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-IMAGE_=
INSTALL">http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.htm=
l#var-IMAGE_INSTALL</a></div><div>What process are you talking about?</div>=
<div>3) You modify the kernel config, recompile the kernel and then the ima=
ge. We are developing a better way to configure kernel. Is already in revie=
w - hope to get some time for that soon.</div><div>4) Applications should b=
e packages, right? Could you please rephrase your question?</div><div><br><=
/div><div>Cheers!</div></div><div class=3D"gmail_extra"><br><div class=3D"g=
mail_quote">On Thu, Dec 18, 2014 at 8:10 PM, abhishek srivastava <span dir=
=3D"ltr">&lt;<a href=3D"mailto:just_abhi22@yahoo.co.in" target=3D"_blank">j=
ust_abhi22@yahoo.co.in</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex"><div><div style=3D"color:#000;background-color:#fff;font-family:Helveti=
caNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,Sans-Serif;font-size:14=
px"><div>Hi allPlease answer to these questions regarding LINUX kernel imag=
e build using yocto project:<br>1) What basic LINUX packages needed for ras=
pberrypi ? any list for reference ? <br>2) What if I want to add any packag=
e after my image is build ? Do i need to repeat the complete process again?=
 <br>3) How can i add any driver (ex: TFT driver) to the build kernel image=
? <br>4) How to add any desired applications to packages?</div><div><br></d=
iv><div dir=3D"ltr">Thank you for your help</div><div dir=3D"ltr"><br></div=
><div dir=3D"ltr">regards<span class=3D"HOEnZb"><font color=3D"#888888"><br=
></font></span></div><span class=3D"HOEnZb"><font color=3D"#888888"><div>=
=C2=A0</div><div><div><span style=3D"font-size:16px"><span style=3D"font-fa=
mily:garamond,new york,times,serif"><span style=3D"font-weight:bold">Abhish=
ek<br><span>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 </span><span><=
br></span></span></span></span></div></div></font></span></div></div><br>--=
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div cla=
ss=3D"gmail_signature"><div dir=3D"ltr"><div style=3D"text-align:center"></=
div><div style=3D"text-align:center"><div align=3D"left"><b style=3D"font-f=
amily:Arial;font-size:small;color:rgb(51,51,51);text-align:center">Andrei G=
herzan</b><br></div></div></div></div>
</div>

--001a11c34850b9d601050c916202--

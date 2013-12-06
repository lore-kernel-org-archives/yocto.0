Return-Path: <gmshastri@gmail.com>
Received: from mail-lb0-f178.google.com (mail-lb0-f178.google.com
	[209.85.217.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3577E0078E
	for <yocto@yoctoproject.org>; Thu,  5 Dec 2013 23:45:16 -0800 (PST)
Received: by mail-lb0-f178.google.com with SMTP id c11so122973lbj.9
	for <yocto@yoctoproject.org>; Thu, 05 Dec 2013 23:45:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=oGPxqhnEDDhwETZOZZ00GEmY+At9LQg//jZypC6j21U=;
	b=kAm9UUmZfHcDMxudKSWEee3IUbZkK3GoZNA0/c6oihJUeNewqPW/f/8U7qV8svpuxD
	WjXfZVYP0ycdhzdejLPIFt3pvsqDz2CVgJNcaAQH+n9ccKGZjlzDe3HXunMThWsb91ey
	BH14D563rIZme+5NGIo8PfuwuPRY5NjcPPB8qQSC0WZOOKy05YdnpmHhmDjVU98taM7O
	46S2NFuvJNaYu0DoR7VLPP6uW3P/mnbyAqLkiG0bmxHMftLWShrdzl44jHCIt9TpJEU0
	mLXGfgD7n/EZJg5P2FuiOVcBeuN4bPEYrVyV1nF1EjJ1BU/mNpYMkFOdFRIGVm7mIoI2
	sWxw==
MIME-Version: 1.0
X-Received: by 10.112.78.4 with SMTP id x4mr77548lbw.81.1386315915273; Thu, 05
	Dec 2013 23:45:15 -0800 (PST)
Received: by 10.114.2.229 with HTTP; Thu, 5 Dec 2013 23:45:15 -0800 (PST)
In-Reply-To: <CALEed8ZKEEbWbfYiHfnRN6Gq4zsJT68hpcH9vBiuFBRFK8hVWA@mail.gmail.com>
References: <CALEed8ZKEEbWbfYiHfnRN6Gq4zsJT68hpcH9vBiuFBRFK8hVWA@mail.gmail.com>
Date: Fri, 6 Dec 2013 13:15:15 +0530
Message-ID: <CAE_REAtn5pvXfSGJm0dRGmyETTfUz9yfv_Zq-Q_X91BEMuoXfQ@mail.gmail.com>
From: Gaurang Shastri <gmshastri@gmail.com>
To: Bernard Mentink <bmentink@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Network Manager
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
X-List-Received-Date: Fri, 06 Dec 2013 07:45:18 -0000
Content-Type: multipart/alternative; boundary=001a11c3d89ead2b5704ecd8d373

--001a11c3d89ead2b5704ecd8d373
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I don't know you can setup static IP for eth0 using nmcli, what I remember
is you can see the status of various connections using nmcli...
{{{

nmcli nm help
Usage: nmcli nm { COMMAND | help }

 COMMAND := { status | sleep | wakeup | wifi | wwan }

}}}

If you want to setup static IP at startup, you need to play with
/etc/network/interfaces file. For more information, you can see "man
interfaces". (Of course on Ubuntu).

//Gaurang Shastri



On Fri, Dec 6, 2013 at 6:21 AM, Bernard Mentink <bmentink@gmail.com> wrote:

> Hi Guys,
>
> Anyone know how to use the latest version of Network Manager (0.9.8) to
> use nmcli to setup a static IP for eth0?
>
> I want the network to boot up with static ..
>
> Thanks,
> Bernie
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a11c3d89ead2b5704ecd8d373
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi,<br><br>I don&#39;t know you can setup static=
 IP for eth0 using nmcli, what I remember is you can see the status of vari=
ous connections using nmcli...<br>{{{<br><pre style=3D"margin:0.5ex 0px 1.5=
ex;padding:1em;font-size:2.6ex;overflow:auto;border:1px dashed rgb(47,111,1=
71);color:rgb(0,0,0);background-color:rgb(249,249,249);line-height:1.1em;fo=
nt-style:normal;font-variant:normal;font-weight:normal;letter-spacing:norma=
l;text-align:start;text-indent:0px;text-transform:none;word-spacing:0px">
nmcli nm help
Usage: nmcli nm { COMMAND | help }

 COMMAND=A0:=3D { status | sleep | wakeup | wifi | wwan }
</pre>}}}<br><br></div>If you want to setup static IP at startup, you need =
to play with /etc/network/interfaces file. For more information, you can se=
e &quot;man interfaces&quot;. (Of course on Ubuntu).<br><br></div>//Gaurang=
 Shastri<br class=3D"">
<div><div><br></div></div></div><div class=3D"gmail_extra"><br><br><div cla=
ss=3D"gmail_quote">On Fri, Dec 6, 2013 at 6:21 AM, Bernard Mentink <span di=
r=3D"ltr">&lt;<a href=3D"mailto:bmentink@gmail.com" target=3D"_blank">bment=
ink@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi Guys,<div><br></div><div=
>Anyone know how to use the latest version of Network Manager (0.9.8) to us=
e nmcli to setup a static IP for eth0?</div>
<div><br></div><div>I want the network to boot up with static ..</div>
<div><br></div><div>Thanks,</div><div>Bernie</div></div>
<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--001a11c3d89ead2b5704ecd8d373--

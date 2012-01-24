Return-Path: <kbaker@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 413E6E00592
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2012 12:27:02 -0800 (PST)
Received: by vbbfn1 with SMTP id fn1so4215738vbb.35
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2012 12:27:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=RVOKTJPwdVl8jqct7Q3oHUHsoNZh97GDgcsAHF0fXjs=;
	b=ktiW7nOSMYW10NRt8F1tUnCAjCHXhxZct7D47K2VppitcQ1PuB9ySaLgwsEZQ3oPaU
	I6cmthGpl+3BT0ntjaG7xQ1WyXAlJMUSpK5yBsiaJjvx+DPxPJH3uM7smACgbGouk6oZ
	xmuRGejiJwxJ0HLQ+C0nylYEoQ883PSpZ9vHg=
Received: by 10.52.94.148 with SMTP id dc20mr7052544vdb.109.1327436821228;
	Tue, 24 Jan 2012 12:27:01 -0800 (PST)
MIME-Version: 1.0
Received: by 10.220.6.16 with HTTP; Tue, 24 Jan 2012 12:26:40 -0800 (PST)
In-Reply-To: <CADzUK1J6yNz8UOUYCsWjw_w63aTkUni8eBKXOEjOj=LDucGzQg@mail.gmail.com>
References: <CADzUK1J+pYY8hpKKY786ZWPM2O7SkZvMqjOH-5wt8323_kR=gw@mail.gmail.com>
	<CAMKF1somkqJp-DT=faDqNAFww98Q=rb5R5_ZbC2HhxSTkLG9Tg@mail.gmail.com>
	<CADzUK1+bGq=n_yRwuJDv_9rHD+cK-n7e89mg8nWcNHLX09+zCg@mail.gmail.com>
	<CAMKF1sqNmWvR=m0wnjtjdDr70y1ex1JyXVObTvoq5vvvuWM2uw@mail.gmail.com>
	<CADzUK1J6yNz8UOUYCsWjw_w63aTkUni8eBKXOEjOj=LDucGzQg@mail.gmail.com>
From: Kevin Baker <kbaker@gmail.com>
Date: Tue, 24 Jan 2012 14:26:40 -0600
Message-ID: <CA+NaiT-HF_OTqzmDe0ZEz=ZXBZ+aUn_oo3mr3SACw7STDV0LSw@mail.gmail.com>
To: autif khan <autif.mlist@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: libtool version mismatch
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 24 Jan 2012 20:27:02 -0000
Content-Type: multipart/alternative; boundary=bcaec5015f2b30ee1f04b74bf86a

--bcaec5015f2b30ee1f04b74bf86a
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Jan 24, 2012 at 11:46 AM, autif khan <autif.mlist@gmail.com> wrote:

>
> Can you point me to an existing recipe that already does something
> similar? I am not sure what I am looking for.
>
> Thanks for all the help!
>
>
Cross-compiling mono is messy, at least judging from the existing recipe
from OE-classic:

http://cgit.openembedded.org/openembedded/tree/recipes/mono/README

I remember using this recipe with OE-classic and getting a working version
compiled for ARM, and the resulting binaries/libraries seemed to work fine
for test programs. You may want to look there for some ideas.

Kevin

--bcaec5015f2b30ee1f04b74bf86a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_quote">On Tue, Jan 24, 2012 at 11:46 AM, autif khan <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:autif.mlist@gmail.com">autif.mlist@gma=
il.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">

<div class=3D"im"><br>
</div>Can you point me to an existing recipe that already does something<br=
>
similar? I am not sure what I am looking for.<br>
<br>
Thanks for all the help!<br>
<span class=3D"HOEnZb"></span><br></blockquote><div><br>Cross-compiling mon=
o is messy, at least judging from the existing recipe from OE-classic:<br><=
br><a href=3D"http://cgit.openembedded.org/openembedded/tree/recipes/mono/R=
EADME">http://cgit.openembedded.org/openembedded/tree/recipes/mono/README</=
a><br>

<br>I remember using this recipe with OE-classic and getting a working vers=
ion compiled for ARM, and the resulting binaries/libraries seemed to work f=
ine for test programs. You may want to look there for some ideas.<br><br>

Kevin<br></div></div>

--bcaec5015f2b30ee1f04b74bf86a--

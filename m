Return-Path: <fnognn@unife.it>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FB43E0027E
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2012 04:57:06 -0700 (PDT)
Received: by lboj14 with SMTP id j14so8601584lbo.35
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2012 04:57:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=oxucIsf7l0pILxgD6FJS26lc1aWUuvQfjJF9Iv98RAU=;
	b=HjD2KL9+mH0nw6zuFFGsPX6jfRssjLLAnsZuZSjzUwX2dUjEv2o8xGrKPtBhLhBZE+
	YH+yDWJWgXY246PCd5b8hh3wkWna2talalEaZgF6/cyY5JZxPxVrf634YOwFQSp3FOpw
	S3rfY0lRVKIJTftT0Ol2q6Mmr7WloJvubtjRkDgtLKp384X1E5nvJCNDIpwq85lbTJty
	EKQf323A8/35eQXPEsByQl9/Xl1zL1eosQFOmTphpBcE5dkqsE2uW6bx3xM++blKuulo
	ZP2XNCk72Edgjkg6/mToX3kl+ROKeJ5t7QVWqiToxpdLQU+Jq3s/MmYNsoxKYbrMGj6i
	m6Sg==
Received: by 10.112.99.98 with SMTP id ep2mr5292716lbb.45.1342439825577; Mon,
	16 Jul 2012 04:57:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.112.96.35 with HTTP; Mon, 16 Jul 2012 04:56:42 -0700 (PDT)
In-Reply-To: <CAMKF1sqrXQ9PGH-S9tttBd3KRvSffwDmxv3dZSWFKuDe9e7UNQ@mail.gmail.com>
References: <CANsUPaP4h2OUz_4McKQ8jmfm_grv_cCGCMfxZQaGMs7ty8Bf1A@mail.gmail.com>
	<20120628181214.7ACD02026AB@gemini.denx.de>
	<C6510F6D410BB64A8C15398EDC6B847C46A79CD8@ORSMSX101.amr.corp.intel.com>
	<CANsUPaNSy0Me580w0odN76bcHvJZ1-gXFdWadhdnpNR3Q_EEtQ@mail.gmail.com>
	<CAMKF1sqwu1ZsyMyWoY4nfCh0fpWEV+Sw8oORt4iJ+TGAn_mXJw@mail.gmail.com>
	<CANsUPaOzw1Vqw4iDCf2GWtK8Ji-JY9Dg0EfHcdW6KweLt=Gf9A@mail.gmail.com>
	<CAMKF1sqrXQ9PGH-S9tttBd3KRvSffwDmxv3dZSWFKuDe9e7UNQ@mail.gmail.com>
From: Giovanni Foiani <fnognn@unife.it>
Date: Mon, 16 Jul 2012 13:56:42 +0200
Message-ID: <CANsUPaNJZpm5AQ4R0O9E2szAvciUYA9hGST7Mb7C9Z4zovhxrQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Gm-Message-State: ALoCoQmRimdznax5ODqrHPZXvUdHh7eGBpHn9EUGS8HUhcYMrPaPzGip0gC1gfYMCbyU4EbDVAy5
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto and Qt embedded
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
X-List-Received-Date: Mon, 16 Jul 2012 11:57:07 -0000
Content-Type: multipart/alternative; boundary=f46d0401fde1ef99d004c4f120fb

--f46d0401fde1ef99d004c4f120fb
Content-Type: text/plain; charset=ISO-8859-1

Thanks Khem,
I successfully found g++ compiler path which is:

/opt/poky/1.2.1/sysroots/i686-pokysdk-linux/usr/bin/armv7a-vfp-neon-poky-linux-gnueabi/arm-poky-linux-gnueabi-g++

now I was able to configure the poky tool chain into Qt creator (using
default mkspec which is linux-g++); after that I tried to configure Qt
Version (4.7.4) in Qt creator using the following qmake file:

/opt/poky/1.2.1/sysroots/i686-pokysdk-linux/usr/bin/qmake

Now Qt creator gives me a warning:

*"ABI detection failed: Make sure to use a matching tool chain when
building"*
*
*
ABI is automatically set to arm-linux-generic-elf and this warning prevents
me to select arm tool chain for building my application.
Am I using the wrong mkspec? (The other ones seems unsuitable for me..)

Thanks

Giovanni
--

Dott. Ing. Giovanni Foiani

Cell:        +39-349-3577515
Phone:    +39-0532-97-4106
mail:        giovanni.foiani@unife.it
CenTec - Corso Guercino, 47 - 44042 Cento (FE)



On Sat, Jul 14, 2012 at 8:17 PM, Khem Raj <raj.khem@gmail.com> wrote:

> On Sat, Jul 14, 2012 at 3:15 AM, Giovanni Foiani <fnognn@unife.it> wrote:
> > So I tried to find g++ compiler using "find" command, into:
> >
> > /opt/poky/1.2.1/sysroots/i686-pokysdk-linux/
> >
> > with no success.
>
> find "*g++"
>

--f46d0401fde1ef99d004c4f120fb
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>Thanks=A0Khem,</div>I successfully found g++ compiler path which is:<d=
iv><br></div><div>/opt/poky/1.2.1/sysroots/i686-pokysdk-linux/usr/bin/armv7=
a-vfp-neon-poky-linux-gnueabi/arm-poky-linux-gnueabi-g++</div><div><br></di=
v>

<div>now I was able to configure the poky tool chain into Qt creator (using=
 default mkspec which is linux-g++); after that=A0I tried to configure Qt V=
ersion (4.7.4) in Qt creator using the following qmake file:</div><div><br>

</div><div>/opt/poky/1.2.1/sysroots/i686-pokysdk-linux/usr/bin/qmake</div><=
div><br></div><div>Now Qt creator gives me a warning:</div><div><br></div><=
div><i>&quot;ABI detection failed: Make sure to use a matching tool chain w=
hen building&quot;</i></div>

<div><i><br></i></div><div>ABI is automatically set to arm-linux-generic-el=
f and this warning prevents me to select arm tool chain for building my app=
lication.</div><div>Am I using the wrong mkspec? (The other ones seems unsu=
itable for me..)</div>

<div><br></div><div>Thanks=A0</div><div><br></div><div>Giovanni</div><div>
<div>--<br><br>Dott. Ing. Giovanni Foiani<br><font face=3D"arial, sans-seri=
f"><span style=3D"border-collapse:collapse"><br></span></font></div><div>Ce=
ll:=A0 =A0 =A0 =A0 +39-349-3577515<br>Phone: =A0=A0 +39-0532-97-4106<br>mai=
l:=A0 =A0 =A0 =A0 <a href=3D"mailto:giovanni.foiani@unife.it" target=3D"_bl=
ank">giovanni.foiani@unife.it</a></div>

<div><span style=3D"font-family:arial,helvetica,sans-serif;font-size:13px;l=
ine-height:13px">CenTec - Corso Guercino, 47 - 44042 Cento (FE)</span></div=
><br>
<br><br><div class=3D"gmail_quote">On Sat, Jul 14, 2012 at 8:17 PM, Khem Ra=
j <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_bl=
ank">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex">

<div class=3D"im">On Sat, Jul 14, 2012 at 3:15 AM, Giovanni Foiani &lt;<a h=
ref=3D"mailto:fnognn@unife.it">fnognn@unife.it</a>&gt; wrote:<br>
&gt; So I tried to find g++ compiler using &quot;find&quot; command, into:<=
br>
&gt;<br>
&gt; /opt/poky/1.2.1/sysroots/i686-pokysdk-linux/<br>
&gt;<br>
&gt; with no success.<br>
<br>
</div>find &quot;*g++&quot;<br>
</blockquote></div><br></div>

--f46d0401fde1ef99d004c4f120fb--

Return-Path: <jdelapena@lexmark.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA24EE004D1; Sun, 10 Aug 2014 22:49:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.18.3.22 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from exprod8og111.obsmtp.com (exprod8og111.obsmtp.com [64.18.3.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58D2EE002AA
	for <yocto@yoctoproject.org>; Sun, 10 Aug 2014 22:49:54 -0700 (PDT)
Received: from mail-lb0-f179.google.com ([209.85.217.179]) (using TLSv1) by
	exprod8ob111.postini.com ([64.18.7.12]) with SMTP
	ID DSNKU+hZgmRN2fcHaE+e+ze1N2tUk+LF/0NG@postini.com;
	Sun, 10 Aug 2014 22:49:55 PDT
Received: by mail-lb0-f179.google.com with SMTP id v6so5372323lbi.24
	for <yocto@yoctoproject.org>; Sun, 10 Aug 2014 22:49:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=CIkhLkHPjoW28DifQHK2kk7QhGNL1EG6pPv94M+mflk=;
	b=M4/kfx5zTAFRx406XHpNiAMLbDA3KsC1LpnkK1gZEmz3/V8akYJxkg0pxbqzZ6D7CM
	QD8m3t+pWCxSabwtAZwcOor+KhFJuWo4wC4+a1D9jv2USklg1zU1O5SVU3hutGdmEcvJ
	lHMXibYZLllaFUowe6Kqs3WkRdzjNLLTYgRrilt86pAY9zSOA+A+3NzLiFh2KyTNPbdr
	6jd2mCwv5Px8avy2XpJjQENbqCn8AkO+aaO77EbaGxe9c7RUpv9MqjjgKBUM1DK36lGf
	eaqFr8gPWmL0lhaf0kILacSH31ZJmmL9YcpTZLFSHiJ7ugRWeMMHbDpvxMCfusMzkdBO
	pAoQ==
X-Gm-Message-State: ALoCoQmy1RsfMJqJ2T2QkPaiZTglYVqjH2cVLVKqmcSvnb7th6K1r0msnWf9BbYn6q3Xo7HKJAfDmhdYSDVhi4np4Uf2UkbhnfG1yHcc3NLeEEMzdytHAOVHQXAtpjQ8KR+igVt1ojeT
X-Received: by 10.152.204.74 with SMTP id kw10mr6915653lac.63.1407736192741;
	Sun, 10 Aug 2014 22:49:52 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.152.204.74 with SMTP id kw10mr6915644lac.63.1407736192657;
	Sun, 10 Aug 2014 22:49:52 -0700 (PDT)
Received: by 10.152.36.37 with HTTP; Sun, 10 Aug 2014 22:49:52 -0700 (PDT)
In-Reply-To: <CAJTo0Lap-VyZ0Z=+mqc1hj=6mjhasSLYmzY3bwn3QgRBLXuOZg@mail.gmail.com>
References: <CAJrRHk6A_S98KrnddvaacU7WmhAuuv2gkxwfduAvQTJftuWNgg@mail.gmail.com>
	<CALkREYBOB8sO2SorLLshZZGtk6f=PJpEtUi=sJnHtkGHerm7wA@mail.gmail.com>
	<CAJrRHk6kFWpzUc+r4pd9xmZo+pn=f1a5R5oVtW1yLtqHurFMKg@mail.gmail.com>
	<CAJTo0LaOV7EJDuAnhzjbE+-e1R-75hCmrxB3FVm=yRWzwRLhMw@mail.gmail.com>
	<CAJrRHk6Ygt8Z2Nfr6r5B6WAhKU_ne8H-KcAG5mvV8R=FhgCevw@mail.gmail.com>
	<CAJTo0Lap-VyZ0Z=+mqc1hj=6mjhasSLYmzY3bwn3QgRBLXuOZg@mail.gmail.com>
Date: Mon, 11 Aug 2014 13:49:52 +0800
Message-ID: <CAJrRHk4aQdjQAPm5+cKE3m4XH0kxbcRfAk5Ge+xQ5pzbxkKHFQ@mail.gmail.com>
From: =?UTF-8?Q?Joseph_Andrew_de_la_Pe=C3=B1a?= <jdelapena@lexmark.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SDK not contianing archive libraries
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
X-List-Received-Date: Mon, 11 Aug 2014 05:49:56 -0000
Content-Type: multipart/alternative; boundary=001a11342e04b37ff00500541f0c

--001a11342e04b37ff00500541f0c
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Good day Yocto Dev Community,

Still can't find the solution to include archive libraries into SDK. I have
already checked staticdev and my unit is already using it. The archive libs
are installed successfully in the image's sysroot but apparently not in
sdk. Hope you could shed some light here.

Thanks,
Joseph


On Thu, Jul 24, 2014 at 4:30 PM, Burton, Ross <ross.burton@intel.com> wrote=
:

> On 24 July 2014 08:30, Joseph Andrew de la Pe=C3=B1a <jdelapena@lexmark.c=
om>
> wrote:
> > I've mimic'd the bitbake.conf way of adding -staticdev. Apparently I go=
t
> a
> > QA error stating that there are already multiple definitions of
> -staticdev
> > for my unit.
>
> Your package will already have them due to the default values in
> bitbake.conf, I meant you'll need to add those packages to your SDK.
>
> > BTW, what's the purpose of ALLOW_EMPTY_${PN} =3D "1" and
> ALLOW_EMPTY_${PN}-dev
> > =3D "1"?
>
>
> http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-AL=
LOW_EMPTY
>
> Ross
>

--001a11342e04b37ff00500541f0c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Good day Yocto Dev Community,<div><br></div><div>Still can=
&#39;t find the solution to include archive libraries into SDK. I have alre=
ady checked staticdev and my unit is already using it. The archive libs are=
 installed successfully in the image&#39;s sysroot but apparently not in sd=
k. Hope you could shed some light here.</div>
<div><br></div><div>Thanks,</div><div>Joseph</div></div><div class=3D"gmail=
_extra"><br><br><div class=3D"gmail_quote">On Thu, Jul 24, 2014 at 4:30 PM,=
 Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com=
" target=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"">On 24 July 2014 08:30, Josep=
h Andrew de la Pe=C3=B1a &lt;<a href=3D"mailto:jdelapena@lexmark.com">jdela=
pena@lexmark.com</a>&gt; wrote:<br>

&gt; I&#39;ve mimic&#39;d the bitbake.conf way of adding -staticdev. Appare=
ntly I got a<br>
&gt; QA error stating that there are already multiple definitions of -stati=
cdev<br>
&gt; for my unit.<br>
<br>
</div>Your package will already have them due to the default values in<br>
bitbake.conf, I meant you&#39;ll need to add those packages to your SDK.<br=
>
<div class=3D""><br>
&gt; BTW, what&#39;s the purpose of ALLOW_EMPTY_${PN} =3D &quot;1&quot; and=
 ALLOW_EMPTY_${PN}-dev<br>
&gt; =3D &quot;1&quot;?<br>
<br>
</div><a href=3D"http://www.yoctoproject.org/docs/latest/ref-manual/ref-man=
ual.html#var-ALLOW_EMPTY" target=3D"_blank">http://www.yoctoproject.org/doc=
s/latest/ref-manual/ref-manual.html#var-ALLOW_EMPTY</a><br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br></div>

--001a11342e04b37ff00500541f0c--

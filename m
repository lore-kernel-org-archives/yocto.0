Return-Path: <andrei@gherzan.ro>
Received: from mail-vb0-f49.google.com (mail-vb0-f49.google.com
	[209.85.212.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E067E006DD
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2013 01:02:18 -0700 (PDT)
Received: by mail-vb0-f49.google.com with SMTP id 12so2101576vbf.36
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2013 01:02:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=BKsfk8ePLMQVC3TV7cG1cfD+464lrK/YCnBuFQ69n4E=;
	b=b2nVce9yMvzPWOwQ1M71JXBS52mNDWiVVlNUDdDpQh5B3iYisYcRHFLu/hyxThG8gQ
	hyR0yCK25yZ+Isr2M1EHq4aPu8IUif1doMLPSO9E11BMJ538ZNeYIDQAGgATFoTuctDZ
	XgllcG0JyF5WhuapDbMP3qA13uqy03Q64O4HFaJ7uaNBk6t+mo2GNEbkoxBtqDCGh7Dt
	/yBKGXoF/jK91WNNsvIkU2eT3jNDGVKYNQ9GGRWp2JYYoz82q6C2ObaUi4kCkZwXxCiA
	2bbMX9K96pzG0isN9oXOvn2lK/qP7Qe2jc++k+ciKaJ+NeOPVnho/y4h//w7PM1Bi1ym
	FhbQ==
X-Received: by 10.220.168.7 with SMTP id s7mr3588699vcy.4.1374134537678; Thu,
	18 Jul 2013 01:02:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.44.132 with HTTP; Thu, 18 Jul 2013 01:01:57 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <CAHLvMfaO2Ve+Z4D8_bKWSMAbskqwwJYjzLsVPvPy8z557Wesug@mail.gmail.com>
References: <CAHLvMfaELf9WAjgZJ_wLqGr1wv-wZK++5S27XYbs5ffu668ZRw@mail.gmail.com>
	<CAHLvMfaO2Ve+Z4D8_bKWSMAbskqwwJYjzLsVPvPy8z557Wesug@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 18 Jul 2013 11:01:57 +0300
Message-ID: <CAK18fxHz5rHig5tbLN4VjZAr6itpMUVmfem7bjYzbttbT6wN9g@mail.gmail.com>
To: Rich Bayliss <richbayliss@gmail.com>
X-Gm-Message-State: ALoCoQmRoVBcw+b96dq6iq30UaU8r1GWEUzlH0ZK6qzzLoqH7l8gYGnL1GOimYwWA9ZopBY61F08
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Network not working after first boot success
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
X-List-Received-Date: Thu, 18 Jul 2013 08:02:19 -0000
Content-Type: multipart/alternative; boundary=001a11c2c744fe047f04e1c4a01d

--001a11c2c744fe047f04e1c4a01d
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Jul 17, 2013 at 11:12 PM, Rich Bayliss <richbayliss@gmail.com>wrote:

> I am building rpi-basic-image and I get a successful build and
> first-run. My Pi gets an address over DHCP and I can login over SSH.
>
> However, if I pull the power/reboot - then on the next start-up my
> network stays down. On the local console, if I issue "ifup eth0" I am
> told the interface is already up, while "ifconfig" show no interfaces,
> not even "lo". If I do and "ifdown eth0" followed by an "ifup eth0"
> then my DHCP kicks in and everything is back to normal... until the
> next reboot.
>
> Is this a known issue? Does anyone have any ideas?
>
>
> Never seen this but will try to reproduce it.
Will provide feedback.

Andrei

--001a11c2c744fe047f04e1c4a01d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Wed, Jul 17, 2013 at 11:12 PM, Rich Bayliss <span dir=3D"ltr">&l=
t;<a href=3D"mailto:richbayliss@gmail.com" target=3D"_blank">richbayliss@gm=
ail.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">I am building rpi-basic-image and I get a su=
ccessful build and<br>
first-run. My Pi gets an address over DHCP and I can login over SSH.<br>
<br>
However, if I pull the power/reboot - then on the next start-up my<br>
network stays down. On the local console, if I issue &quot;ifup eth0&quot; =
I am<br>
told the interface is already up, while &quot;ifconfig&quot; show no interf=
aces,<br>
not even &quot;lo&quot;. If I do and &quot;ifdown eth0&quot; followed by an=
 &quot;ifup eth0&quot;<br>
then my DHCP kicks in and everything is back to normal... until the<br>
next reboot.<br>
<br>
Is this a known issue? Does anyone have any ideas?<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br><br></font></span></bloc=
kquote><div style>Never seen this but will try to reproduce it.</div><div s=
tyle>Will provide feedback.</div><div style><br></div><div style>Andrei=A0<=
/div>

</div>
</div></div>

--001a11c2c744fe047f04e1c4a01d--

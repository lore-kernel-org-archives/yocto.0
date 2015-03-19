Return-Path: <k4230r6@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0258BE00832; Thu, 19 Mar 2015 13:15:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (k4230r6[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.180 listed in list.dnswl.org]
Received: from mail-lb0-f180.google.com (mail-lb0-f180.google.com
	[209.85.217.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79AF2E00777
	for <yocto@yoctoproject.org>; Thu, 19 Mar 2015 13:15:17 -0700 (PDT)
Received: by lbnq5 with SMTP id q5so33102781lbn.0
	for <yocto@yoctoproject.org>; Thu, 19 Mar 2015 13:15:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=8I0F9O3OfM289Jh2ei++epbk7A1Yqos3drADV3/3b0A=;
	b=aGkoKZPlick6c6NJTyTsfoNhJXT0nhEhq1Q1PC0OGakaoV687LknNRPmeY6Kho231S
	GPkQKJUCJnPxo4WKlrPj7C/ZHo9YVhQYa8dQKxoqI6UvSYrAj2R3QoxVfIM1z7njdOPc
	yH8eLu8MMv0pxOC88oSBbFLTIhgArI/20oQnEKCYxwTnnj6IpVszzQ9ZRLCtIcp1jNEs
	649zFSIONyBMpWUtzIzSdCyuRo/+cBdzRuVG2rJpZGruAIizvRX/20ObQLvI37M0TyBh
	+0bfGm+Tbtwx2+gYVnkUG6XkyVmTAP9cIUw7r0NdMnMqtQh+GuCSWBauyRC2CeQeFKWS
	Qdzw==
MIME-Version: 1.0
X-Received: by 10.152.45.101 with SMTP id l5mr58507591lam.95.1426796115289;
	Thu, 19 Mar 2015 13:15:15 -0700 (PDT)
Received: by 10.25.206.132 with HTTP; Thu, 19 Mar 2015 13:15:15 -0700 (PDT)
Received: by 10.25.206.132 with HTTP; Thu, 19 Mar 2015 13:15:15 -0700 (PDT)
In-Reply-To: <CAMKF1srCKEL8s_xb8FD8g21ZwQPNRYZeWxvV7GNLrZWMKG==9Q@mail.gmail.com>
References: <CAALGJZaXn=ohTynN0sk_Qz8GPahX44AmdPgQ4=xqSmU8kpM0fg@mail.gmail.com>
	<CAMKF1srCKEL8s_xb8FD8g21ZwQPNRYZeWxvV7GNLrZWMKG==9Q@mail.gmail.com>
Date: Thu, 19 Mar 2015 21:15:15 +0100
Message-ID: <CAALGJZa6x8SsXeWPye=ZEoibzQZYuH+hf8GZKJkn0VaaY48q6A@mail.gmail.com>
From: Christian Ege <k4230r6@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: How to support arm-none-eabi toolchain for u-boot on Amlogic
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
X-List-Received-Date: Thu, 19 Mar 2015 20:15:21 -0000
Content-Type: multipart/alternative; boundary=001a11c288f29e6cb20511a9db1c

--001a11c288f29e6cb20511a9db1c
Content-Type: text/plain; charset=UTF-8

Am 19.03.2015 00:35 schrieb "Khem Raj" <raj.khem@gmail.com>:
>
> On Wed, Mar 18, 2015 at 12:55 PM, Christian Ege <k4230r6@gmail.com> wrote:
> > Hello,
> >
> > it looks like that Amlogic based devices like the ODROID-C1 [1]
> > requires their u-boot compiled with an arm-none-eabi toolchain. The
> > rest kernel and rootfs is compiled with standard arm eabi toolchain. I
> > am wondering how to support this in yocto/openembedded.
>
> are there any specific reasons for doing that ?
> can it be done by passing -ffreestanding option via CFLAGS
> afterall uboot is a baremetal/standalone app.

I do not know any reason, but all tutorials require a arm-none-eabi
toolchain. Could this be required by the ROM bootloader? Frankly I not
familiar with this eabi none eabi difference. Due to the fact that there is
lack of documentation I have to try if I can build it with eabi toolchain.

Regards,
Christian

--001a11c288f29e6cb20511a9db1c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
Am 19.03.2015 00:35 schrieb &quot;Khem Raj&quot; &lt;<a href=3D"mailto:raj.=
khem@gmail.com">raj.khem@gmail.com</a>&gt;:<br>
&gt;<br>
&gt; On Wed, Mar 18, 2015 at 12:55 PM, Christian Ege &lt;<a href=3D"mailto:=
k4230r6@gmail.com">k4230r6@gmail.com</a>&gt; wrote:<br>
&gt; &gt; Hello,<br>
&gt; &gt;<br>
&gt; &gt; it looks like that Amlogic based devices like the ODROID-C1 [1]<b=
r>
&gt; &gt; requires their u-boot compiled with an arm-none-eabi toolchain. T=
he<br>
&gt; &gt; rest kernel and rootfs is compiled with standard arm eabi toolcha=
in. I<br>
&gt; &gt; am wondering how to support this in yocto/openembedded.<br>
&gt;<br>
&gt; are there any specific reasons for doing that ?<br>
&gt; can it be done by passing -ffreestanding option via CFLAGS<br>
&gt; afterall uboot is a baremetal/standalone app.</p>
<p dir=3D"ltr">I do not know any reason, but all tutorials require a arm-no=
ne-eabi toolchain. Could this be required by the ROM bootloader? Frankly I =
not familiar with this eabi none eabi difference. Due to the fact that ther=
e is lack of documentation I have to try if I can build it with eabi toolch=
ain.</p>
<p dir=3D"ltr">Regards,<br>
Christian</p>

--001a11c288f29e6cb20511a9db1c--

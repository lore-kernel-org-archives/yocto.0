Return-Path: <diego.sueiro@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59639E00796; Fri, 12 Sep 2014 02:56:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.43 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (diego.sueiro[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qa0-f43.google.com (mail-qa0-f43.google.com
	[209.85.216.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F11F5E00744
	for <yocto@yoctoproject.org>; Fri, 12 Sep 2014 02:56:16 -0700 (PDT)
Received: by mail-qa0-f43.google.com with SMTP id x12so432871qac.30
	for <yocto@yoctoproject.org>; Fri, 12 Sep 2014 02:56:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=53M3NRmv28SFQJKcDSAKotslpTs2ota9WtOGWW3sfo0=;
	b=QDjROJLq0jQ7vPgWbmf0U/BwvPr/vSHbaGn8YeFqqzRlp0isUreOXgh0GeEYNiILLg
	NSioNRkQXry6o3ymoQXKrFKxweoSSpFj3TuoS5OPyOGNpiVnntUs68sB04e1vEkru0NV
	WMjtJKKIY+WEoHOyKWXs1aDN8hswi3cdQWO+1zAGeE9OrBIV9D6eH+OElcJqvRSIkQOL
	viSTqLj1Ld3i6IOJtFsQpLrhb8fmzE0PeN5imX7fJq0MjRzCtYF6rbrQPUcqmiI8LGIn
	i3OLlwSlJ+jhb26Hk6Lx3bF6bwdPBs4iBFGCl8VUXzvD5yc/q04BoDcSf7iZvGplahrB
	OjaQ==
X-Received: by 10.224.130.7 with SMTP id q7mr10481746qas.42.1410515775714;
	Fri, 12 Sep 2014 02:56:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.85.83 with HTTP; Fri, 12 Sep 2014 02:55:55 -0700 (PDT)
In-Reply-To: <CAKC+oqVYWwraL2V28RCq0ESVwnHB+SqeHZAhQuZ8Ev82R2UqHQ@mail.gmail.com>
References: <CAKC+oqU3-ZQc34489BrPYOVr05JOke=dHUkCruPLfV+LODWDVQ@mail.gmail.com>
	<CAMCfZKE0uEAXz6yDbqs5v1M4MX9LqCqGzv7+4XunNC=GFXbJpQ@mail.gmail.com>
	<CAKC+oqUbbj9oEeekE6SSqDbyTGBJnwaGGYWgeLLRJKS+QB6aMQ@mail.gmail.com>
	<CAMCfZKHQV6X1rL5+jEhjbMF8BYWzEm6XrT9MiD_8gT_uyeokww@mail.gmail.com>
	<CAKC+oqX=KmSUcAR=2Ngvnimq46QKzAo=N+gaTw+M496c-QGW2w@mail.gmail.com>
	<CAMCfZKHegx_E0SK=k+7bAAomjNCRMzTcg-ji4tf8aSRuoziWWw@mail.gmail.com>
	<CAKC+oqUhVfbL-5aNO-xm9y=t-avHdke21X9Gt6N3ge_YkEuYfw@mail.gmail.com>
	<CAMCfZKF=bqW=8zWFgCdrUKGtvZt6PrMa7NOpVRAUxLL+Gm6BtA@mail.gmail.com>
	<CAKC+oqVYWwraL2V28RCq0ESVwnHB+SqeHZAhQuZ8Ev82R2UqHQ@mail.gmail.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Fri, 12 Sep 2014 06:55:55 -0300
Message-ID: <CAMCfZKF8_BWneiG1PpYoRp16=dwQqw6w5v=-REQ7dKC1_4SSPw@mail.gmail.com>
To: TakkTakk <tomek82221@gazeta.pl>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto 1.6 - beaglebone black - cape manager
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
X-List-Received-Date: Fri, 12 Sep 2014 09:56:20 -0000
Content-Type: multipart/alternative; boundary=001a11c2cb10c2ff790502db4bde

--001a11c2cb10c2ff790502db4bde
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Sep 11, 2014 at 10:24 AM, TakkTakk <tomek82221@gazeta.pl> wrote:

> Yes I have ubuntu on eMMC, when i don't press S2 ubuntu will be boot.
> When i press switch S2 yocto don't boot and LED USR0 , USR1, USR2,
> USR3 stay lit steadily.
> I boot yocto 1.6 (but without layer meta-beagleboard) on sdcard and
> everything was ok.
>

Without the console serial cable (on UART0) is hard to guess what's going
wrong.

What is your o uEnv.txt content and the files inside the FAT partition?


Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br
<http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>

/*long live rock 'n roll*/

--001a11c2cb10c2ff790502db4bde
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Thu, Sep 11, 2014 at 10:24 AM, TakkTakk <span dir=3D"ltr">&lt;<a href=3D=
"mailto:tomek82221@gazeta.pl" target=3D"_blank">tomek82221@gazeta.pl</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":1x5" class=3D=
"a3s" style=3D"overflow:hidden">Yes I have ubuntu on eMMC, when i don&#39;t=
 press S2 ubuntu will be boot.<br>
When i press switch S2 yocto don&#39;t boot and LED USR0 , USR1, USR2,<br>
USR3 stay lit steadily.<br>
I boot yocto 1.6 (but without layer meta-beagleboard) on sdcard and<br>
everything was ok.</div></blockquote></div><div class=3D"gmail_extra"><br><=
/div>Without the console serial cable (on UART0) is hard to guess what&#39;=
s going wrong.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmai=
l_extra">What is your o uEnv.txt content and the files inside the FAT parti=
tion?<br><br><br clear=3D"all"><div><div dir=3D"ltr"><div>Regards,</div><di=
v><br></div>--<br>*dS<br>Diego Sueiro<br><br>Administrador do Embarcados<br=
><a href=3D"http://www.embarcados.com.br/?utm_source=3Dassinatura_diego&amp=
;utm_medium=3De-mail&amp;utm_campaign=3DAssinatura%20Email%20Diego" target=
=3D"_blank">www.embarcados.com.br</a><br><br>/*long live rock &#39;n roll*/=
<br></div></div>
</div></div>

--001a11c2cb10c2ff790502db4bde--

Return-Path: <ayoub.zaki@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E727E0086D; Mon,  2 Mar 2015 01:25:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ayoub.zaki[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f182.google.com (mail-lb0-f182.google.com
	[209.85.217.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BC34E00825
	for <yocto@yoctoproject.org>; Mon,  2 Mar 2015 01:25:17 -0800 (PST)
Received: by lbiz11 with SMTP id z11so2713617lbi.3
	for <yocto@yoctoproject.org>; Mon, 02 Mar 2015 01:25:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=NkWrYa/aLPci6TgULNoXYNCbaduFHyJejWF0IxtGSyI=;
	b=CaHUH8kMqkJ4ZSVLZWxKrA+VZFsZEwc11a4WrJs7CwaO0XEYxF+r4cVDvrZ/uGPVmg
	cLB7lrMWHGRosqDpWH1ZnuKOz4juNI85utopTtAOWGKxR4Qrdqf3J693dvvT2IooTa9V
	2dn7wB17tKiy63+SOE6uhTxmwqkl1kSBCHevzzhe1+ZYs7NnhxYv5c9wCw5XG9y1FHG3
	kmNh73vZdGLWV32s+U/VydpUI00hoTXvk/hiJuTzg6/QORZxR+Dn+3fLAZVeMG/pvCRM
	pBjeBjCRQXEfWAgpqF9GLkLo05oQCHyz+ZISjUAr71+Rs53o7TAXxXL+EvK0D4QT+Mnq
	SLSg==
MIME-Version: 1.0
X-Received: by 10.152.207.72 with SMTP id lu8mr18575846lac.90.1425288315660;
	Mon, 02 Mar 2015 01:25:15 -0800 (PST)
Received: by 10.25.218.143 with HTTP; Mon, 2 Mar 2015 01:25:15 -0800 (PST)
In-Reply-To: <CA+-BmJba+CbvNE4Y=FQOhxuvWV7-4ko8SsMNQ=83H71urGXbJg@mail.gmail.com>
References: <CA+-BmJZ=8TOkq0onBPwf1RALNf5iqbqy8+BHPhogrqCJ4ZJO=g@mail.gmail.com>
	<54F425B7.2070002@gmail.com>
	<CA+-BmJba+CbvNE4Y=FQOhxuvWV7-4ko8SsMNQ=83H71urGXbJg@mail.gmail.com>
Date: Mon, 2 Mar 2015 10:25:15 +0100
Message-ID: <CA+-BmJYjqrJzZ_qBhg4iwq29KvUwJvR4XaaGhb93NHwjYbAgVQ@mail.gmail.com>
From: Ayoub Zaki <ayoub.zaki@googlemail.com>
To: yocto@yoctoproject.org
Subject: dizzy 1.7 udev automount misbehaviour
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
X-List-Received-Date: Mon, 02 Mar 2015 09:25:21 -0000
Content-Type: multipart/alternative; boundary=001a11346650c1f03a05104acb1e

--001a11346650c1f03a05104acb1e
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

---------- Forwarded message ----------
From: Ayoub Zaki <ayoub.zaki@googlemail.com>
Date: 2015-03-02 10:24 GMT+01:00
Subject: Re: [yocto] dizzy 1.7 udev automount misbehaviour
To: scerveau <scerveau@gmail.com>


Hello Stephane,

Yes please read this :

http://www.volkerschatz.com/unix/advmount.html

Regards

2015-03-02 9:56 GMT+01:00 scerveau <scerveau@gmail.com>:

> Hello,
>
> Did you have a chance to understand the problem concerning the automount
> failure ?
>
> Best regards.
>
> St=C3=A9phane
>

--001a11346650c1f03a05104acb1e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_quote">---------- Forwarded messag=
e ----------<br>From: <b class=3D"gmail_sendername">Ayoub Zaki</b> <span di=
r=3D"ltr">&lt;<a href=3D"mailto:ayoub.zaki@googlemail.com">ayoub.zaki@googl=
email.com</a>&gt;</span><br>Date: 2015-03-02 10:24 GMT+01:00<br>Subject: Re=
: [yocto] dizzy 1.7 udev automount misbehaviour<br>To: scerveau &lt;<a href=
=3D"mailto:scerveau@gmail.com">scerveau@gmail.com</a>&gt;<br><br><br><div d=
ir=3D"ltr"><div><div>Hello Stephane,<br><br></div>Yes please read this :<br=
><br><a href=3D"http://www.volkerschatz.com/unix/advmount.html" target=3D"_=
blank">http://www.volkerschatz.com/unix/advmount.html</a><br><br></div>Rega=
rds<br></div><div class=3D"HOEnZb"><div class=3D"h5"><div class=3D"gmail_ex=
tra"><br><div class=3D"gmail_quote">2015-03-02 9:56 GMT+01:00 scerveau <spa=
n dir=3D"ltr">&lt;<a href=3D"mailto:scerveau@gmail.com" target=3D"_blank">s=
cerveau@gmail.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hello,<=
br>
<br>
Did you have a chance to understand the problem concerning the automount fa=
ilure ?<br>
<br>
Best regards.<br>
<br>
St=C3=A9phane<br>
</blockquote></div><br></div>
</div></div></div><br></div>

--001a11346650c1f03a05104acb1e--

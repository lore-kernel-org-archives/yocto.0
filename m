Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49CA4E00BAE; Thu, 19 Jun 2014 07:01:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.219.44 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-oa0-f44.google.com (mail-oa0-f44.google.com
	[209.85.219.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16443E00B70
	for <yocto@yoctoproject.org>; Thu, 19 Jun 2014 07:01:04 -0700 (PDT)
Received: by mail-oa0-f44.google.com with SMTP id i7so5226067oag.17
	for <yocto@yoctoproject.org>; Thu, 19 Jun 2014 07:01:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=hMQXeWJrmkwhcm+aIwfIfbn4nR9G2OJk2A//44ensoI=;
	b=LQJ0q0hPJsKd65QstJRW9gXDVnL+GTG3CTlsNwibp+UsmYf6/7DsqBndulf2wuAZyl
	IZu8O0hzlW98Lyly9NwjbWP+h8WzICgPZ5aqPLFIa9BQdY2M+Cw/GnS5VWQjGFM8X6l5
	uM/51MGLNCK2Gg17Y4hiRMUbGQL+FnDqayR1UJwlRasPxbLgbk9zD1+64aJYu8jRWEf1
	anoOpJXxTGz/pbJ1ruMD6gYmSTTqOMDgvAejwHiKVu7SeFRp99V2nr9J297KOPA4pY/0
	bsKicAcbfQdzGS0IVVkSmUrbANrIZjpzqPlLmbNQYF9JujcP+JKIJX9zzDG+00xMuquJ
	fa0Q==
X-Gm-Message-State: ALoCoQntvgYgvJ7aH0HcxrTuzMgm/zuXhG6xdMFvWZ1XDEdwpjVG7py175Tf3vackl02fNuIhs4N
X-Received: by 10.182.143.37 with SMTP id sb5mr2469177obb.76.1403186463867;
	Thu, 19 Jun 2014 07:01:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.128.170 with HTTP; Thu, 19 Jun 2014 07:00:43 -0700 (PDT)
In-Reply-To: <20140619133814.17283.qmail@f6mail-235-77.rediffmail.com>
References: <20140619133814.17283.qmail@f6mail-235-77.rediffmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Thu, 19 Jun 2014 16:00:43 +0200
Message-ID: <CAP71WjzmHsaKS0RgcJ50k=if_q6gNOroBHwJh92ZYZStCjjCXA@mail.gmail.com>
To: Himanshu Pandey <pandey_himanshu80@rediffmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Hi
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
X-List-Received-Date: Thu, 19 Jun 2014 14:01:08 -0000
Content-Type: multipart/alternative; boundary=e89a8ff1c9febb9dd704fc30ce1e

--e89a8ff1c9febb9dd704fc30ce1e
Content-Type: text/plain; charset=UTF-8

On Thu, Jun 19, 2014 at 3:38 PM, Himanshu Pandey <
pandey_himanshu80@rediffmail.com> wrote:

> I want to perform some operation after rootfs.tar.bz2 is created. I have
> written a shell script to perform a set of operations. Could you please
> tell me that where shall I include this script so that it gets executed.
>

in your image recipe, you can add your script to ROOTFS_POSTPROCESS_COMMAND
variable.

--e89a8ff1c9febb9dd704fc30ce1e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Thu, Jun 19, 2014 at 3:38 PM, Himanshu  Pandey <span dir=3D"ltr">&lt;<a =
href=3D"mailto:pandey_himanshu80@rediffmail.com" target=3D"_blank">pandey_h=
imanshu80@rediffmail.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div id=3D":3in" class=3D"" style=3D"overflow:hidden">I wa=
nt to perform some operation after rootfs.tar.bz2 is created. I have writte=
n a shell script to perform a set of operations. Could you please tell me t=
hat where shall I include this script so that it gets executed.<br>

</div></blockquote></div><br>in your image recipe, you can add your script =
to ROOTFS_POSTPROCESS_COMMAND variable.=C2=A0</div><div class=3D"gmail_extr=
a"><br></div></div>

--e89a8ff1c9febb9dd704fc30ce1e--

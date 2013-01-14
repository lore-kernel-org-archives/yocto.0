Return-Path: <andrei@gherzan.ro>
Received: from mail-vc0-f180.google.com (mail-vc0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03E69E00527
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2013 10:03:50 -0800 (PST)
Received: by mail-vc0-f180.google.com with SMTP id p16so3780757vcq.39
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2013 10:03:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=Aapy/z0Ge9NyRA3oS5ktfBl4bgFHVfKod17H8G7ib8E=;
	b=SpUtXdotqUJUlc51MtjeKEpDYB/QGIVI4f0n3NhdW9xEWci0algILw8jBoP3C4whk6
	cBYqgNICj3Sf2pHZib8OrZOCqrzcGgiN9ZtHHefWl7Bd2rAJ9qfYRMREckxJyAyqMcsP
	Bb9/WH9U7tqhNiJhiqFag4mS8qkogOcvbxMGuP83U0exDGuZqXDVkW0s20X047GJll9D
	9TSQtoJlsTu/tSEe3oyyZDufOQL1qUQDLr0piLzWcGwR2JnUivubiJbwhHlIhVwa5TIe
	n78IGJwF9jbc9xMN7pu2CgtaJMrCNhO6pJALqS9zE/xzVqWJvzSnk9x20d8vqYO4B4lb
	HfaA==
Received: by 10.52.88.19 with SMTP id bc19mr59288010vdb.67.1358186630291; Mon,
	14 Jan 2013 10:03:50 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.102.132 with HTTP; Mon, 14 Jan 2013 10:03:30 -0800 (PST)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <50EA3F6E.5080708@windriver.com>
References: <1357473302-19235-1-git-send-email-andrei.gherzan@windriver.com>
	<50EA3F6E.5080708@windriver.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 14 Jan 2013 20:03:30 +0200
Message-ID: <CAK18fxFAxvmhDcib9FpJuSoVNd=TKUtd6AVokebW_faj86gd3A@mail.gmail.com>
To: ChenQi <Qi.Chen@windriver.com>
X-Gm-Message-State: ALoCoQnc8do/zu7T/NfoIFga048Ktk7QK8lqoGalh2j856OPHCkUEzba2jWFNh6Z+hHOtoQPMGQ+
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-ivi][PATCH 01/23] base-passwd: Modify patch as home directory of root user is /root
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
X-List-Received-Date: Mon, 14 Jan 2013 18:03:51 -0000
Content-Type: multipart/alternative; boundary=20cf3071ca14a3227004d343779b

--20cf3071ca14a3227004d343779b
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Jan 7, 2013 at 5:22 AM, ChenQi <Qi.Chen@windriver.com> wrote:

> Home directory is now configurable now.
> You could specify it in local.conf.
>
> See the following commits for more details.
>
> 845c2c0 oprofile: use dynamic root home directory
> 2af073a base-passwd: use configurable root home directory
> 07b842f base-files: use dynamic root home directory
> de5b44a bitbake.conf: import var ROOT_HOME
>
>
This bbappend was added to modify the default password of root. And we
modify the whole root line from passwd.master which includes the home
directory. And as home directory was moved to /home we had to rebase this
patch too.

ag

--20cf3071ca14a3227004d343779b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Mon, Jan 7, 2013 at 5:22 AM, ChenQi <span dir=3D"ltr">&=
lt;<a href=3D"mailto:Qi.Chen@windriver.com" target=3D"_blank">Qi.Chen@windr=
iver.com</a>&gt;</span> wrote:<br><div dir=3D"ltr"><div class=3D"gmail_extr=
a"><div class=3D"gmail_quote">

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">Home directory is now configurable now.<br>
You could specify it in local.conf.<br>
<br>
See the following commits for more details.<br>
<br>
845c2c0 oprofile: use dynamic root home directory<br>
2af073a base-passwd: use configurable root home directory<br>
07b842f base-files: use dynamic root home directory<br>
de5b44a bitbake.conf: import var ROOT_HOME<br>
<br></blockquote><div style><br></div><div style>This bbappend was added to=
 modify the default password of root. And we modify the whole root=A0line=
=A0from=A0passwd.master which includes the home directory. And as home dire=
ctory was moved to /home we had to rebase this patch too.</div>

<div style><br></div><div style>ag</div></div></div></div></div>

--20cf3071ca14a3227004d343779b--

Return-Path: <andrei@gherzan.ro>
Received: from mail-vb0-f51.google.com (mail-vb0-f51.google.com
	[209.85.212.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E41AFE00310
	for <yocto@yoctoproject.org>; Wed,  1 May 2013 13:16:10 -0700 (PDT)
Received: by mail-vb0-f51.google.com with SMTP id x16so1524526vbf.10
	for <yocto@yoctoproject.org>; Wed, 01 May 2013 13:16:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-originating-ip:in-reply-to:references
	:from:date:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=z+JunEaeGO5gCg7kWcOOAg+UeLvO43//Ou5Q4k1aFwI=;
	b=fwLb49QN9CYBZmnu5RNeYc4Fp8FAp0gxkyL944JtOVzYD0bNcKdmqdbBiWYOHroTN5
	sbmGmnJdt6jMykEnF3C0pMLjL1F/1CFMqepTh4oDOWBjQl+9XZ1S3F5196E8/U/jo1tS
	HGBSlyR7GzvXpWb7+vpbjgZbSeZe2Tms2gsDWU/FvuYZfQ33h5ledAx6aCvN3t4cfj/O
	Iz2fOTFT0P1HvSL19uz0rAOaw3UHBeimlZz3z/CVk78exWNwVgToNdy2w/1CYBtbMKy3
	Z+G/KUI/WB7kkAY8Mp0mwwYqn6rGR1r8BI+LboplBnnLDjtJPbtuED3gnWO2nBCbvvWO
	IdFg==
X-Received: by 10.52.24.113 with SMTP id t17mr1091005vdf.30.1367439369988;
	Wed, 01 May 2013 13:16:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.106.97 with HTTP; Wed, 1 May 2013 13:15:48 -0700 (PDT)
X-Originating-IP: [5.14.143.208]
In-Reply-To: <5140e9b9.a8b7320a.12d8.fffffb01SMTPIN_ADDED_BROKEN@mx.google.com>
References: <1359199104-10713-1-git-send-email-thaytan@noraisin.net>
	<20130126224705.GA17428@gmail.com>
	<51050cf0.a952420a.022b.5f25SMTPIN_ADDED_BROKEN@mx.google.com>
	<20130127113217.GB25275@gmail.com>
	<510517ec.8752420a.75af.fffffe36SMTPIN_ADDED_BROKEN@mx.google.com>
	<CAK18fxES6OVGjCu7n+85KK9iR-hBQdZH6Mtwpg8XUYmi1_VgLg@mail.gmail.com>
	<5140e9b9.a8b7320a.12d8.fffffb01SMTPIN_ADDED_BROKEN@mx.google.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 1 May 2013 22:15:48 +0200
Message-ID: <CAK18fxE0BMeYVdf2yZPNjfkoqxPqFGoxWiP-NbMbxexqJztaGg@mail.gmail.com>
To: Jan Schmidt <thaytan@noraisin.net>
X-Gm-Message-State: ALoCoQmU5U2/QX5GRHiv5OOYVyyIO742bCkEKIZxb19tx+s8Q9qY8hPPXwbgQqpIe8+2T8KCOjzK
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 3/3] sdcard-image: Use the size of the generated rootfs
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
X-List-Received-Date: Wed, 01 May 2013 20:16:11 -0000
Content-Type: multipart/alternative; boundary=20cf307c9d9ee682ad04dbadc95b

--20cf307c9d9ee682ad04dbadc95b
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Mar 13, 2013 at 10:03 PM, Jan Schmidt <thaytan@noraisin.net> wrote:

> Hi Andrei,
>
> Thanks for the reminder - I did find the problem with the original
> patch, but didn't send it through yet. The problem was using du on a
> sparse file and getting the size-on-disk, not the apparent size - making
> the resulting partition too small. Using du -bks gets the correct size.
>

That's great. Bring in the patches :)


-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--20cf307c9d9ee682ad04dbadc95b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Wed, Mar 13, 2013 at 10:03 PM, Jan Schmidt <span dir=3D=
"ltr">&lt;<a href=3D"mailto:thaytan@noraisin.net" target=3D"_blank">thaytan=
@noraisin.net</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div clas=
s=3D"gmail_quote">

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi Andrei,<br>
<br>
Thanks for the reminder - I did find the problem with the original<br>
patch, but didn&#39;t send it through yet. The problem was using du on a<br=
>
sparse file and getting the size-on-disk, not the apparent size - making<br=
>
the resulting partition too small. Using du -bks gets the correct size.<br>=
</blockquote><div><br></div><div style>That&#39;s great. Bring in the patch=
es :)=A0</div></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr=
">

<div style=3D"text-align:center"></div><div style=3D"text-align:center"><di=
v align=3D"left" style=3D"font-family:&#39;Times New Roman&#39;;font-size:m=
edium"><b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;te=
xt-align:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" s=
ize=3D"-1"><br>

</font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.744.478.41=
4 | =A0f: +40.31.816.28.12</font><br></div></div></div>
</div></div>

--20cf307c9d9ee682ad04dbadc95b--

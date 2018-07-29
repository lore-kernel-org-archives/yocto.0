Return-Path: <alex.kiernan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2E34E00B57; Sun, 29 Jul 2018 01:46:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kiernan[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.47 listed in list.dnswl.org]
Received: from mail-vk0-f47.google.com (mail-vk0-f47.google.com
	[209.85.213.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B751DE006EC
	for <yocto@yoctoproject.org>; Sun, 29 Jul 2018 01:46:24 -0700 (PDT)
Received: by mail-vk0-f47.google.com with SMTP id y9-v6so4374699vky.3
	for <yocto@yoctoproject.org>; Sun, 29 Jul 2018 01:46:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=qqBnGq6MEOiXgDH6dmw1kiM3To+bWB4roYG4buMISXg=;
	b=tem0tURefv8mbSPK8ZN4ofNOnyTou34ohSFNyVQvH6eXbbJsGtqfpjGvTbx8uHpUO2
	+lxMoT57Nqyk00gkPZ08Mm9tbdK+V4sxgDKlFD+EmtL4/s8kF6hv+O7UMbVunsCknfyf
	6MA5rjLiaK5+abjW9AaXbR9MgbebZGJGjPx906bznswECWYrUk/pFU7MecU1lN+KEgkW
	BodIAi+TwaELlNLHlvvpD4AMMXI8a8QPttl5rz3dj/abR3VTQcmBlmPIeM72rBg7Vtkc
	UmiKcTMJemgNpbKgHGEhSH3NLbd/VvRI7fpL9rCzT9EWBqUAsZcujhZZDgLf8XyVAP8R
	gsPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=qqBnGq6MEOiXgDH6dmw1kiM3To+bWB4roYG4buMISXg=;
	b=UtJUtl06khteGlp3HqodUCGOTqiXO6F+ksbkxPBStH4044o+vWQ5Vu49U/MdjUP1qO
	KXp+o67/29DL/EyReApusMUK1ReF2uapa9xGxwY9DsMPtjp+XPmudrXa28vygpd64nqB
	WHL6kfdCQIY84suj//iJ8S/zkxp9m7uE05MX5bYSm+MrmKafBe+Lsu1Hn2DkHgtGYy0m
	MZ7UuGqZ3kGfS+0k8m2xh4hsffSS3mRrE6CUb9Og1OXiwpYoxn0Qb2AD4N/lc5aWKlAu
	peeIVT+ZazQ99Xk/Ggf7VB3EXR9fE9vFNmubk1A8n3YrsQqdTrKexpTyyZvN4VTvmSAn
	/YXA==
X-Gm-Message-State: AOUpUlGJ3tRQtIGApJJcWIg+CG7LJk5SaZRmtd7BVsvgiG423I3OA384
	sCsFcQaTtN4x4BrPgcFb5o5QSM6rvG7SfTjqV7PkNw==
X-Google-Smtp-Source: AAOMgpfpBB4Xo0upwEzRidXJugzvNNBEJZ308Sv4cDsB562uibn8eM4iOZwKiP4t45peeD3nitkKgVzo4WGrH+3r8lY=
X-Received: by 2002:a1f:ba81:: with SMTP id
	k123-v6mr7829019vkf.167.1532853983962; 
	Sun, 29 Jul 2018 01:46:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAN3t-YCYAT417M2TMLrS=5MsMR0r2Vb6a6MU5=yUv6FzE82VzA@mail.gmail.com>
	<CAN3t-YCfEv3PeTXjAOyRywuTk4=to47OcbeN=JJYYN5v2-w76Q@mail.gmail.com>
In-Reply-To: <CAN3t-YCfEv3PeTXjAOyRywuTk4=to47OcbeN=JJYYN5v2-w76Q@mail.gmail.com>
From: Alex Kiernan <alex.kiernan@gmail.com>
Date: Sun, 29 Jul 2018 09:46:12 +0100
Message-ID: <CAO5Uq5TcAYuYeWpegV_qAtKm_SN9HbVXYVOzKbDQKXhm9ngAeQ@mail.gmail.com>
To: Karim Gillani <karim@gillani.org>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: File copy to bootfs
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
X-List-Received-Date: Sun, 29 Jul 2018 08:46:26 -0000
Content-Type: multipart/alternative; boundary="00000000000034ee4a05721f6122"

--00000000000034ee4a05721f6122
Content-Type: text/plain; charset="UTF-8"

wic cp? Can't spot it in the manual, but look in:

https://git.yoctoproject.org/cgit.cgi/poky/plain/scripts/lib/wic/help.py



On Sun, 29 Jul 2018, 07:01 Karim Gillani, <karim@gillani.org> wrote:

> This commands places the file in the /boot directory but then a script
> used within rootfs can't see it.
>
> install -m 0644 ${WORKDIR}/config.txt
> ${DEPLOY_DIR_IMAGE}/boot/sbcconf/config.txt
>
> The next command puts it in a place where the rootfs can access it, but I
> can't access the file in the fat partition.
> install -m 0644 ${WORKDIR}/config.txt ${D}/boot/sbcconf/config.txt
>
> Any suggestions?
>
> On 28 July 2018 at 21:47, Karim Gillani <karim@gillani.org> wrote:
>
>> Is there an easy way to copy a couple of files to the $bootfs  (/boot
>> directory)?
>>
>> when I copy files there, they show as if they are in /boot but they are
>> not on the bootfs partition.
>>
>> Thanks
>> Karim
>>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--00000000000034ee4a05721f6122
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">wic cp?=C2=A0<span style=3D"font-family:sans-serif">Can&#=
39;t spot it in the manual, but look</span>=C2=A0in:<div dir=3D"auto"><br><=
/div><div dir=3D"auto"><a href=3D"https://git.yoctoproject.org/cgit.cgi/pok=
y/plain/scripts/lib/wic/help.py" target=3D"_blank" rel=3D"noreferrer">https=
://git.yoctoproject.org/cgit.cgi/poky/plain/scripts/lib/wic/help.py</a><br>=
</div><div dir=3D"auto"><br></div><div dir=3D"auto"><br></div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr">On Sun, 29 Jul 2018, 07:01 Karim G=
illani, &lt;<a href=3D"mailto:karim@gillani.org" target=3D"_blank" rel=3D"n=
oreferrer">karim@gillani.org</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex"><div dir=3D"ltr">This commands places the file in the /boot direct=
ory but then a script used within rootfs can&#39;t see it.<div><br></div><d=
iv>install -m 0644 ${WORKDIR}/config.txt ${DEPLOY_DIR_IMAGE}/boot/sbcconf/c=
onfig.txt<br></div><div><br></div><div>The next command puts it in a place =
where the rootfs can access it, but I can&#39;t access the file in the fat =
partition.</div><div>

<span style=3D"font-size:small;background-color:rgb(255,255,255);text-decor=
ation-style:initial;text-decoration-color:initial;float:none;display:inline=
">install -m 0644 ${WORKDIR}/config.txt ${D}/boot/sbcconf/config.txt</span>

<br></div><div><br></div><div>Any suggestions?</div></div><div class=3D"gma=
il_extra"><br><div class=3D"gmail_quote">On 28 July 2018 at 21:47, Karim Gi=
llani <span dir=3D"ltr">&lt;<a href=3D"mailto:karim@gillani.org" rel=3D"nor=
eferrer noreferrer" target=3D"_blank">karim@gillani.org</a>&gt;</span> wrot=
e:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Is there an easy way =
to copy a couple of files to the $bootfs=C2=A0 (/boot directory)?<div><br><=
/div><div>when I copy files there, they show as if they are in /boot but th=
ey are not on the bootfs partition.</div><div><br></div><div>Thanks</div><s=
pan class=3D"m_-5515511195347674134m_-4240567450723488136HOEnZb"><font colo=
r=3D"#888888"><div>Karim</div></font></span></div>
</blockquote></div><br></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" rel=3D"noreferrer noreferrer" tar=
get=3D"_blank">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
 noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org/li=
stinfo/yocto</a><br>
</blockquote></div>

--00000000000034ee4a05721f6122--

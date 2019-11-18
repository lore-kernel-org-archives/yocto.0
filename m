Return-Path: <majchrzycki.mateusz@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA884E008D9; Mon, 18 Nov 2019 02:35:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (majchrzycki.mateusz[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.49 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com
	[209.85.210.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88D73E00852
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2019 02:35:15 -0800 (PST)
Received: by mail-ot1-f49.google.com with SMTP id 19so4148921otz.1
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2019 02:35:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=+c/1KWh/wkGPywQeVCTtXm8M8wyFG6EBXrY9fl2TONg=;
	b=Zcu2mRGvKZXu+rEa38A7liZXqSMfarIm9GfERFYXxZaLBY7Tk3UdvBmHXqkLbaPoTf
	cedeR6jdTMfg1NEhqrbEHfDSuC0hDQJuDZtiJ7/gKMYMEQLLUodY4L4k+lJQUtMuCfjq
	kjYQRDnyTU4gCpp0gPUAE8pPrdQL9AyQAexXx4UMqcy5rXeO6KntUmmjIIIJqS6WIwIE
	L1YoiZEuFcPfiY3N2V5gQv2TmYhuwu5n34AEayQQbzk560qh2hdFgfgdAgkAAXmSDEsa
	vBVxKza68WK9mtKiyDeXPPR3XHFueR7mtNif55n00ektxhrZtPZeRjPwxuNHzyn6EqZg
	YKvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=+c/1KWh/wkGPywQeVCTtXm8M8wyFG6EBXrY9fl2TONg=;
	b=Ta871qqRv8wR4sEn7Kndha5R+v/8MauWvtsJDr0/w19hgxc39KY3HaGQvBNbpkJToj
	QA1aTiVBEgJcWQA0yNPWeJ6ny29g4M9p8MLF5f95/AnW7aYCOWoms4su6C7xyRFdRgSH
	jhZiwrZQfkWs+NBoRevTdFfoxcA2FqiDQ70V5xKDuwLyFu1sw1rMzAmnG6fh1GKxXQV5
	CrK2MnF+uGGUhvEB7flONkRivEZGUe/6ug3Kqo5EhLh8fkaQIw4TNxypfRygAi6sSAFk
	yxBvyBc5TdlF0qikBsrZ/ZEHowwb6UhhTYetpJmcQw57vEeILCoCnfVynh3/5biJfYqX
	XVjw==
X-Gm-Message-State: APjAAAUrJXim+Ttc3Uh8cNMJEIA8xKrzEkOHh3plMxuXkgja0vJNKOsg
	Go9C6Ek0RV+oDUdspVr8lQRaSzlD7kS+qTU8GiH8y8UdlFg=
X-Google-Smtp-Source: APXvYqwABaTufzQ9jTyHLXH4rKC5EXyjw/1vafEIhWB6f/ycXkNnwQpaBwgJ6kNgtP+s4BHMmvShYnGZ/lkQKJdNjHI=
X-Received: by 2002:a05:6830:1aef:: with SMTP id
	c15mr22318435otd.200.1574073314528; 
	Mon, 18 Nov 2019 02:35:14 -0800 (PST)
MIME-Version: 1.0
References: <CADQzoRtS-ksG19HM-i1t+dS7Z+pKP7VW+Xru7uoSCKWX9KGnHg@mail.gmail.com>
	<eb5fcd69-27f4-ce3f-2c89-6bf5b8b2c22f@intel.com>
In-Reply-To: <eb5fcd69-27f4-ce3f-2c89-6bf5b8b2c22f@intel.com>
From: Mateusz Majchrzycki <majchrzycki.mateusz@gmail.com>
Date: Mon, 18 Nov 2019 11:35:03 +0100
Message-ID: <CADQzoRtynYKA1JHuFasv=w1Ktte_hpr8ZV=JKfOwU9R5OYKwEA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Enable systemd service with parameter
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
X-List-Received-Date: Mon, 18 Nov 2019 10:35:16 -0000
Content-Type: multipart/alternative; boundary="000000000000c3570205979c80f9"

--000000000000c3570205979c80f9
Content-Type: text/plain; charset="UTF-8"

Thanks for you help, finally I've got it working.

Just for clarification, I'm using Yocto rocko. I've checked and support for
parametrized systemd services is available in systemd.bbclass.
Also I've tried to make a dummy profile file and populate it on rootfs
instead of symlink. It also didn't work.

Finally I've change my recipe from standalone to append. My
openvpn_%.bbappend looks like:

inherit systemd
SYSTEMD_SERVICE_${PN} = "openvpn@clientprofile.service"
SYSTEMD_AUTO_ENABLE = "enable"

do_install_append() {
install -d ${D}${sysconfdir}/openvpn/
ln -sf /data/etc/openvpn/clientprofile.conf
${D}${sysconfdir}/openvpn/clientprofile.conf
}

And it works. I suppose my standalone recipe has been missing something
that prevents systemd from finding/enabling the service.
Hope it helps someone.

Mateusz


On Mon, Nov 18, 2019 at 10:47 AM Ross Burton <ross.burton@intel.com> wrote:

> On 17/11/2019 19:44, Mateusz Majchrzycki wrote:
> > What am I doing wrong? I suppose the symlink is not a problem as
> > normally systemctl enables service with non-existent file as a parameter
> > (it fails on start, but not enabling).
>
> The problem is that the systemd class doesn't know what to do here.  I
> thought there were patches to handle this already, what release of yocto
> are you using?
>
> Ross
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


-- 
Pozdrawiam
Mateusz Majchrzycki

--000000000000c3570205979c80f9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"">T=
hanks for you help, finally I&#39;ve got it working.<br><br>Just for clarif=
ication, I&#39;m using Yocto rocko. I&#39;ve checked and support for parame=
trized systemd services is available in systemd.bbclass.<br>Also I&#39;ve t=
ried to make a dummy profile file and populate it on rootfs instead of syml=
ink. It also didn&#39;t work.<br><br>Finally I&#39;v<span style=3D"font-fam=
ily:Arial,Helvetica,sans-serif">e change my recipe from standalone to appen=
d. My openvpn_%.bbappend looks like:</span><br></div><div class=3D"gmail_de=
fault" style=3D""><br></div><div class=3D"gmail_default" style=3D"">inherit=
 systemd<br>SYSTEMD_SERVICE_${PN} =3D &quot;openvpn@clientprofile.service&q=
uot;<br>SYSTEMD_AUTO_ENABLE =3D &quot;enable&quot;<br><br>do_install_append=
() {<br>install -d ${D}${sysconfdir}/openvpn/<br>ln -sf /data/etc/openvpn/c=
lientprofile.conf ${D}${sysconfdir}/openvpn/clientprofile.conf<br>}<br><br>=
And it works. I suppose=C2=A0my standalone recipe has been missing somethin=
g that prevents systemd from finding/enabling the service.<br>Hope it helps=
 someone.</div><div class=3D"gmail_default" style=3D""><br></div><div class=
=3D"gmail_default" style=3D"">Mateusz<br><br><br><span style=3D"font-family=
:Arial,Helvetica,sans-serif">On Mon, Nov 18, 2019 at 10:47 AM Ross Burton &=
lt;<a href=3D"mailto:ross.burton@intel.com">ross.burton@intel.com</a>&gt; w=
rote:</span><br></div></div><div class=3D"gmail_quote"><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex">On 17/11/2019 19:44, Mateusz Majchrzycki wrot=
e:<br>
&gt; What am I doing wrong? I suppose the symlink is not a problem as <br>
&gt; normally systemctl enables service with non-existent file as a paramet=
er <br>
&gt; (it fails on start, but not enabling).<br>
<br>
The problem is that the systemd class doesn&#39;t know what to do here.=C2=
=A0 I <br>
thought there were patches to handle this already, what release of yocto <b=
r>
are you using?<br>
<br>
Ross<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature">Pozdrawiam<br>Mateusz Majchrzycki</div></div>

--000000000000c3570205979c80f9--

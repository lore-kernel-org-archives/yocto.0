Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8488E00C41; Sun,  9 Dec 2018 02:26:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, T_REMOTE_IMAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (balazovic.peter[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.171 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-it1-f171.google.com (mail-it1-f171.google.com
	[209.85.166.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 850DAE00C18
	for <yocto@yoctoproject.org>; Sun,  9 Dec 2018 02:26:08 -0800 (PST)
Received: by mail-it1-f171.google.com with SMTP id b5so13596152iti.2
	for <yocto@yoctoproject.org>; Sun, 09 Dec 2018 02:26:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=N8y00deWtHxwhlHtUF9wDUo+UQEcbpOwFQ0S3OBo6s4=;
	b=Lzr8cuBUw/xYf9viirLaz9N7nruupA3aHo6umUviz6w+H2udBGI6k9QvuJnkPeui4Q
	Nwl/F+Te7T8LWxgHfNNslfCMLd7ZJYIkCjf3xMfxmbvSFsgyrwTJpk/j1DU8WEb/7ss0
	hwqZtfCpTaLyNWGPv2Dek/foyTt9qlALxEXOeRyi7xjp5PNVDswF8xZlitQkwlP4qr6l
	LA55s4L6yzdt7gTwR1A2EA0WDiEfKnl+E66XbdJ80vL2BJWyXh/dotgb6v6laaOOXHtS
	cjGxBGRzHHGBUg9S2qqmuP2MdyjXLFviS+L5XmQZ2Nu/bM9kjwTGloJS6sjQcdAtLY/n
	nqIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=N8y00deWtHxwhlHtUF9wDUo+UQEcbpOwFQ0S3OBo6s4=;
	b=NlB/ZOmeJP3Hu30mbOopjXFmP1tY75MB0QEToVwpJrCWuCXfnQ09xorNaZObn+lcrp
	Fw5OSl8trQAS8flX01MRx5Nool4urPJWjKllFCV6ZnMYNkV1cy7tavF92B8Q1gc+tihk
	IQE1Ub9zGfmwJZR23Ipehh2x4D3Po7VLa6OiBgHwkt+CKaElsKMU0OIGes9Wo8OJKkp4
	/W4ty22wKfMi0LisPwPLA5J99TReS/gkAsk3NJJ13+voh8Zna5UdZSvssGmW9IX38Nuo
	RIzMNrWLi55rsK2edHSUHc8DYIW9ABMoLzKzTNdXfqVloHTL6N79JCXFQ3wqI9prqhoU
	n19w==
X-Gm-Message-State: AA+aEWZSojMuKAjjffy4blfSOrN0ontqzTlu2dtLNQSE01Y6NrlYcPnO
	yEUoVq+zvWwLSp14vOhR2oaHUR/ClEFeJ66A/4rizcsY
X-Google-Smtp-Source: AFSGD/V2yF3JBxjeKRX/g+qLQDfP/3k0EknB2neJ3ua6cNdnXfqm63DCDU8IFsleUURA9SBcP0wW0ehNMG2elYvM/VM=
X-Received: by 2002:a24:6890:: with SMTP id v138mr8041481itb.53.1544351167515; 
	Sun, 09 Dec 2018 02:26:07 -0800 (PST)
MIME-Version: 1.0
References: <CAFq4t4gSvQg-g2-v=vBn8vRC3vpHbjb1Am6SREBAAha9PogcBw@mail.gmail.com>
In-Reply-To: <CAFq4t4gSvQg-g2-v=vBn8vRC3vpHbjb1Am6SREBAAha9PogcBw@mail.gmail.com>
From: Peter Balazovic <balazovic.peter@gmail.com>
Date: Sun, 9 Dec 2018 11:25:56 +0100
Message-ID: <CAFq4t4jaUZckGjpFCN+QOL7vcnVXH51gno=LGVMY2DC2EmYFyQ@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: X11 forwarding request failed on channel 0
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
X-List-Received-Date: Sun, 09 Dec 2018 10:26:10 -0000
Content-Type: multipart/alternative; boundary="000000000000bf937a057c94462c"

--000000000000bf937a057c94462c
Content-Type: text/plain; charset="UTF-8"

I've added the following line to /etc/ssh/sshd_config to tell where is xauth


XAuthLocation /usr/local bin/xauth

After inserting the line telling where the xauth is located and restarting,
the application with GUI output response is

> Running on a compositor with no screens is not supported

is there any idea how to fix it?

On Sat, Dec 8, 2018 at 4:20 PM Peter Balazovic <balazovic.peter@gmail.com>
wrote:

> I am trying to ssh-connect with enabled x11 forwarding to my Yocto remote
> target using ssh -XY root@xxx.xxx.xxx I am getting error
>
> ~$ ssh -XY root@XXX.XXX.XXX.XXX
> debug1: Remote: No xauth program; cannot forward with spoofing.
> X11 forwarding request failed on channel 0
>
> I have enabled xauth on my system ... as well enabled X11 forwarding at
> /etc/ssh/ssh_config
> ForwardX11 yes
>
> and /etc/ssh/sshd_config
> X11Forwarding yes
> X11DisplayOffset 10
>
> I have xauth on my system what other configuration needed to enable x11
> forwarding?
>

<https://www.avast.com/sig-email?utm_medium=email&utm_source=link&utm_campaign=sig-email&utm_content=webmail&utm_term=icon>
Virus-free.
www.avast.com
<https://www.avast.com/sig-email?utm_medium=email&utm_source=link&utm_campaign=sig-email&utm_content=webmail&utm_term=link>
<#DAB4FAD8-2DD7-40BB-A1B8-4E2AA1F9FDF2>

--000000000000bf937a057c94462c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><p style=3D"border:0px;font-size:15.3px;m=
argin:0px 0px 0.9em;outline:0px;padding:0px;vertical-align:baseline;color:r=
gb(68,68,68)">I&#39;ve added the following line to /etc/ssh/sshd_config to =
tell where is xauth</p><p style=3D"border:0px;font-size:15.3px;margin:0px 0=
px 0.9em;outline:0px;padding:0px;vertical-align:baseline;color:rgb(68,68,68=
)"><br></p><p style=3D"border:0px;font-size:15.3px;margin:0px 0px 0.9em;out=
line:0px;padding:0px;vertical-align:baseline;color:rgb(68,68,68)">XAuthLoca=
tion /usr/local bin/xauth</p><p style=3D"border:0px;font-size:15.3px;margin=
:0px 0px 0.9em;outline:0px;padding:0px;vertical-align:baseline;color:rgb(68=
,68,68)"><span style=3D"font-size:15.3px">After inserting the line telling =
where the xauth is located and restarting, the application with GUI output =
response is</span></p><p style=3D"border:0px;font-size:15.3px;margin:0px 0p=
x 0.9em;outline:0px;padding:0px;vertical-align:baseline;color:rgb(68,68,68)=
"><span style=3D"font-size:small;color:rgb(34,34,34)">&gt;=C2=A0</span><spa=
n style=3D"color:rgb(34,34,34);font-size:small">Running on a compositor wit=
h no screens is not supported</span></p><div><br></div><div>is there any id=
ea how to fix it?</div><div><br></div><p style=3D"border:0px;font-size:15.3=
px;margin:0px 0px 0.9em;outline:0px;padding:0px;vertical-align:baseline;col=
or:rgb(68,68,68)"><span style=3D"font-size:small;color:rgb(34,34,34)">On Sa=
t, Dec 8, 2018 at 4:20 PM Peter Balazovic &lt;<a href=3D"mailto:balazovic.p=
eter@gmail.com">balazovic.peter@gmail.com</a>&gt; wrote:</span><br></p><div=
 class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=
=3D"ltr"><div dir=3D"ltr">I am trying to ssh-connect with enabled x11 forwa=
rding to my Yocto remote target using ssh -XY root@xxx.xxx.xxx I am getting=
 error<div><br></div><div><div>~$ ssh -XY root@XXX.XXX.XXX.XXX<br></div></d=
iv><div><div>debug1: Remote: No xauth program; cannot forward with spoofing=
.</div><div>X11 forwarding request failed on channel 0</div><div><br></div>=
</div><div>I have enabled xauth on my system ... as well enabled X11 forwar=
ding at</div><div>/etc/ssh/ssh_config=C2=A0</div><div>ForwardX11 yes</div><=
div><br></div><div>and /etc/ssh/sshd_config</div><div>X11Forwarding yes</di=
v><div>X11DisplayOffset 10</div><div><br></div><div>I have xauth on my syst=
em what other configuration needed to enable x11 forwarding?</div></div></d=
iv></div></div></div></div>
</blockquote></div></div></div><div id=3D"DAB4FAD8-2DD7-40BB-A1B8-4E2AA1F9F=
DF2"><br>
<table style=3D"border-top:1px solid #d3d4de">
	<tr>
        <td style=3D"width:55px;padding-top:13px"><a href=3D"https://www.av=
ast.com/sig-email?utm_medium=3Demail&amp;utm_source=3Dlink&amp;utm_campaign=
=3Dsig-email&amp;utm_content=3Dwebmail&amp;utm_term=3Dicon" target=3D"_blan=
k"><img src=3D"https://ipmcdn.avast.com/images/icons/icon-envelope-tick-rou=
nd-orange-animated-no-repeat-v1.gif" alt=3D"" width=3D"46" height=3D"29" st=
yle=3D"width: 46px; height: 29px;"></a></td>
		<td style=3D"width:470px;padding-top:12px;color:#41424e;font-size:13px;fo=
nt-family:Arial,Helvetica,sans-serif;line-height:18px">Virus-free. <a href=
=3D"https://www.avast.com/sig-email?utm_medium=3Demail&amp;utm_source=3Dlin=
k&amp;utm_campaign=3Dsig-email&amp;utm_content=3Dwebmail&amp;utm_term=3Dlin=
k" target=3D"_blank" style=3D"color:#4453ea">www.avast.com</a>
		</td>
	</tr>
</table><a href=3D"#DAB4FAD8-2DD7-40BB-A1B8-4E2AA1F9FDF2" width=3D"1" heigh=
t=3D"1"></a></div>

--000000000000bf937a057c94462c--

Return-Path: <jefro.net@gmail.com>
Received: from mail-ia0-f176.google.com (mail-ia0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56BDCE003D9
	for <yocto@yoctoproject.org>; Mon, 12 Nov 2012 16:22:20 -0800 (PST)
Received: by mail-ia0-f176.google.com with SMTP id h11so5520543iae.35
	for <yocto@yoctoproject.org>; Mon, 12 Nov 2012 16:22:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	bh=4ruQmPmRTbD/HIQjHgpmT+w25AzX4y8SCjbS3CjM7l0=;
	b=IHLPsazo2nlQNHDg8WO7kMXb9StuD9K1BjB/R7jkCSGn6g+OMsNLUloibV68YOp4bU
	DjsEHTMjrRn1EQW+ZsKqs72ZkzfFSc174KMJzdps0pOhqe+r8mOyaii61hYeIjNaFf3C
	JExQ/xwZV2KZn9X73CLIsnArzOqTkOs+1oK00dGvDxz2H9bORLiGzNWhqaCQOpnRazxs
	RC9c2ng0TzJ3rwnCY7C9hQwymIIwRDwnHULYCSi5YZIMXPImPlaUKu+RhogMSYL3da/b
	II8WJA3Hox8WN/0GdbsbqKBInxDNIWq10VpdgiA5j7FDOfhrZBnHebRwhiu/XeiJeymC
	nU0g==
MIME-Version: 1.0
Received: by 10.50.190.162 with SMTP id gr2mr9569957igc.65.1352766139975; Mon,
	12 Nov 2012 16:22:19 -0800 (PST)
Sender: jefro.net@gmail.com
Received: by 10.64.147.37 with HTTP; Mon, 12 Nov 2012 16:22:19 -0800 (PST)
In-Reply-To: <CAFNBftfVYsFS_HCYrf2z6FsDa=Cwer9X8Y3Gah-9KHsJ4fJcig@mail.gmail.com>
References: <CAFNBftfVYsFS_HCYrf2z6FsDa=Cwer9X8Y3Gah-9KHsJ4fJcig@mail.gmail.com>
Date: Mon, 12 Nov 2012 16:22:19 -0800
X-Google-Sender-Auth: uItNMqV-5jsE_ivYpJBEMwQp41Q
Message-ID: <CA+YB3rbhK5f=CuPRj0MJvCWe7nD_32BRzZn-T0TouEDOcEh=iA@mail.gmail.com>
From: Jeff Osier-Mixon <jefro@jefro.net>
To: Flavio Castro Alves Filho <flavio.alves@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Olb Beagleboard support
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
X-List-Received-Date: Tue, 13 Nov 2012 00:22:20 -0000
Content-Type: multipart/alternative; boundary=f46d0447a12d3cc6bd04ce55691f

--f46d0447a12d3cc6bd04ce55691f
Content-Type: text/plain; charset=ISO-8859-1

Hi Flavio - sorry for the delay, everyone was very busy last week with the
Embedded Linux Conference in Barcelona.

You should be able to use the Yocto Project with the older BeagleBoard if
you use the BSPs in the meta-ti layer (
http://git.yoctoproject.org/cgit/cgit.cgi/meta-ti/). For more specific
questions, I would encourage you to join the meta-ti mailing list (
https://lists.yoctoproject.org/listinfo/meta-ti).

Hope that helps!


On Thu, Nov 8, 2012 at 8:51 AM, Flavio Castro Alves Filho <
flavio.alves@gmail.com> wrote:

> Hello,
>
> Does anybody know if current Yocto support for BeagleBoard works for
> OMAP3530 based BeagleBoard.
>
> It works correctly with BeagleBoard-xM, but with old BeagleBoard I don't
> have any information.
>
> If it doesn't work, can anybody give me some clue about how to build Yocto
> for this old board?
>
> Best regards,
>
> Flavio
>
> --
> Flavio de Castro Alves Filho
>
> flavio.alves@gmail.com
> www.linuxembarcado.com
> Twitter: http://twitter.com/#!/fraviofii
> LinkedIn profile: www.linkedin.com/in/flaviocastroalves
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


-- 
Jeff Osier-Mixon http://jefro.net/blog
Yocto Project Community Manager @Intel http://yoctoproject.org

--f46d0447a12d3cc6bd04ce55691f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Flavio - sorry for the delay, everyone was very busy last week with the =
Embedded Linux Conference in Barcelona.<div><br></div><div>You should be ab=
le to use the Yocto Project with the older BeagleBoard if you use the BSPs =
in the meta-ti layer (<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/=
meta-ti/">http://git.yoctoproject.org/cgit/cgit.cgi/meta-ti/</a>). For more=
 specific questions, I would encourage you to join the meta-ti mailing list=
 (<a href=3D"https://lists.yoctoproject.org/listinfo/meta-ti">https://lists=
.yoctoproject.org/listinfo/meta-ti</a>).</div>
<div><br></div><div>Hope that helps!</div><div class=3D"gmail_extra"><br><b=
r><div class=3D"gmail_quote">On Thu, Nov 8, 2012 at 8:51 AM, Flavio Castro =
Alves Filho <span dir=3D"ltr">&lt;<a href=3D"mailto:flavio.alves@gmail.com"=
 target=3D"_blank">flavio.alves@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><span style=3D"font-family:arial,sans-serif;=
font-size:13px">Hello,</span><div style=3D"font-family:arial,sans-serif;fon=
t-size:13px">
<br></div><div style=3D"font-family:arial,sans-serif;font-size:13px">Does a=
nybody know if current Yocto support for BeagleBoard works for OMAP3530 bas=
ed BeagleBoard.</div>
<div style=3D"font-family:arial,sans-serif;font-size:13px"><br></div><div s=
tyle=3D"font-family:arial,sans-serif;font-size:13px">It works correctly wit=
h BeagleBoard-xM, but with old BeagleBoard I don&#39;t have any information=
.</div>

<div style=3D"font-family:arial,sans-serif;font-size:13px"><br></div><div s=
tyle=3D"font-family:arial,sans-serif;font-size:13px">If it doesn&#39;t work=
, can anybody give me some clue about how to build Yocto for this old board=
?</div>

<div style=3D"font-family:arial,sans-serif;font-size:13px"><br></div><div s=
tyle=3D"font-family:arial,sans-serif;font-size:13px">Best regards,</div><di=
v style=3D"font-family:arial,sans-serif;font-size:13px"><br></div><div styl=
e=3D"font-family:arial,sans-serif;font-size:13px">

Flavio</div><span class=3D"HOEnZb"><font color=3D"#888888"><div><br></div>-=
- <br>Flavio de Castro Alves Filho<br><br><a href=3D"mailto:flavio.alves@gm=
ail.com" target=3D"_blank">flavio.alves@gmail.com</a><div><a href=3D"http:/=
/www.linuxembarcado.com" target=3D"_blank">www.linuxembarcado.com</a><br>

Twitter: <a href=3D"http://twitter.com/#!/fraviofii" target=3D"_blank">http=
://twitter.com/#!/fraviofii</a><br></div><div>LinkedIn profile: <a href=3D"=
http://www.linkedin.com/in/flaviocastroalves" target=3D"_blank">www.linkedi=
n.com/in/flaviocastroalves</a></div>

<br>
</font></span><br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>Jeff Osi=
er-Mixon <a href=3D"http://jefro.net/blog" target=3D"_blank">http://jefro.n=
et/blog</a><div>Yocto Project Community Manager @Intel <a href=3D"http://yo=
ctoproject.org" target=3D"_blank">http://yoctoproject.org</a></div>
<br>
</div>

--f46d0447a12d3cc6bd04ce55691f--

Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-qa0-f41.google.com (mail-qa0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 153C1E0049F
	for <yocto@yoctoproject.org>; Mon, 12 Nov 2012 17:15:09 -0800 (PST)
Received: by mail-qa0-f41.google.com with SMTP id c26so2230154qad.14
	for <yocto@yoctoproject.org>; Mon, 12 Nov 2012 17:15:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=sblwwQJWuRPcGVC/kjngIIvJiy2r9WtcZVvaryXe0cA=;
	b=pwbwtP9R99VgpByYzWFG1KaeIB6Yg+iSinCyCsudB23PeJzRsilEvSycxhZqRSno1g
	TgsuHD9LDvnQWxPTnm8ZR4cdZdc0acVJcBqL7ybq90xpv9itGmXqIrYIFo24SHQOuM3V
	2AYKuY4IvfL4gl/vIgWXmPvThQBPg4NPFmvtmEC4cwWHEiqhnDTZb/3H2EhGha1vxw8L
	MG8tovkzYqKf6F+/oa4iMrC1biYnoZo3Tin8h63ifS4hHRsbWXZqCEHrKasy/AIgatMh
	pZz5dS1uWHIlg0hLmiNUS76gGJfTiUYBv1uAddwtzkCLxIzgZXhnvIkD4psDHG1Mxo5X
	hhkw==
MIME-Version: 1.0
Received: by 10.224.31.204 with SMTP id z12mr22377834qac.32.1352769308871;
	Mon, 12 Nov 2012 17:15:08 -0800 (PST)
Sender: rstreif@linuxfoundation.org
Received: by 10.49.54.197 with HTTP; Mon, 12 Nov 2012 17:15:08 -0800 (PST)
Received: by 10.49.54.197 with HTTP; Mon, 12 Nov 2012 17:15:08 -0800 (PST)
In-Reply-To: <CA+YB3rbhK5f=CuPRj0MJvCWe7nD_32BRzZn-T0TouEDOcEh=iA@mail.gmail.com>
References: <CAFNBftfVYsFS_HCYrf2z6FsDa=Cwer9X8Y3Gah-9KHsJ4fJcig@mail.gmail.com>
	<CA+YB3rbhK5f=CuPRj0MJvCWe7nD_32BRzZn-T0TouEDOcEh=iA@mail.gmail.com>
Date: Mon, 12 Nov 2012 17:15:08 -0800
X-Google-Sender-Auth: 4besgDo4RD-Y3f0wEv65H6I9blY
Message-ID: <CA+gsK-qK9mcNy+N=OW0yi3FGk-DTX17gCV2HXzq0qyvTYpmx6Q@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@linux.com>
To: Jeff Osier-Mixon <jefro@jefro.net>
X-Gm-Message-State: ALoCoQmk9pJx6UnTfj/yID4yBOcMy5pNE/RuHpNUAuuKbnpsYTbaUuOFDKrSrwRKNd91JM1+qBcW
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Tue, 13 Nov 2012 01:15:10 -0000
Content-Type: multipart/alternative; boundary=20cf3074b0a41e4d8404ce5626e6

--20cf3074b0a41e4d8404ce5626e6
Content-Type: text/plain; charset=ISO-8859-1

To chime in: I successfully used kernel and root fs built by plain Yocto,
meta and meta-yocto layers, for C4 and xM Beagleboards. On some C4 with
certain MMC I had the issue that the kernel would not be able to mount the
root fs and just sat there waiting. Unplugging and replugging the MMC
resets the flash reader and driver and then the kernel can mount the root
fs.

Rudi
On Nov 12, 2012 4:22 PM, "Jeff Osier-Mixon" <jefro@jefro.net> wrote:

> Hi Flavio - sorry for the delay, everyone was very busy last week with the
> Embedded Linux Conference in Barcelona.
>
> You should be able to use the Yocto Project with the older BeagleBoard if
> you use the BSPs in the meta-ti layer (
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-ti/). For more specific
> questions, I would encourage you to join the meta-ti mailing list (
> https://lists.yoctoproject.org/listinfo/meta-ti).
>
> Hope that helps!
>
>
> On Thu, Nov 8, 2012 at 8:51 AM, Flavio Castro Alves Filho <
> flavio.alves@gmail.com> wrote:
>
>> Hello,
>>
>> Does anybody know if current Yocto support for BeagleBoard works for
>> OMAP3530 based BeagleBoard.
>>
>> It works correctly with BeagleBoard-xM, but with old BeagleBoard I don't
>> have any information.
>>
>> If it doesn't work, can anybody give me some clue about how to build
>> Yocto for this old board?
>>
>> Best regards,
>>
>> Flavio
>>
>> --
>> Flavio de Castro Alves Filho
>>
>> flavio.alves@gmail.com
>> www.linuxembarcado.com
>> Twitter: http://twitter.com/#!/fraviofii
>> LinkedIn profile: www.linkedin.com/in/flaviocastroalves
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>
>
> --
> Jeff Osier-Mixon http://jefro.net/blog
> Yocto Project Community Manager @Intel http://yoctoproject.org
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--20cf3074b0a41e4d8404ce5626e6
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p>To chime in: I successfully used kernel and root fs built by plain Yocto=
, meta and meta-yocto layers, for C4 and xM Beagleboards. On some C4 with c=
ertain MMC I had the issue that the kernel would not be able to mount the r=
oot fs and just sat there waiting. Unplugging and replugging the MMC resets=
 the flash reader and driver and then the kernel can mount the root fs. </p=
>

<p>Rudi</p>
<div class=3D"gmail_quote">On Nov 12, 2012 4:22 PM, &quot;Jeff Osier-Mixon&=
quot; &lt;<a href=3D"mailto:jefro@jefro.net">jefro@jefro.net</a>&gt; wrote:=
<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
Hi Flavio - sorry for the delay, everyone was very busy last week with the =
Embedded Linux Conference in Barcelona.<div><br></div><div>You should be ab=
le to use the Yocto Project with the older BeagleBoard if you use the BSPs =
in the meta-ti layer (<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/=
meta-ti/" target=3D"_blank">http://git.yoctoproject.org/cgit/cgit.cgi/meta-=
ti/</a>). For more specific questions, I would encourage you to join the me=
ta-ti mailing list (<a href=3D"https://lists.yoctoproject.org/listinfo/meta=
-ti" target=3D"_blank">https://lists.yoctoproject.org/listinfo/meta-ti</a>)=
.</div>

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


Flavio</div><span><font color=3D"#888888"><div><br></div>-- <br>Flavio de C=
astro Alves Filho<br><br><a href=3D"mailto:flavio.alves@gmail.com" target=
=3D"_blank">flavio.alves@gmail.com</a><div><a href=3D"http://www.linuxembar=
cado.com" target=3D"_blank">www.linuxembarcado.com</a><br>


Twitter: <a href=3D"http://twitter.com/#!/fraviofii" target=3D"_blank">http=
://twitter.com/#!/fraviofii</a><br></div><div>LinkedIn profile: <a href=3D"=
http://www.linkedin.com/in/flaviocastroalves" target=3D"_blank">www.linkedi=
n.com/in/flaviocastroalves</a></div>


<br>
</font></span><br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>Jeff Osi=
er-Mixon <a href=3D"http://jefro.net/blog" target=3D"_blank">http://jefro.n=
et/blog</a><div>Yocto Project Community Manager @Intel <a href=3D"http://yo=
ctoproject.org" target=3D"_blank">http://yoctoproject.org</a></div>

<br>
</div>
<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div>

--20cf3074b0a41e4d8404ce5626e6--

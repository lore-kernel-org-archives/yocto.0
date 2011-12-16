Return-Path: <jefro.net@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8178BE013DD
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2011 17:28:14 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iapp10 with SMTP id p10so5136495iap.35
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2011 17:28:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	bh=XE1vDLXLoP68G4PEbgupbkMyEtmFfPSAG6NxgIOEWfc=;
	b=CwnYh0WvU1bogELBDzFcogrN1pA1oK6T1uuWNQSwyrYSvIdmsgtyqxWdlJbRdq6QGU
	dEUiM1UrvQhighT+24UzIXgZFzbYtzaEjMIC3Nq7J5l1AKbe7/CewMTmY6gzyVuMQG8E
	js7raAkILDm9wmh01CexC51P+tVpbbmuMIg28=
MIME-Version: 1.0
Received: by 10.50.188.129 with SMTP id ga1mr5057508igc.69.1323998894037; Thu,
	15 Dec 2011 17:28:14 -0800 (PST)
Sender: jefro.net@gmail.com
Received: by 10.50.187.168 with HTTP; Thu, 15 Dec 2011 17:28:14 -0800 (PST)
In-Reply-To: <4EEA9B91.9010905@windriver.com>
References: <752F5B12-4CCB-4C62-A1DE-61EA5BD21CE9@keylevel.com>
	<1323987793.4568.72.camel@ted> <4EEA9B91.9010905@windriver.com>
Date: Thu, 15 Dec 2011 17:28:14 -0800
X-Google-Sender-Auth: i3JTtNTAZEqv_uuYN0ZbayVAhwY
Message-ID: <CA+YB3rYfcBC6oR0b8tyczMoMwJfv=ohKpdM+em-mYTQOgHfyew@mail.gmail.com>
From: Jeff Osier-Mixon <jefro@jefro.net>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Raspberry Pi
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
X-List-Received-Date: Fri, 16 Dec 2011 01:28:14 -0000
Content-Type: multipart/alternative; boundary=14dae93407f7c31c4304b42b8364

--14dae93407f7c31c4304b42b8364
Content-Type: text/plain; charset=ISO-8859-1

Looks like the Raspberry Pi is not quite available yet, sadly! Hopefully we
can do one for 1.2.

On Thu, Dec 15, 2011 at 5:14 PM, Bruce Ashfield <
bruce.ashfield@windriver.com> wrote:

> On 11-12-15 5:23 PM, Richard Purdie wrote:
>
>> On Thu, 2011-12-15 at 21:47 +0000, Chris Tapp wrote:
>>
>>> Is anyone on this list considering (or working on) a BSP for the
>>> Raspberry Pi (http://www.raspberrypi.org/**faqs<http://www.raspberrypi.org/faqs>)
>>> ?
>>>
>>> For those that haven't seen it, it's a credit-card sized 'home pc'
>>> aimed primarily at educational users that includes a 700MHz ARM11
>>> core, HDMI, OpenGL ES 2.0, ethernet and audio for about $35. It will
>>> be supporting Debian, Fedora and ArchLinux at launch.
>>>
>>> Looks like a good board for people that want to get in to Yocto /
>>> embedded linux. Also looks like it's a good platform for some of my
>>> stuff...
>>>
>>> I would be interested in working on a BSP / distro if anyone is
>>> working on it or would like to work on it.
>>>
>>
>> I'm not aware of anyone working on this but I like the idea of a BSP for
>> it and it shouldn't be too hard to do. I'd be happy to ensure we have a
>> repository somewhere on git.yoctoproject.org to support this (and any
>> other similar BSP efforts) if that would help?
>>
>
> We can also help here @ Wind River. This board is one that's on my short
> list for the BSP refresh covered by:
>
> http://bugzilla.pokylinux.org/**show_bug.cgi?id=1634<http://bugzilla.pokylinux.org/show_bug.cgi?id=1634>
>
> So I'd like to see it right in the yocto kernel as a hardware reference
> platform.
>
> I'm about to finalize a suggested list of boards and after that, we can
> see what resources/people want to collaborate on some BSPs.
>
> Cheers,
>
> Bruce
>
>
>
>> Cheers,
>>
>> Richard
>>
>> ______________________________**_________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>>
>
> ______________________________**_________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>



-- 
Jeff Osier-Mixon http://jefro.net/blog
Yocto Project Community Manager @Intel http://yoctoproject.org

--14dae93407f7c31c4304b42b8364
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Looks like the Raspberry Pi is not quite available yet, sadly! Hopefully we=
 can do one for 1.2.<br><br><div class=3D"gmail_quote">On Thu, Dec 15, 2011=
 at 5:14 PM, Bruce Ashfield <span dir=3D"ltr">&lt;<a href=3D"mailto:bruce.a=
shfield@windriver.com">bruce.ashfield@windriver.com</a>&gt;</span> wrote:<b=
r>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On 11-12-15 5:23 PM, Richa=
rd Purdie wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On Thu, 2011-12-15 at 21:47 +0000, Chris Tapp wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Is anyone on this list considering (or working on) a BSP for the<br>
Raspberry Pi (<a href=3D"http://www.raspberrypi.org/faqs" target=3D"_blank"=
>http://www.raspberrypi.org/<u></u>faqs</a>) ?<br>
<br>
For those that haven&#39;t seen it, it&#39;s a credit-card sized &#39;home =
pc&#39;<br>
aimed primarily at educational users that includes a 700MHz ARM11<br>
core, HDMI, OpenGL ES 2.0, ethernet and audio for about $35. It will<br>
be supporting Debian, Fedora and ArchLinux at launch.<br>
<br>
Looks like a good board for people that want to get in to Yocto /<br>
embedded linux. Also looks like it&#39;s a good platform for some of my<br>
stuff...<br>
<br>
I would be interested in working on a BSP / distro if anyone is<br>
working on it or would like to work on it.<br>
</blockquote>
<br>
I&#39;m not aware of anyone working on this but I like the idea of a BSP fo=
r<br>
it and it shouldn&#39;t be too hard to do. I&#39;d be happy to ensure we ha=
ve a<br>
repository somewhere on <a href=3D"http://git.yoctoproject.org" target=3D"_=
blank">git.yoctoproject.org</a> to support this (and any<br>
other similar BSP efforts) if that would help?<br>
</blockquote>
<br></div>
We can also help here @ Wind River. This board is one that&#39;s on my shor=
t<br>
list for the BSP refresh covered by:<br>
<br>
<a href=3D"http://bugzilla.pokylinux.org/show_bug.cgi?id=3D1634" target=3D"=
_blank">http://bugzilla.pokylinux.org/<u></u>show_bug.cgi?id=3D1634</a><br>
<br>
So I&#39;d like to see it right in the yocto kernel as a hardware reference=
<br>
platform.<br>
<br>
I&#39;m about to finalize a suggested list of boards and after that, we can=
<br>
see what resources/people want to collaborate on some BSPs.<br>
<br>
Cheers,<br>
<br>
Bruce<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
Cheers,<br>
<br>
Richard<br>
<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</blockquote>
<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
Jeff Osier-Mixon <a href=3D"http://jefro.net/blog" target=3D"_blank">http:/=
/jefro.net/blog</a><div>Yocto Project Community Manager @Intel <a href=3D"h=
ttp://yoctoproject.org" target=3D"_blank">http://yoctoproject.org</a></div>
<br>

--14dae93407f7c31c4304b42b8364--

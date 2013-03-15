Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qa0-f47.google.com (mail-qa0-f47.google.com
	[209.85.216.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7291FE00429
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 08:36:32 -0700 (PDT)
Received: by mail-qa0-f47.google.com with SMTP id j8so371558qah.13
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 08:36:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=3RJWaiwbpqZ6VUAvxgy8VDcMY5zDWcIlxw5eYr0mmEY=;
	b=wSfIuOyhAPkVNpcyTX6ddAnhXIF6TbJofefsnzeVZxFZpBhTb9up5MBYU4aNfjbcPw
	rIurGBnWPJdvvQ4xq5eiVcTIUpAQu8GcYzw2TWjqdQgDYR3COXetDVBMpJE9HV77vf6y
	8uDg3q89cClXRXA/BivYB5wPV6UwrSniB4Y9+TYYrIJ+OhsFJFEfIy4ewaCp7oHwP4Cx
	cU2G/LnMYeJ460tPGCYFFFnsmLTsom+7ZKVmfXBHiGk2AW6dEQr3jxo/Ci7i+rKeK5VW
	murguMSDzcSwvxm5Nj2A0S8C1eKfQgG4i1dQxUebHTqnSRJ/ZFWqgfAS8aAuOUH6fStv
	SoYA==
MIME-Version: 1.0
X-Received: by 10.224.173.147 with SMTP id p19mr6153840qaz.78.1363361791750;
	Fri, 15 Mar 2013 08:36:31 -0700 (PDT)
Received: by 10.49.67.98 with HTTP; Fri, 15 Mar 2013 08:36:31 -0700 (PDT)
In-Reply-To: <514332FC.2070805@windriver.com>
References: <CAFyqS9rzC5ueHXBKnzt7JnfWKKSvBkXBEL3px3vh3itEXaRWqg@mail.gmail.com>
	<51432E43.7060708@windriver.com>
	<CAFyqS9qmjLqMoXkqdFCvzHN_dMcZOd5yn0tgUR4iX5bGdvSSVQ@mail.gmail.com>
	<514332FC.2070805@windriver.com>
Date: Fri, 15 Mar 2013 16:36:31 +0100
Message-ID: <CAFyqS9pi71DgnPPAJH4gAvPWuf8DKdEp0AXuevuT_=AtCA4i9A@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: remove /boot/uImage and /usr/share/terminfo
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
X-List-Received-Date: Fri, 15 Mar 2013 15:36:32 -0000
Content-Type: multipart/alternative; boundary=485b397dd77b4c399204d7f86771

--485b397dd77b4c399204d7f86771
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 15, 2013 at 3:41 PM, Bruce Ashfield <
bruce.ashfield@windriver.com> wrote:

> On 13-03-15 07:36 AM, Hans Beck=E9rus wrote:
>
>>
>>
>> On Fri, Mar 15, 2013 at 3:20 PM, Bruce Ashfield
>> <bruce.ashfield@windriver.com <mailto:bruce.ashfield@**windriver.com<bru=
ce.ashfield@windriver.com>>>
>> wrote:
>>
>>     On 13-03-15 06:33 AM, Hans Beck=E9rus wrote:
>>
>>         Hi. In an effort to shrink our rootfs by some major numbers we
>>         found two
>>         low-hanging fruits that we would like to address before cherry
>>         picking
>>         and removing lots of good linux functionality. We have no need
>>         for the
>>         uImage (3MB) stored in /boot and also we can leave out the
>>         terminfo tree
>>         (2.5MB).
>>         My question here now is if the build system provide functionalit=
y
>> to
>>         actually tell the image builder not to include these specific
>>         components?
>>
>>
>>      From kernel.bbclass, you just need to clear RDEPENDS_kernel-base
>>     in your .conf files:
>>
>>     # Allow machines to override this dependency if kernel image files a=
re
>>     # not wanted in images as standard
>>     RDEPENDS_kernel-base ?=3D "kernel-image"
>>
>>     You'll still get your kernel modules installed after making this
>> change.
>>
>>     Bruce
>>
>>
>> Thanks Bruce.How could I have missed that? I believe I scanned through
>> the kernel.bbclass for something like this.
>> Also got some good tip regarding /usr/share/terminfo? Guess I need to
>> figure out what package drags it in ;)
>>
>
> Not off the top of my head. Hopefully someone else with experience in
> that area will notice the traffic and jump in :)
>
> I'm fairly certain that is is controllable, since in the past, I've
> known it to be removed and tuned for small systems, so it's not a
> completely uncommon thing to do.
>
> Cheers,
>

But of course. It is ncurses that drags it in. That figures ;)
It can be disabled in the configure script
     --disable-database      do not use terminfo, only fallbacks/termcap
So all it should take is to create a .bbappend and update EXTRA_OECONF.
But I might be wrong of course. Might be an even easier solution.

Hans

--485b397dd77b4c399204d7f86771
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">On Fri, Mar 15, 2013 at 3:41 PM, Bruce A=
shfield <span dir=3D"ltr">&lt;<a href=3D"mailto:bruce.ashfield@windriver.co=
m" target=3D"_blank">bruce.ashfield@windriver.com</a>&gt;</span> wrote:<br>=
<blockquote class=3D"gmail_quote" style=3D"margin:0pt 0pt 0pt 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div class=3D"im">On 13-03-15 07:36 AM, Hans Beck=E9rus wrote:<br>
</div><blockquote class=3D"gmail_quote" style=3D"margin:0pt 0pt 0pt 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"im">
<br>
<br>
On Fri, Mar 15, 2013 at 3:20 PM, Bruce Ashfield<br></div><div><div class=3D=
"h5">
&lt;<a href=3D"mailto:bruce.ashfield@windriver.com" target=3D"_blank">bruce=
.ashfield@windriver.com</a> &lt;mailto:<a href=3D"mailto:bruce.ashfield@win=
driver.com" target=3D"_blank">bruce.ashfield@<u></u>windriver.com</a>&gt;&g=
t; wrote:<br>

<br>
=A0 =A0 On 13-03-15 06:33 AM, Hans Beck=E9rus wrote:<br>
<br>
=A0 =A0 =A0 =A0 Hi. In an effort to shrink our rootfs by some major numbers=
 we<br>
=A0 =A0 =A0 =A0 found two<br>
=A0 =A0 =A0 =A0 low-hanging fruits that we would like to address before che=
rry<br>
=A0 =A0 =A0 =A0 picking<br>
=A0 =A0 =A0 =A0 and removing lots of good linux functionality. We have no n=
eed<br>
=A0 =A0 =A0 =A0 for the<br>
=A0 =A0 =A0 =A0 uImage (3MB) stored in /boot and also we can leave out the<=
br>
=A0 =A0 =A0 =A0 terminfo tree<br>
=A0 =A0 =A0 =A0 (2.5MB).<br>
=A0 =A0 =A0 =A0 My question here now is if the build system provide functio=
nality to<br>
=A0 =A0 =A0 =A0 actually tell the image builder not to include these specif=
ic<br>
=A0 =A0 =A0 =A0 components?<br>
<br>
<br>
=A0 =A0 =A0From kernel.bbclass, you just need to clear RDEPENDS_kernel-base=
<br>
=A0 =A0 in your .conf files:<br>
<br>
=A0 =A0 # Allow machines to override this dependency if kernel image files =
are<br>
=A0 =A0 # not wanted in images as standard<br>
=A0 =A0 RDEPENDS_kernel-base ?=3D &quot;kernel-image&quot;<br>
<br>
=A0 =A0 You&#39;ll still get your kernel modules installed after making thi=
s change.<br>
<br>
=A0 =A0 Bruce<br>
<br>
<br>
Thanks Bruce.How could I have missed that? I believe I scanned through<br>
the kernel.bbclass for something like this.<br>
Also got some good tip regarding /usr/share/terminfo? Guess I need to<br>
figure out what package drags it in ;)<br>
</div></div></blockquote>
<br>
Not off the top of my head. Hopefully someone else with experience in<br>
that area will notice the traffic and jump in :)<br>
<br>
I&#39;m fairly certain that is is controllable, since in the past, I&#39;ve=
<br>
known it to be removed and tuned for small systems, so it&#39;s not a<br>
completely uncommon thing to do.<br>
<br>
Cheers,<br></blockquote></div><br>But of course. It is ncurses that drags i=
t in. That figures ;)<br>It can be disabled in the configure script<br>=A0=
=A0 =A0 --disable-database=A0=A0=A0=A0=A0 do not use terminfo, only fallbac=
ks/termcap<br>
So all it should take is to create a .bbappend and update EXTRA_OECONF.<br>=
But I might be wrong of course. Might be an even easier solution.<br><br>Ha=
ns<br><br>

--485b397dd77b4c399204d7f86771--

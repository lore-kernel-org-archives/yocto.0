Return-Path: <djszapi@archlinux.us>
Received: from mail-pa0-f44.google.com (mail-pa0-f44.google.com
	[209.85.220.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CB9DE014E4
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2013 03:41:36 -0700 (PDT)
Received: by mail-pa0-f44.google.com with SMTP id jh10so3129444pab.17
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2013 03:41:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=B9fN8EMHqjOMCEDsUCz7Mhh47riZbTuE5NjCUFwPlOU=;
	b=QIZ91UTzTiNg6EApTAbkaCJJM83+BO71vO7S63nNq42JU9UoPwLz6dadFJBtuE5o8Q
	/8FCvohuyAEYc8qg4xx6O0ExeRcpRqUnhXg6bYyOmUUMpMQrKcCzeQSvn43dzhVw8tje
	FgzWcHR7+6usF9EsA2cpBczgymEK3ji6zl8Gm7cgfcR5g7RCeAnmk2FlNlzWPJVkGIpH
	hw4JQCxOIGT4XGPu/tSkoLo7taxIAjWgxmbMh0LxKfqAzHM/I6hRnSIHCnLRadgZqfX0
	UcaM7W1uEMyjKplA+n2QlK+LWHnJ8FABzFNxRW4mjqlweLiwYw6WcCLp/Iun7sucMMQh
	UkiA==
MIME-Version: 1.0
X-Received: by 10.68.59.98 with SMTP id y2mr52437193pbq.135.1374835296050;
	Fri, 26 Jul 2013 03:41:36 -0700 (PDT)
Sender: djszapi@archlinux.us
Received: by 10.70.37.237 with HTTP; Fri, 26 Jul 2013 03:41:35 -0700 (PDT)
In-Reply-To: <CAOMwXhNnJH9E6OyD0ch364G0WF58E4ZsU08DM4Bm8eOaqiSOeg@mail.gmail.com>
References: <CAOMwXhMAvqvs2TF_Wc2btWfEnWmvQQJ3RNJiTDw7A1D01RSXyw@mail.gmail.com>
	<CANyK_8fZbN9d0JmbcOhSo+4-xxvqDy29vWnXcgwms6OGFSJkrQ@mail.gmail.com>
	<CAOMwXhNnJH9E6OyD0ch364G0WF58E4ZsU08DM4Bm8eOaqiSOeg@mail.gmail.com>
Date: Fri, 26 Jul 2013 11:41:35 +0100
X-Google-Sender-Auth: 5o4I4jPy_m20burFWfIdCQ7So6c
Message-ID: <CAOMwXhNdQB0rEe8iE-qy0Hx-mi9idB8GgR8zcWMXMPQi5XHFZw@mail.gmail.com>
From: Laszlo Papp <lpapp@kde.org>
To: Paul Barker <paul@paulbarker.me.uk>
X-Gm-Message-State: ALoCoQl1sblhWQiSO1plxfrIW3d5Qry0XFt8sTD4xMAWuz/OUS6f9u+rC0GkCi7Yo3VV16FP/I6A
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Criteria for proposing a host distribution supported
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
X-List-Received-Date: Fri, 26 Jul 2013 10:41:37 -0000
Content-Type: multipart/alternative; boundary=bcaec5304f8172334504e267c912

--bcaec5304f8172334504e267c912
Content-Type: text/plain; charset=ISO-8859-1

Needless to mention, but just in case, the CI note for Arch could be
happening with a well-documented setup. Note, how Debian, Ubuntu, and other
supported distributions are untested in chroot environments for instance.

It is very unlikely you can cover everything for each supported
distributions, anyhow.


On Fri, Jul 26, 2013 at 11:39 AM, Laszlo Papp <lpapp@kde.org> wrote:

> If you do not trust Arch, you can use something else. That does not mean
> there would not be people who update (daily for instance) and fix the
> issues coming up.
>
> It is your decision not to trust Archlinux, so do I not with Ubuntu,
> Fedora, Debian, and so forth, but that does not mean I would like to rule
> them out for not being usable in your case.
>
>
>
> On Fri, Jul 26, 2013 at 11:34 AM, Paul Barker <paul@paulbarker.me.uk>wrote:
>
>> On 26 July 2013 11:21, Laszlo Papp <lpapp@kde.org> wrote:
>> > Hi,
>> >
>> > may I ask if it is acceptable to target Archlinux host (64 bit)
>> supported
>> > any time soon for a release?
>> >
>>
>> I'm not in any official position within the Yocto project but I do use
>> Arch so I'm just putting my tuppence (or 2 cents) in here. I don't
>> think it makes sense to call a rolling-release, compiled from source
>> and close to bleeding edge distro like Arch (or Gentoo for that
>> matter) "supported". The sanity check warning when building Poky was
>> what made me decide to spin up a Ubuntu Server 12.04 LTS virtual
>> machine for doing my important builds as that is a much more stable
>> distribution. When a new official release of Ubuntu, Debian, Fedora,
>> etc are released, a Poky build can be tested on that release and the
>> platform certified as being supported because it's been proven to
>> correctly build Poky. How often would you have to test Arch Linux when
>> major package updates can occur on any given day?
>>
>> Don't get me wrong, I love Arch and use it on my desktop for all
>> development work. But for builds I want to be known-good, I push them
>> off to a Ubuntu Server virtual machine.
>>
>> --
>> Paul Barker
>>
>> Email: paul@paulbarker.me.uk
>> http://www.paulbarker.me.uk
>>
>
>

--bcaec5304f8172334504e267c912
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Needless to mention, but just in case, the CI note for Arc=
h could be happening with a well-documented setup. Note, how Debian, Ubuntu=
, and other supported distributions are untested in chroot environments for=
 instance.<div>
<br></div><div>It is very unlikely you can cover everything for each suppor=
ted distributions, anyhow.</div></div><div class=3D"gmail_extra"><br><br><d=
iv class=3D"gmail_quote">On Fri, Jul 26, 2013 at 11:39 AM, Laszlo Papp <spa=
n dir=3D"ltr">&lt;<a href=3D"mailto:lpapp@kde.org" target=3D"_blank">lpapp@=
kde.org</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">If you do not trust Arch, y=
ou can use something else. That does not mean there would not be people who=
 update (daily for instance) and fix the issues coming up.<div>
<br></div><div>It is your decision not to trust Archlinux, so do I not with=
 Ubuntu, Fedora, Debian, and so forth, but that does not mean I would like =
to rule them out for not being usable in your case.<div><div class=3D"h5">
<br>
<div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Fri, Jul 2=
6, 2013 at 11:34 AM, Paul Barker <span dir=3D"ltr">&lt;<a href=3D"mailto:pa=
ul@paulbarker.me.uk" target=3D"_blank">paul@paulbarker.me.uk</a>&gt;</span>=
 wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div>On 26 July 2013 11:21, Laszlo Papp &lt;=
<a href=3D"mailto:lpapp@kde.org" target=3D"_blank">lpapp@kde.org</a>&gt; wr=
ote:<br>

&gt; Hi,<br>
&gt;<br>
&gt; may I ask if it is acceptable to target Archlinux host (64 bit) suppor=
ted<br>
&gt; any time soon for a release?<br>
&gt;<br>
<br>
</div>I&#39;m not in any official position within the Yocto project but I d=
o use<br>
Arch so I&#39;m just putting my tuppence (or 2 cents) in here. I don&#39;t<=
br>
think it makes sense to call a rolling-release, compiled from source<br>
and close to bleeding edge distro like Arch (or Gentoo for that<br>
matter) &quot;supported&quot;. The sanity check warning when building Poky =
was<br>
what made me decide to spin up a Ubuntu Server 12.04 LTS virtual<br>
machine for doing my important builds as that is a much more stable<br>
distribution. When a new official release of Ubuntu, Debian, Fedora,<br>
etc are released, a Poky build can be tested on that release and the<br>
platform certified as being supported because it&#39;s been proven to<br>
correctly build Poky. How often would you have to test Arch Linux when<br>
major package updates can occur on any given day?<br>
<br>
Don&#39;t get me wrong, I love Arch and use it on my desktop for all<br>
development work. But for builds I want to be known-good, I push them<br>
off to a Ubuntu Server virtual machine.<br>
<span><font color=3D"#888888"><br>
--<br>
Paul Barker<br>
<br>
Email: <a href=3D"mailto:paul@paulbarker.me.uk" target=3D"_blank">paul@paul=
barker.me.uk</a><br>
<a href=3D"http://www.paulbarker.me.uk" target=3D"_blank">http://www.paulba=
rker.me.uk</a><br>
</font></span></blockquote></div><br></div></div></div></div></div>
</blockquote></div><br></div>

--bcaec5304f8172334504e267c912--

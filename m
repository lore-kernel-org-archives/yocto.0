Return-Path: <mulhern@gmail.com>
Received: from mail-oa0-f44.google.com (mail-oa0-f44.google.com
	[209.85.219.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1277BE013A2
	for <yocto@yoctoproject.org>; Thu, 25 Jul 2013 06:25:05 -0700 (PDT)
Received: by mail-oa0-f44.google.com with SMTP id l20so701639oag.31
	for <yocto@yoctoproject.org>; Thu, 25 Jul 2013 06:25:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=e1cptKvxFfXMVS8yjk0ErxOqqzsw9xdxuWOgPep79hs=;
	b=eqZt4/7ACtWTuodmqNzRbaP7pLazyUOzas/CZy4uhlBvLwIEHld4GbY1OPOsxDF1ds
	7E2A/aHJG4UmnDPf7iEKTUccnVz2VFAzbhg7cGHW32Aork4+TQYTFISuDYepvb5MFT5T
	xGwedT16A+pr7qsDhKLw7P5vOrKt0SnMJj2+OqVuC0sniicz37XnZ1I8pdjJJReUbgYv
	WqdMp9vAu6xBeTTldTd7i+bLd67h9hS4rlr3Vm/NXeKAReTbw4HnNCdO5NrX8NKHQhSg
	0Gkg72x7rEY1nyuvj+xDAUhxwpU6qunJ5OSyeYZdc2MWu9X/B/Sadug7Ef1pb864XrTZ
	A6bg==
MIME-Version: 1.0
X-Received: by 10.60.56.229 with SMTP id d5mr41840350oeq.7.1374758704988; Thu,
	25 Jul 2013 06:25:04 -0700 (PDT)
Received: by 10.76.154.97 with HTTP; Thu, 25 Jul 2013 06:25:04 -0700 (PDT)
In-Reply-To: <CALmOhg=b9JaHpH9+bRsebAoE+pq9K0QYziwT7Ji7uYjsCfOtCQ@mail.gmail.com>
References: <CADM5y7v6DT9Ls=UZNRc_uYPdrgh2AtrY_HMRPbEss=CYxOWxoQ@mail.gmail.com>
	<CALmOhg=b9JaHpH9+bRsebAoE+pq9K0QYziwT7Ji7uYjsCfOtCQ@mail.gmail.com>
Date: Thu, 25 Jul 2013 09:25:04 -0400
Message-ID: <CADM5y7v6xs5iaUtnt8hWypAgRz981Sx90nSLHb9NM5F6BoNidw@mail.gmail.com>
From: mulhern <mulhern@gmail.com>
To: Trevor Woerner <trevor.woerner@linaro.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Discovering available Perl modules OR writing recipes for your own
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
X-List-Received-Date: Thu, 25 Jul 2013 13:25:07 -0000
Content-Type: multipart/alternative; boundary=089e01537002434a7604e255f44a

--089e01537002434a7604e255f44a
Content-Type: text/plain; charset=ISO-8859-1

Thanks, but that specific module isn't the whole total of my problem. It's
nice of you to point out for me the location of that one but what about the
more like 15 or so others I didn't list and where they might or might not
be hiding? Should that particular module really be in the meta-security
layer just because it is meta-security that needed it first? Generally
speaking, openssl is really just a networking thing, I think.

My real problem is not that particular module it's that
1) I don't know a good way to find out if all those modules that I need
haven't already been packaged up by someone somewhere.
2) I'm not certain that writing a separate recipe for each and every one of
those little modules is the correct way to go about getting them all if
they aren't already available somewhere.

I guess my third question regarding naming conventions is sort of answered
by examples.

- mulhern




On Thu, Jul 25, 2013 at 7:52 AM, Trevor Woerner
<trevor.woerner@linaro.org>wrote:

> On 24 July 2013 11:30, mulhern <mulhern@gmail.com> wrote:
> > pulledpork tries to use the module Crypt::SSLeay and in my current
> > configuration it can't find it.
>
> It looks like this module has a recipe in the meta-security layer:
> http://layers.openembedded.org/layerindex/recipes/?q=perl
>

--089e01537002434a7604e255f44a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks, but that specific module isn&#39;t the whole total=
 of my problem. It&#39;s nice of you to point out for me the location of th=
at one but what about the more like 15 or so others I didn&#39;t list and w=
here they might or might not be hiding? Should that particular module reall=
y be in the meta-security layer just because it is meta-security that neede=
d it first? Generally speaking, openssl is really just a networking thing, =
I think.<div>
<br></div><div>My real problem is not that particular module it&#39;s that<=
/div><div>1) I don&#39;t know a good way to find out if all those modules t=
hat I need haven&#39;t already been packaged up by someone somewhere.</div>
<div>2) I&#39;m not certain that writing a separate recipe for each and eve=
ry one of those little modules is the correct way to go about getting them =
all if they aren&#39;t already available somewhere.</div><div><br></div>
<div>I guess my third question regarding naming conventions is sort of answ=
ered by examples.</div><div><br></div><div>- mulhern<br><div><br></div><div=
><br></div></div></div><div class=3D"gmail_extra"><br><br><div class=3D"gma=
il_quote">
On Thu, Jul 25, 2013 at 7:52 AM, Trevor Woerner <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:trevor.woerner@linaro.org" target=3D"_blank">trevor.woerner@li=
naro.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<div class=3D"im">On 24 July 2013 11:30, mulhern &lt;<a href=3D"mailto:mulh=
ern@gmail.com">mulhern@gmail.com</a>&gt; wrote:<br>
&gt; pulledpork tries to use the module Crypt::SSLeay and in my current<br>
&gt; configuration it can&#39;t find it.<br>
<br>
</div>It looks like this module has a recipe in the meta-security layer:<br=
>
<a href=3D"http://layers.openembedded.org/layerindex/recipes/?q=3Dperl" tar=
get=3D"_blank">http://layers.openembedded.org/layerindex/recipes/?q=3Dperl<=
/a><br>
</blockquote></div><br></div>

--089e01537002434a7604e255f44a--

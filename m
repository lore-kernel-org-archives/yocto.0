Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86C99E006E9; Tue,  1 Nov 2016 15:21:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,MISSING_HEADERS,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.178 listed in list.dnswl.org]
	*  1.0 MISSING_HEADERS Missing To: header
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f178.google.com (mail-ua0-f178.google.com
	[209.85.217.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47159E0049B
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2016 15:20:58 -0700 (PDT)
Received: by mail-ua0-f178.google.com with SMTP id 51so122712952uai.1
	for <yocto@yoctoproject.org>; Tue, 01 Nov 2016 15:20:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:cc; 
	bh=2GbHNQGHQfILkq1z/qatfIJsN7TpqwS5R57vEsdO4FU=;
	b=FRebg+NZvFCrCjNAEKttxlJnzuzFskeMIitXDeStK6FDEWbaNiY0oXzVyJLAl/eoGk
	emOSlPpTp282V8N5dtjWFnoQwErnD0rRv1f//iZrRhJEayFGzO8kW8GJMpnO2LvxoOiW
	CBf4JLOYUTKO1f1wI7WkiClAkcG/tAU2mAStcoK+YPm51UzsmxYx7LUNTvoUyZk56aig
	lmoJrnIStlsMs5wIl0UQXRL05lAGi8e/Ar9xVxv3D+sCrhuShjEfCqzkUucSQ1mqrjay
	2ivfgHgRwi0AYHn+0JdfFdJENV6iK33mb/oIJlYET+cDkavfyfurwTq2IfYok2Znaybu
	3Dig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:cc;
	bh=2GbHNQGHQfILkq1z/qatfIJsN7TpqwS5R57vEsdO4FU=;
	b=FTpghapNXFluKSfFQH8fgD8CXmcD/DjUudrxlK4Xa63/xiYkkEz4ZNuxiunUj9+HiX
	HkP5KCMFm/kTcTZBK+9KDzkT4Wmw8vzf9TJZToeltRG7iQ1hPrIsDqr8O3I0X0byc743
	Tt7AfO54nK6sgw/zVKI5EY66vKMhpFye7TwEGUvQLln3aKhVCSsu9S7pESYDYhBJL8a+
	3NedC1IPBD8mWG1H0h/f0+foK2B9iIWqvHKGGyzlgcxYr5MVRlARbe03ZiuFIw55CrSd
	78b445zb+2DNnKDoI5XcX0XnGuDFMSnqpZoe8cMxuVRhZctwZ5YX8mgTiDQHx/hw38Nn
	z1FQ==
X-Gm-Message-State: ABUngvfg3EEWmd8Y3IwaQy45wFdPD29pSUB6dfbBAZbUdBrvwDHVruhXb6h3u+seftXGieaCSCf9xBng07AUnQ==
X-Received: by 10.176.1.230 with SMTP id 93mr210818ual.168.1478038858040; Tue,
	01 Nov 2016 15:20:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.1.68 with HTTP; Tue, 1 Nov 2016 15:20:57 -0700 (PDT)
In-Reply-To: <307cf616-d7a0-be5b-1aa9-4b12f3c9abb0@basmevissen.nl>
References: <30C2D590D16A5C46ADFE6521910377987FF67BEA@AZ-US1EXMB02.global.avaya.com>
	<CAJTo0LaVygRC3Z5eVtgGVkCU0mgYv7SGx07+1_om0GKkf6fHvw@mail.gmail.com>
	<21973d42-dc69-ee7b-031d-ac5544823c8f@basmevissen.nl>
	<CAJTo0Lat2oz3dpRXC6tSve3drTMB+=93mfR=0-UjxYtfgqLrxw@mail.gmail.com>
	<307cf616-d7a0-be5b-1aa9-4b12f3c9abb0@basmevissen.nl>
From: "Daniel." <danielhilst@gmail.com>
Date: Tue, 1 Nov 2016 20:20:57 -0200
Message-ID: <CAF3SDA50-YUatuxZiq3DGP3nH2-Eq9YY-jqBVJ6yJb4yAdxh0A@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto 2.2 Morty supported Linux Distros
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
X-List-Received-Date: Tue, 01 Nov 2016 22:21:03 -0000
Content-Type: multipart/alternative; boundary=001a1135de44190ad4054044bdf4

--001a1135de44190ad4054044bdf4
Content-Type: text/plain; charset=UTF-8

Just as a note, I've been using archlinux for about a year and have never
faced "distro related problems", except when the gcc6 comes out. Anyway I'm
using daisy in my work. I think that making old releases supported by X
distro doesn't make any sense...

Cheers,

2016-11-01 19:36 GMT-02:00 Bas Mevissen <abuse@basmevissen.nl>:

> On 01/11/16 18:11, Burton, Ross wrote:
>
>>
>> On 1 November 2016 at 17:05, Bas Mevissen <abuse@basmevissen.nl
>> <mailto:abuse@basmevissen.nl>> wrote:
>>
>>     What are the criteria to call a distro supported?
>>
>> The short version is that it's a distro that doesn't change too much, is
>> still supported, and we have builders on autobuilder.yoctoproject.org
>> <http://autobuilder.yoctoproject.org> running that distro.
>>
>>
> OK, clear. However, the "still supported" part would exclude older Fedora
> releases, even while perfectly usable for Yocto.
>
> The Centos mismatch is annoying, can you please file a bug?
>>
>>
> Done: https://bugzilla.yoctoproject.org/show_bug.cgi?id=10577
>
> Of course this is just a notice and you're entirely welcome to ignore
>> it,
>>
>
> It is not really bothering me, but it might be for a novice user or
> someone wanting to run official, central builds on a Centos 7.x host.
>
> or even set SANITY_TESTED_DISTROS to "" if you're using poky.
>>
>>
> I added that in the bug report as a side note to add that as a comment to
> poky.conf.
>
> Regards,
>
>
> --
> Bas.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
*"Do or do not. There is no try"*
  *Yoda Master*

--001a1135de44190ad4054044bdf4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Just as a note, I&#39;ve been using archlinux for abo=
ut a year and have never faced &quot;distro related problems&quot;, except =
when the gcc6 comes out. Anyway I&#39;m using daisy in my work. I think tha=
t making old releases supported by X distro doesn&#39;t make any sense...<b=
r><br></div>Cheers,<br></div><div class=3D"gmail_extra"><br><div class=3D"g=
mail_quote">2016-11-01 19:36 GMT-02:00 Bas Mevissen <span dir=3D"ltr">&lt;<=
a href=3D"mailto:abuse@basmevissen.nl" target=3D"_blank">abuse@basmevissen.=
nl</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On 01=
/11/16 18:11, Burton, Ross wrote:<br>
</span><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><span class=3D"">
<br>
On 1 November 2016 at 17:05, Bas Mevissen &lt;<a href=3D"mailto:abuse@basme=
vissen.nl" target=3D"_blank">abuse@basmevissen.nl</a><br></span><span class=
=3D"">
&lt;mailto:<a href=3D"mailto:abuse@basmevissen.nl" target=3D"_blank">abuse@=
basmevissen.nl</a>&gt;&gt; wrote:<br>
<br>
=C2=A0 =C2=A0 What are the criteria to call a distro supported?<br>
<br>
The short version is that it&#39;s a distro that doesn&#39;t change too muc=
h, is<br>
still supported, and we have builders on <a href=3D"http://autobuilder.yoct=
oproject.org" rel=3D"noreferrer" target=3D"_blank">autobuilder.yoctoproject=
.org</a><br></span>
&lt;<a href=3D"http://autobuilder.yoctoproject.org" rel=3D"noreferrer" targ=
et=3D"_blank">http://autobuilder.yoctoproje<wbr>ct.org</a>&gt; running that=
 distro.<br>
<br>
</blockquote>
<br>
OK, clear. However, the &quot;still supported&quot; part would exclude olde=
r Fedora releases, even while perfectly usable for Yocto.<span class=3D""><=
br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
The Centos mismatch is annoying, can you please file a bug?<br>
<br>
</blockquote>
<br></span>
Done: <a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10577"=
 rel=3D"noreferrer" target=3D"_blank">https://bugzilla.yoctoproject.<wbr>or=
g/show_bug.cgi?id=3D10577</a><span class=3D""><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Of course this is just a notice and you&#39;re entirely welcome to ignore<b=
r>
it,<br>
</blockquote>
<br></span>
It is not really bothering me, but it might be for a novice user or someone=
 wanting to run official, central builds on a Centos 7.x host.<span class=
=3D""><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
or even set SANITY_TESTED_DISTROS to &quot;&quot; if you&#39;re using poky.=
<br>
<br>
</blockquote>
<br></span>
I added that in the bug report as a side note to add that as a comment to p=
oky.conf.<br>
<br>
Regards,<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
-- <br>
Bas.<br>
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br><br clear=3D"all"><br>-- <br><div class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div style=3D"text-=
align:right"><i>&quot;Do or do not. There is no try&quot;</i><br><i>=C2=A0 =
</i><i><b>Yoda Master</b></i><br></div></div>
</div>

--001a1135de44190ad4054044bdf4--

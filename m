Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f170.google.com (mail-lb0-f170.google.com
	[209.85.217.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B220AE00CBF
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 16:51:18 -0700 (PDT)
Received: by mail-lb0-f170.google.com with SMTP id s7so2897428lbd.15
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 16:51:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=QukbHSqypJD2dJqqu4RG2w1xDRxeKO313weBSd7n1dk=;
	b=CqqXpNYdt/9qmLM0tvPoQ863yqLqTxtKMtwvoALkc1LSlFY6jLGprW4noR3aThBGcT
	YNEjEuW6vsf1yjeyvlj6ufrMGD5l/IpyAwspTyrTZ3QLE+6CbtIC7PmTDSQ43g7W0lJT
	RLBK/52A4aUc0jhhXyY1e03ZXYwwCZlToR/s3htCMAj8UkJAD0ARrHWr7G3HHc2cCbun
	PSN1McA51xxkKZQJ6LvtRh03z2OUw9ZLHqn5FNrrrmFjerNu54nOQCw9Xvulles116Zn
	5bLiSzWiBVkRgTWw/Q85Cpr/A9vsOZO7z/QXrTS1wb05KR5R14njtzK3u5RYiKCMrz4y
	enkQ==
X-Received: by 10.112.41.227 with SMTP id i3mr3319613lbl.41.1397173877255;
	Thu, 10 Apr 2014 16:51:17 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.35.194 with HTTP; Thu, 10 Apr 2014 16:50:57 -0700 (PDT)
In-Reply-To: <CAF_dkJAi700hXNbRQc=1UVTRY7VVwwf+UJyQ5EJm=+FoxQvC9A@mail.gmail.com>
References: <CAF_dkJAi700hXNbRQc=1UVTRY7VVwwf+UJyQ5EJm=+FoxQvC9A@mail.gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Thu, 10 Apr 2014 16:50:57 -0700
X-Google-Sender-Auth: Kuz5H-Rrq_hic-He61QPEG-7L5I
Message-ID: <CABcZAN=BAXcbK87929P34zCeT9Y4o3nUm12P99N+=4Gy31zSxw@mail.gmail.com>
To: Patrick Doyle <wpdster@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Confusion about autotools
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
X-List-Received-Date: Thu, 10 Apr 2014 23:51:20 -0000
Content-Type: multipart/alternative; boundary=001a113468f0a4b21c04f6b8e450

--001a113468f0a4b21c04f6b8e450
Content-Type: text/plain; charset=UTF-8

On Thu, Apr 10, 2014 at 4:43 PM, Patrick Doyle <wpdster@gmail.com> wrote:

> I am trying to write a recipe for a custom gstreamer plugin that
> compiles fine (natively) with autotools.
>
> I thought it would be as simple as writing a recipe that said something
> like:
>
> inherit autotools
>
> myplugin_do_fetch() {
>     commands_to_make_a_copy_of_my_source_code_in_build_tree;
> }
> EXPORT_FUNCTIONS do_fetch
>
> (I am leaving out the boilerplate DESCRIPTION, LICENSE, etc...
>
> But when I try to run my recipe, I get an error that ends like:
>
> 109: /home/wpd/.../run.do_fetch.1234 do_fetch: not found
>
> and when I look at run.do_fetch, I see on line 109
>
> do_fetch
>
> I thought that do_fetch would be inherited from base.bbclass.  I look
> in autotools.bbclass and I don't see a do_fetch function task defined
> there.
>

EXPORT_FUNCTIONS is an inheritance mechanism, to let you override a
function in a class you inherit but still be able to explicitly call the
function defined by that class. Unless you have a 'myplugin' class, nothing
will translate myplugin_do_fetch to do_fetch. If you want to override a
function like do_fetch in your recipe, just override that function, don't
prefix it.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a113468f0a4b21c04f6b8e450
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Thu, Apr 10, 2014 at 4:43 PM, Patrick Doyle <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:wpdster@gmail.com" target=3D"_blank">wpdster@gmail.com</a>&gt;<=
/span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div id=3D":xe" class=3D"a3s" style=3D"overf=
low:hidden">I am trying to write a recipe for a custom gstreamer plugin tha=
t<br>

compiles fine (natively) with autotools.<br>
<br>
I thought it would be as simple as writing a recipe that said something lik=
e:<br>
<br>
inherit autotools<br>
<br>
myplugin_do_fetch() {<br>
=C2=A0 =C2=A0 commands_to_make_a_copy_of_my_source_code_in_build_tree;<br>
}<br>
EXPORT_FUNCTIONS do_fetch<br>
<br>
(I am leaving out the boilerplate DESCRIPTION, LICENSE, etc...<br>
<br>
But when I try to run my recipe, I get an error that ends like:<br>
<br>
109: /home/wpd/.../run.do_fetch.1234 do_fetch: not found<br>
<br>
and when I look at run.do_fetch, I see on line 109<br>
<br>
do_fetch<br>
<br>
I thought that do_fetch would be inherited from base.bbclass. =C2=A0I look<=
br>
in autotools.bbclass and I don&#39;t see a do_fetch function task defined<b=
r>
there.</div></blockquote></div><br>EXPORT_FUNCTIONS is an inheritance mecha=
nism, to let you override a function in a class you inherit but still be ab=
le to explicitly call the function defined by that class. Unless you have a=
 &#39;myplugin&#39; class, nothing will translate myplugin_do_fetch to do_f=
etch. If you want to override a function like do_fetch in your recipe, just=
 override that function, don&#39;t prefix it.<br>

-- <br>Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBak=
e, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engine=
er, Mentor Graphics
</div></div>

--001a113468f0a4b21c04f6b8e450--

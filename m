Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com [209.85.217.54])
 by mx.groups.io with SMTP id smtpd.web12.13948.1591278094018651015
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Jun 2020 06:41:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=llRjVeBY;
 spf=pass (domain: gmail.com, ip: 209.85.217.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f54.google.com with SMTP id u17so3520260vsu.7
        for <yocto@lists.yoctoproject.org>; Thu, 04 Jun 2020 06:41:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=H4UoYQDizSLMIFl63QW0w4zyIJaGNKmFNjyC9o4S3I8=;
        b=llRjVeBYl29NndA0Dk5j734GM0QtwflP0g2IAY5ob4Gu8SCV4wwJcNu3gwYc9zsEUN
         /hovvUb3W/+ZqzkUR7LRQunv/Vgi2oEL92rGETL73eavDwKRTBq6OkHpZVvI06FFbQqM
         beOjRlsfXiR0pUSAI3cCsbHiWDwhfDsqs72sHp10qEEG6XvFAHhYuNM9ur4Bs/LX8kep
         JUGy4eSsBcFE990pRwGe9cJIB6LqQp71+YzxroBojTP9YIn95kC6Vv1xYkqCZZ1vqdQc
         J8dwdN93VylxeRUnKfKIUJ7whB6svWhrU+MRAEUsLeyWMXYt9g7ebFFyUMbEHulDvi0C
         vizA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=H4UoYQDizSLMIFl63QW0w4zyIJaGNKmFNjyC9o4S3I8=;
        b=OxuITluru04rdmuBtLhiDuTrKw9jX194VyVKWldaOTXvy5g3EAwM7mQzPg3KAfmbX0
         cpIoXUlLOZAq7mtqqCPCneiyCNDqh2XEVmszfOYlIDj3ke15ZuQrCIJEfVKxZ6xNpt4K
         PlelzGqaTyWpzJGSXeuu4lp67TDIoRAE591adCHti9T0+OOpKHiawvL0/+OXk3LrGoSq
         NRXNzbR8y1QjtVISNWoTakhTPccTPRpk1TmVOk9qxYf9pTT0dp2QNTjUKwvtDiihoR7Z
         gWhysCBlYZVpXJv0OSgE4b6YFSzwKIYbvJ4iW1LFVFssn4cOdQfsc+AfcbijCMARUzno
         j+eQ==
X-Gm-Message-State: AOAM530XuNpUINJeMj8YNnXXtxf3HONHlzsjYhn8wecTVu6vwqEENAZZ
	hKJAVr2eKe6z/3Kb4gvS6AAhk/dSf8zwM+kY5rc=
X-Google-Smtp-Source: ABdhPJxLZ4IwMi3VesIDx+rOhNZIS6UdtRm9Qe6bU6EqfN4JZggeUPAFukMUeddaEK/QImJVmJi91xZfoWRoAQR7LXQ=
X-Received: by 2002:a67:6686:: with SMTP id a128mr3519282vsc.83.1591278093048;
 Thu, 04 Jun 2020 06:41:33 -0700 (PDT)
MIME-Version: 1.0
References: <3jcy.1591258723749216280.cuB3@lists.yoctoproject.org>
 <CANNYZj9jWU9xS3OwhA7Ag+RiM6C_aT-EiAESHQFDh2wrZSt=BA@mail.gmail.com> <CABMxt4gwV-nZZkWRD8ayiNZL67rEx_rcWYLzVH9Y5hzNL1epoQ@mail.gmail.com>
In-Reply-To: <CABMxt4gwV-nZZkWRD8ayiNZL67rEx_rcWYLzVH9Y5hzNL1epoQ@mail.gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Thu, 4 Jun 2020 15:41:21 +0200
Message-ID: <CANNYZj8h=5PLS=N742duuMcn8t8L5Fvnp-f8vvbwCX_d1vtTYA@mail.gmail.com>
Subject: Re: [yocto] Why and when we need to migrate to newer #yocto version?
To: Mohamed HAMZAOUI <requinham@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000799f2905a7424d8c"

--000000000000799f2905a7424d8c
Content-Type: text/plain; charset="UTF-8"

On Thu, 4 Jun 2020 at 11:19, Mohamed HAMZAOUI <requinham@gmail.com> wrote:

> Thanks Alexander,
>
> When you say "The versions of libraries and tools are not independent
> from Yocto versions, in fact they are directly defined through oe-core
> metadata that is in a specific Yocto version." This not concern Linux
> kernel ? because Yocto wiki say "While tooling is provided to use any
> Linux kernel you wish, the linux-yocto Linux kernel recipes are tested
> with all the emulated targets, the core hardware BSPs, and some vendor
> layers."
>

Yes, the kernel is typically provided by the BSP vendor through the BSP
layer, and they define the kernel version in use. The security concerns
still apply though: if there is a vulnerability in their kernel, it's much
easier to address if the kernel is recent. And newer kernels gain new
features too, which might be useful or even required in the project.


> Then, you cited an important element for maintenance strategy : security
> issue .
> Except the 3.1 LTS, each Yocto version is maintained for 2 releases so
> for 1 year. Thus, for security fix, I think the normal way is to track
> vulnerabilities and apply patch because migrating to newest Yocto
> version every year represents a cost and an enormous effort whereas in
> certain cases, all the evolution don't necessarily concern the system
> which we uses.
> Is my understanding correct?
>

Tracking vulnerabilities and applying patches is a lot of work, and it
becomes harder, the further you are from upstream development. For two
reasons:

- security fixes need to be backported. To do that the code should not
change too much between the version that has the upstream fix, and version
that you need to patch. If you are far behind upstream, chances of that are
lower.

- if you can't apply the patch the way it is, and you need to change it,
you also need to truly understand what the code is doing and what the fix
changes in the code - and for most components that is not the case.

Also, after a Yocto version goes out of support (which happens fairly
quickly, previously one year, from now on 6 months for regular releases,
and 2 years for LTS ones), you need to do all of the vulnerability tracking
yourself; there typically is no shared community effort.

I would recommend the following strategy (and this is what we are using in
https://mbition.io/):

- there are two maintained branches, one 'rolling development' branch which
tracks master branches of all upstream layers and is periodically pushed
forward to bring in the latest upstream changes from all the layers, and
another 'stable product' branch which is based on the latest, supported LTS
release;

- when a new LTS release happens, 'rolling development' branch is split
into two: rolling development continues as it was, and a new 'stable
product' branch is created from the same code point. Previous LTS branch
can be retired then.

This way, there is never an enormous effort in migrating; instead the
migrating effort is spread over the 'rolling development' process, and is
continuous in nature.


Alex

>
> Mohamed
>
> On Thu, Jun 4, 2020 at 10:38 AM Alexander Kanavin
> <alex.kanavin@gmail.com> wrote:
> >
> > The versions of libraries and tools are not independent from Yocto
> versions, in fact they are directly defined through oe-core metadata that
> is in a specific Yocto version.
> >
> > For examples, what version of openssl is in your yocto builds? Is it
> supported/maintained upstream? What are you going to do if a critical
> security vulnerability is discovered in that version?
> >
> > This extends to all of the packages: it makes sense to use the most
> recent Yocto version for two primary reasons:
> >
> > - the stack is much less likely to contain security vulnerabilities
> > - it is much easier to satisfy project requirements w.r.t. version
> compatibility, or needed features, if those features are only available in
> recent versions of the package.
> >
> > This mailing list gets horror stories all the time from people who are
> for some reason using some ancient Yocto, then a customer requirement
> arrives that can only be satisfied through updating to a newer Yocto, or
> backporting a major component to the old Yocto; both impossible or nearly
> impossible tasks. You do not want to end up in that situation.
> >
> > Alex
> >
> > On Thu, 4 Jun 2020 at 10:18, <requinham@gmail.com> wrote:
> >>
> >> My question is about the #Yocto update and maintenance strategy. I have
> several projects for different boards and different versions of Yocto (1.7
> 2.0 2.2) which includes their BSP.
> >>
> >> As an OS build system, especially GNU/Linux, I don't understand exactly
> when should we necessarily migrate to a new version?
> >>
> >> In my understanding, the versions of the kernel, libraries and tools
> are independent from Yocto version. If you need to migrate to a new version
> of the Linux kernel, you have to modify/add the right recipe without
> worrying about the Yocto version.
> >>
> >> Thus, the maintenance work -security, bugs, optimization- should relate
> to the recipes and not to Yocto itself.
> >>
> >> Updating Yocto may have sens for me when we need to use new bitbake
> feature or new architecture but not to use new version of package. I think
> we should keep in mind to manage a certain consistency and compatibility
> between the different versions of the recipes in order for example to use
> the right version of the openssl library with the right version of Qt or
> even between the right version of the kernel and drivers, etc.
> >> Thanks,
> >> Mohamed
> >>
> >> 
>

--000000000000799f2905a7424d8c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, 4 Jun 2020 at 11:19, Mohamed HAMZ=
AOUI &lt;<a href=3D"mailto:requinham@gmail.com">requinham@gmail.com</a>&gt;=
 wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">Thanks Alexander,<br>
<br>
When you say &quot;The versions of libraries and tools are not independent=
<br>
from Yocto versions, in fact they are directly defined through oe-core<br>
metadata that is in a specific Yocto version.&quot; This not concern Linux=
<br>
kernel ? because Yocto wiki say &quot;While tooling is provided to use any=
<br>
Linux kernel you wish, the linux-yocto Linux kernel recipes are tested<br>
with all the emulated targets, the core hardware BSPs, and some vendor<br>
layers.&quot;<br></blockquote><div><br></div><div>Yes, the kernel is typic=
ally provided by the BSP vendor through the BSP layer, and they define the =
kernel version in use. The security concerns still apply though: if there i=
s a vulnerability in their kernel, it&#39;s much easier to address if the k=
ernel is recent. And newer kernels gain new features too, which might be us=
eful or even required in the project.<br></div><div>=C2=A0</div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex">
Then, you cited an important element for maintenance strategy : security i=
ssue .<br>
Except the 3.1 LTS, each Yocto version is maintained for 2 releases so<br>
for 1 year. Thus, for security fix, I think the normal way is to track<br>
vulnerabilities and apply patch because migrating to newest Yocto<br>
version every year represents a cost and an enormous effort whereas in<br>
certain cases, all the evolution don&#39;t necessarily concern the system<=
br>
which we uses.<br>
Is my understanding correct?<br></blockquote><div><br></div><div>Tracking =
vulnerabilities and applying patches is a lot of work, and it becomes harde=
r, the further you are from upstream development. For two reasons:</div><di=
v><br></div><div>- security fixes need to be backported. To do that the cod=
e should not change too much between the version that has the upstream fix,=
 and version that you need to patch. If you are far behind upstream, chance=
s of that are lower.</div><div><br></div><div>- if you can&#39;t apply the =
patch the way it is, and you need to change it, you also need to truly unde=
rstand what the code is doing and what the fix changes in the code - and fo=
r most components that is not the case.</div><div><br></div><div>Also, afte=
r a Yocto version goes out of support (which happens fairly quickly, previo=
usly one year, from now on 6 months for regular releases, and 2 years for L=
TS ones), you need to do all of the vulnerability tracking yourself; there =
typically is no shared community effort.</div><div><br></div><div>I would r=
ecommend the following strategy (and this is what we are using in <a href=
=3D"https://mbition.io/">https://mbition.io/</a>):</div><div><br></div><di=
v>- there are two maintained branches, one &#39;rolling development&#39; br=
anch which tracks master branches of all upstream layers and is periodicall=
y pushed forward to bring in the latest upstream changes from all the layer=
s, and another &#39;stable product&#39; branch which is based on the latest=
, supported LTS release;<br></div><div><br></div><div>- when a new LTS rele=
ase happens, &#39;rolling development&#39; branch is split into two: rollin=
g development continues as it was, and a new &#39;stable product&#39; branc=
h is created from the same code point. Previous LTS branch can be retired t=
hen.<br></div><div><br></div><div>This way, there is never an enormous effo=
rt in migrating; instead the migrating effort is spread over the &#39;rolli=
ng development&#39; process, and is continuous in nature.<br></div><div>=C2=
=
=A0</div><div><br></div><div>Alex<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">
<br>
Mohamed<br>
<br>
On Thu, Jun 4, 2020 at 10:38 AM Alexander Kanavin<br>
&lt;<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.kanav=
in@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; The versions of libraries and tools are not independent from Yocto ve=
rsions, in fact they are directly defined through oe-core metadata that is =
in a specific Yocto version.<br>
&gt;<br>
&gt; For examples, what version of openssl is in your yocto builds? Is it =
supported/maintained upstream? What are you going to do if a critical secur=
ity vulnerability is discovered in that version?<br>
&gt;<br>
&gt; This extends to all of the packages: it makes sense to use the most r=
ecent Yocto version for two primary reasons:<br>
&gt;<br>
&gt; - the stack is much less likely to contain security vulnerabilities<b=
r>
&gt; - it is much easier to satisfy project requirements w.r.t. version co=
mpatibility, or needed features, if those features are only available in re=
cent versions of the package.<br>
&gt;<br>
&gt; This mailing list gets horror stories all the time from people who ar=
e for some reason using some ancient Yocto, then a customer requirement arr=
ives that can only be satisfied through updating to a newer Yocto, or backp=
orting a major component to the old Yocto; both impossible or nearly imposs=
ible tasks. You do not want to end up in that situation.<br>
&gt;<br>
&gt; Alex<br>
&gt;<br>
&gt; On Thu, 4 Jun 2020 at 10:18, &lt;<a href=3D"mailto:requinham@gmail.co=
m" target=3D"_blank">requinham@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; My question is about the #Yocto update and maintenance strategy. =
I have several projects for different boards and different versions of Yoct=
o (1.7 2.0 2.2) which includes their BSP.<br>
&gt;&gt;<br>
&gt;&gt; As an OS build system, especially GNU/Linux, I don&#39;t understa=
nd exactly when should we necessarily migrate to a new version?<br>
&gt;&gt;<br>
&gt;&gt; In my understanding, the versions of the kernel, libraries and to=
ols are independent from Yocto version. If you need to migrate to a new ver=
sion of the Linux kernel, you have to modify/add the right recipe without w=
orrying about the Yocto version.<br>
&gt;&gt;<br>
&gt;&gt; Thus, the maintenance work -security, bugs, optimization- should =
relate to the recipes and not to Yocto itself.<br>
&gt;&gt;<br>
&gt;&gt; Updating Yocto may have sens for me when we need to use new bitba=
ke feature or new architecture but not to use new version of package. I thi=
nk we should keep in mind to manage a certain consistency and compatibility=
 between the different versions of the recipes in order for example to use =
the right version of the openssl library with the right version of Qt or ev=
en between the right version of the kernel and drivers, etc.<br>
&gt;&gt; Thanks,<br>
&gt;&gt; Mohamed<br>
&gt;&gt;<br>
&gt;&gt; <br>
</blockquote></div></div>

--000000000000799f2905a7424d8c--

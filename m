Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com [209.85.222.42])
 by mx.groups.io with SMTP id smtpd.web09.3131.1577485062962672381
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Dec 2019 14:17:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=g6lNHnw4;
 spf=pass (domain: gmail.com, ip: 209.85.222.42, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f42.google.com with SMTP id c7so6510806uaf.5
        for <yocto@lists.yoctoproject.org>; Fri, 27 Dec 2019 14:17:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7u67fTn6M7Q3kDmCRSG4Gpt/DxizjXE4Q+SAITH8/F4=;
        b=g6lNHnw4/t39tSCR5kjwj1lBTr0aRkIVNPY3vddzWVhq2BtrIDYoLJrDkXF+V1ZVU+
         Jmna5I7kI3krH3xCLyFLHYS034UflWjW2Y/ubDDzqmVKYVHyndjuNVhJ0LzHZKs9DNFL
         m3vhJ5J2puMRuIe6QzKXjWfl+PqUiba+Gvy3aL2FfN3oWSPVcLUIcRmg63aPsUVnjkVm
         tzED/e3n8XjIyX3pyVI9QAjHsUmO4PQA6Q3ecHhu/Un3C9YD3iymjnsI9uIzK3OW+eI6
         DiwpLeJHG8VYcLZ+FaFXbwP4KYXS9w3JemWkdYvAY4OKL5NLD+SMiQEt3CCfhqanF6+b
         i5mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7u67fTn6M7Q3kDmCRSG4Gpt/DxizjXE4Q+SAITH8/F4=;
        b=B1i4gArCuCb79fSKVoeAax86xffZGCHdQ2RjqQT/RrOcH5gvBrDIYeOqOBdcUc2L69
         qPJgzopLavOAfQGmTyrULPdybOERZaORFx6kMHUIFBAh5LMJ70fKBqkHPpycn8A/REuq
         NcIt0ueWzCIhkfCA1LcHSZ62Wtr4hYWdlO4OQjUj/bQRgGJq9+hpy4Y8D750CcvK7A0u
         wNdZSg5WYOjC14+nE17tYvHx9NlpdJRIqj2OoYcyM5kYJPk9hFfQ0RBxIReCY7SC0NH4
         2ggZKjeEy6DM5L+wK4I9xCDJgGD3OhlLmKw+CR+e/l2kS9VTQB4J3J5bccDEUP6pxjvR
         U1bw==
X-Gm-Message-State: APjAAAUxd6FWStJPH1AeSsk4nE9Qkhimvl1V+7zdSsxaE6eNpDYiBzkx
	J9wqIaHXaSRVrVcgIT79otooPH6hRGboOVcih7g=
X-Google-Smtp-Source: APXvYqwkzL20x1+1bfKVPFyKL66qvuGMcD6LFuZGqzqZ1pni80ecv8Svg62k+eYwhzJKXccd5/vgQ5xnKabOZhQZitE=
X-Received: by 2002:ab0:94:: with SMTP id 20mr31232355uaj.71.1577485061982;
 Fri, 27 Dec 2019 14:17:41 -0800 (PST)
MIME-Version: 1.0
References: <CAK4PFCUfSofY8JoK_QNhRA1ThTGVCKJM187BepSkXR4aypG-pQ@mail.gmail.com>
 <20191227201634.7lcmxythihq3nzvh@jholzmayr.localdomain> <CAK4PFCVcC3c3+FSO63BSLXyB6AqMwte8AOXqtu7fvwQzByR=8A@mail.gmail.com>
In-Reply-To: <CAK4PFCVcC3c3+FSO63BSLXyB6AqMwte8AOXqtu7fvwQzByR=8A@mail.gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Sat, 28 Dec 2019 01:17:33 +0300
Message-ID: <CANNYZj_-e2UaTdwxMpqn1+wrVJptz_1z+yhTSmfd256T7hBwEQ@mail.gmail.com>
Subject: Re: [yocto] OEM supplied yocto image is impossible to work with
To: Kent Dorfman <kent.dorfman766@gmail.com>
Cc: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000c20f3f059ab6dcd4"

--000000000000c20f3f059ab6dcd4
Content-Type: text/plain; charset="UTF-8"

To me it seems that the SDK is the wrong kind of delivery to begin with (as
it is basically a frozen target image configuration without the ability to
customize the entire system build; Yocto SDKs are meant for application
development). What you need is a hardware BSP meta-layer with ability to
integrate the layer into your private build configurations.

If you can get the OEM to agree to this, we can discuss acceptance criteria
for such a layer.

Alex

On Sat, 28 Dec 2019 at 00:52, Kent Dorfman <kent.dorfman766@gmail.com>
wrote:

> On 12/27/19, Josef Holzmayr <holzmayr@rsi-elektrotechnik.de> wrote:
> > Hello Kent!
>
> thanks for the followup!
>
> > "close" is really somewhat relative here. The words that trigger my
> > alarm here are "mission critical" and "aerospace". Anything that I will
> > write below is no legal advice, and not fit for any form of
> > certification or audit. If these are your requirements, then there are
> > companies in the Yocto ecosystem that are willing to offer their
> > services.
>
> yeah...no legal advice is expected online...just a forum to vent in,
> sometimes.
>
>
>
> > BSPs are a constant cause of pain for us giving Yocto support too. If
> > a board vendor screws up, we get to pick up the pieces too many times.
>
> Yup...been there, done that.
>
>
>
> > Little to add, besides... that it might have been a bad choice or
> > negotiation, if you're only now learning that they want to charge you
> > additionally. Thats something we obviously can't help you with.
>
> Yes, very bad choice in a field with no notably good choices.
>
> > If they are not willing to hand out all sources plus metadata layers,
> > then thats a total red flag. Yet again, not something we could change.
>
> OK, to be clear, I have access to meta-layers, but a large percentage
> of the BB files point to private git repos, and they don't volunteer
> the gitshallow  for a repo unless I know enough to specifically ask
> them for that repo, and assuming it's not something they are claiming
> is IP.
>
>
> > Sorry, I mean... didn't you request at least some form of eval kit? Demo
> > boards? To actually understand what you are buying?
>
> bad decisions were made before I came on-board, and I did ask them for
> access to the SDK before we took dilivery of hardware, and they balked
> at that idea...which justifiably left me with an uneasy feeling.  Of
> course I would have denied delivery if I had seen the state of their
> reference SDK beforehand.
>
>
> > Up to this point, yes, I can feel your frustration, but there's little
> > to say other than that you probably have a bad partnership by now.
>
> Oh yeah, I think we're about to head into the "grudgingly conformant"
> phase of the relationship.
>
>
> > The cleanest without throwing away the whole build that you can do is
> > remove everything in the build directory besides "conf". Yet there are
> > probably two sides to your actual question. a "bitbake -c clean
> > $YOURRECIPE" is the perfect equivalent to make clean, "bitbake
> > $YOURRECIPE" equivalates to "make". Wiping tmp and sstate cache is
> > pretty close to a full clean rebuild of the whole system, and no, it
> > shall not break. If it does, there is either something wrong with your
> > build setup (can happen) or you hit a bug (happens less often, but
> > happens too). The second side is actually running a full system rebuild,
> > which includes the complete build setup. Actually there is no
> > Yocto-inhernt way to do it, as different people have different needs -
> > and nobody managed a one size fits all solution until now. You can look
> > at the autobuilder as provided by the Yocto Project, and at the various
> > approaches here [1];
>
> I empty the conf/ sstate_cache/ and tmp/ directories and try to do a
> devtool build-image, but failures ensue based on it trying to load
> from private git repos, and some jibberish about locked signatures not
> matching.  I just need to know that I'm reverting to a source level
> build "the right way".
>
>
> >> 2) related to above, yocto needs a much better description of the
> >> expected directory tree within a project.
> >
> > Within a project? Could you please elaborate?
>
> They provided and "ark" embedded SDK, that was presumably generated
> from yocto.  I'm not differentiating between projects because there is
> only one, so I'm mean within the SDK directory tree.
>
>
> > bitbake and devtool can and should be used side by side. Running bitbake
> > manually, as you put it, is the definitively primary way of doing
> > things. So if that eeks out for, there is probably something strange
> > with your setup. If you can provide a more extensive log or error
> > message, we will happily...erm, at least honestly try to help.
>
> Thanks.  bitbake fails when run manually, telling me that there is a
> "." or null path element when I know for a fact that there is not one.
> Apparently when devtool calls bitbake it sets up the path correctly,
> but when it is called manually (it's not in the shell path), it
> doesn't like the PATH var.  There are some online references to this
> problem but no authoritative solution or description of why.
>
>
>
> >> 5) a big area that seems to be lacking is the ability to inquire in a
> >> yocto build as to what is included in it.  This is especially
> >> important if the responsible party didn't actually create the build,
> >> as is our case.  We're left with trying to guess what the OEM did, and
> >> why.
> >
> > Now this is certainly not true. Even in the utmost default setup, a
> > manifest file will be created along the image which tells you which
> > packages including version and license that went into it.
>
> A manifest shows packages, not layers/recipes/packages, nor a
> breakdown of what is included as a consequence of what layers or
> recipes it exists in.  This makes trying to modify a build that
> someone else has created, more difficult.
>
>
> > bitbake -g $TARGETOFYOURCHOICE will give you a dot file to inspect the
> > complete dependency graph of your chosen target. This is a bit too much
> > in-depth at times, but extremely powerful.
>
> TARGETOFYOURCHOICE?  What is the glue between "target-name" and
> available meta-layers and recipes?
>
>
> > And last but not least, its a good practise to have buildhistory enabled
> > [2]. This offers extremely detailed information about each and every
> > package and dependency that went into your build, down to each single
> > file, package size,...
>
> Agreed.  I think their SDK has it enabled by default but I need to check.
>
>
>
> > Including pre-produced blobs in a Yocto build is not pretty, but often
> > handy or impossible to avoid. Please see [3] for the documentation on
> > it.
>
> Well, unless they give us git access I don't see any way around it.
>
>
> > In a nutshell: whenever somebody hands you a binary build, without the
> > corresponding set of sources and metadata, then you are out of luck and
> > in for a lot of pain. That exactly the way of how to NOT use yocto when
> > selling hardware. Some do, and unfortunately we, as the Yocto community
> > can't do much about it, other than try and help the folks who struggle
> > with it. And go buy our hardware in another place.
>
> I wish I did have options, but if you know business, they are all
> about free, as long as it doesn't pose any encumberance on them.  I
> need to see just how far the OEM is will to go, and if not far enough,
> then I've to evaluate other options.
>
>
> > With that, I hope I could give a somewhat helpful but certainly
> > honest answer.
>
>
> Gracias, Amigo!
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47827):
> https://lists.yoctoproject.org/g/yocto/message/47827
> Mute This Topic: https://lists.yoctoproject.org/mt/69288358/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

--000000000000c20f3f059ab6dcd4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>To me it seems that the SDK is the wrong kind of deli=
very to begin with (as it is basically a frozen target image configuration =
without the ability to customize the entire system build; Yocto SDKs are me=
ant for application development). What you need is a hardware BSP meta-laye=
r with ability to integrate the layer into your private build configuration=
s.=C2=A0</div><div><br></div><div>If you can get the OEM to agree to this, =
we can discuss acceptance criteria for such a layer.</div><div><br></div><d=
iv>Alex</div></div><br><div class=3D"gmail_quote"><div class=3D"gmail_attr"=
 dir=3D"ltr">On Sat, 28 Dec 2019 at 00:52, Kent Dorfman &lt;<a href=3D"mail=
to:kent.dorfman766@gmail.com">kent.dorfman766@gmail.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;pa=
dding-left:1ex;border-left-color:rgb(204,204,204);border-left-width:1px;bor=
der-left-style:solid">On 12/27/19, Josef Holzmayr &lt;<a href=3D"mailto:hol=
zmayr@rsi-elektrotechnik.de" target=3D"_blank">holzmayr@rsi-elektrotechnik.=
de</a>&gt; wrote:<br>
&gt; Hello Kent!<br>
<br>
thanks for the followup!<br>
<br>
&gt; &quot;close&quot; is really somewhat relative here. The words that tri=
gger my<br>
&gt; alarm here are &quot;mission critical&quot; and &quot;aerospace&quot;.=
 Anything that I will<br>
&gt; write below is no legal advice, and not fit for any form of<br>
&gt; certification or audit. If these are your requirements, then there are=
<br>
&gt; companies in the Yocto ecosystem that are willing to offer their<br>
&gt; services.<br>
<br>
yeah...no legal advice is expected online...just a forum to vent in, someti=
mes.<br>
<br>
<br>
<br>
&gt; BSPs are a constant cause of pain for us giving Yocto support too. If<=
br>
&gt; a board vendor screws up, we get to pick up the pieces too many times.=
<br>
<br>
Yup...been there, done that.<br>
<br>
<br>
<br>
&gt; Little to add, besides... that it might have been a bad choice or<br>
&gt; negotiation, if you&#39;re only now learning that they want to charge =
you<br>
&gt; additionally. Thats something we obviously can&#39;t help you with.<br=
>
<br>
Yes, very bad choice in a field with no notably good choices.<br>
<br>
&gt; If they are not willing to hand out all sources plus metadata layers,<=
br>
&gt; then thats a total red flag. Yet again, not something we could change.=
<br>
<br>
OK, to be clear, I have access to meta-layers, but a large percentage<br>
of the BB files point to private git repos, and they don&#39;t volunteer<br=
>
the gitshallow=C2=A0 for a repo unless I know enough to specifically ask<br=
>
them for that repo, and assuming it&#39;s not something they are claiming<b=
r>
is IP.<br>
<br>
<br>
&gt; Sorry, I mean... didn&#39;t you request at least some form of eval kit=
? Demo<br>
&gt; boards? To actually understand what you are buying?<br>
<br>
bad decisions were made before I came on-board, and I did ask them for<br>
access to the SDK before we took dilivery of hardware, and they balked<br>
at that idea...which justifiably left me with an uneasy feeling.=C2=A0 Of<b=
r>
course I would have denied delivery if I had seen the state of their<br>
reference SDK beforehand.<br>
<br>
<br>
&gt; Up to this point, yes, I can feel your frustration, but there&#39;s li=
ttle<br>
&gt; to say other than that you probably have a bad partnership by now.<br>
<br>
Oh yeah, I think we&#39;re about to head into the &quot;grudgingly conforma=
nt&quot;<br>
phase of the relationship.<br>
<br>
<br>
&gt; The cleanest without throwing away the whole build that you can do is<=
br>
&gt; remove everything in the build directory besides &quot;conf&quot;. Yet=
 there are<br>
&gt; probably two sides to your actual question. a &quot;bitbake -c clean<b=
r>
&gt; $YOURRECIPE&quot; is the perfect equivalent to make clean, &quot;bitba=
ke<br>
&gt; $YOURRECIPE&quot; equivalates to &quot;make&quot;. Wiping tmp and ssta=
te cache is<br>
&gt; pretty close to a full clean rebuild of the whole system, and no, it<b=
r>
&gt; shall not break. If it does, there is either something wrong with your=
<br>
&gt; build setup (can happen) or you hit a bug (happens less often, but<br>
&gt; happens too). The second side is actually running a full system rebuil=
d,<br>
&gt; which includes the complete build setup. Actually there is no<br>
&gt; Yocto-inhernt way to do it, as different people have different needs -=
<br>
&gt; and nobody managed a one size fits all solution until now. You can loo=
k<br>
&gt; at the autobuilder as provided by the Yocto Project, and at the variou=
s<br>
&gt; approaches here [1];<br>
<br>
I empty the conf/ sstate_cache/ and tmp/ directories and try to do a<br>
devtool build-image, but failures ensue based on it trying to load<br>
from private git repos, and some jibberish about locked signatures not<br>
matching.=C2=A0 I just need to know that I&#39;m reverting to a source leve=
l<br>
build &quot;the right way&quot;.<br>
<br>
<br>
&gt;&gt; 2) related to above, yocto needs a much better description of the<=
br>
&gt;&gt; expected directory tree within a project.<br>
&gt;<br>
&gt; Within a project? Could you please elaborate?<br>
<br>
They provided and &quot;ark&quot; embedded SDK, that was presumably generat=
ed<br>
from yocto.=C2=A0 I&#39;m not differentiating between projects because ther=
e is<br>
only one, so I&#39;m mean within the SDK directory tree.<br>
<br>
<br>
&gt; bitbake and devtool can and should be used side by side. Running bitba=
ke<br>
&gt; manually, as you put it, is the definitively primary way of doing<br>
&gt; things. So if that eeks out for, there is probably something strange<b=
r>
&gt; with your setup. If you can provide a more extensive log or error<br>
&gt; message, we will happily...erm, at least honestly try to help.<br>
<br>
Thanks.=C2=A0 bitbake fails when run manually, telling me that there is a<b=
r>
&quot;.&quot; or null path element when I know for a fact that there is not=
 one.<br>
Apparently when devtool calls bitbake it sets up the path correctly,<br>
but when it is called manually (it&#39;s not in the shell path), it<br>
doesn&#39;t like the PATH var.=C2=A0 There are some online references to th=
is<br>
problem but no authoritative solution or description of why.<br>
<br>
<br>
<br>
&gt;&gt; 5) a big area that seems to be lacking is the ability to inquire i=
n a<br>
&gt;&gt; yocto build as to what is included in it.=C2=A0 This is especially=
<br>
&gt;&gt; important if the responsible party didn&#39;t actually create the =
build,<br>
&gt;&gt; as is our case.=C2=A0 We&#39;re left with trying to guess what the=
 OEM did, and<br>
&gt;&gt; why.<br>
&gt;<br>
&gt; Now this is certainly not true. Even in the utmost default setup, a<br=
>
&gt; manifest file will be created along the image which tells you which<br=
>
&gt; packages including version and license that went into it.<br>
<br>
A manifest shows packages, not layers/recipes/packages, nor a<br>
breakdown of what is included as a consequence of what layers or<br>
recipes it exists in.=C2=A0 This makes trying to modify a build that<br>
someone else has created, more difficult.<br>
<br>
<br>
&gt; bitbake -g $TARGETOFYOURCHOICE will give you a dot file to inspect the=
<br>
&gt; complete dependency graph of your chosen target. This is a bit too muc=
h<br>
&gt; in-depth at times, but extremely powerful.<br>
<br>
TARGETOFYOURCHOICE?=C2=A0 What is the glue between &quot;target-name&quot; =
and<br>
available meta-layers and recipes?<br>
<br>
<br>
&gt; And last but not least, its a good practise to have buildhistory enabl=
ed<br>
&gt; [2]. This offers extremely detailed information about each and every<b=
r>
&gt; package and dependency that went into your build, down to each single<=
br>
&gt; file, package size,...<br>
<br>
Agreed.=C2=A0 I think their SDK has it enabled by default but I need to che=
ck.<br>
<br>
<br>
<br>
&gt; Including pre-produced blobs in a Yocto build is not pretty, but often=
<br>
&gt; handy or impossible to avoid. Please see [3] for the documentation on<=
br>
&gt; it.<br>
<br>
Well, unless they give us git access I don&#39;t see any way around it.<br>
<br>
<br>
&gt; In a nutshell: whenever somebody hands you a binary build, without the=
<br>
&gt; corresponding set of sources and metadata, then you are out of luck an=
d<br>
&gt; in for a lot of pain. That exactly the way of how to NOT use yocto whe=
n<br>
&gt; selling hardware. Some do, and unfortunately we, as the Yocto communit=
y<br>
&gt; can&#39;t do much about it, other than try and help the folks who stru=
ggle<br>
&gt; with it. And go buy our hardware in another place.<br>
<br>
I wish I did have options, but if you know business, they are all<br>
about free, as long as it doesn&#39;t pose any encumberance on them.=C2=A0 =
I<br>
need to see just how far the OEM is will to go, and if not far enough,<br>
then I&#39;ve to evaluate other options.<br>
<br>
<br>
&gt; With that, I hope I could give a somewhat helpful but certainly<br>
&gt; honest answer.<br>
<br>
<br>
Gracias, Amigo!<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
<br>
View/Reply Online (#47827): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/47827" target=3D"_blank" rel=3D"noreferrer">https://lists.yoctop=
roject.org/g/yocto/message/47827</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/69288358/1686=
489" target=3D"_blank" rel=3D"noreferrer">https://lists.yoctoproject.org/mt=
/69288358/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" targe=
t=3D"_blank" rel=3D"noreferrer">https://lists.yoctoproject.org/g/yocto/unsu=
b</a>=C2=A0 [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">al=
ex.kanavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
</blockquote></div>

--000000000000c20f3f059ab6dcd4--

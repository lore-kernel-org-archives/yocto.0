Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7961EC433FE
	for <webhook@archiver.kernel.org>; Tue,  1 Nov 2022 22:13:34 +0000 (UTC)
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com [209.85.166.42])
 by mx.groups.io with SMTP id smtpd.web11.721.1667340809037834790
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Nov 2022 15:13:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=YdUibu0c;
 spf=pass (domain: gmail.com, ip: 209.85.166.42, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-io1-f42.google.com with SMTP id d123so8844970iof.7
        for <yocto@lists.yoctoproject.org>; Tue, 01 Nov 2022 15:13:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bcagU5sI5osxyUa1YSFEpcjySKtqXoHYakZAgMkY1gc=;
        b=YdUibu0crqwt9zk0EqTS4KX3cT9yRreBlCCdHQLrLujSLMKqRMuRuqFFR3Ihk/eWpz
         pZvokE8B5pvHd+1X/JNUpp3+ItaA8W+skYqJMK24o+GbAT1/L7/mL4W+hQUbxC+GZgzO
         bt1o18nY/XeMABp5tGKubj0SBCrSotredQ6D74guGhoUivm1y6EFG12JV3mm5h9LHkDb
         8H1gb7fEDynZERWmFW3AKbmRKdNMFdfzyDOHE51zY0l68z/GF+aKqhZgcL7i3xWAiSJ5
         j2MDwuxEzwinTEZH33NRg2qUz35Axh9qwz8UzwqxjmLpSLHJJxi/5rsySmKdxBp4abvC
         sfug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bcagU5sI5osxyUa1YSFEpcjySKtqXoHYakZAgMkY1gc=;
        b=L9GNYYpnnIDwgrg5RlR31rTTRDokvravZsooF+nWREBBrq4Xao1ug9bjayLoJJoLVD
         MbabX/ZaB5Sz4YnRldw++uFedXlLq3JPogswnpHTReskho4+QKdoR4h7IMM1ooA6bQjb
         4FO70XjhF/3ZLm0Qy3zmBc2ofPSQ9BEVPcohztxCMbLF3HyLn0JyUEJzVwpcxZEZjTEE
         ZikCNnv1WvUYn2wu1waBTSNguGI2LgkaEGDultpwx3CDmNggHhnjLHSY2aoI2xQzQL2l
         BUm9EzhIJeQwN32OmxQTdocM/TfVDyQxOM4Q3HS3PXJqpLNICkmGK35DosA6scMcN8B/
         3uSA==
X-Gm-Message-State: ACrzQf1J1WJubOeD8SxJFEstcVHA5sIxQY7mwdaslVP++YBa/5Z5dtDK
	eJx/zeJPLZl3OMFL5Om6YHAmEC0HXPNaJKqW9ek=
X-Google-Smtp-Source: AMsMyM697gupTNJuVJAjRblQhzMWNAjRb+2TSQB6iP1NGXwNeNdUI5iNOso78U4PMStNGoa1XRrAzJElTXG7IRfuypQ=
X-Received: by 2002:a5d:9944:0:b0:6d2:7bfd:2dba with SMTP id
 v4-20020a5d9944000000b006d27bfd2dbamr6614257ios.192.1667340808309; Tue, 01
 Nov 2022 15:13:28 -0700 (PDT)
MIME-Version: 1.0
References: <LsVs.1666893088601518070.INID@lists.yoctoproject.org>
 <20221101125410.GD17701@gmail.com> <CY4PR05MB32865CAB7E20F81D92EEC2A0A4369@CY4PR05MB3286.namprd05.prod.outlook.com>
In-Reply-To: <CY4PR05MB32865CAB7E20F81D92EEC2A0A4369@CY4PR05MB3286.namprd05.prod.outlook.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Tue, 1 Nov 2022 18:13:17 -0400
Message-ID: <CADkTA4MxiX9az7kvqjS+E=Q5bGU54zd-m+u2OgG5-1MXt+LrQA@mail.gmail.com>
Subject: Re: [yocto] Help with setting up a PREEMPT_RT image for BeagleBone
 Black #yocto
To: Michael T Pham <mpham20@gmu.edu>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000099500205ec700828"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Nov 2022 22:13:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58464

--00000000000099500205ec700828
Content-Type: text/plain; charset="UTF-8"

On Tue, Nov 1, 2022 at 5:10 PM Michael T Pham <mpham20@gmu.edu> wrote:

>
> >To build a kernel recipe (not just linux-yocto), it must be marked
> >as compatible with your machine. The messages you are seeing are
> >telling you that, by indicating that the recipes were skipped (since
> >they are not compatible) and once they are all skipped you get a failure
> >as nothing provides virtual/kernel.
> >
> >For linux-yocto, you also need a BSP description that the tooling
> >uses to create the kernel configuration.
>
> I am not sure what is meant by this. Sorry, I'm a complete newbie ':)
>

You can find the details in the yocto manuals, but I'm describing how
the standard/tiny/preempt-rt reference kernels have their configurations
constructed using the kernel-yocto tooling.

For each kernel type, there's a matching config that has the MACHINE
+ kernel type in it. The tools find that description and use it to pull all
the common configs, kernel type specifics and machine fragments into
a final config.

If one doesn't exist, you either need to have your own defconfig, or you
can create one. In this case, you don't need to create one, as it
exists.
i.e.:
https://git.yoctoproject.org/yocto-kernel-cache/tree/bsp/beaglebone/beaglebone-preempt-rt.scc?h=yocto-5.15


>
> >We haven't been testing the beaglebone-yocto reference against -rt,
> >so it isn't marked as compatible by default. That being said, it
> >can be easily made compatible via a bbappend. Look at the
> >meta-yocto-bsp layer, and the bbappends in there. We are adding
> >the reference boards as compatible with linux-yocto. A similar
> >bbappend would work for linux-yocto-rt, and you'd solve that first
> >issue of not having a compatible machine.
>
> I think I see what you're saying. So I would copy the contents of
> /poky/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.19.bbappend
> for linux-yocto-rt? Where is the location to place this?
>

You'd only need to have the beaglebone yocto bits in the new bbappend,
and it would be placed in any layer, in the appropriate subdirectory. This
bappend is no different than any other.

I'm being intentionally terse there, since it is best to read the docs for
this, as I won't do it justice.


>
> >For the BSP description, it does happen that we have one in the
> >linux-yocto configuration meta-data, so one doesn't need to be
> >created. The tools would find that description during the build
> >and use it accordingly. The default KBRANCH should aslo be fine
> >for the beaglebone-yocto, as we aren't carrying any extra patches
> >for the board, so the linux-yocto-rt recipe's default values will
> >get the right branch checked out and built.
>
> Forgive me for not understanding but at first it sounds like you are
> saying I need to create something and then you are saying I don't
> need to?
>

I was describing the general case, and then commenting on this specific
one. I don't want someone to read this later and maybe think that any
machine + linux-yocto-rt combination will "just work".

Bruce



>
> Michael
>


-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end
- "Use the force Harry" - Gandalf, Star Trek II

--00000000000099500205ec700828
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Tue, Nov 1, 2022 at 5:10 PM Michael T Pham &lt;<=
a href=3D"mailto:mpham20@gmu.edu">mpham20@gmu.edu</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><br>
&gt;To build a kernel recipe (not just linux-yocto), it must be marked<br>
&gt;as compatible with your machine. The messages you are seeing are<br>
&gt;telling you that, by indicating that the recipes were skipped (since<br=
>
&gt;they are not compatible) and once they are all skipped you get a failur=
e<br>
&gt;as nothing provides virtual/kernel.<br>
&gt;<br>
&gt;For linux-yocto, you also need a BSP description that the tooling<br>
&gt;uses to create the kernel configuration.<br>
<br>
I am not sure what is meant by this. Sorry, I&#39;m a complete newbie &#39;=
:)<br></blockquote><div><br></div><div><div class=3D"gmail_default" style=
=3D"font-size:small">You can find the details in the yocto manuals, but I&#=
39;m describing how</div><div class=3D"gmail_default" style=3D"font-size:sm=
all">the standard/tiny/preempt-rt reference kernels have their configuratio=
ns<br></div><div class=3D"gmail_default" style=3D"font-size:small">construc=
ted using the kernel-yocto tooling.</div><div class=3D"gmail_default" style=
=3D"font-size:small"><br></div><div class=3D"gmail_default" style=3D"font-s=
ize:small">For each kernel type, there&#39;s a matching config that has the=
 MACHINE</div><div class=3D"gmail_default" style=3D"font-size:small">+ kern=
el type in it. The tools find that description and use it to pull all<br></=
div><div class=3D"gmail_default" style=3D"font-size:small">the common confi=
gs, kernel type specifics and machine fragments into</div><div class=3D"gma=
il_default" style=3D"font-size:small">a final config.=C2=A0</div><div class=
=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"gmail_=
default" style=3D"font-size:small">If one doesn&#39;t exist, you either nee=
d to have your own defconfig, or you</div><div class=3D"gmail_default" styl=
e=3D"font-size:small">can create one. In this case, you don&#39;t need to c=
reate one, as it</div><div class=3D"gmail_default" style=3D"font-size:small=
">exists.</div><div class=3D"gmail_default" style=3D"font-size:small"></div=
><div class=3D"gmail_default" style=3D"font-size:small">i.e.: <a href=3D"ht=
tps://git.yoctoproject.org/yocto-kernel-cache/tree/bsp/beaglebone/beaglebon=
e-preempt-rt.scc?h=3Dyocto-5.15">https://git.yoctoproject.org/yocto-kernel-=
cache/tree/bsp/beaglebone/beaglebone-preempt-rt.scc?h=3Dyocto-5.15</a></div=
></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
&gt;We haven&#39;t been testing the beaglebone-yocto reference against -rt,=
<br>
&gt;so it isn&#39;t marked as compatible by default. That being said, it<br=
>
&gt;can be easily made compatible via a bbappend. Look at the<br>
&gt;meta-yocto-bsp layer, and the bbappends in there. We are adding<br>
&gt;the reference boards as compatible with linux-yocto. A similar<br>
&gt;bbappend would work for linux-yocto-rt, and you&#39;d solve that first<=
br>
&gt;issue of not having a compatible machine.<br>
<br>
I think I see what you&#39;re saying. So I would copy the contents of <br>
/poky/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.19.bbappend<br>
for linux-yocto-rt? Where is the location to place this?<br></blockquote><d=
iv><br></div><div><div class=3D"gmail_default" style=3D"font-size:small">Yo=
u&#39;d only need to have the beaglebone yocto bits in the new bbappend,</d=
iv><div class=3D"gmail_default" style=3D"font-size:small">and it would be p=
laced in any layer, in the appropriate subdirectory. This</div><div class=
=3D"gmail_default" style=3D"font-size:small">bappend is no different than a=
ny other.</div><div class=3D"gmail_default" style=3D"font-size:small"><br><=
/div><div class=3D"gmail_default" style=3D"font-size:small">I&#39;m being i=
ntentionally terse there, since it is best to read the docs for</div><div c=
lass=3D"gmail_default" style=3D"font-size:small">this, as I won&#39;t do it=
 justice.</div></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">
<br>
&gt;For the BSP description, it does happen that we have one in the<br>
&gt;linux-yocto configuration meta-data, so one doesn&#39;t need to be<br>
&gt;created. The tools would find that description during the build<br>
&gt;and use it accordingly. The default KBRANCH should aslo be fine<br>
&gt;for the beaglebone-yocto, as we aren&#39;t carrying any extra patches<b=
r>
&gt;for the board, so the linux-yocto-rt recipe&#39;s default values will<b=
r>
&gt;get the right branch checked out and built.<br>
<br>
Forgive me for not understanding but at first it sounds like you are<br>
saying I need to create something and then you are saying I don&#39;t <br>
need to?<br></blockquote><div><br></div><div><div class=3D"gmail_default" s=
tyle=3D"font-size:small">I was describing the general case, and then commen=
ting on this specific</div><div class=3D"gmail_default" style=3D"font-size:=
small">one. I don&#39;t want someone to read this later and maybe think tha=
t any</div><div class=3D"gmail_default" style=3D"font-size:small">machine=
=C2=A0+ linux-yocto-rt combination will &quot;just work&quot;.</div><div cl=
ass=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"gma=
il_default" style=3D"font-size:small">Bruce</div><br></div><div>=C2=A0</div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Michael<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature">- Thou shalt not follow the NULL pointer, for ch=
aos and madness await thee at its end<br>- &quot;Use the force Harry&quot; =
- Gandalf, Star Trek II<br><br></div></div>

--00000000000099500205ec700828--


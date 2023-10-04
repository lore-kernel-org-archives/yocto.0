Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D24F4E7C4C6
	for <webhook@archiver.kernel.org>; Wed,  4 Oct 2023 14:39:33 +0000 (UTC)
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com [209.85.166.52])
 by mx.groups.io with SMTP id smtpd.web11.20216.1696430366919593248
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Oct 2023 07:39:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Ak/axYMg;
 spf=pass (domain: gmail.com, ip: 209.85.166.52, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-io1-f52.google.com with SMTP id ca18e2360f4ac-7a2a9e5451bso80759239f.1
        for <yocto@lists.yoctoproject.org>; Wed, 04 Oct 2023 07:39:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696430366; x=1697035166; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MBwllOVdCGQxFdO3dyFMzltxqB8ZDLlF8mR9EvV0PEk=;
        b=Ak/axYMgdo+eY39GG4L36wTJPUl5lpWeK4lCjHygJf3suOIog1+B3pO3rBaM5baPlS
         Lo6L93f0778aimwN0O87DRtqpcgUZrC2bR7BNCTOZ1Htf+YNoDl0Tb2LsSUEA/1mu/xz
         pOtU4bPfuTGvAJ3JIc+DihN7+yVn+eGz1ygHiPSE5rbNWQdx71nKrg73aD57SNuOl3UY
         OIW8XrN8WpDo7Rn98ojGdUjJu9S2lh5mu3qTKvhEcPnfOIzJNhd0BfW/o5YoKPNCA4rP
         xnYKyv02HO+zXsWOCauzfDEQlXaLZdYnUWmg2SnSW9kMRd7fulZQAOlQiL7byPQJ0h7q
         d+Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696430366; x=1697035166;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MBwllOVdCGQxFdO3dyFMzltxqB8ZDLlF8mR9EvV0PEk=;
        b=HjDqcVBhYMLM16pfuha0F7IV6nAb2PfuUP3/xiC3d/H9of+y3JPSAdMqG+qUAGXxlu
         s4PMRty3q/3n5US8fbpXws7maHYee6UVcV6I0vDg3iBNo7BqZu0DRCINXkOF9YL4GTUA
         zdwfAzq7e9QbZoKPee6xTXbJRUxfzvon/7mPhtLAW3KtHooZ+WJF9s+SQ9Il2wj6oPSQ
         td6oYWZAo81WA5G1bQDBrdMjomGKyNub6WebbiOZHjWoATAOc4ptiZIv725nGdyMM2Y+
         X3APRm9Qg1OiD/3jKK91zjUaEBi4RigZbOl9YCIDXTwk8lJPrJnkje04DkBGSeVjxQrd
         4OUw==
X-Gm-Message-State: AOJu0YxxeoORS/yVfJOffkmqhiyZz5k8LeO/eJlV1pt8FPEsk7HONQQ/
	XuBihroscxxGobVCdvkGxNBXbNfDExhjM70MEZs=
X-Google-Smtp-Source: AGHT+IGvsHDklCt1Au/97V1myV2Qsgay6WL0z12lgvElGnUeyDn3HrSeKYC8tsV0QaHaYHeP7DVoxIO2AP0s6xsO5kg=
X-Received: by 2002:a6b:d112:0:b0:795:1c0b:d31c with SMTP id
 l18-20020a6bd112000000b007951c0bd31cmr2350255iob.21.1696430365947; Wed, 04
 Oct 2023 07:39:25 -0700 (PDT)
MIME-Version: 1.0
References: <20231003041941.4760-1-twoerner@gmail.com> <0d15a99f-549f-af9d-5f6b-e7712bbf62ff@theobroma-systems.com>
 <20231003133805.GA2234@localhost> <0efbea1f-d05f-8ec6-9144-f04a0b3e17a2@theobroma-systems.com>
In-Reply-To: <0efbea1f-d05f-8ec6-9144-f04a0b3e17a2@theobroma-systems.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Wed, 4 Oct 2023 10:39:14 -0400
Message-ID: <CADkTA4NtDgLQN3Meq3fpEYSdFf++bUJVHSRPYjA4VUSEG-9QUw@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip][PATCH] KERNEL_DEVICETREE: 32-bit re-org
To: quentin.schulz@theobroma-systems.com
Cc: Trevor Woerner <twoerner@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000593fff0606e4f9f1"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 Oct 2023 14:39:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61240

--000000000000593fff0606e4f9f1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 4, 2023 at 9:59=E2=80=AFAM Quentin Schulz via lists.yoctoprojec=
t.org
<quentin.schulz=3Dtheobroma-systems.com@lists.yoctoproject.org> wrote:

> Hi Trevor,
>
> On 10/3/23 15:38, Trevor Woerner wrote:
> > On Tue 2023-10-03 @ 12:32:08 PM, Quentin Schulz wrote:
> >> Hi Trevor,
> >>
> >> On 10/3/23 06:19, Trevor Woerner via lists.yoctoproject.org wrote:
> >>> The upstream kernel reorganized the 32-bit arch/arm device-tree
> directory structure
> >>> to separate out the device-trees by manufacturer (similar to the
> organization
> >>> of the arch/arm64 device-trees). Update the references to 32-bit arm
> >>> device-trees to match.
> >>>
> >>
> >> Does this work with linux-yocto and linux-yocto-dev from master or do =
we
> >> need to add some logic to support both (do you want to?).
> >
> > This doesn't work at all. I figured this was an easy one, made the twea=
k,
> > submitted it, then added it to my jenkins builder to verify overnight.
> Woke up
> > to find the do_image_wic() tasks failed. It's the same layout as the
> 64-bit
> > machines but I'll have to dig in to figure out why it didn't work.
> >
> > As for the linux-yocto vs linux-yocto-dev question I'll take a look. Th=
is
> > happened with linux-yocto, so I would assume it is already the case wit=
h
> > linux-yocto-dev. But if oe-core supports multiple versions of
> linux-yocto,
> > that might be the tricky bit and yes, I would look into supporting both
> for
> > the time-being until the transition period ends.
> >
>
> This was done in v6.5-rc1 so anything before won't work sadly.
>
> master branch of poky supports 6.1 6.4 and 6.5 for linux-yocto
> (linux-yocto-dev being typically newer than the latest linux-yocto and
> the latest linux-yocto already having the change, I'll omit the change
> for linux-yocto-dev).
>
> For reference, denix on IRC suggested you look at
>
> https://git.openembedded.org/openembedded-core/commit/?id=3D04ab57d20009d=
85eb566e83ae6fe1dcea4db7300
> for what we're trying to do here. But I think this isn't applying to how
> the DTB is found but rather where it's put and this is too late for us.
>
> I think we need to modify get_real_dtb_path_in_kernel in
> meta/classes-recipe/kernel-devicetree.bbclass instead.
>
> We could handle it this way for example to allow a fallback:
> """
> get_real_dtb_path_in_kernel:arm () {
>         dtb=3D"$1"
>         dtb_path=3D"${B}/arch/${ARCH}/boot/dts/$dtb"
>          # Handle pre-v6.5 layout for Aarch32/ARM DTB
>         if [ ! -e "$dtb_path" ]; then
>                 dtb_path=3D"${B}/arch/${ARCH}/boot/dts/$(basename "$dtb")=
"
>         fi
>         if [ ! -e "$dtb_path" ]; then
>                 dtb_path=3D"${B}/arch/${ARCH}/boot/$dtb"
>         fi
>          # Handle pre-v6.5 layout for Aarch32/ARM DTB
>         if [ ! -e "$dtb_path" ]; then
>                 dtb_path=3D"${B}/arch/${ARCH}/boot/$(basename "$dtb")"
>         fi
>
>         echo "$dtb_path"
> }
> """
> (to be determined if "arm" is a valid OVERRIDES, otherwise we need to
> check against "ARCH" bb variable; also not sure about the second
> basename if it's necessary at all).
>
> Then you would just have KERNEL_DEVICETREE done the same way as in this
> patch:
> KERNEL_DEVICETREE =3D "rockchip/rk3066a-marsboard.dtb"
>
> and we wouldn't have to handle it on the recipe level.
>
> Otherwise, we could do the following:
> RK_KERNEL_DEVICETREE =3D "rockchip/rk3066a-marsboard.dtb"
> KERNEL_DEVICETREE ?=3D "${RK_KERNEL_DEVICETREE}"
>
> then have a bbappend for all old-layout recipes:
> linux-yocto-rt_6.1.bbappend
> linux-yocto-tiny_6.1.bbappend
> linux-yocto_6.1.bbappend
> linux-yocto-rt_6.4.bbappend
> linux-yocto-tiny_6.4.bbappend
> linux-yocto_6.4.bbappend
>
> KERNEL_DEVICETREE:arm =3D "${@' '.join(os.path.basename(dtb) for dtb in
> d.getVar('RK_KERNEL_DEVICETREE').split())}"
>
> or something like that. We probably want to have something a bit more
> precise than just arm to avoid breaking other arm machine conf files
> which do not define RK_KERNEL_DEVICETREE, maybe
> KERNEL_DEVICETREE:rockchip:arm if that is even resolving properly.
>
> > Although... any BSP layer supporting 32-bit machines will have similar
> issues,
> > so perhaps there's a better way to solve this in oe-core?
> >
> Adding Bruce in Cc, I hope he doesn't mind being summoned like this.
> Maybe you have an idea on how to handle both the new and old layout for
> ARM/Aarch32 DTB in the kernel for the KERNEL_DEVICETREE variable?
>

My last run in with this may have been before some of the most recent
device tree handling patches, and/or I may have been doing it wrong.

But my solution was to simply override the variable in a kernel version
specific bbappend, and not do it in the conf files.

But of course, if that variable is being interpreted by a different class i=
n
the global namespace, then the kernel bbappend approach isn't going
to work anymore.

I've stayed away from utilities or searching, etc, rather just a way for th=
e
configuration to specify directly what to find, as anything that searches
ends up being fragile.

Bruce


>
> Cheers,
> Quentin
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61235):
> https://lists.yoctoproject.org/g/yocto/message/61235
> Mute This Topic: https://lists.yoctoproject.org/mt/101728482/1050810
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> bruce.ashfield@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end
- "Use the force Harry" - Gandalf, Star Trek II

--000000000000593fff0606e4f9f1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Wed, Oct 4, 2023 at 9:59=E2=80=AFAM Quentin Schu=
lz via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a>=
 &lt;quentin.schulz=3D<a href=3D"mailto:theobroma-systems.com@lists.yoctopr=
oject.org">theobroma-systems.com@lists.yoctoproject.org</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Trevor,<br>
<br>
On 10/3/23 15:38, Trevor Woerner wrote:<br>
&gt; On Tue 2023-10-03 @ 12:32:08 PM, Quentin Schulz wrote:<br>
&gt;&gt; Hi Trevor,<br>
&gt;&gt;<br>
&gt;&gt; On 10/3/23 06:19, Trevor Woerner via <a href=3D"http://lists.yocto=
project.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org</a=
> wrote:<br>
&gt;&gt;&gt; The upstream kernel reorganized the 32-bit arch/arm device-tre=
e directory structure<br>
&gt;&gt;&gt; to separate out the device-trees by manufacturer (similar to t=
he organization<br>
&gt;&gt;&gt; of the arch/arm64 device-trees). Update the references to 32-b=
it arm<br>
&gt;&gt;&gt; device-trees to match.<br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Does this work with linux-yocto and linux-yocto-dev from master or=
 do we<br>
&gt;&gt; need to add some logic to support both (do you want to?).<br>
&gt; <br>
&gt; This doesn&#39;t work at all. I figured this was an easy one, made the=
 tweak,<br>
&gt; submitted it, then added it to my jenkins builder to verify overnight.=
 Woke up<br>
&gt; to find the do_image_wic() tasks failed. It&#39;s the same layout as t=
he 64-bit<br>
&gt; machines but I&#39;ll have to dig in to figure out why it didn&#39;t w=
ork.<br>
&gt; <br>
&gt; As for the linux-yocto vs linux-yocto-dev question I&#39;ll take a loo=
k. This<br>
&gt; happened with linux-yocto, so I would assume it is already the case wi=
th<br>
&gt; linux-yocto-dev. But if oe-core supports multiple versions of linux-yo=
cto,<br>
&gt; that might be the tricky bit and yes, I would look into supporting bot=
h for<br>
&gt; the time-being until the transition period ends.<br>
&gt; <br>
<br>
This was done in v6.5-rc1 so anything before won&#39;t work sadly.<br>
<br>
master branch of poky supports 6.1 6.4 and 6.5 for linux-yocto <br>
(linux-yocto-dev being typically newer than the latest linux-yocto and <br>
the latest linux-yocto already having the change, I&#39;ll omit the change =
<br>
for linux-yocto-dev).<br>
<br>
For reference, denix on IRC suggested you look at <br>
<a href=3D"https://git.openembedded.org/openembedded-core/commit/?id=3D04ab=
57d20009d85eb566e83ae6fe1dcea4db7300" rel=3D"noreferrer" target=3D"_blank">=
https://git.openembedded.org/openembedded-core/commit/?id=3D04ab57d20009d85=
eb566e83ae6fe1dcea4db7300</a> <br>
for what we&#39;re trying to do here. But I think this isn&#39;t applying t=
o how <br>
the DTB is found but rather where it&#39;s put and this is too late for us.=
<br>
<br>
I think we need to modify get_real_dtb_path_in_kernel in <br>
meta/classes-recipe/kernel-devicetree.bbclass instead.<br>
<br>
We could handle it this way for example to allow a fallback:<br>
&quot;&quot;&quot;<br>
get_real_dtb_path_in_kernel:arm () {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 dtb=3D&quot;$1&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 dtb_path=3D&quot;${B}/arch/${ARCH}/boot/dts/$dt=
b&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Handle pre-v6.5 layout for Aarch32/ARM =
DTB<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if [ ! -e &quot;$dtb_path&quot; ]; then<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dtb_path=3D&quot;${=
B}/arch/${ARCH}/boot/dts/$(basename &quot;$dtb&quot;)&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 fi<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if [ ! -e &quot;$dtb_path&quot; ]; then<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dtb_path=3D&quot;${=
B}/arch/${ARCH}/boot/$dtb&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 fi<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Handle pre-v6.5 layout for Aarch32/ARM =
DTB<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if [ ! -e &quot;$dtb_path&quot; ]; then<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dtb_path=3D&quot;${=
B}/arch/${ARCH}/boot/$(basename &quot;$dtb&quot;)&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 fi<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;$dtb_path&quot;<br>
}<br>
&quot;&quot;&quot;<br>
(to be determined if &quot;arm&quot; is a valid OVERRIDES, otherwise we nee=
d to <br>
check against &quot;ARCH&quot; bb variable; also not sure about the second =
<br>
basename if it&#39;s necessary at all).<br>
<br>
Then you would just have KERNEL_DEVICETREE done the same way as in this <br=
>
patch:<br>
KERNEL_DEVICETREE =3D &quot;rockchip/rk3066a-marsboard.dtb&quot;<br>
<br>
and we wouldn&#39;t have to handle it on the recipe level.<br>
<br>
Otherwise, we could do the following:<br>
RK_KERNEL_DEVICETREE =3D &quot;rockchip/rk3066a-marsboard.dtb&quot;<br>
KERNEL_DEVICETREE ?=3D &quot;${RK_KERNEL_DEVICETREE}&quot;<br>
<br>
then have a bbappend for all old-layout recipes:<br>
linux-yocto-rt_6.1.bbappend<br>
linux-yocto-tiny_6.1.bbappend<br>
linux-yocto_6.1.bbappend<br>
linux-yocto-rt_6.4.bbappend<br>
linux-yocto-tiny_6.4.bbappend<br>
linux-yocto_6.4.bbappend<br>
<br>
KERNEL_DEVICETREE:arm =3D &quot;${@&#39; &#39;.join(os.path.basename(dtb) f=
or dtb in <br>
d.getVar(&#39;RK_KERNEL_DEVICETREE&#39;).split())}&quot;<br>
<br>
or something like that. We probably want to have something a bit more <br>
precise than just arm to avoid breaking other arm machine conf files <br>
which do not define RK_KERNEL_DEVICETREE, maybe <br>
KERNEL_DEVICETREE:rockchip:arm if that is even resolving properly.<br>
<br>
&gt; Although... any BSP layer supporting 32-bit machines will have similar=
 issues,<br>
&gt; so perhaps there&#39;s a better way to solve this in oe-core?<br>
&gt; <br>
Adding Bruce in Cc, I hope he doesn&#39;t mind being summoned like this. <b=
r>
Maybe you have an idea on how to handle both the new and old layout for <br=
>
ARM/Aarch32 DTB in the kernel for the KERNEL_DEVICETREE variable?<br></bloc=
kquote><div><br></div><div><div class=3D"gmail_default" style=3D"font-size:=
small">My last run in with this may have been before some of the most recen=
t</div><div class=3D"gmail_default" style=3D"font-size:small">device tree h=
andling patches, and/or I may have been doing it wrong.</div><div class=3D"=
gmail_default" style=3D"font-size:small"><br></div><div class=3D"gmail_defa=
ult" style=3D"font-size:small">But my solution was to simply override the v=
ariable in a kernel version</div><div class=3D"gmail_default" style=3D"font=
-size:small">specific bbappend, and not do it in the conf files.</div><div =
class=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"g=
mail_default" style=3D"font-size:small">But of course, if that variable is =
being interpreted by a different class in</div><div class=3D"gmail_default"=
 style=3D"font-size:small">the global namespace, then the kernel bbappend a=
pproach isn&#39;t going</div><div class=3D"gmail_default" style=3D"font-siz=
e:small">to work anymore.</div><div class=3D"gmail_default" style=3D"font-s=
ize:small"><br></div><div class=3D"gmail_default" style=3D"font-size:small"=
>I&#39;ve stayed away from utilities=C2=A0or searching, etc, rather just a =
way for the</div></div><div class=3D"gmail_default" style=3D"font-size:smal=
l">configuration to specify directly what to find, as anything that searche=
s</div><div class=3D"gmail_default" style=3D"font-size:small">ends up being=
 fragile.</div><div class=3D"gmail_default" style=3D"font-size:small"><br><=
/div><div class=3D"gmail_default" style=3D"font-size:small">Bruce</div><div=
>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Cheers,<br>
Quentin<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#61235): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/61235" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/61235</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/101728482/105=
0810" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/101728482/1050810</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:bruce.ashfield@gmail.com" target=3D"_blank">bruc=
e.ashfield@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature">- =
Thou shalt not follow the NULL pointer, for chaos and madness await thee at=
 its end<br>- &quot;Use the force Harry&quot; - Gandalf, Star Trek II<br><b=
r></div></div>

--000000000000593fff0606e4f9f1--


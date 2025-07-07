Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1AC4DC83F03
	for <webhook@archiver.kernel.org>; Mon,  7 Jul 2025 02:18:45 +0000 (UTC)
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
 by mx.groups.io with SMTP id smtpd.web11.50782.1751854723594347264
 for <yocto@lists.yoctoproject.org>;
 Sun, 06 Jul 2025 19:18:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=C3MiyHSo;
 spf=pass (domain: gmail.com, ip: 209.85.215.176, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-b1fd59851baso1718588a12.0
        for <yocto@lists.yoctoproject.org>; Sun, 06 Jul 2025 19:18:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751854722; x=1752459522; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=DDE6D98mNVVadT5X8rz3fpGeuiN3FU1JnFHV0CNR1aE=;
        b=C3MiyHSoOoDlKrcve6HfxI6cxrPrqasVlrFJDq5sFUdaP+jCGewHX1uEmkRLILLoCh
         yZk7Atdi9Wo8zURlayRtUz/MHc8b71XoZS1VDfUVYWNSxKY7025CY+ub8Xm8UXyJdH36
         U80M3IVtsvTuqdd+XrRTAnTp2flHnOde5XIoArKV99MpoFqqht2YkPXhUo8IyrkxGJMC
         +Z/iPs6yOIycAA3dGz2ahKHAWH9KMhDVx1oQ8Oj7gBtNnJMv2BgfEctDGOx5kY9QJRFv
         rgCU0MKSYEJ2Q9t16WNx/QwfvA/1DhnaaxuWa1h+9RRv4TkdtbTpVtx17/IHuwyJslm4
         4h7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751854722; x=1752459522;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DDE6D98mNVVadT5X8rz3fpGeuiN3FU1JnFHV0CNR1aE=;
        b=oU43Gsp8ngmtibBfXhunQjCuuOntumJ3JyNNKCWeeLdaerMhsYSIzom7I6/DGeL1DK
         wQZYx+yBnkM3Kjy2IL818BkWx7d9STN77hnVot3XwqRiPG05q5IA2ms+XUvaOph4liME
         yhxZkh9wcNAVkSRCkinri17oMvJYzL9Ql0IlT2CXCP1HfS+ndO4tTytyAJHyan+Q5VUH
         uJ5EHAJxEJpctp+g5Vdm6Diiyek10yzEjebbxb0lR6QMsQ/Qq6m15fqehOl6wkiUl2eI
         GMPLEbtkylzBtx2YdOSIwb3Nc4AhIortJHnefBkDvK5rxx1bKq0k5N0cE9YT0lxcXSTe
         iluA==
X-Gm-Message-State: AOJu0YxoWQaJq3LXPZMcCE3Pcp6QyELyZACHTeM8jwMvL7SNh1IzT3TC
	XIxpC23zIy71a2Ung34aD50U7BqzamvBP7PHDei1+hHApS355jbFlSSOCkt3FVtSt+W7mUXv/S4
	pTEuQNAchekIL44xA6ryq21V6mYiE8sHhKznTT90=
X-Gm-Gg: ASbGncvLabtQW/EcT0JDtjyxQJ7Ii64vqUwylnXheKuDOWi2mQdTKFS/jngAv/mN6Jp
	yu5mJFxAaiv6sp1zGKzPj24csut9kCbMdiScmVb/lCIvwBD96QkoHRGtKRzdbCeCLr01S1DcGXR
	WHnhi4jBisT+TMqQ7d0KPGC2SJgWQFrCadIQPW3eGz6UI2
X-Google-Smtp-Source: AGHT+IE94zDoJ6QReFq4zA4iAPCibYlK3LmEMRY1C0XiW9zNLkfJREh5g/PrZP5VFmLHp0G+vojbh23044rrIRy2MnM=
X-Received: by 2002:a17:90b:3d4c:b0:315:fefe:bebf with SMTP id
 98e67ed59e1d1-31aac44bb7amr15698674a91.13.1751854722233; Sun, 06 Jul 2025
 19:18:42 -0700 (PDT)
MIME-Version: 1.0
References: <9c260d52-2ec2-428c-8684-89c4677dac06@gmail.com>
In-Reply-To: <9c260d52-2ec2-428c-8684-89c4677dac06@gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Sun, 6 Jul 2025 22:18:30 -0400
X-Gm-Features: Ac12FXzSfnaEbACGrs5D1lQkaMYs6ErtOwX5mH9b_ighxZTN4l_6jRAurn1taE0
Message-ID: <CADkTA4P6p609bHSbC-yfmo7krYNo7B+etxgmFsoPrDkPAGxyZw@mail.gmail.com>
Subject: Re: [yocto] NOT split a group kernel modules in separate packages
To: yocto@lists.yoctoproject.org, fntoth@gmail.com
Cc: Khem Raj <raj.khem@gmail.com>
Content-Type: multipart/alternative; boundary="0000000000006aba0606394d7677"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 07 Jul 2025 02:18:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65616

--0000000000006aba0606394d7677
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 6, 2025 at 5:10=E2=80=AFPM Ferry Toth via lists.yoctoproject.or=
g
<fntoth=3Dgmail.com@lists.yoctoproject.org> wrote:

> Hi,
> I read the earlier post on how to disable package splitting entirely.
> But that is not what I want to do.
>
> Some modules need to be packaged separate as they go into the initrd as
> well as the image. But there is a large group (800) in particular under
> kernel/drivers/iio/ that I would like in a single package as updating
> these on btrfs is very slow.
>

There's an in-progress (under review and tweaking) series that was proposed
for a similar purpose.

https://lore.kernel.org/openembedded-core/20250404162932.447699-1-mikko.rap=
eli@linaro.org/

There may be some information in there that you can use to implement your
own solution while we work through something for oe-core.

Bruce


>
> I already have a kernel recipe and was thinking to add something
> (without understanding what I am doing exactly here, just copied stuff
> from elsewhere and modified a bit) like:
>
> python split_kernel_module_packages:prepend () {
>      kernel_package_name =3D d.getVar("KERNEL_PACKAGE_NAME") or "kernel"
>      kernel_version =3D d.getVar("KERNEL_VERSION")
>
>      metapkg =3D d.getVar('KERNEL_MODULES_META_PACKAGE')
>      splitmods =3D d.getVar('KERNEL_SPLIT_MODULES')
>      postinst =3D d.getVar('pkg_postinst:modules')
>      postrm =3D d.getVar('pkg_postrm:modules')
>
>      if splitmods !=3D '1':
>          d.appendVar('FILES:' + metapkg, '%s %s %s/modules' %
>              (d.getVar('modulesloaddir'), d.getVar('modprobedir'),
> d.getVar("nonarch_base_libdir")))
>          d.appendVar('pkg_postinst:%s' % metapkg, postinst)
>          d.prependVar('pkg_postrm:%s' % metapkg, postrm);
>          return
>
>      module_pattern_prefix =3D d.getVar('KERNEL_MODULE_PACKAGE_PREFIX')
>      module_pattern_suffix =3D d.getVar('KERNEL_MODULE_PACKAGE_SUFFIX')
>      module_pattern =3D module_pattern_prefix + kernel_package_name +
> '-module-iio' + module_pattern_suffix
>
>      modules =3D do_split_packages(d,
> root=3D'${nonarch_base_libdir}/modules', file_regex=3Dr'.*/iio(/.*)?$',
> output_pattern=3Dmodule_pattern, description=3D'iio kernel modules',
> postinst=3Dpostinst, postrm=3Dpostrm, recursive=3DTrue, allow_dirs=3DTrue=
,
> extra_depends=3D'')
>      if modules:
>          d.appendVar('RDEPENDS:' + metapkg, ' '+' '.join(modules))
> }
>
> I was hoping this would just magically match all modules with */iio/**
> and place them in a single package. But alas.
>
> Is it at all possible what I'm trying do?
>
> Ideally there would of course be just 2 packages, "essential" and
> "extra" or so, similar to what Ubuntu does.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65486):
> https://lists.yoctoproject.org/g/yocto/message/65486
> Mute This Topic: https://lists.yoctoproject.org/mt/113510861/1050810
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

--0000000000006aba0606394d7677
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_defa=
ult" style=3D"font-size:small"><br></div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 6, 2025 at 5:10=E2=80=
=AFPM Ferry Toth via <a href=3D"http://lists.yoctoproject.org" target=3D"_b=
lank">lists.yoctoproject.org</a> &lt;fntoth=3D<a href=3D"mailto:gmail.com@l=
ists.yoctoproject.org" target=3D"_blank">gmail.com@lists.yoctoproject.org</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi=
,<br>
I read the earlier post on how to disable package splitting entirely. <br>
But that is not what I want to do.<br>
<br>
Some modules need to be packaged separate as they go into the initrd as <br=
>
well as the image. But there is a large group (800) in particular under <br=
>
kernel/drivers/iio/ that I would like in a single package as updating <br>
these on btrfs is very slow.<br></blockquote><div><br></div><div><div class=
=3D"gmail_default" style=3D"font-size:small">There&#39;s an in-progress (un=
der review=C2=A0and tweaking) series that was proposed</div><div class=3D"g=
mail_default" style=3D"font-size:small">for a similar purpose.</div><div cl=
ass=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"gma=
il_default" style=3D"font-size:small"><a href=3D"https://lore.kernel.org/op=
enembedded-core/20250404162932.447699-1-mikko.rapeli@linaro.org/">https://l=
ore.kernel.org/openembedded-core/20250404162932.447699-1-mikko.rapeli@linar=
o.org/</a><br><br>There may be some information in there that you can use t=
o implement your</div><div class=3D"gmail_default" style=3D"font-size:small=
">own solution while we work through something for oe-core.</div><div class=
=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"gmail_=
default" style=3D"font-size:small">Bruce</div></div><div>=C2=A0</div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex">
<br>
I already have a kernel recipe and was thinking to add something <br>
(without understanding what I am doing exactly here, just copied stuff <br>
from elsewhere and modified a bit) like:<br>
<br>
python split_kernel_module_packages:prepend () {<br>
=C2=A0 =C2=A0 =C2=A0kernel_package_name =3D d.getVar(&quot;KERNEL_PACKAGE_N=
AME&quot;) or &quot;kernel&quot;<br>
=C2=A0 =C2=A0 =C2=A0kernel_version =3D d.getVar(&quot;KERNEL_VERSION&quot;)=
<br>
<br>
=C2=A0 =C2=A0 =C2=A0metapkg =3D d.getVar(&#39;KERNEL_MODULES_META_PACKAGE&#=
39;)<br>
=C2=A0 =C2=A0 =C2=A0splitmods =3D d.getVar(&#39;KERNEL_SPLIT_MODULES&#39;)<=
br>
=C2=A0 =C2=A0 =C2=A0postinst =3D d.getVar(&#39;pkg_postinst:modules&#39;)<b=
r>
=C2=A0 =C2=A0 =C2=A0postrm =3D d.getVar(&#39;pkg_postrm:modules&#39;)<br>
<br>
=C2=A0 =C2=A0 =C2=A0if splitmods !=3D &#39;1&#39;:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0d.appendVar(&#39;FILES:&#39; + metapkg, &=
#39;%s %s %s/modules&#39; %<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(d.getVar(&#39;modulesloadd=
ir&#39;), d.getVar(&#39;modprobedir&#39;), <br>
d.getVar(&quot;nonarch_base_libdir&quot;)))<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0d.appendVar(&#39;pkg_postinst:%s&#39; % m=
etapkg, postinst)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0d.prependVar(&#39;pkg_postrm:%s&#39; % me=
tapkg, postrm);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return<br>
<br>
=C2=A0 =C2=A0 =C2=A0module_pattern_prefix =3D d.getVar(&#39;KERNEL_MODULE_P=
ACKAGE_PREFIX&#39;)<br>
=C2=A0 =C2=A0 =C2=A0module_pattern_suffix =3D d.getVar(&#39;KERNEL_MODULE_P=
ACKAGE_SUFFIX&#39;)<br>
=C2=A0 =C2=A0 =C2=A0module_pattern =3D module_pattern_prefix + kernel_packa=
ge_name + <br>
&#39;-module-iio&#39; + module_pattern_suffix<br>
<br>
=C2=A0 =C2=A0 =C2=A0modules =3D do_split_packages(d, <br>
root=3D&#39;${nonarch_base_libdir}/modules&#39;, file_regex=3Dr&#39;.*/iio(=
/.*)?$&#39;, <br>
output_pattern=3Dmodule_pattern, description=3D&#39;iio kernel modules&#39;=
, <br>
postinst=3Dpostinst, postrm=3Dpostrm, recursive=3DTrue, allow_dirs=3DTrue, =
<br>
extra_depends=3D&#39;&#39;)<br>
=C2=A0 =C2=A0 =C2=A0if modules:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0d.appendVar(&#39;RDEPENDS:&#39; + metapkg=
, &#39; &#39;+&#39; &#39;.join(modules))<br>
}<br>
<br>
I was hoping this would just magically match all modules with */iio/** <br>
and place them in a single package. But alas.<br>
<br>
Is it at all possible what I&#39;m trying do?<br>
<br>
Ideally there would of course be just 2 packages, &quot;essential&quot; and=
 <br>
&quot;extra&quot; or so, similar to what Ubuntu does.<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#65486): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/65486" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/65486</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/113510861/105=
0810" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/113510861/1050810</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:bruce.ashfield@gmail.com" target=3D"_blank">bruc=
e.ashfield@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><div><br clear=3D"all"></div><div><br></div><span class=
=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_s=
ignature">- Thou shalt not follow the NULL pointer, for chaos and madness a=
wait thee at its end<br>- &quot;Use the force Harry&quot; - Gandalf, Star T=
rek II<br><br></div></div>
</div>

--0000000000006aba0606394d7677--


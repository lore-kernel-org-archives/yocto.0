Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1C6FC61DA4
	for <webhook@archiver.kernel.org>; Mon, 13 Mar 2023 18:00:21 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web10.1074.1678730413058786750
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Mar 2023 11:00:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=XcjPcPpF;
 spf=pass (domain: gmail.com, ip: 209.85.128.52, mailfrom: martin.jansa@gmail.com)
Received: by mail-wm1-f52.google.com with SMTP id bg16-20020a05600c3c9000b003eb34e21bdfso11554869wmb.0
        for <yocto@lists.yoctoproject.org>; Mon, 13 Mar 2023 11:00:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678730411;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zB8UsrWaJmPpM58+Oezh8YJir/iFzBEpHhFR69eGH1k=;
        b=XcjPcPpFW09u5vUYdfDpcJZMBk5QJMPUR+kh2YPpm0QfYcHjO8M2Gc1DvALqNqIahY
         qUnW436T2V6NiX/oOJtwhW2lPaZp4WZuEATp19WFXzv2VAvRZGRNDZenHr8khvjkEJDh
         Gua7fhry3wByPaalCeD1zwlINdO/wJXm94aSF8R7s2r9EUS0j+yF4Ld/sKgZCOySBoEX
         ynGKX3Z+CFI14a+mndXyld7Z6e3F8A9Azbx9T/NOrieDZQz/3u8aEC8UZXjHNsJB+xQJ
         /y41zg7pLNqH2Sw25K3nqHB4UzsYpMUHIw3Xt2HdweDILC/ogaZ5WzEfQhwJvFDu1pWa
         fCkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678730411;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zB8UsrWaJmPpM58+Oezh8YJir/iFzBEpHhFR69eGH1k=;
        b=yfjVYsu57zw0ZWqRCYQfFPn5LSSSv/ONVg2jcVUFkut8O9LFw7jo1wv+1JYQmup/aC
         M6Q4UurbO2ym4rp02RkZ0kSd+UFo5nCFFXDOz4iO1tbYmiWVY5uR5LdpaXOTwi/StXTE
         BY1Mxspt1NnkkA3zFdBTEu9VeyDAgRMn01NMqLcy3Oy/V1AGqK48lWTtUC1vI1pOL7X1
         5WmE4D+Zdkyf5rD37Q3BLVrHwWe2qvaesV4NGV4W7xxHbQBMVWfOnQ3pVEkT0gIVVTXo
         9S4EcHkc2ikKYypBggUUKACayv+oGjarR3fVcLejsbi5dltkvQEJisPcGxXowHXU4Ct+
         WkDQ==
X-Gm-Message-State: AO0yUKV56yCBx4c7NSAcWj/y2Rd6SZ6EU2OyznYneYlLVPASR0KzZ6L0
	LQlrn/s73kW+rnXcqtqT+G+zn1EWRENk9WIPfA0=
X-Google-Smtp-Source: AK7set+6LEmdYS8iWP5WrM8lZxp9oWcWcSv03Qc5/4ToiuJXopAk0yjXlg4ZOx3y2bstYDTviAgbrmrOCqTCqDJVdRs=
X-Received: by 2002:a05:600c:a3a1:b0:3ed:253b:1044 with SMTP id
 hn33-20020a05600ca3a100b003ed253b1044mr955520wmb.3.1678730411337; Mon, 13 Mar
 2023 11:00:11 -0700 (PDT)
MIME-Version: 1.0
References: <c607b08fa41a4dfeb70aad68f70f961a@vivavis.com> <CANNYZj8rJ5dUFpQ2Pa1NkfHFDHaYn8vbBvo5hQYVNbBbH6OzYA@mail.gmail.com>
In-Reply-To: <CANNYZj8rJ5dUFpQ2Pa1NkfHFDHaYn8vbBvo5hQYVNbBbH6OzYA@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Mon, 13 Mar 2023 18:59:54 +0100
Message-ID: <CA+chaQd-RmQXHMG-_k-897H2X+Wu28uZjywvrZ3s5rHv=oYSyQ@mail.gmail.com>
Subject: Re: [yocto] State of Yocto styleguide and oe-stylize.py script
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: embedded@vivavis.com, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000d76d3b05f6cbe108"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Mar 2023 18:00:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59420

--000000000000d76d3b05f6cbe108
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 13, 2023 at 6:34=E2=80=AFPM Alexander Kanavin <alex.kanavin@gma=
il.com>
wrote:

> There is not a lot of interest in maintaining style guides, and
> associated tooling. My personal feeling is that they don't really help
> with the truly problematic things in recipes that need a human eye (or
> chatgpt level intelligence :) - by and large people do follow
> reasonable order of entries for example, and nitpicking on an exact
> order would just be wasting precious maintainer time.
>

I agree that there are other more important things, but I also like style
(only in code - human looks are overrated :)).

If the tool is executed locally before sending the contribution (and
Carsten does seem interested in doing just that - not asking Khem to run it
on incoming patches) then I believe it can save maintainers time by sending
better patches on first try not waste it and our styleguide really needs
some TLC as Carsten found out.

The same does apply to e.g. scripts/contrib/patchreview.py.

If the missing/malformed Upstream-Status is reported to the original
contributor before he/she/it sends the patch, by some at least well
documented work flow how to submit patches, then it saves more maintainer
time, than asking for it during e-mail review or worse after the change is
merged or built by maintainer and QA check reports it's missing or
malformed.

If someone is willing to help with the tooling, we should endorse that, not
discourage them even when there are bigger-greater goals
like yocto-check-layer script you mentioned.

Cheers,

If you want to ensure good quality, making your layer pass the yocto
> compatibility script, and ensuring there are no warnings of any kind
> from bitbake when built with latest master revisions of everything is
> a better first step in my opinion.
>
> Alex
>
> On Mon, 13 Mar 2023 at 15:20, VIVAVIS AG via lists.yoctoproject.org
> <embedded=3Dvivavis.com@lists.yoctoproject.org> wrote:
> >
> > Hi,
> >
> > I'm wondering whether the styleguide
> www.openembedded.org/wiki/Styleguide,
> > meta-openembedded/contrib/oe-stylize.py or none of them is the source o=
f
> > truth for writing a good recipe.
> >
> > E.g., if you run oe-stylize.py, the SRCREV variable is placed above
> SRC_URI,
> > or RDEPENDS is placed above FILES, which is not what the Wiki documents=
.
> > And there are more discrepancies of this type.
> >
> > Furthermore, the script doesn't know the FILESEXTRAPATHS variable in
> bbappend files
> > and moves it to the end of my recipe. Well, this is not decribed in the
> Wiki, but a look
> > into append files in meta-openembedded shows, that it is common pactice
> to put
> > FILESEXTRAPATHS in the first line of the recipe.
> >
> > The Wiki has an interesting note and the end: "You can run
> contrib/oe-stylize.py from
> > meta-oe on your recipes before submitting them; however it is not
> necessarily up-to-date
> > with all current style conventions. This page should be considered the
> canonical reference."
> >
> > Furthermore, there's github.com/openembedded/meta-openembedded/pull/465
> > providing another ruleset for the new linter.
> >
> > So, my question to the Yocto maintainers is, what is the current state
> of the styleguide
> > and oe-stylize.py? Are there plans to synchronize them?
> >
> > Thanks for clarification.
> >
> > Carsten Stelling
> >
> >
> >
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59419):
> https://lists.yoctoproject.org/g/yocto/message/59419
> Mute This Topic: https://lists.yoctoproject.org/mt/97581374/3617156
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> Martin.Jansa@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000d76d3b05f6cbe108
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Mon, Mar 13, 2023 at 6:34=E2=80=AFPM A=
lexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com">alex.kanavin=
@gmail.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">There is not a lot of interest in main=
taining style guides, and<br>
associated tooling. My personal feeling is that they don&#39;t really help<=
br>
with the truly problematic things in recipes that need a human eye (or<br>
chatgpt level intelligence :) - by and large people do follow<br>
reasonable order of entries for example, and nitpicking on an exact<br>
order would just be wasting precious maintainer time.<br></blockquote><div>=
<br></div><div>I agree that there are other more important things, but I al=
so like style (only in code - human looks are overrated :)).</div><div><br>=
</div><div>If the tool is executed locally before sending the contribution =
(and Carsten does seem interested in doing just that - not asking Khem to r=
un it on incoming patches) then I believe it can save maintainers time by s=
ending better patches on first try not waste it and our styleguide really n=
eeds some TLC as Carsten found out.</div><div><br></div><div>The same does =
apply to e.g.=C2=A0scripts/contrib/patchreview.py.</div><div><br></div><div=
>If the missing/malformed Upstream-Status is reported to the original contr=
ibutor before he/she/it sends the patch, by some at least well documented w=
ork flow how to submit patches, then it saves more maintainer time, than as=
king for it during e-mail review or worse after the change is merged or bui=
lt by maintainer and QA check reports it&#39;s missing or malformed.</div><=
div><br></div><div>If someone is willing to help with the tooling, we shoul=
d endorse that, not discourage them even when there are bigger-greater goal=
s like=C2=A0yocto-check-layer script you mentioned.</div><div><br></div><di=
v>Cheers,</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">
If you want to ensure good quality, making your layer pass the yocto<br>
compatibility script, and ensuring there are no warnings of any kind<br>
from bitbake when built with latest master revisions of everything is<br>
a better first step in my opinion.<br>
<br>
Alex<br>
<br>
On Mon, 13 Mar 2023 at 15:20, VIVAVIS AG via <a href=3D"http://lists.yoctop=
roject.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org</a>=
<br>
&lt;embedded=3D<a href=3D"mailto:vivavis.com@lists.yoctoproject.org" target=
=3D"_blank">vivavis.com@lists.yoctoproject.org</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; I&#39;m wondering whether the styleguide <a href=3D"http://www.openemb=
edded.org/wiki/Styleguide" rel=3D"noreferrer" target=3D"_blank">www.openemb=
edded.org/wiki/Styleguide</a>,<br>
&gt; meta-openembedded/contrib/oe-stylize.py or none of them is the source =
of<br>
&gt; truth for writing a good recipe.<br>
&gt;<br>
&gt; E.g., if you run oe-stylize.py, the SRCREV variable is placed above SR=
C_URI,<br>
&gt; or RDEPENDS is placed above FILES, which is not what the Wiki document=
s.<br>
&gt; And there are more discrepancies of this type.<br>
&gt;<br>
&gt; Furthermore, the script doesn&#39;t know the FILESEXTRAPATHS variable =
in bbappend files<br>
&gt; and moves it to the end of my recipe. Well, this is not decribed in th=
e Wiki, but a look<br>
&gt; into append files in meta-openembedded shows, that it is common pactic=
e to put<br>
&gt; FILESEXTRAPATHS in the first line of the recipe.<br>
&gt;<br>
&gt; The Wiki has an interesting note and the end: &quot;You can run contri=
b/oe-stylize.py from<br>
&gt; meta-oe on your recipes before submitting them; however it is not nece=
ssarily up-to-date<br>
&gt; with all current style conventions. This page should be considered the=
 canonical reference.&quot;<br>
&gt;<br>
&gt; Furthermore, there&#39;s <a href=3D"http://github.com/openembedded/met=
a-openembedded/pull/465" rel=3D"noreferrer" target=3D"_blank">github.com/op=
enembedded/meta-openembedded/pull/465</a><br>
&gt; providing another ruleset for the new linter.<br>
&gt;<br>
&gt; So, my question to the Yocto maintainers is, what is the current state=
 of the styleguide<br>
&gt; and oe-stylize.py? Are there plans to synchronize them?<br>
&gt;<br>
&gt; Thanks for clarification.<br>
&gt;<br>
&gt; Carsten Stelling<br>
&gt;<br>
&gt; <br>
&gt;<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#59419): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/59419" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/59419</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/97581374/3617=
156" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/97581374/3617156</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:Martin.Jansa@gmail.com" target=3D"_blank">Martin=
.Jansa@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000d76d3b05f6cbe108--


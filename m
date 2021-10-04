Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 488D5C433EF
	for <webhook@archiver.kernel.org>; Mon,  4 Oct 2021 13:42:47 +0000 (UTC)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
 [209.85.222.169])
 by mx.groups.io with SMTP id smtpd.web10.9492.1633354966625826514
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Oct 2021 06:42:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=O4Sew6sU;
 spf=pass (domain: gmail.com, ip: 209.85.222.169,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f169.google.com with SMTP id f130so16417803qke.6
        for <yocto@lists.yoctoproject.org>;
 Mon, 04 Oct 2021 06:42:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UFzUc3PF1oe/lDycwZUr/CaAfs8U+z2zMR2Zt/UwRZ4=;
        b=O4Sew6sUaOU4ka7NAX3j75dVR1MsL7yUKLhEuPH0tZ/O4nsEVmN35QlL6lXBejk3Yx
         e/R8RR4hYaoCye/nCMrYRv/E+ZxHyIpRylmTr12/3WJWf9oQ0Sn+so+UOJMFqKswXQ/k
         vYfFEUeAjOaRZvBLrlG8NvHJBpFdHziCuRTCZQ5+0K+86qolu87b6fc4ZYtkqJ2RQU9y
         1enVMEGzfSEIHAmSOBj3rs6bPQxXuHAVWVf+5iu/jTR7dEEar+KgE6i0ODZdTMMJNmjD
         ovYqAeOXWHHNSYxyvYnUoSDCwRstm08KHI93xkvfHF5B/dxMqp0dTtxMraNmehGOQZmH
         2qYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UFzUc3PF1oe/lDycwZUr/CaAfs8U+z2zMR2Zt/UwRZ4=;
        b=6l4ah5CikIiJyEBwXt/O0PjCuoB7FGlS2ZDCz4hYqly485tLEShUwwmw6nF/3CbZnC
         dZieJf//FyYpzPF8fN0uNXy0oTQiFlgEkO0gTw05FqhBTS7Iw3PE65IcqNBlcXgrH9je
         W5UhOJdT/IZIItf2cJrseAt2+sm2PhC7x6qOYNpTHh3sJQwWlEnveINKd0PkZlWJJUoZ
         g3wU67Ngt2oiCUDQEQGq1yDkr6OigUPxQCn0T+C1K0uiq3iId7UDzQQNuTC0+la1wsWr
         xUdZGAklNxoJaIsCDf0JrLK9y7k37CZ2x8fpG5zG4QQ1QmLI+pHLDscz2HZ88q5eI3SY
         7gUw==
X-Gm-Message-State: AOAM530029GRDliQkUOMiRqEGLBZvGZ2pJYLfIVtEvajRI8OUvRNMPGE
	ReoLPY6UGd7E53BqQl2prarlMmBFntVJMbDkjHI=
X-Google-Smtp-Source: 
 ABdhPJw29prAYuA/z6yXsCnTurhNlXWCYMInPKDj0QdiWjYoM+Gwe0DLR1r8CpqslIEoiSJEATNcOOjol9ybV3Bl9oQ=
X-Received: by 2002:a37:9c46:: with SMTP id f67mr9809374qke.98.1633354965652;
 Mon, 04 Oct 2021 06:42:45 -0700 (PDT)
MIME-Version: 1.0
References: <c7c1faf5ec0f43178b03bcd5bdacb744@blackberry.com>
 <CAMKF1sp4aDrC4z9MBkM8ap=nqKEckAk9shReHKOifZ5X=KYtkQ@mail.gmail.com>
 <7508347f66784a1487e4f20bf1ad89f0@blackberry.com>
In-Reply-To: <7508347f66784a1487e4f20bf1ad89f0@blackberry.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 4 Oct 2021 06:42:35 -0700
Message-ID: 
 <CAMKF1srQzcaStU4zBqd34+f4ie_tPibFmS2ZerZ0Ryi4YBrWTA@mail.gmail.com>
Subject: Re: [yocto] Shared lib symlinks in target image
To: Lijun Chen <lijchen@blackberry.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000085175f05cd8716fc"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Oct 2021 13:42:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54938

--00000000000085175f05cd8716fc
Content-Type: text/plain; charset="UTF-8"

Libraries have another symlink which looks something like libfoo.so.1 and 2
etc that is the one which should be used by apps
On Mon, Oct 4, 2021 at 6:12 AM Lijun Chen <lijchen@blackberry.com> wrote:

> I have an app built in a different environment that has lower versioned
> libs, such as boost. I was wondering if on the target there are symlinks to
> those libs, whether the app can be run on a target that has newer libs
> without resbuild against a matched env. Seems that is not viable.
> ------------------------------
> *From:* Khem Raj <raj.khem@gmail.com>
> *Sent:* Saturday, October 2, 2021 11:23:58 PM
> *To:* Lijun Chen
> *Cc:* yocto@lists.yoctoproject.org
> *Subject:* Re: [yocto] Shared lib symlinks in target image
>
> On Sat, Oct 2, 2021 at 6:55 PM Lijun Chen <lijchen@blackberry.com> wrote:
> >
> > Hi,
> >
> >
> > When I build a yocto image, I added some packages into IMAGE_INSTALL,
> such as boost, thrift, etc. I notice in the target OS image, the shared
> libs don't the symlinks. But in the SDK image, the symlinks are there. For
> example,
> >
> > lrwxrwxrwx 1 root root       22 Oct  2 16:41 libboost_filesystem-mt.so
> -> libboost_filesystem.so
> > lrwxrwxrwx 1 root root       29 Oct  2 16:41 libboost_filesystem.so ->
> libboost_filesystem.so.1.75.0
> >
> > Is there a way to add the symlinks to the target image as well?
> >
> >
> > With the symlinks, I assume we can run an old application even the
> dependent lib is a newer version?
> >
>
> unversioned symlinks should not be used they are there to be used for
> linking during build time. Unless you need to do builds on targets you
> really do not need them
> so explain you usecase. Are you trying to build stuff on device ?
>
> >
> > Thanks,
> >
> > Lijun
> >
> > ________________________________
> > This transmission (including any attachments) may contain confidential
> information, privileged material (including material protected by the
> solicitor-client or other applicable privileges), or constitute non-public
> information. Any use of this information by anyone other than the intended
> recipient is prohibited. If you have received this transmission in error,
> please immediately reply to the sender and delete this information from
> your system. Use, dissemination, distribution, or reproduction of this
> transmission by unintended recipients is not authorized and may be unlawful.
> >
> > -=-=-=-=-=-=-=-=-=-=-=-
> > Links: You receive all messages sent to this group.
> > You automatically follow any topics you start or reply to.
> > View/Reply Online (#54934):
> https://urldefense.com/v3/__https://lists.yoctoproject.org/g/yocto/message/54934__;!!COg3wY07Hnb7!44p3yfVEnAD6rM-DM0muASh2wNizlchKqgoweZDAV8wx1sd8uvxVqOEHJORDalv1bA$
> > Mute This Topic:
> https://urldefense.com/v3/__https://lists.yoctoproject.org/mt/86035483/1997914__;!!COg3wY07Hnb7!44p3yfVEnAD6rM-DM0muASh2wNizlchKqgoweZDAV8wx1sd8uvxVqOEHJOTJ_1cQxQ$
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe:
> https://urldefense.com/v3/__https://lists.yoctoproject.org/g/yocto/unsub__;!!COg3wY07Hnb7!44p3yfVEnAD6rM-DM0muASh2wNizlchKqgoweZDAV8wx1sd8uvxVqOEHJOQieFL_-A$
> [raj.khem@gmail.com]
> > -=-=-=-=-=-=-=-=-=-=-=-
> >
> ------------------------------
> This transmission (including any attachments) may contain confidential
> information, privileged material (including material protected by the
> solicitor-client or other applicable privileges), or constitute non-public
> information. Any use of this information by anyone other than the intended
> recipient is prohibited. If you have received this transmission in error,
> please immediately reply to the sender and delete this information from
> your system. Use, dissemination, distribution, or reproduction of this
> transmission by unintended recipients is not authorized and may be unlawful.
>

--00000000000085175f05cd8716fc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div dir=3D"auto">Libraries have another symlink which looks=
 something like libfoo.so.1 and 2 etc that is the one which should be used =
by apps=C2=A0<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Mon, Oct 4, 2021 at 6:12 AM Lijun Chen &lt;<a href=3D"mailto:lijc=
hen@blackberry.com">lijchen@blackberry.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-wid=
th:1px;border-left-style:solid;padding-left:1ex;border-left-color:rgb(204,2=
04,204)">





<div>


<div dir=3D"ltr">
<div id=3D"m_-714855135990830856x_divtagdefaultwrapper" dir=3D"ltr" style=
=3D"font-size:12pt;font-family:Calibri,Helvetica,sans-serif;color:rgb(0,0,0=
)">
<p style=3D"font-family:Calibri,Helvetica,sans-serif">I have an app built i=
n a different environment that has lower versioned libs, such as boost. I w=
as wondering if on the target there are symlinks to those libs, whether the=
 app can be run on a target that has newer libs without resbuild against a =
matched
 env. Seems that is not viable.<br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-714855135990830856x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"=
Calibri, sans-serif" style=3D"font-size:11pt;font-family:Calibri,sans-serif=
;color:rgb(0,0,0)"><b style=3D"font-family:Calibri,sans-serif">From:</b> Kh=
em Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank" style=3D=
"font-family:Calibri,sans-serif">raj.khem@gmail.com</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Sent:</b> Saturday, October 2, =
2021 11:23:58 PM<br>
<b style=3D"font-family:Calibri,sans-serif">To:</b> Lijun Chen<br>
<b style=3D"font-family:Calibri,sans-serif">Cc:</b> <a href=3D"mailto:yocto=
@lists.yoctoproject.org" target=3D"_blank" style=3D"font-family:Calibri,san=
s-serif">yocto@lists.yoctoproject.org</a><br>
<b style=3D"font-family:Calibri,sans-serif">Subject:</b> Re: [yocto] Shared=
 lib symlinks in target image</font>
<div>=C2=A0</div>
</div>
</div>
<font size=3D"2" style=3D"color:rgb(0,0,0)"><span style=3D"font-size:10pt">
<div>On Sat, Oct 2, 2021 at 6:55 PM Lijun Chen &lt;<a href=3D"mailto:lijche=
n@blackberry.com" target=3D"_blank">lijchen@blackberry.com</a>&gt; wrote:<b=
r>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt;<br>
&gt; When I build a yocto image, I added some packages into IMAGE_INSTALL, =
such as boost, thrift, etc. I notice in the target OS image, the shared lib=
s don&#39;t the symlinks. But in the SDK image, the symlinks are there. For=
 example,<br>
&gt;<br>
&gt; lrwxrwxrwx 1 root root=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 22 Oct=C2=
=A0 2 16:41 libboost_filesystem-mt.so -&gt; libboost_filesystem.so<br>
&gt; lrwxrwxrwx 1 root root=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 29 Oct=C2=
=A0 2 16:41 libboost_filesystem.so -&gt; libboost_filesystem.so.1.75.0<br>
&gt;<br>
&gt; Is there a way to add the symlinks to the target image as well?<br>
&gt;<br>
&gt;<br>
&gt; With the symlinks, I assume we can run an old application even the dep=
endent lib is a newer version?<br>
&gt;<br>
<br>
unversioned symlinks should not be used they are there to be used for<br>
linking during build time. Unless you need to do builds on targets you<br>
really do not need them<br>
so explain you usecase. Are you trying to build stuff on device ?<br>
<br>
&gt;<br>
&gt; Thanks,<br>
&gt;<br>
&gt; Lijun<br>
&gt;<br>
&gt; ________________________________<br>
&gt; This transmission (including any attachments) may contain confidential=
 information, privileged material (including material protected by the soli=
citor-client or other applicable privileges), or constitute non-public info=
rmation. Any use of this information
 by anyone other than the intended recipient is prohibited. If you have rec=
eived this transmission in error, please immediately reply to the sender an=
d delete this information from your system. Use, dissemination, distributio=
n, or reproduction of this transmission
 by unintended recipients is not authorized and may be unlawful.<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; You automatically follow any topics you start or reply to.<br>
&gt; View/Reply Online (#54934): <a href=3D"https://urldefense.com/v3/__htt=
ps://lists.yoctoproject.org/g/yocto/message/54934__;!!COg3wY07Hnb7!44p3yfVE=
nAD6rM-DM0muASh2wNizlchKqgoweZDAV8wx1sd8uvxVqOEHJORDalv1bA$" target=3D"_bla=
nk">
https://urldefense.com/v3/__https://lists.yoctoproject.org/g/yocto/message/=
54934__;!!COg3wY07Hnb7!44p3yfVEnAD6rM-DM0muASh2wNizlchKqgoweZDAV8wx1sd8uvxV=
qOEHJORDalv1bA$</a>
<br>
&gt; Mute This Topic: <a href=3D"https://urldefense.com/v3/__https://lists.=
yoctoproject.org/mt/86035483/1997914__;!!COg3wY07Hnb7!44p3yfVEnAD6rM-DM0muA=
Sh2wNizlchKqgoweZDAV8wx1sd8uvxVqOEHJOTJ_1cQxQ$" target=3D"_blank">
https://urldefense.com/v3/__https://lists.yoctoproject.org/mt/86035483/1997=
914__;!!COg3wY07Hnb7!44p3yfVEnAD6rM-DM0muASh2wNizlchKqgoweZDAV8wx1sd8uvxVqO=
EHJOTJ_1cQxQ$</a>
<br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://urldefense.com/v3/__https://lists.yoct=
oproject.org/g/yocto/unsub__;!!COg3wY07Hnb7!44p3yfVEnAD6rM-DM0muASh2wNizlch=
KqgoweZDAV8wx1sd8uvxVqOEHJOQieFL_-A$" target=3D"_blank">
https://urldefense.com/v3/__https://lists.yoctoproject.org/g/yocto/unsub__;=
!!COg3wY07Hnb7!44p3yfVEnAD6rM-DM0muASh2wNizlchKqgoweZDAV8wx1sd8uvxVqOEHJOQi=
eFL_-A$</a>=C2=A0 [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">=
raj.khem@gmail.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</div>
</span></font></div><div>

<hr>This transmission (including any attachments) may contain confidential =
information, privileged material (including material protected by the solic=
itor-client or other applicable privileges), or constitute non-public infor=
mation. Any use of this information by anyone other than the intended recip=
ient is prohibited. If you have received this transmission in error, please=
 immediately reply to the sender and delete this information from your syst=
em. Use, dissemination, distribution, or reproduction of this transmission =
by unintended recipients is not authorized and may be unlawful.<br>
</div>

</blockquote></div></div>

--00000000000085175f05cd8716fc--


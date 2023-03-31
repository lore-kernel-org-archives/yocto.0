Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA6EBC76196
	for <webhook@archiver.kernel.org>; Fri, 31 Mar 2023 10:36:07 +0000 (UTC)
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
 by mx.groups.io with SMTP id smtpd.web10.51442.1680258963045858103
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 Mar 2023 03:36:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=kCodXCHP;
 spf=pass (domain: gmail.com, ip: 209.85.208.48, mailfrom: hassanchattarki@gmail.com)
Received: by mail-ed1-f48.google.com with SMTP id cn12so87820161edb.4
        for <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 03:36:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680258961;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=nX4zHdPODtIDwW9Op3D+D6WQd9IFOF2YODITCZkR+fk=;
        b=kCodXCHP1r9j+YAtxd+GogVWUfd74VFtoWfM5QjI11kiayLj2hJzcSXipJ1TxiSPwU
         Rse8XOJbg1975Pw7lUn+2t5W7YzVlvOakAzBJoRAxSquHo/jY3E2cwS7XJjROuBnx33R
         kczihAkFAG0dmRmEnvpTFFUy4sykJXEPjWO08z0tJVMJ3S1S2N0s2kQmDVN6lW6NWrAO
         zIeFrSRAbNmAhXYIyDyYa6WirhIKnbiMy88EyutgZ56SWAZtr3FWCUMrdPCWbnv3FjbS
         hEwFkLhsF3fFFpO6bYptUpcAN6bFDoeApNyeDup8tzW22iL4TREG+shA4CwJiwuDqPlp
         7egg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680258961;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nX4zHdPODtIDwW9Op3D+D6WQd9IFOF2YODITCZkR+fk=;
        b=uGGLah1MdP8rwWUIAbO+UGWpTsJYzI8UPluyCx3iCMIlFCeIAARD/VoGANL2sfO5So
         dhlrx06ZOzKJLaSoLlkmRnVcKpN6VhiGO/yUqAg2guUrMmAfjyXg8pbGIaLEC+cEVSI7
         jyQxW347wP1JOQcLZ5t5rCV9vuHloflikvxxRLZVYvRHu6VLsQ6iRpeqSfBNAQjNsTh0
         a5HD4g0a+YhQwX8bDP8MQoRh3tzYexUbci3ntH/yfOyQw+BF4er1gaQLzpzZHlNlrTR2
         3/muw8Ok5x5gC3w/hlQg+RNDCnlglQvSdhLsbDAX34JszLrq8iqdzi+FfQkJXfBzS1/X
         cgpQ==
X-Gm-Message-State: AAQBX9dw2Dn7jJuiw2A3l307v1oLTvNacRuw29aGPvu4VJ0kjvhkD1IR
	XHsWaWzaw8Qn0DrdV3XDDz0niNjFNiTdTLd1PFI=
X-Google-Smtp-Source: AKy350a02a/D4CcsUKsGOPDgEJPeU7uK/Z6WpnYRPLd4AMEwdYDU/KsyZf2ySXV/KCI32K6rzjXMFRXzI+bdY/VZlSM=
X-Received: by 2002:a50:999c:0:b0:4fa:e5c1:d142 with SMTP id
 m28-20020a50999c000000b004fae5c1d142mr12960415edb.0.1680258961270; Fri, 31
 Mar 2023 03:36:01 -0700 (PDT)
MIME-Version: 1.0
References: <61a0925a-8514-bb93-e110-73299944b054@bootlin.com>
 <13330.1680255730648731834@lists.yoctoproject.org> <0de7fc3d-4b15-b178-3800-f5b8f4f26442@bootlin.com>
In-Reply-To: <0de7fc3d-4b15-b178-3800-f5b8f4f26442@bootlin.com>
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Fri, 31 Mar 2023 16:05:49 +0530
Message-ID: <CAPJWBnjg8rw2YxqTFrArKf1YqsoY=5ifD7xjT_0uD21A2zZBpw@mail.gmail.com>
Subject: Re: [yocto] How to compile binary executable files
To: Michael Opdenacker <michael.opdenacker@bootlin.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000846a7f05f82fc640"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 10:36:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59566

--000000000000846a7f05f82fc640
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Can you help me to compile for dynamically linked executable file in yocto
dunfell?
Thanks

On Fri, Mar 31, 2023 at 3:20=E2=80=AFPM Michael Opdenacker <
michael.opdenacker@bootlin.com> wrote:

>
> On 31.03.23 at 11:42, MOHAMMED HASSAN wrote:
> > If so, you could write a recipe to integrate the binary into your
> > root
> > filesystem, as it's possible to do with pre-compiled libraries :
> >
> https://docs.yoctoproject.org/dev-manual/common-tasks.html#working-with-p=
re-built-libraries
> .
> >
> > Caution, in this document, the new override syntax (with ":"
> > instead of
> > "_") is shown, it doesn't apply to Dunfell.
> >
> >     Will it be okay for me to refer the above link for my specific
> >     case?I'd say yes, write a similar recipe for your binary.
> >
> > Its a .exe binary file. Will it work?
>
>
> Not if that's a Windows executable (you can check with the "file"
> command). Just try to run it on your target system a
> Cheers
> Michael.
>
> --
> Michael Opdenacker, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com
>
>

--000000000000846a7f05f82fc640
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Can you help me to compile for dynamically linked exe=
cutable file in yocto dunfell?</div><div>Thanks=C2=A0</div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Mar 31, =
2023 at 3:20=E2=80=AFPM Michael Opdenacker &lt;<a href=3D"mailto:michael.op=
denacker@bootlin.com">michael.opdenacker@bootlin.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
On 31.03.23 at 11:42, MOHAMMED HASSAN wrote:<br>
&gt; If so, you could write a recipe to integrate the binary into your<br>
&gt; root<br>
&gt; filesystem, as it&#39;s possible to do with pre-compiled libraries :<b=
r>
&gt; <a href=3D"https://docs.yoctoproject.org/dev-manual/common-tasks.html#=
working-with-pre-built-libraries" rel=3D"noreferrer" target=3D"_blank">http=
s://docs.yoctoproject.org/dev-manual/common-tasks.html#working-with-pre-bui=
lt-libraries</a>.<br>
&gt;<br>
&gt; Caution, in this document, the new override syntax (with &quot;:&quot;=
<br>
&gt; instead of<br>
&gt; &quot;_&quot;) is shown, it doesn&#39;t apply to Dunfell.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Will it be okay for me to refer the above link for =
my specific<br>
&gt;=C2=A0 =C2=A0 =C2=A0case?I&#39;d say yes, write a similar recipe for yo=
ur binary.<br>
&gt;<br>
&gt; Its a .exe binary file. Will it work?<br>
<br>
<br>
Not if that&#39;s a Windows executable (you can check with the &quot;file&q=
uot; <br>
command). Just try to run it on your target system a<br>
Cheers<br>
Michael.<br>
<br>
-- <br>
Michael Opdenacker, Bootlin<br>
Embedded Linux and Kernel engineering<br>
<a href=3D"https://bootlin.com" rel=3D"noreferrer" target=3D"_blank">https:=
//bootlin.com</a><br>
<br>
</blockquote></div>

--000000000000846a7f05f82fc640--


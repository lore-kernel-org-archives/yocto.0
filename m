Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.35489.1590428027564800736
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 May 2020 10:33:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=RdG6x+fq;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: martin.jansa@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1ECE9E01C17; Mon, 25 May 2020 10:33:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.67 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com [209.85.208.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8220AE01C15
	for <yocto@yoctoproject.org>; Mon, 25 May 2020 10:33:45 -0700 (PDT)
Received: by mail-ed1-f67.google.com with SMTP id e10so15605022edq.0
        for <yocto@yoctoproject.org>; Mon, 25 May 2020 10:33:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BqwCyHtVADbvPVsopgChqc2op+3MHuFi2Avg+2+/hzE=;
        b=RdG6x+fquF/ludc1P3BT413ZSD7/O+kbMPK2cF8JMRQcBMZg1zCCw+cj9K0jFT+wkt
         G+P70rbZLnfYuPUzYSEOuTzkfECH2pWhWNpyquBi7Yj44+ySMBRc26SmUxkIBapDMLHl
         MEU/Ui03V1K6uICFKd4ucaFwTKBWI4jEgklancQRcAaGPHB2oeJa4USWi8Q/wlN8w5MN
         KbiyPgijJ1fjyh7Cex3tOio62ewOmgwYqVyeOWBSs+dQ/yDXRQ5hb8okE8SXnU7E3/hd
         PGuBBKcv1rmPQmPu7jkItYFATemgEAgoJQ6P1/zfvtklsrahqXqOHlCIvdukBMbCXbBE
         vn3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BqwCyHtVADbvPVsopgChqc2op+3MHuFi2Avg+2+/hzE=;
        b=Bu5a0DDAj5xjjbZnU6oHSY4mgAwBFOqp0elGLfASG12Zx4lg10dSG+/q3Qef5ktMUM
         7EPNggASCRMXvVgApu/6V5pVuKSZ73Q9dLGbRoeF4hUlah6i3y5E7MO7MWDRgm1ZzssT
         4p8k8Y0qyk68nJxBgA6OHH33ENNgirXk1zldukpcpyHZTn4bA76zuz7riAcA9FIGYp20
         uz9w64q/kjsNnULcQw+kq+0A73YQDJUCjw9RG3BjQyMOuPO9gdn8IsCEr+qTwzpokKpN
         +tl6K0N8cyVRwaw5w2qCU2Cy6TDUzvL4bYrd7gu/2Mz80Q0GcY6H27WvNDkITIAaVd04
         Ja7g==
X-Gm-Message-State: AOAM530lxp9YEu5KOFxnBHzqnQONtClDHYY86XT5m0afi72PDh5zNt1j
	G3YXI41MTq8ogCGDgpyJ0wjPKMX2NWeP1Eb5Z34KZssQ
X-Google-Smtp-Source: ABdhPJzucE1lXHtMoBRM37/VZDOlTnosBdkusMbHf6YDX8Har3QE3a6bXcAVO1FGkzEMi6ZJ+nI6EfTQs6IHWvqRdVg=
X-Received: by 2002:a05:6402:1c94:: with SMTP id cy20mr16079396edb.270.1590428025069;
 Mon, 25 May 2020 10:33:45 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.LFD.2.21.2005251229340.1134347@localhost.localdomain>
 <CA+chaQe56NiFV+MFagQiQDBpKwt_YcgNY06zOLn=Ov2is9C1vQ@mail.gmail.com> <alpine.LFD.2.21.2005251321230.1137699@localhost.localdomain>
In-Reply-To: <alpine.LFD.2.21.2005251321230.1137699@localhost.localdomain>
From: "Martin Jansa" <Martin.Jansa@gmail.com>
Date: Mon, 25 May 2020 19:33:33 +0200
Message-ID: <CA+chaQcOhHznYMp2WCArqdW4Oj3fVjTFJZWO330jWGJOusGe+A@mail.gmail.com>
Subject: Re: [yocto] how to un-blacklist a blacklisted recipe?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000079a3af05a67c6171"

--00000000000079a3af05a67c6171
Content-Type: text/plain; charset="UTF-8"

Yes, in local.conf or distro config, both work fine.

Maybe your PNBLACKLIST you're trying to unblacklist is using normal
assignment instead of weak one? See
http://git.openembedded.org/meta-openembedded/commit/?id=96a92761c0a1bb2317fa4ea422c32e4473405103

On Mon, May 25, 2020 at 7:22 PM Robert P. J. Day <rpjday@crashcourse.ca>
wrote:

> On Mon, 25 May 2020, Martin Jansa wrote:
>
> > I don't use WR, but setting it to empty works fine for me.
>
>   *where* did you set it to empty? in your local.conf?
>
> > Why do you think it shouldn't work? See
> >
> https://git.openembedded.org/openembedded-core/tree/meta/classes/blacklist.bbclass#n18
>

--00000000000079a3af05a67c6171
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes, in local.conf or distro config, both work fine.<div><=
br></div><div>Maybe your PNBLACKLIST you&#39;re trying to unblacklist is us=
ing normal assignment instead of weak one? See</div><div><a href=3D"http://=
git.openembedded.org/meta-openembedded/commit/?id=3D96a92761c0a1bb2317fa4ea=
422c32e4473405103">http://git.openembedded.org/meta-openembedded/commit/?id=
=3D96a92761c0a1bb2317fa4ea422c32e4473405103</a><br></div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 25, 20=
20 at 7:22 PM Robert P. J. Day &lt;<a href=3D"mailto:rpjday@crashcourse.ca"=
>rpjday@crashcourse.ca</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex">On Mon, 25 May 2020, Martin Jansa wrote:<br>
<br>
&gt; I don&#39;t use WR, but setting it to empty works fine for me.<br>
<br>
=C2=A0 *where* did you set it to empty? in your local.conf?<br>
<br>
&gt; Why do you think it shouldn&#39;t work? See<br>
&gt; <a href=3D"https://git.openembedded.org/openembedded-core/tree/meta/cl=
asses/blacklist.bbclass#n18" rel=3D"noreferrer" target=3D"_blank">https://g=
it.openembedded.org/openembedded-core/tree/meta/classes/blacklist.bbclass#n=
18</a><br>
</blockquote></div>

--00000000000079a3af05a67c6171--

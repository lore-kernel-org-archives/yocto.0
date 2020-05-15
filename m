Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.6260.1589509640784052455
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 May 2020 19:27:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rNMAAAs/;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: b.hutchman@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 68978E01B63; Thu, 14 May 2020 19:27:20 -0700 (PDT)
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
	*      (b.hutchman[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.210.171 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 340C7E01B61
	for <yocto@yoctoproject.org>; Thu, 14 May 2020 19:27:16 -0700 (PDT)
Received: by mail-pf1-f171.google.com with SMTP id y18so260780pfl.9
        for <yocto@yoctoproject.org>; Thu, 14 May 2020 19:27:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=mvovC2MfHG/7IHAJZiV3jIWBaeFI7VasW7ldlgOAN0s=;
        b=rNMAAAs/3yFhwNn0Xt8wHxOPcUHcf2M5j+gyfzhvjh9s4c7O+1bx8TUIL6PXwGTbsF
         TVHCR9kGo18Ie2oxHgti5psnRsYq1mZ+ieV3tzaWnJuDXYuBd1Gwt1V+eYZInnRUjxWK
         Jwh8afdP3aR74K+fNoBbYGPslAasXH1lr4P3/tP+td5WRbadSFNQbgoPDqKTQfHv9kVH
         CnWKN5bTdtm4EoLd+MRfOCGmqzAgMtVNtDcptOCf3tmLkJHSifu5+1kfh5HCE75AEKFq
         ZwEhz+11FWI7IQtA+QWHlcZIrMXbDnxNj4r/bUrOoN1PhqvHS2bmUTKOSyTBtRBZVP93
         78iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=mvovC2MfHG/7IHAJZiV3jIWBaeFI7VasW7ldlgOAN0s=;
        b=pJPt00+OSxXRPrc/mzK24fuE/gX394PjM1MRrMEAZrmooQ6xMd7MxCeRR9Md6NtL2n
         e2AqWJNY8h1++wb9xzyOlgt2tqWhpvVfF5wAX0ZzD39+b3Kiz8w7sIICmj7asjyk5vDh
         YW+XgjH2XaWCDijZbUKhWE/qXtsTSPz8BLEgwjjm5YweOWUc5Z49HrQgbY5jH9NfjOYm
         QTmVdPGRmTAylctQy+libXY/mA5AFSEOxn0FFUpI3ra8MHLdO3m0tG4cM7HMJl6qSWX9
         AvbL5R/VxiHhYrhQUwiqpmMU3kJIA9d+Q1PGkQlJBKyoOxr8dwjJ3lCuPq6OVvRI6DZr
         QKgg==
X-Gm-Message-State: AOAM532uPJHixNVKAkAoFttS03L6izfmC89ylTgyrVYIEboDL68I6Axs
	/bKl6HL+ckmtA1fM9dmP6YTaa5QH1Ezqs/nYcxctjCKt
X-Google-Smtp-Source: ABdhPJyspbCD8s8LiDOC/ITkcpbq8dYtyq757tWfTkBspEgFsdNQs/CI0j2/5mk4f3hit0Qn9I4qoVSnDLa6wOt3kQQ=
X-Received: by 2002:a63:4f5c:: with SMTP id p28mr1054907pgl.412.1589509635820;
 Thu, 14 May 2020 19:27:15 -0700 (PDT)
MIME-Version: 1.0
From: "Brian Hutchinson" <b.hutchman@gmail.com>
Date: Thu, 14 May 2020 22:27:04 -0400
Message-ID: <CAFZh4h-4B99SbAFeSWE_Bq3=SprMQeoCmwD4L2E3xNabQVY1bA@mail.gmail.com>
Subject: Looks like systemd is a split package ... but where is coredumpctl?
To: yocto@yoctoproject.org, Openembedded-devel@lists.openembedded.org
Content-Type: multipart/alternative; boundary="00000000000035d1e505a5a68df3"

--00000000000035d1e505a5a68df3
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm trying to figure out how to configure /etc/systemd/coredump.conf in
order to get coredump files.

I don't appear to have coredumpctl nor can I find a recipe in Yocto or OE
Core that looks like it builds it.  I've looked at all (I think) systemd
packages that were generated when I built systemd and I don't see any that
include coredumpctl.

Then I found this thread:

https://www.openembedded.org/pipermail/openembedded-core/2018-July/152959.html

... which left me even more confused.

If I uncomment and define the settings in /etc/systemd/coredump.conf, will
that enable coredumps or is there more to it than that?  I'm not sure how
to get systemd-coredump going on a core-image-base image and Google is just
turning up noise from other distros that don't appear to match what I'm
seeing in Yocto/OE.  It feels like there should be a systemd-coredump
recipe like in Debian but I'm not seeing a layer that provides something
like that.   Maybe I'm not looking in the right place but I've been doing
this a while and I'm kind of stumped.

Thanks for any hints to point me in the right direction.

Regards,

Brian

--00000000000035d1e505a5a68df3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>I&#39;m trying to figure=
 out how to configure /etc/systemd/coredump.conf in order to get coredump f=
iles.</div><div><br></div><div>I don&#39;t appear to have coredumpctl nor c=
an I find a recipe in Yocto or OE Core that looks like it builds it.=C2=A0 =
I&#39;ve looked at all (I think) systemd packages that were generated when =
I built systemd and I don&#39;t see any that include coredumpctl.</div><div=
><br></div><div>Then I found this thread:</div><div><br></div><div><span cl=
ass=3D"gmail-gI"><span><a href=3D"https://www.openembedded.org/pipermail/op=
enembedded-core/2018-July/152959.html">https://www.openembedded.org/piperma=
il/openembedded-core/2018-July/152959.html</a></span></span></div><div><spa=
n class=3D"gmail-gI"><span><br></span></span></div><div><span class=3D"gmai=
l-gI"><span>... which left me even more confused.</span></span></div><div><=
span class=3D"gmail-gI"><span><br></span></span></div><div><span class=3D"g=
mail-gI"><span>If I uncomment and define the settings in /etc/systemd/cored=
ump.conf, will that enable coredumps or is there more to it than that?=C2=
=A0 I&#39;m not sure how to get systemd-coredump going on a core-image-base=
 image and Google is just turning up noise from other distros that don&#39;=
t appear to match what I&#39;m seeing in Yocto/OE.=C2=A0 It feels like ther=
e should be a systemd-coredump recipe like in Debian but I&#39;m not seeing=
 a layer that provides something like that. =C2=A0 Maybe I&#39;m not lookin=
g in the right place but I&#39;ve been doing this a while and I&#39;m kind =
of stumped.<br></span></span></div><div><span class=3D"gmail-gI"><span><br>=
</span></span></div><div><span class=3D"gmail-gI"><span>Thanks for any hint=
s to point me in the right direction.</span></span></div><div><span class=
=3D"gmail-gI"><span><br></span></span></div><div><span class=3D"gmail-gI"><=
span>Regards,</span></span></div><div><span class=3D"gmail-gI"><span><br></=
span></span></div><div><span class=3D"gmail-gI"><span>Brian<br></span></spa=
n></div></div>

--00000000000035d1e505a5a68df3--

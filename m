Return-Path: <ecordonnier@snap.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D79C1C25B75
	for <webhook@archiver.kernel.org>; Sun, 19 May 2024 20:34:30 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
 by mx.groups.io with SMTP id smtpd.web10.45817.1716150862085420507
 for <yocto@lists.yoctoproject.org>;
 Sun, 19 May 2024 13:34:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@snap.com header.s=google header.b=OGec3Jaq;
 spf=pass (domain: snapchat.com, ip: 209.85.218.44, mailfrom: ecordonnier@snapchat.com)
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a59cdd185b9so965526466b.1
        for <yocto@lists.yoctoproject.org>; Sun, 19 May 2024 13:34:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=snap.com; s=google; t=1716150860; x=1716755660; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=I9PuvvVEViyj+lBVaK0lnJBu7wv66wKApM1ezMZi0IU=;
        b=OGec3Jaq2sztS+NLvPeHF6yYBg43O98GP7gri0eDjiGfqRv8VCQXmW9+mI2EnRdGhn
         72sEvV9bpamAuISm9Hr2ZI3+TGJPj0iel9rDAbtnzszJBvrLkaUxVBjtcUXcViMKPK3P
         qZrL2V6z5gF2wnXRjrW+mowGqGNOpGQbrGTds=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716150860; x=1716755660;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=I9PuvvVEViyj+lBVaK0lnJBu7wv66wKApM1ezMZi0IU=;
        b=WP+3q7j2zmBvKZcczEJP273BQiwGuhOgmZ38OwOtv39tQxkYJ7BGnWHgsgEPkwzMyx
         dxgfEeikVdxUW00p6BHyU0HibAwhODQKlzoK+CwLCW97dao/GUVua8A5UhC0PZRCzliK
         JaBKWoiRihUzJqXYzopQa/PXYm/5oOYmqHrJ6XfQSP0Says8AGK/G6DpUQsVC59PSo9y
         1O2KbllBXgupvgKLLPXDzbr1Ob2dh9+/wk06BPwrTf+tVTKVbf24jCYx75jqSEajAWi9
         ljV80AtnwV2tCIbL1Ug/s2BS3ltfzVHI8WGOIDogeS3Wdkr7FZmiNBzP8E+bsUMT+hLl
         Pe4Q==
X-Gm-Message-State: AOJu0YwaY5EB0eeWgfmRD7sBYcGHUthic7OihcCAS4PSybZN17HuEtQD
	XxrIjjHOgpKNl7ua3aTM2SpqtaQUWCqzz3np1YOSSKIPvFTwPDSX2f2W17vU35dysaBhadQWCHi
	mrdzsSPy4xA9jCe5Tyx2p3zN7iIsN4qNdypQ0/QKvlbWLuOtVfv4=
X-Google-Smtp-Source: AGHT+IFRbKE/9kpt7gQOLRTZLHgUh3GMkqXCyu/TtF4GHIKmp45O0Zgch8DigubmnMDUbyrKAUewAHrOKIPp7yxtNxo=
X-Received: by 2002:a17:906:3386:b0:a55:b67c:bd04 with SMTP id
 a640c23a62f3a-a5d58d52a19mr414095366b.4.1716150859654; Sun, 19 May 2024
 13:34:19 -0700 (PDT)
MIME-Version: 1.0
From: Etienne Cordonnier <ecordonnier@snap.com>
Date: Sun, 19 May 2024 22:34:08 +0200
Message-ID: <CAHUKmYbx81srtVGCh1iyts893T7d7Sf44fgq+MTaxDSwMsXzZg@mail.gmail.com>
Subject: Workaround for uid_map error on Ubuntu 24.04
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000005f0f4b0618d482e3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 19 May 2024 20:34:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63137

--0000000000005f0f4b0618d482e3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,
in order to build poky on Ubuntu 24.04, I have needed this workaround to
fix the error "Errno 1 Operation not permitted" when disable_network (from
bitbake/lib/bb/utils.py) attempts to write to the file /proc/self/uid_map:

$ sudo apparmor_parser -R /etc/apparmor.d/unprivileged_userns

For details, see https://bugs.launchpad.net/ubuntu/+source/dash/+bug/205655=
5

=C3=89tienne

--0000000000005f0f4b0618d482e3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<br>in order to build poky on Ubuntu 24.04, I have =
needed this workaround to fix the error &quot;Errno 1 Operation not permitt=
ed&quot; when disable_network (from bitbake/lib/bb/utils.py) attempts to wr=
ite to the file /proc/self/uid_map:<br><br><span style=3D"color:rgb(0,0,0);=
font-family:&quot;Ubuntu Mono variable&quot;,&quot;Ubuntu Mono&quot;,Consol=
as,Monaco,Courier,monospace;font-size:12.8px">$ sudo apparmor_parser -R /et=
c/apparmor.</span><span style=3D"color:rgb(0,0,0);font-family:&quot;Ubuntu =
Mono variable&quot;,&quot;Ubuntu Mono&quot;,Consolas,Monaco,Courier,monospa=
ce;font-size:12.8px">d/unprivileged_</span><span style=3D"color:rgb(0,0,0);=
font-family:&quot;Ubuntu Mono variable&quot;,&quot;Ubuntu Mono&quot;,Consol=
as,Monaco,Courier,monospace;font-size:12.8px">userns<br></span><br>For deta=
ils, see=C2=A0<a href=3D"https://bugs.launchpad.net/ubuntu/+source/dash/+bu=
g/2056555">https://bugs.launchpad.net/ubuntu/+source/dash/+bug/2056555</a><=
div><br></div><div>=C3=89tienne</div></div>

--0000000000005f0f4b0618d482e3--


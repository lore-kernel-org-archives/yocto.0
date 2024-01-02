Return-Path: <bremenpl@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54831C47074
	for <webhook@archiver.kernel.org>; Tue,  2 Jan 2024 15:00:58 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
 by mx.groups.io with SMTP id smtpd.web11.30595.1704207652511659440
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Jan 2024 07:00:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=nIXEAG+o;
 spf=pass (domain: gmail.com, ip: 209.85.167.52, mailfrom: bremenpl@gmail.com)
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-50e7dff3e9fso6600184e87.2
        for <yocto@lists.yoctoproject.org>; Tue, 02 Jan 2024 07:00:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704207651; x=1704812451; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:reply-to:message-id:date:subject:to:from
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oT0sI804dZ9/vaRfIsSe0GxLfcYCdWs2J+AuCd0tZAI=;
        b=nIXEAG+obsczy08Glqg7m2NhM/F+PW+vtWmzdlv9x0th3glzvZVBAuwRn276fQwRF1
         imcflaGrDYGNepmgrZaf69BxPomNFpxA/dyIRj5Cp0TEq0sc4CLxsOf9WoI6wQb9tCca
         +EFs4Rd6970yVFvnQp3Ft+cQxa9EEuorRJ+dKMP0hAn5g9DJ0AUo50eWjA+rtQSFvjwu
         eFc1AKtFrfRz7aSomKkBdjibW9Jcz9ZbUpgPNBGY8/qcp5XbfmsyJb3CgrpOIsmQ7DWG
         7MIWjzM5nYzC6bEy2cfEUcQOphWRptckmNJ3/jD1xqgMkI8d0xD3BKyhZX7eS0krNCec
         7HUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704207651; x=1704812451;
        h=mime-version:user-agent:reply-to:message-id:date:subject:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oT0sI804dZ9/vaRfIsSe0GxLfcYCdWs2J+AuCd0tZAI=;
        b=XSB/w0CuJQO0bflL3w90ZTffwArR4vImEkibebq9L8nPZXEIHu8ze8iLv77R9H6wIl
         70a6aMcOIjhRlzvuHpKuZcvhU3jMdjEbVsDJ3G5hB+R1tX15uev0nzvINsjxDZ+e+y+m
         Yz+pYBv7YI5QH9JcYS0zduMpTqTrzercivAYW1fDOSSxdPDR4vUVbKNAV8bXFrkekw08
         TXm+z0Jbzf+der7dc5h10Uvgv9hceUZDe1j448n8hiHQMug1w4681Vno0g8Zr3Y3Mrnx
         rjiG76mRGnQXsE3fD0XyvpnRE+WADwk/osZxZ+Ab0BlITHIER8b+rSl22LfizlNmgPMa
         XBXQ==
X-Gm-Message-State: AOJu0YzfJXabmwmagYkjuFc5QBcBfgTu4mM+u6BBOx/eSnoC/yGOLNyq
	+JT0lm8Fjg1aEbPMKhWtPmd9oKquQjw=
X-Google-Smtp-Source: AGHT+IEUZgD7vYcOSiAZkrr5RLfNr99Uo/PUdxp95+iInSNXLWYjdW6YfVDN321gB3grSKl7/ZDXbg==
X-Received: by 2002:ac2:5dd5:0:b0:50e:410c:6a49 with SMTP id x21-20020ac25dd5000000b0050e410c6a49mr6706152lfq.130.1704207650238;
        Tue, 02 Jan 2024 07:00:50 -0800 (PST)
Received: from [192.168.7.17] (epe193.neoplus.adsl.tpnet.pl. [83.20.46.193])
        by smtp.gmail.com with ESMTPSA id w2-20020ac254a2000000b0050e79a5b0cbsm2727619lfk.293.2024.01.02.07.00.49
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Jan 2024 07:00:49 -0800 (PST)
From: =?utf-8?q?=c5=81ukasz=20Przenios=c5=82o?= <bremenpl@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Modify the extlinux.conf file
Date: Tue, 02 Jan 2024 15:00:45 +0000
Message-Id: <emad1fd895-9b6f-4549-b734-afe546412d4e@c5cd1fef.com>
Reply-To: =?utf-8?q?=c5=81ukasz=20Przenios=c5=82o?= <bremenpl@gmail.com>
User-Agent: eM_Client/9.2.2157.0
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="------=_MBF233B54A-4693-43E5-9B6F-EC9A1515442A"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 Jan 2024 15:00:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62064

--------=_MBF233B54A-4693-43E5-9B6F-EC9A1515442A
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hello,
I have added a new custom layer to my project. I am wondering what kind=20
of recipe (bb or bbappend) I should create in order to modify the=20
extlinux/extlinux.conf file that is being produced for my image.

I am using the beaglebone machine with meta-ti layer. The extlinux there=20
is created via meta-ti-bsp/conf/machine/include/ti33x.inc :

In my modifed extlinux.conf file I need to:
Add the variable: FDT ../am335x-bonegreen.dtb
Add the variable: FDTOVERLAYS ../beaglenode.dtbo
Compile the custom beaglenode.dtbo from a custom dts file and install it=20
with the other blobs in the image.
I would appreciate all help in achieving this...

--
=C5=81ukasz Przenios=C5=82o

--------=_MBF233B54A-4693-43E5-9B6F-EC9A1515442A
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head>

<style id=3D"css_styles">=20
blockquote.cite { margin-left: 5px; margin-right: 0px; padding-left: 10px;=
 padding-right:0px; border-left: 1px solid #cccccc }
blockquote.cite2 {margin-left: 5px; margin-right: 0px; padding-left: 10px;=
 padding-right:0px; border-left: 1px solid #cccccc; margin-top: 3px; padding=
-top: 0px; }
a img { border: 0px; }
li[style=3D'text-align: center;'], li[style=3D'text-align: center; '], li[s=
tyle=3D'text-align: right;'], li[style=3D'text-align: right; '] {  list-sty=
le-position: inside;}
body { font-family: Verdana; font-size: 12pt; }
.quote { margin-left: 1em; margin-right: 1em; border-left: 5px #ebebeb soli=
d; padding-left: 0.3em; }

 </style>
</head>
<body><div>Hello,</div><div>I have added a new custom layer to my project.=
 I am wondering what kind of recipe (bb or bbappend) I should create in orde=
r to modify the extlinux/extlinux.conf file that is being produced for my i=
mage.</div><div><br /></div><div>I am using the beaglebone machine with met=
a-ti layer. The extlinux there is created via meta-ti-bsp/conf/machine/incl=
ude/ti33x.inc
:</div><div><br /></div><div>In my modifed extlinux.conf file I need to:</d=
iv><div><ul style=3D"list-style-type: disc;"><li>Add the variable: FDT ../a=
m335x-bonegreen.dtb</li><li>Add the variable: FDTOVERLAYS ../beaglenode.dtb=
o</li><li>Compile the custom beaglenode.dtbo from a custom dts file and ins=
tall it with the other blobs in the image.</li></ul><div>I would appreciate =
all help in achieving this...</div></div>
<div><br /></div><div id=3D"signature_old" style=3D"clear:both">--<div>=C5=
=81ukasz Przenios=C5=82o</div></div><div><br /></div>
</body></html>
--------=_MBF233B54A-4693-43E5-9B6F-EC9A1515442A--



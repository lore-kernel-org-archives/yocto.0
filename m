Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.4156.1574930248021813475
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Nov 2019 00:37:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sidebranch-com.20150623.gappssmtp.com header.s=20150623 header.b=l/0xIr56;
 spf=softfail (domain: sidebranch.com, ip: 140.211.169.56, mailfrom: leon@sidebranch.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 867B6E01089; Thu, 28 Nov 2019 00:37:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.222.44 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com [209.85.222.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65C3EE00839
	for <yocto@yoctoproject.org>; Thu, 28 Nov 2019 00:37:25 -0800 (PST)
Received: by mail-ua1-f44.google.com with SMTP id f7so2447161uaa.8
        for <yocto@yoctoproject.org>; Thu, 28 Nov 2019 00:37:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sidebranch-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=3My0X6VmlTw172RqWScrta84sbOCPS7FZNQuOPCGGX4=;
        b=l/0xIr56oHF2fAP52OT2hBRhreTIHbkYI5ueRDovZWjLNC/3aPRopD+TfAeZDMYobH
         zqcf6GEW8ykLMl4PbpuLzux+UNUtpMlDSoxyplHAtfxuYb4jsfuDR7SkNEmpoeuJIUtN
         6VTYUf9QVPveuRsZXaFCFqTBqkp+an4AI9r7JCQV3RseUiYo2jWycaxC7WVWt8sjiUTm
         V34B+xRfTK6OcitAmv1EJRvqB0ns9cTRzorjO1H/EKvAV0KSn9h6V1VYqtkKub+pQ9e0
         +Fniii1MKtDsbukAqF5IM1rR1ESv9vuo9DiF9iQkkbZ//ail4+vkfDc0jAMS3RPDMxkW
         AK/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=3My0X6VmlTw172RqWScrta84sbOCPS7FZNQuOPCGGX4=;
        b=T1Me15C75HzXz7/56XNa3Hok9A0VuKHZxvatZxyxag29behaWymT5T4b0eX/I4JA+M
         9IpT81FLsC+IHMDc+UcvsxTYVt28WU6FlfNWAEHIqj1f7u7iiigesMF1kMhj5c966bL8
         OumpNhUQPlFdnXQvFbBYHU7R5SiCWfyCf5ESIwpf8zYYcpJH5uMNaoTahfO4uuL5BSjX
         Bex5lE+CvRpG6VddOddSW7mtvQkdNIYoUSG2bniiJQgJnH0UzfHYgkNHzlNoqYjzZLDN
         pmmXxPOIWciQrautqnwQ51SMuAm4pMZq4vf0If53aTcZvJjLt7pscaxrtf+zpx2lWBrM
         9TQA==
X-Gm-Message-State: APjAAAV9wVXdr2vUwB+6RpcVu74c286DVwolRPSqXN8yS/0xksCSNMZt
	Q1919MDIr3eUnZSWNYKdxIl3e60vGSOuW/hN0d5zywLib8b5pA==
X-Google-Smtp-Source: APXvYqxXZza10WEbVjtz21pb0nblEJl+gfrE39s9+sepMP/pmh2aB6kH4yTfbEcZOUcC9ZTC7DCr29mEkB+omQSp7JE=
X-Received: by 2002:ab0:7d2:: with SMTP id d18mr5751504uaf.68.1574930244196;
 Thu, 28 Nov 2019 00:37:24 -0800 (PST)
MIME-Version: 1.0
From: "Leon Woestenberg" <leon@sidebranch.com>
Date: Thu, 28 Nov 2019 09:37:12 +0100
Message-ID: <CAMjhiJi45vpJ-vCuqdbFKv8gmR=XLgDLz9z=ViFvoV7SDOUMqA@mail.gmail.com>
Subject: Architecture of .wic approach; image of images
To: Yocto List <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000c07b4b059864056a"

--000000000000c07b4b059864056a
Content-Type: text/plain; charset="UTF-8"

Hello all,

What is the intended approach of building images using WIC?

Most image types (except .wic) build a (root or initial ram) filesystem
from *packages*, then create the respective archive or filesystem from it.

The .wic image type however, builds an image from *images* rather than
packages.

It therefore seems incorrect we can just add IMAGE_FSTYPES += "wic",
because the corresponding .wks might depend on multiple other images than
just ${PN}.

Should we, or do we have a recipe example that builds only a .wic image,
based on one or more other existing images? (and thus not populate a
filesystem itself)

Regards,

Leon.

--000000000000c07b4b059864056a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello all,<div><br></div><div>What is the intended approac=
h of building images using WIC?</div><div><br></div><div>Most image types (=
except .wic) build a (root or initial ram) filesystem from *packages*, then=
 create the respective archive or filesystem from it.</div><div><br></div><=
div>The .wic image type however, builds an image from *images* rather than =
packages.</div><div><br></div><div>It therefore seems incorrect we can just=
 add IMAGE_FSTYPES +=3D &quot;wic&quot;, because the corresponding .wks mig=
ht depend on multiple other images than just ${PN}.<br></div><div><br></div=
><div>Should we, or do we have a recipe example that builds only a .wic ima=
ge, based on one or more other existing images? (and thus not populate a fi=
lesystem itself)<br></div><div><br></div><div>Regards,</div><div><br></div>=
<div>Leon.<br></div><div><br></div></div>

--000000000000c07b4b059864056a--

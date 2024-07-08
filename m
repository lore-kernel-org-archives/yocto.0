Return-Path: <bbergquist@epc-instore.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3638C3DA42
	for <webhook@archiver.kernel.org>; Mon,  8 Jul 2024 12:22:37 +0000 (UTC)
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
 by mx.groups.io with SMTP id smtpd.web10.78386.1720441353342634238
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 Jul 2024 05:22:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@epc-instore.com header.s=google header.b=O3ApX0oD;
 spf=permerror, err=too many SPF records (domain: epc-instore.com, ip: 209.85.219.48, mailfrom: bbergquist@epc-instore.com)
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-6b5f90373d4so21596486d6.0
        for <yocto@lists.yoctoproject.org>; Mon, 08 Jul 2024 05:22:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=epc-instore.com; s=google; t=1720441352; x=1721046152; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Vf1aLe5tVh6/syWWLUNnc9QBsLEafMrUf8/tCpLoYCA=;
        b=O3ApX0oDg8alYSp5J6nrZnnMsv9MfUO/+ms4oKBYruJcFoAzaPI5BTvJjTMfAaLiEW
         zOYa7CUiLNuHoDHDSc3EhZBlFGrUoAzKVVffKUppNTMabWVXSYQCtc+W3k3fCrK3AjSK
         K9a4+sgvMCPSTeticLxkIdCh076sZnUEDsZfMQuk/vFlyiM9gGb3lUd3Z/kYWny0yABN
         OuM5J4pmVpkAd8C0hBUCMZfLO6CQvpucM2zYqLEWwsm5sk0yqPDkRLSh+wlUBhHk2Olw
         6Sj6Z1fCSJ+/c7PhC1wxQNGEa5MAAK3vJheLD6IixZq5VGQcUIIRDeH+qF9kLQQNi0hZ
         NqxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720441352; x=1721046152;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Vf1aLe5tVh6/syWWLUNnc9QBsLEafMrUf8/tCpLoYCA=;
        b=xAArNydqTyEh9hintpstNKuTVqJro/E9Y7zeAKYgeLqeJTa0C8ONDwVGzPsezDCRKJ
         SemWj3swhTfXx4aRX5e3J8l90WQs+NWUJ82h+mWSicgvtfHQgeZUAkjirJH/QNf8Ca9i
         BHmmNNJCzk1GQ4PfXhKPABQyMP/sH0f7uhTFa/ReJ+aH54YGUmOXtdo+cqNeSIEbMPit
         UkMSXDyuuM+VpCEpIV6uAfhr/KfKTIc1XX97/T2rChug+Xasn0lOIs/MS84D7fsFif8f
         D1mlYwKXcLXcfaUbcwVz6/NMOMRTkBtdXpdZckolMOuDv7JpYxQHczOfbOUhIrFfqa2q
         l5XQ==
X-Gm-Message-State: AOJu0Yw5ygjMz2Wk0ipGbrNFUeAIYaE9SmFFjEdsKiGTrnaEv252U4QG
	ASxgF0rqmwK2vRfjmuULYm2GCmNIwoZywb8i+XdhLrnF9o3tcWeuso6qVAwgA5/tatZM4z/NjO4
	AB2bTiJVAzQ8TLRXu0w9AvBg/CRNuQbyVby1I4WHlRpqbxp8i
X-Google-Smtp-Source: AGHT+IF9OHips+g6y03wsrrBLMD75G3gCHuNbcwM81EYMGVGoqWghVjcw+u1Eg6LD1BTbPH3fplysCV5e0DkAFyMnMs=
X-Received: by 2002:a05:6214:20cc:b0:6b5:2bfa:edd5 with SMTP id
 6a1803df08f44-6b5ee5e9ba9mr188053666d6.17.1720441352147; Mon, 08 Jul 2024
 05:22:32 -0700 (PDT)
MIME-Version: 1.0
From: Brett Bergquist <bbergquist@epc-instore.com>
Date: Mon, 8 Jul 2024 08:22:21 -0400
Message-ID: <CAH+ZgJtYH3ZVLJjZWPXH-LBy2ubnjv4bLF0cyovAw6g9q0QyEg@mail.gmail.com>
Subject: How can I patch a NPM module that I am building from source
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a6f0e2061cbb7776"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 08 Jul 2024 12:22:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63441

--000000000000a6f0e2061cbb7776
Content-Type: text/plain; charset="UTF-8"

In my Yocto project a recipe is building a web application that uses NPM
modules.  One of the modules is in source fetched from a GIT repository.  I
need to patch the NPM module after it is fetched but before it is installed.

I cannot find anything on how to do this.  Any help will be appreciated!

-- 
Brett M. Bergquist
*Distinguished Member Technical Staff*
*EntryPoint Communications LLC*
*30 Waterside Drive, Suite 100*
*Farmington, CT 06032*

Phone: (203) 206 3542
Email: bbergquist@epc-instore.com

CONFIDENTIALITY NOTICE
This message (including any attachments) contains information that may be
confidential.  If you are the intended recipient, and the message is marked
confidential, by opening the message, you accept responsibility for
treating the message and information contained in the message as
confidential, including not distributing or disclosing its contents to any
third party without the express written consent of the sender.  If you are
not the intended recipient, you may not read, print, retain, use, copy,
distribute or disclose to anyone the message or any information contained
in the message, and such conduct is prohibited.  If you have received this
message in error, please advise the sender by reply e-mail, and destroy all
copies of the original message (including any attachments).  Sender
reserves all rights of confidentiality and privilege, and nothing regarding
this e-mail or its transmission is intended to be a waiver thereof.

--000000000000a6f0e2061cbb7776
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">In my Yocto project a recipe is building a web application=
 that uses NPM modules.=C2=A0 One of the modules is in source fetched from =
a GIT repository.=C2=A0 I need to patch the NPM module after it is fetched =
but before it is installed.<div><br></div><div>I cannot find anything on ho=
w to do this.=C2=A0 Any help will be appreciated!<br clear=3D"all"><div><br=
></div><span class=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr=
" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"=
ltr">Brett M. Bergquist<div><b>Distinguished Member Technical Staff</b></di=
v><div><b>EntryPoint Communications LLC</b></div><div><b>30 Waterside Drive=
, Suite 100</b></div><div><b>Farmington, CT 06032</b></div><div><b><br></b>=
</div><div>Phone: (203) 206 3542</div><div>Email: <a href=3D"mailto:bbergqu=
ist@epc-instore.com" target=3D"_blank">bbergquist@epc-instore.com</a></div>=
<div><br></div><div><span style=3D"color:rgb(34,34,34);font-family:&quot;Ti=
mes New Roman&quot;,serif;font-size:13.3333px">CONFIDENTIALITY NOTICE</span=
><br style=3D"color:rgb(34,34,34);font-family:&quot;Times New Roman&quot;,s=
erif;font-size:13.3333px"><span style=3D"color:rgb(34,34,34);font-family:&q=
uot;Times New Roman&quot;,serif;font-size:13.3333px">This message (includin=
g any attachments) contains information that may be confidential.=C2=A0 If =
you are the intended recipient, and the message is marked confidential, by =
opening the message, you accept responsibility for treating the message and=
 information contained in the message as confidential, including not distri=
buting or disclosing its contents to any third party without the express wr=
itten consent of the sender.=C2=A0 If you are not the intended recipient, y=
ou may not read, print, retain, use, copy, distribute or disclose to anyone=
 the message or any information contained in the message, and such conduct =
is prohibited.=C2=A0 If you have received this message in error, please adv=
ise the sender by reply e-mail, and destroy all copies of the original mess=
age (including any attachments).=C2=A0 Sender reserves all rights of confid=
entiality and privilege, and nothing regarding this e-mail or its transmiss=
ion is intended to be a waiver thereof.</span><br></div></div></div></div><=
/div>

--000000000000a6f0e2061cbb7776--


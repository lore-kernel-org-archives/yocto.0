Return-Path: <mr.name@web.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B868AC3DA4A
	for <webhook@archiver.kernel.org>; Wed, 14 Aug 2024 20:34:43 +0000 (UTC)
Received: from mout.web.de (mout.web.de [217.72.192.78])
 by mx.groups.io with SMTP id smtpd.web10.108167.1723667673415106567
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Aug 2024 13:34:34 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: signature did not verify: crypto/rsa: verification error" header.i=mr.name@web.de header.s=s29768273 header.b=bqOz1JAg;
 spf=pass (domain: web.de, ip: 217.72.192.78, mailfrom: mr.name@web.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
	s=s29768273; t=1723667671; x=1724272471; i=mr.name@web.de;
	bh=3at0ALlxeqZ3bBJ0ZSETi7MERw0Ki66heS3od4oZVm8=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:From:Subject:
	 Content-Type:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=bqOz1JAgxUr/1d1qwmm2Udc3qx85owTaTrp4YNczzlv7YlP477aqx4atcfoOkcd6
	 RedoBcdJndNWE0pgJtr1vKWY+oYPDKOOcATtriiDRy4s14d1zSWqNShZ4TV8rC+h0
	 SttNC1iROi5A22ZEPTGB1m1JBAD2KCVxXGV+ie1Jg9yPO1tLi0JAyshh8k73VLl+B
	 727VAJYXMj6BnvJcrh5O4wjWH8S/6GI/H38Ilp0NfKEOquhnij27TPfXpPPMin/SL
	 B7702Y4E26gcy8B6eMN/vgu69SeD26NqiA4V2j47M2IREG3JlsisyoEP0xgL7N10s
	 2ZnFAZL13QROrAkzGg==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.188.29] ([93.244.214.241]) by smtp.web.de (mrweb105
 [213.165.67.124]) with ESMTPSA (Nemesis) id 1N5Ug4-1s87P30Dz0-00rAOu for
 <yocto@lists.yoctoproject.org>; Wed, 14 Aug 2024 22:34:31 +0200
Message-ID: <54146c89-b783-4cf5-a9d5-cdd52a6e3573@web.de>
Date: Wed, 14 Aug 2024 22:34:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: de-DE
To: yocto@lists.yoctoproject.org
From: Sven Reschke <Mr.name@web.de>
Subject: new releases for sysvinit
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:OSZJ2Pn/laEY3aDaVim99WwE5jMxtfKJj6lBOcc71gg8Cjzxkut
 roFT+cbKhXd2vQg6lFXtDIc/0Tozyds/o+U99vZZkNHfy8Sp6GhFCSAFu7BdR5mp30MYZik
 ur2RGvNrcIIVS6Bd4yf/Ycc08ikErstcgGOnoJUFHnh3yI5e0r3NI2iHG2ugLJHCyKbVJmE
 PtJ12okv5fZ0nOTBRl0LA==
UI-OutboundReport: notjunk:1;M01:P0:80pI7Zb1d8M=;09e7km9J+nx4KPwWsnE1GdSJvxj
 XtXgTn48SbkL2opV/deYPal0QTekq3MW/m7qlpbbYvr2VDerZodTpS4U9yegZTbWmMNAyvtMV
 yTlG8IF48CPrmleygF3DmfHrcs8dX3p8xB0WiSAPZFa6/5XUxqO5uQKJJCmaL10rutknQz7Ep
 9FUKjNk0QyHb6Kfsi/BtmYJKGRiKKAYxa4E5xRzPriz1RurYv9fQfWyze7/dlHuo7elmgy0EW
 HhBbU3uTSCCTyTgn5x1eOw1XPZQzMlFZzqrm8WZShDRQqPCuK0lxTMsysnakrlsDS7UUvPk8U
 CXlaEbtka4CyZf835WtmzXNinL3KYUhFwPN8H3ET4knBbqQDokxjEpqA6jYbS7VFkAHWFmfyQ
 IlCKiatLzo9iiYgYQ5nGJseXhDBH1fLRO1QuhTMAy8LbwWZXAEYVTOyWzK8a3g0v9YLEJogGf
 exEhLCBJifYqZwLMtNQSd4a7CC5aoHkQvzp5/2Gt6NmpDwOvbGymMhukwuO0SQF/IooicUmpz
 4nTN68zuKThlbaB391mdM7K4GDs1jqFmS9ZkPYiggELNYvZIIysNZhtS8ZtwkHgJak34bHPNh
 AJiVoHDR7pdVemnpaXBAMcU/nObe/OHMjWUtTx2GDyJx9ttxt0Vb/1evhyYPo/4LFhVL7escG
 lXxYnhPfmxjzSBMYdunpQWQTyC1H4C5IHAlfRTLCNFNhbjAlLxoXAdoUR58AwI2w3+azD0x2+
 idn2Sa5lQDBK06ZoSbD+X5uJt4dJeq/tBbN3gi0h7tgH0ScA/sK4yOhOgj7kwDHZe3OUFUX4D
 chUSUvIAprx/QnbAxiuoIwMg==
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Aug 2024 20:34:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63703

Hi,

The sysvinit releases seem to have moved to github:
https://github.com/slicer69/sysvinit/releases
(See also official mailing list for the new release:
https://lists.gnu.org/archive/html/sysvinit-devel/2024-07/msg00016.html)

Is there a plan to integrate the newer versions of sysvinit?

Best regards,
Sven


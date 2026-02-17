Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2B255E9A03E
	for <webhook@archiver.kernel.org>; Tue, 17 Feb 2026 20:07:49 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.21536.1771358865467848936
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Feb 2026 12:07:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=Ty0TDSR/;
 spf=pass (domain: smile.fr, ip: 209.85.128.45, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4837907f535so32935775e9.3
        for <yocto@lists.yoctoproject.org>; Tue, 17 Feb 2026 12:07:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1771358864; x=1771963664; darn=lists.yoctoproject.org;
        h=in-reply-to:references:from:subject:to:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9aBVQXc97vI+gQd/5zcX3cO8CL11MAKK+7u4ZUVgE6E=;
        b=Ty0TDSR/9yBDRBBg8gKnijY2PM8H/EbVpusNgRLmUIAYPT9AETI4H5KjQuLV4QkBFK
         EUCSbWdqIJNqArUadURmHk9AAfRCnox+TI/UE90nyHDv6YcozvVblyWVfzD11cWd8uey
         s2qGbEH8z3pZPx01zFKtNv2h2voZmh8J1XJ5E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771358864; x=1771963664;
        h=in-reply-to:references:from:subject:to:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9aBVQXc97vI+gQd/5zcX3cO8CL11MAKK+7u4ZUVgE6E=;
        b=l+eaBv8kdoBIAPz4e9eFv2nINk7HostqhuZZ5OqtSKfV9VTXZ/BcRl8M6O+RNLMInd
         cHJkURt+GfMrcwi0igtru4Y7mK+ED+dukef6oOCJ6Ijr3lnrzHXncisQqgWoQlAEz64X
         77sGBDRZESd1YEhAefZkVySE2Y9mcoLas87J14aLrCS5W1cGZ4antTWB+Z0098YCCzgv
         tOz4RxT+6q6UKVwkItTEKRUKGMwfz+RzTPwnKpEpXsrVpNEF/dLb86l5YYBP74w6nNYC
         fUWgUw+pIOx8qZ+bA6JMQx9ci6HD2vCUs5oQEvfrN2TBD0/XfBdxy1UndRQWmzjss7Su
         59pA==
X-Forwarded-Encrypted: i=1; AJvYcCXiINlZ6wCBrvHEvgto2PpIeh/Wnkd2SN02UqUWnObDfNBnDLuAFzqRnzyyIH1evrEyXWpGaw==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yyh8a30TKD68FmgESJUn3keVGL1Cy57mfCQJzhoKKcZy5knBOQP
	zvnNl0QNias88sOUNZqv+9AmwLE2prw51qhIgYDrQHQpwGLJpIbQABg3E6DjMrGAV6Q=
X-Gm-Gg: AZuq6aK9oKmMgY5Oj3ZXecoGzV1c8IHvO15c8FBm6PcA/AqbsKwLbMMLVQcKSHBFMSq
	CKPWfQZE07Jn7UrUBi6+rfblToauQ7p/om/CfaFyUEAueYpBKq1wRvFhWEOvKLcr+gFMNa7ysSw
	jAt5GY9D/PQGdW89p6qjW8c6Qyvrp7mInAnerORGrKu1T8STINEdq466P2mK0nhtDlRWYhOoXxA
	B9yr2ps24uvFhFxm8tjATcBGKpt7tGrBkp1dclFcNq3yQbXYb/qWXx19euSeoVOf9XczVQLjosu
	oGoyxL4FFgiW+lB3gfGkBsRqqrP852bGNJ2z5Xb1fRc7pfds17MPAt1WrPF6GcH/hILhMzWo7gT
	vQW8MS8dcTqtUNT767CMpedq7SeOjraYzgAmM/aL0Xq4ZMshoLKsCCLILAAL/q1Gr9OzS8kXiKi
	OTh3Mf61uE7bCBsPOSyBsGIjTmhdVJbCsPKGk8c6AyJ+lmmNbQXpnJNNJmQEoYJ7tWzC6gYqWU4
	ZPAZTJxgEJz3XQ=
X-Received: by 2002:a05:600c:4ed1:b0:483:71f7:2796 with SMTP id 5b1f17b1804b1-48379b9898cmr231356355e9.10.1771358863765;
        Tue, 17 Feb 2026 12:07:43 -0800 (PST)
Received: from localhost (2a01cb001331aa00a2e4fb7b0d887544.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:a2e4:fb7b:d88:7544])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796a5b2d1sm39735545f8f.4.2026.02.17.12.07.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Feb 2026 12:07:43 -0800 (PST)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 17 Feb 2026 21:07:42 +0100
Message-Id: <DGHIB7MWHIHG.19IPAQZIA9X0X@smile.fr>
To: <qa-build-notification@lists.yoctoproject.org>, "Yocto-mailing-list"
 <yocto@lists.yoctoproject.org>, "openembedded-core"
 <openembedded-core@lists.openembedded.org>, "Pokybuild User"
 <pokybuild@yoctoproject.org>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-5.0.16.rc2)
From: "Yoann Congal" <yoann.congal@smile.fr>
X-Mailer: aerc 0.20.0
References: <0101019c6759c149-effcd63a-6c4d-496b-9059-b54370d7c341-000000@us-west-2.amazonses.com> <SN7PR11MB70181409902E431E5217A0F4F46DA@SN7PR11MB7018.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB70181409902E431E5217A0F4F46DA@SN7PR11MB7018.namprd11.prod.outlook.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Feb 2026 20:07:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66252

On Tue Feb 17, 2026 at 11:03 AM CET, Debal via lists.yoctoproject.org Ghosh=
 wrote:
> Hi all,
>
> Intel and WR YP QA is planning for QA execution for YP build yocto-5.0.16=
.rc2. We are planning to execute the following tests for this cycle:
>
>
> OEQA-manual tests for following module:
> OE-Core
> BSP-hw
>
>
> Runtime auto test for following platforms:
>
> MinnowBoard Turbot - 32bit
> Meteor Lake-P
> Alder Lake-S
> Raptor Lake-P
> Beaglebone
>
>
> ETA for completion: 25/02/2026.

Hello,

A user reported a build failure on Ubuntu 20.04: pseudo-native does not
build with the default Ubuntu 20.04 kernel headers. I've developed a fix
for pseudo and I'm currently testing it for scarthgap on AB. But it
might take some time to get merged.

This problem (and eventual fix) should not invalidate your on-target and
manual tests.

Regards,
>
>
> Best regards,
> Debal Ghosh
>
> -----Original Message-----
> From: qa-build-notification@lists.yoctoproject.org <qa-build-notification=
@lists.yoctoproject.org> On Behalf Of Pokybuild User via lists.yoctoproject=
.org
> Sent: 16 February 2026 22:18
> To: yocto@lists.yoctoproject.org
> Cc: qa-build-notification@lists.yoctoproject.org
> Subject: [qa-build-notification] QA notification for completed autobuilde=
r build (yocto-5.0.16.rc2)
>
>
>     A build flagged for QA (yocto-5.0.16.rc2) was completed on the autobu=
ilder and is available at:
>
>
>         https://valkyrie.yocto.io/pub/releases/yocto-5.0.16.rc2
>
>
>     Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/2=
9/builds/3228
>
>     Build hash information:=20
>
>     bitbake: 10118785e4a670bce4980e1044c0888a8b6e84af
> meta-agl: 8611917335f6d1f5b29ea495c8f4c2c914183e8a
> meta-arm: a81c19915b5b9e71ed394032e9a50fd06919e1cd
> meta-aws: 1a9605b6c4787bf20fc90c8801c36822760b4bc9
> meta-clang: 613362523f3bf85ff4862e2f1f00113b8d2028be
> meta-intel: 5d153e35b4e752505efeae368f188fac5e31cf33
> meta-mingw: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
> meta-openembedded: 7a5075cef77b5f7af454e9868e1d0019f2fd1394
> meta-qcom: ec80a36bce11d8182b4bb2a6fa0359adfeccde0a
> meta-virtualization: 8b1543e121deda2445f80f74d85c10316d5b31f4
> meta-yocto: 9bb6e6e8b016a0c9dfe290369a6ed91ef4020535
> oecore: a1f4ae4e569bc0e36c27c1e4651e502e54d63b28
> poky: 1d54d1c4736a114e1cecbe85a0306e3814d5ce70
> yocto-docs: 369f3307368eaea605983e80047377fd19ebd6bf
>
>
>    =20
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>
>
>     =20
>
>
>
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#656): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/656
> Mute This Topic: https://lists.yoctoproject.org/mt/117841921/4316185
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/14721440/4316185/830777862/xyzzy [yoann.congal@smile.fr]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-


--=20
Yoann Congal
Smile ECS



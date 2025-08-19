Return-Path: <rybczynska@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3B29CCA0EEB
	for <webhook@archiver.kernel.org>; Tue, 19 Aug 2025 15:08:44 +0000 (UTC)
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
 by mx.groups.io with SMTP id smtpd.web10.16884.1755616114175554584
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Aug 2025 08:08:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Ys3szBMT;
 spf=pass (domain: gmail.com, ip: 209.85.214.170, mailfrom: rybczynska@gmail.com)
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-24458242b33so51784845ad.3;
        Tue, 19 Aug 2025 08:08:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755616113; x=1756220913; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=KwYWOGg+8NK6j4i0mP/U0YYgG8wwW6ku3rw72zHQ8S8=;
        b=Ys3szBMTk5OslRY5L8te0a/lM/FRxPxuDznklpcYisrSbTPJ+7CRoG879ADmjZVfc9
         p/8AiNr/2RmXdqdTJqB5um0TejiKKQeVVoLZEH10MlaESfB0zbBdda2iWiUtvqHqKYoU
         XDiKCmd95+8kVumgHmz/8fPXRiXR879goIm/Pn1axPzG4zUSJsVVz0Gy1mTtuKG0qho7
         H2nZJiS0ccyuAgXeModLJZKKE9+wvEAupXvqfkcBgb9MxOTckGNnJC7HMn38Bxl4AkPV
         Qo0f329Vepuww89+GJea/Td0BSpp7ltRbDN88htVEfw5pf6RYmEVinwINIcfLX+BIS4O
         g5tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755616113; x=1756220913;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KwYWOGg+8NK6j4i0mP/U0YYgG8wwW6ku3rw72zHQ8S8=;
        b=T+RPZgQm4MO4Z1T4my+PX9OSWS7wdMf5ZUZ+ME8uXBo0Uqwkp8c9D5BVRJg7eiaXxb
         BcbIkT3B3uMVG+V59ERxXXdZP8A9SfZtgvS95CO8JBjQQ0C1ulOGHYl1hqU6gFGlwbx/
         O+qU+P1mXQrrG0qL5+HDUpeGDKm/skA8jzrlMP9FM2DQ0//wvd9KnBy2z81eL1CR+wJB
         TRA+kgQFEfUbBKAKfwG750yKZtUS5620fLxtdKAW6DbGka+8+ie/n4tIJSwZ0zNus3nr
         kYXqI1vjDDeLZOWMAzAdGq/80hq3BmTDduoXDWjHy4nBYCRGxrXOmePy2KzZ/uGR8mxQ
         BmzA==
X-Forwarded-Encrypted: i=1; AJvYcCUIZmzfnqBt+R8NY9X8c5JMM6Tu6EzEJgRf2eebY2zAsnlYRizD1b9vBSgEkvnfVKmrCWvB6h2I0FkruPrPMw==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YyFv8XKYYfaDnAfiN4z0kdgM62xFPDPdqURQDgxCeuuP8JSiLSi
	yn3Ii+7v/V1sOi+23G5CSC3QDl414+0LMAKkyulegqiQ2jIFnpiFI62/zyyPFXDhhVbuwBilPhf
	ZVcKgdWf5lt+vpy3lYx6V2IBLZ86R0o3SlA==
X-Gm-Gg: ASbGncs90f5+3TTMSEjzovimatKwzLxN8cO5yS8ak+9jspIn5IAESSRQLX5HJYzfLUO
	3hSC1SNdn7juNeI0EdyKDIuOu+u8tqjttfZ2zxcHmd2ZVlAFULX3ZqOjRRb528LbNgaoPfBcb1Q
	MwYp9Qy17R/6TrAA2u294es2utR8NSSibbYBaDahtzQiSSMMfH+gYX3Z2EypJSvElWKdiFvyvrE
	/FVTtEX
X-Google-Smtp-Source: AGHT+IHZ1bTk9y3B1+6kEWzFiFNoEa/O2wV47eGsqBX45LPo1kuxsnNZxlQPJcyq8zbq6afYKAqoUCQDk/vv9/75gXA=
X-Received: by 2002:a17:903:2f0d:b0:234:8ef1:aa7b with SMTP id
 d9443c01a7336-245e04a6f7emr29572535ad.20.1755616112766; Tue, 19 Aug 2025
 08:08:32 -0700 (PDT)
MIME-Version: 1.0
From: Marta Rybczynska <rybczynska@gmail.com>
Date: Tue, 19 Aug 2025 17:08:21 +0200
X-Gm-Features: Ac12FXwE2cAHsWIHx47kmot7HF7jdvtgXCl6mdxb5qFp_7R7gPF-ZQOz6guNYHo
Message-ID: <CAApg2=TZnJGDvBN8LBEoVbRcTJ6k1fGdOXVzss3bQmjZH4WknA@mail.gmail.com>
Subject: Renaming the yocto-security mailing list
To: yocto <yocto@lists.yoctoproject.org>, yocto-security@lists.yoctoproject.org, 
	OE-core <openembedded-core@lists.openembedded.org>
Content-Type: multipart/alternative; boundary="000000000000c373c8063cb93ac0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Aug 2025 15:08:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65770

--000000000000c373c8063cb93ac0
Content-Type: text/plain; charset="UTF-8"

Hello all,
yesterday's incident confirms that yocto-security has a confusing name that
might cause confidential reports to arrive there.

What about renaming the list to yocto-security-discussion or similar? And
eventually redirect yocto-security to the private security list.

My reasoning: we shouldn't rename the private list as people might use old
versions of documentation and we want them to address the correct private
list when needed. It is less critical if a message expected for the public
list reaches the private one, than otherwise.

What do you think? What is the process to do the change?

Kind regards,
Marta

--000000000000c373c8063cb93ac0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello all,</div><div>yesterday&#39;s incident confirm=
s that yocto-security has a confusing name that might cause confidential re=
ports to arrive there.</div><div><br></div><div>What about renaming the lis=
t to yocto-security-discussion or similar? And eventually redirect yocto-se=
curity to the private security list.<br></div><div><br></div><div>My reason=
ing: we shouldn&#39;t rename the private list as people might use old versi=
ons of documentation and we want them to address the correct private list w=
hen needed. It is less critical if a message expected for the public list r=
eaches the private one, than otherwise.</div><div><br></div><div>What do yo=
u think? What is the process to do the change?</div><div><br></div><div>Kin=
d regards,</div><div>Marta<br></div></div>

--000000000000c373c8063cb93ac0--


Return-Path: <mhalstead@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAEC9C46CD2
	for <webhook@archiver.kernel.org>; Tue, 30 Jan 2024 18:03:16 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web10.3163.1706637786569447646
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jan 2024 10:03:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Z76Czf0s;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.167.44, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5101f2dfdadso7254012e87.2
        for <yocto@lists.yoctoproject.org>; Tue, 30 Jan 2024 10:03:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1706637783; x=1707242583; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=1VlSKTp7CvpzaJdZLUyiBmiNIhj0USeqtHcrLIbLbxo=;
        b=Z76Czf0s9nxL0IVnvladuNAJlQIrx4MKUyRrGmhMm1PbckLwY8N3ZBaNva8+fD+G7a
         dx/zAQMN+mDlNxA29+88n3Wo/Bf/gcPJrYU7nr3KFSpHXEd96yQBWHkzhV8PCJBUldX0
         NaM55GgABCIfaLd/7pD4Frynt2UbXocwAz+yU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706637783; x=1707242583;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1VlSKTp7CvpzaJdZLUyiBmiNIhj0USeqtHcrLIbLbxo=;
        b=gLw/t8fgUFYPnZcLGrskiU6028JexvSmj5pRhByqXxmdpq9Qhqqqq5s2cMrpQjmrK4
         AlzUKjdF+/lLR7vG8Zigx7QfBNdZW4RE5ffDKPeN+Ci8QmHB16oOL6EyivWkdb65HdrK
         ykB4SpHtRyCwo86yHERSwT0i5pZSDdpRiG6XquPissgAW/Oyi99IYoIan6xZAZF+vJfc
         jK/+/WwM3m5VwE1wcnWy5mL0Hq9OWOdh1ZExGn3iHvb6Zxjm5xQ0LLOCcbaBOBpo825W
         tkxxvOtVE5a5ZYYn6M27ExHcjfny2K1znWocdU8p0ieQWcIci9KebDLxZuBAoReF5CfH
         rlyA==
X-Gm-Message-State: AOJu0YxA0TE8hniY/xu+/HOLpOq+pLaEvGwrkXlZscDBjjOCcf12IfX8
	EdhewMJgGieCDK28VPwDedKsWPORMFpXA6dCcBp8LDWPBDkrGaboPH3UIahC3YPkKgojboZfv35
	Gnah9UBiLqWH4cIzLGyuueBc7O7g7BZ/pJ2Z5/nmpcwzLrxaeBPE=
X-Google-Smtp-Source: AGHT+IG7uFCq+/nMp272YkLxknBoOD2TxAFYHOcabfm8TUh2bDUHyeMkzC9mH6q7wDh6y+Y3D71jykP5LN/ANnUU5y4=
X-Received: by 2002:a19:6406:0:b0:511:17b6:5dc5 with SMTP id
 y6-20020a196406000000b0051117b65dc5mr2393638lfb.12.1706637783196; Tue, 30 Jan
 2024 10:03:03 -0800 (PST)
MIME-Version: 1.0
From: Michael Halstead <mhalstead@linuxfoundation.org>
Date: Tue, 30 Jan 2024 10:02:51 -0800
Message-ID: <CADfgfobScqVYRtPjm5buBRVzROqWX++85inBmKqZ1MVLSWawMg@mail.gmail.com>
Subject: List membership verification
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	openembedded-core <openembedded-core@lists.openembedded.org>
Content-Type: multipart/alternative; boundary="000000000000d3f78f06102d9210"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 30 Jan 2024 18:03:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62338

--000000000000d3f78f06102d9210
Content-Type: text/plain; charset="UTF-8"

Hello,
Some mailing list users are being asked to confirm they actively want to
continue receiving emails from our lists. Please search your inbox for a
message with the subject: "Action Required: Confirm Your Groups.io
Membership to Continue Receiving Group Emails" from "@groups.io". Reply to
this email to ensure you continue to receive listmail.

Please let me know if you have any issues.
-- 
Michael Halstead
Linux Foundation / Yocto Project
Systems Operations Engineer

--000000000000d3f78f06102d9210
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div>Some mailing list users are being asked to conf=
irm they actively want to continue receiving emails from our lists. Please =
search your inbox for a message with the subject: &quot;Action Required: Co=
nfirm Your Groups.io Membership to Continue Receiving Group Emails&quot; fr=
om &quot;@<a href=3D"http://groups.io">groups.io</a>&quot;. Reply to this e=
mail to ensure you continue to receive listmail.</div><div><br></div><div>P=
lease let=C2=A0me know if you have any issues.<br><span class=3D"gmail_sign=
ature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature" data=
-smartmail=3D"gmail_signature"><div dir=3D"ltr">Michael Halstead<div>Linux =
Foundation / Yocto Project</div><div>Systems Operations Engineer</div></div=
></div></div></div>

--000000000000d3f78f06102d9210--


Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53963C19F32
	for <webhook@archiver.kernel.org>; Wed,  5 Mar 2025 15:20:14 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web11.15649.1741188005200031993
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Mar 2025 07:20:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=O1WJi6ZY;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.45, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-390cf7458f5so6440109f8f.2
        for <yocto@lists.yoctoproject.org>; Wed, 05 Mar 2025 07:20:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1741188003; x=1741792803; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:date:cc:to:from
         :subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=R/W/Q2b12LyWZzVxallqAv+m6aJx9FSye8OP66bHNuc=;
        b=O1WJi6ZYKBdkwimt2hQ+cpJ6J0BbCfFr+zqnd9P8CJlFCA9Rb3jPD9i5rSiVI0rJ8b
         buePAs3OycmkAOJEkpebu9TG0PU5GbmEIySL3b3MPqlYHatdduwTrMi9ZQuV7G+oxQKH
         KDvf/wgqJm3U9ZBcvem25ewxhm76ahnTrM0s4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741188003; x=1741792803;
        h=mime-version:user-agent:content-transfer-encoding:date:cc:to:from
         :subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R/W/Q2b12LyWZzVxallqAv+m6aJx9FSye8OP66bHNuc=;
        b=Ei+pUyclyZXbEfaQ+LSu4zhQm0sO1O5/qok54cE/74AbY+CqtWv1XDuZA9XtDVin4T
         67LY5ljOyHNJnrOem6wH431QCl641vUM/5F05+70MD6pDmJYdfNy1c+gDp4cq3jfROCC
         mp2hWCyJzUb7q/oJic7iZWbVQNI7SeyNOGjk7oy+q53kNyDgsdeBQ6my6EVoMGyQhrqW
         vQ9E0RFdSncVD8c/EHqQoXDxQnrlWVGilKBnsRDOhlamB3ZOz62+5qnzyXm3UK29871g
         R8R7DawQ8HwiVU2A8di+uGgQuKOeJ15ieqQs6f2qbKgHUvyCPx6R0jz85ukn+y+cKOMg
         iwAQ==
X-Gm-Message-State: AOJu0YzxecDwG0mOJqi8Xvvw1iKKzrEXHBhY7qZcRFQIPaYPyOylOkD9
	3+p5EPnc0njsVmitbvLMEKyjNaFvZl5cP+AHmG7LnmIKpLkK3MgM8UGE+fTZP7J8on6c14vdcAd
	3
X-Gm-Gg: ASbGnctEYvQEu26JwVxymvINWeLQ2sP0pHeALkWuwuEzHInGEDYnNeDj3QPLhVry60u
	69NwVrjX5n19dMn+k/8TEBPN1cyo/7g9u58VeHEy5IBQ2ima3E1jbp3Mx4/9f4vXKLUIAdm43iL
	F4/JqcGaRjDRqZmIc55h9rwwBjYhZv1h1df/GOWusGCnChqfNn0133y5MeEKeV6LIvTBvmqoRuJ
	i7kLGYoaOHi5T1RT9sv16Lw2/a+YQjbNefT9WN3EXpAgyGU/kzHsEro3YnDpCa7MFp6f932jWXH
	6+x+5I1SafopOtfEhr39GVv5hkepJTARDJGVYOMjdb8qBWpvUoycBJyTBDBjRZxZWeRusYp4CbX
	sR/MdZLamd+mJmpWDSiD/8bByPx9CLNW7pg==
X-Google-Smtp-Source: AGHT+IEGp9RJrXFTp+aK7kBd/lzyUZS2KtqQcxiGDrhKz2K+JvBb0fGxnklooxpQ+lBqtkmYt5PbsQ==
X-Received: by 2002:a5d:5f91:0:b0:390:e9e0:5cb3 with SMTP id ffacd0b85a97d-3911f73b6b4mr2901550f8f.12.1741188003131;
        Wed, 05 Mar 2025 07:20:03 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:939e:c44d:2366:e8da? ([2001:8b0:aba:5f3c:939e:c44d:2366:e8da])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390e47b7dcfsm21615306f8f.55.2025.03.05.07.20.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Mar 2025 07:20:02 -0800 (PST)
Message-ID: <8e038f34da9747f7fd4b99f872e6def9acd49663.camel@linuxfoundation.org>
Subject: Project data/layer/integration changes
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
Cc: Ross Burton <ross.burton@arm.com>, "antonin.godard"	
 <antonin.godard@bootlin.com>, Michael Halstead
 <mhalstead@linuxfoundation.org>
Date: Wed, 05 Mar 2025 15:20:01 +0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.2-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 05 Mar 2025 15:20:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64922

Hi All,

With help, we have a number of changes to generally clean up and better
integrate our systems together for better detection of issues and
consistent data sharing. Specifically:

* The Yocto Project Compatible Layers list on the website has:
 - been filtered to only show active releases
 - updated to cover styhead and scarthgap releases
 - https://www.yoctoproject.org/development/yocto-project-compatible-layers=
/
 - this prepares us for v3 of the programme
* Lists of releases were added to the release series information in release=
s.json
* Validation of SANITY_TESTED_DISTROS was added for master and stable relea=
se branches:
 - example warning output: https://autobuilder.yoctoproject.org/valkyrie/#/=
builders/62/builds/75/steps/16/logs/stdio
* Validation of toaster fixtures information was added to toaster builds
* https://dashboard.yoctoproject.org was created to hold pointers to inform=
ation=C2=A0
  and hold our charts/data. Still WIP but it exists and we can start to pul=
l
  together information. Help very welcome.
* A new bug triage page is nearly ready to be added to the dashboard=C2=A0
  to replace the wiki driven one.
* Obsolete oe-core branches were removed
* Obsolete/pointless poky branches were removed
* Various odd tags were cleaned up to improve data quality
* Dylan was missing from the releases list and added/fixed
* The indexing target on the autobuilder was extended to make more=C2=A0
  of=C2=A0this process visible to everyone

Changes like this seem easy but have so many time consuming corner
cases to chase down. There is still plenty to be done but having these
basics fixed/working unblocks so much else.

Thanks to Michael, Ross and Antonin for helping pull various elements
of this together.

Cheers,

Richard


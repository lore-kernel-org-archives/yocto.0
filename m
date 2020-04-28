Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.3242.1588061066150010781
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Apr 2020 01:04:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=dv4c6GJm;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81B11E01A91; Tue, 28 Apr 2020 01:04:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.218.41 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 707AAE01A8D
	for <yocto@yoctoproject.org>; Tue, 28 Apr 2020 01:04:22 -0700 (PDT)
Received: by mail-ej1-f41.google.com with SMTP id pg17so16483903ejb.9
        for <yocto@yoctoproject.org>; Tue, 28 Apr 2020 01:04:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=VcazMkzBI7kFSHofZjSG8B5Yf2xM+koYisGo9eWjtJM=;
        b=dv4c6GJm8T8mVNYJoO3FR2JVwvJoZxsOuf22kjLI8AC1ywnjb2pebrIrm278JN4JLY
         NRLXpsX7ZAp59JHTGs2svNR9jIxxBXPMOz8/G4myZbTki02pNlBk+MGjm3O3i21XStf2
         XZODoiOx1dc6d9VOsw5m5sZsFDyLQ6E8Ra7jfseUsCjuqb/rX6Iy6qJW67xspHNlf0X0
         5FLmXFw4e9NNQnoIwjOqaPUJgCHDyMGG4eTV1fIPP7IFBeFdWYrtFe4RTPvrH4lMfXn+
         0Rxrfupcg3rkj6ltxmcHRWRu/HKp+PbmirG7j7IHqTqDjlP7vN0jAW4gDPzKwULDkCeI
         VRgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=VcazMkzBI7kFSHofZjSG8B5Yf2xM+koYisGo9eWjtJM=;
        b=cXEf005v+/agdpVYJRB4s+QkeNhHOehl7fPYvrB50OONTmNEPxB3Q3turR9GCLg8nk
         sPQnj49SIcFAIMgQulq+AqrVKMHU23jWo9rBY5eeUwbzv8nVa/CghBQ5YJihsmrwbFBp
         gF8YcD+0Tz4wtr4hwwOS8Lx8M8Tyu2W6s6EQMeZn+aA7Z9dWQdAwr8NMfbNK8bvWGA4/
         5HCVyvbXApln7ZMLeYciWv61vqp9ws2j9vBlEME3vlY3LCESuiU6Y0LgTUAdhMPeBJke
         tjgh4TElP2sBE/kKz8DeNmXPGIBhLEnP5aA51uMfW0Z2jTK/45SOy8O1x3L4FWCf1zIw
         ut8w==
X-Gm-Message-State: AGi0PuY+yZxICgUpKH6hwb5Rs7oJLS2jXkIyfqC6GxtQeCqJDftS7oZ9
	CiDy2YBk4Hwgb55gUMsncoenSFTQQXVdoDbwndj/HYsC
X-Google-Smtp-Source: APiQypLrjz5tfKBHFLwB6lZ9/yBHl3Kj7wCRTXY7ZNZxpHJZ0K8+mmrh3HgxnwbgEM28BuovK/zA2Dro9Mp76d1JGRw=
X-Received: by 2002:a17:906:4c8e:: with SMTP id q14mr24364343eju.208.1588061061905;
 Tue, 28 Apr 2020 01:04:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab4:a881:0:0:0:0:0 with HTTP; Tue, 28 Apr 2020 01:04:21
 -0700 (PDT)
From: "JH" <jupiter.hce@gmail.com>
Date: Tue, 28 Apr 2020 18:04:21 +1000
Message-ID: <CAA=hcWSKre4hC8m=tdiavFSO1GbetceQy-jbWg0kzrMFK7QBSg@mail.gmail.com>
Subject: Which recipe for Linux tools to run u-boot command inside Linux?
To: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I was told you can run u-boot command inside of Linux, which recipe
can be used in Yocto for install that package?

Thank you.

Kind regards,

- jh


-- 
"A man can fail many times, but he isn't a failure until he begins to
blame somebody else."
-- John Burroughs

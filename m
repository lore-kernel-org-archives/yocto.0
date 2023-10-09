Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3A26E95A8E
	for <webhook@archiver.kernel.org>; Mon,  9 Oct 2023 12:56:19 +0000 (UTC)
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
 by mx.groups.io with SMTP id smtpd.web10.60826.1696856175126263067
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Oct 2023 05:56:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=bHr66GU8;
 spf=pass (domain: gmail.com, ip: 209.85.208.49, mailfrom: hassanchattarki@gmail.com)
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-53639fb0ba4so7711006a12.0
        for <yocto@lists.yoctoproject.org>; Mon, 09 Oct 2023 05:56:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696856173; x=1697460973; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=1tICi8fx5xclFdlrXWzSBGXpKUnibCwe85IHrTldcDU=;
        b=bHr66GU8nRCxbqKQSOjkqg5uO/41AvqtKMa+XzHhbm1kyW9J5Ez8cfdTGh5QNubSol
         xRohxkyPEfLI+z7UXRfmdkfhu62F8ZKTu1Iyxa8cknwKwp3c5Q5NhXD341rVPjPcdjmC
         jwfzlVszbeVd6y6fBDD0HEzsmuEIbrrfD6Lu3zVoDdXLo9+NdqudVc/895r3c2YcT3TM
         bBNnLD5fiGc8JvJjFFRH5SsG5GZmxn3QVRD4aP8O9bV3EJOE9Ii825Kb5wJQgJwWJXSm
         PlgFBtKK57ltl5VAM991J7zucOBdBHCC5T2Eugmlcx+R7t6kH9RA1niVu+TRso7Kut+R
         PqZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696856173; x=1697460973;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1tICi8fx5xclFdlrXWzSBGXpKUnibCwe85IHrTldcDU=;
        b=LIAmDeCbX20cnp9YoEurOcPRZll1TUmup8Q95q5dXwZ0aD9pxpBjGDqsEXCRddZid6
         amrc1a88/nrOqITRG+p50bHz/Qha+vD8cMnSSdSewqH7kBIW+JWPRBqQjd2Fdjh8WXBO
         5P3uzGh/qO+BRiJ54Eui8y+VR+oj2JQDP4q/RQNchOWvqg5xN3+e8/PikvcKxnUXcpsW
         HboAQ3kMm86b++Va9fKqTNw7ZkkCUAA1k8m2sqpB0Z5iUCXF4Oqrqkt6g0SE15FGnVqu
         uUnoAq2n+TaIyFrMrHUfrBsoVDbv1RXcCwvyyWihTaCRWjY6+1MCvcFkloiKN1Ymkpkp
         DKbQ==
X-Gm-Message-State: AOJu0Yz78F0mJSB2bfhIh45qtsbD0D6OdJWHToMYgfLzZqGcPKFAKMKt
	/T+z6KqiPpzAzIR/fQ2FDxGOH+u+p+hyRECcPhEpBo6v
X-Google-Smtp-Source: AGHT+IGJeaSNkhCIgXoXpdakNee3g/l05fd1WsTSQvaKLHnFz2vV7li5SItVSssQODaQ+nTctYStmcBmngupr3BtzKw=
X-Received: by 2002:a17:906:5381:b0:9ba:321b:80e1 with SMTP id
 g1-20020a170906538100b009ba321b80e1mr300060ejo.0.1696856172822; Mon, 09 Oct
 2023 05:56:12 -0700 (PDT)
MIME-Version: 1.0
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Mon, 9 Oct 2023 18:26:01 +0530
Message-ID: <CAPJWBnjjq1YO3o7r1upd2FR5rP8cX24VbzccMTsK-XGw5-624A@mail.gmail.com>
Subject: continuous security updates for the Linux system
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000006a87190607481dc6"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 09 Oct 2023 12:56:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61284

--0000000000006a87190607481dc6
Content-Type: text/plain; charset="UTF-8"

Hi guys,
I want to know more about security updates in yocto.
So generally we update our distros when we get pop-ups about security
updates and it's done. But what if my device is installed at a
remote location? How does security update take place in the case of yocto?
How can we do it?
Any other relevant information is graciously welcomed.


Thanks and Regards,
Hassan

--0000000000006a87190607481dc6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi guys,<div>I want to know more about security updates in=
 yocto.</div><div>So generally we update our distros when we get pop-ups ab=
out security updates and it&#39;s done. But what if my device is installed =
at a remote=C2=A0location? How does security update=C2=A0take place in the =
case of yocto? How can we do it?</div><div>Any other=C2=A0relevant informat=
ion is graciously welcomed.</div><div><br></div><div><br></div><div>Thanks =
and Regards,</div><div>Hassan=C2=A0</div></div>

--0000000000006a87190607481dc6--


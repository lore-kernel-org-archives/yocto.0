Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.19365.1601381285649630699
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Sep 2020 05:08:06 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@aruba.it header.s=a1 header.b=laHqcn1D;
 spf=none, err=permanent DNS error (domain: faresoftware.it, ip: 198.145.29.25, mailfrom: mauro@faresoftware.it)
Received: from smtpcmd0642.aruba.it (smtpcmd0642.aruba.it [62.149.156.42])
	by mail.yoctoproject.org (Postfix) with ESMTP id 22CBF38C11CA
	for <yocto@yoctoproject.org>; Tue, 29 Sep 2020 05:08:04 -0700 (PDT)
Received: from [10.0.3.96] ([213.213.6.58])
	by Aruba Outgoing Smtp  with ESMTPSA
	id NEQMkz2u6QEEgNEQNkwlSk; Tue, 29 Sep 2020 14:08:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
	t=1601381283; bh=fonnjulg5a8+MashTGr7VXMaANAI8kS0y4px+5WNd6s=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=laHqcn1Del1PVOwCyxu0JX6oS9wV7e8jeVcu4ikXHvKzLAG0Ml25r7C99P5Y0bUCs
	 ARtiyU+AzB+9eKgn9LfQ4mwtF66Ns1kClq1/FL7VFChy4sMTqviBdAD+9rPTuw31yG
	 PDg1lJwKhTQSNMMymZLDduJJSsxj+UF6DtkCCGG06lBRWYUlQPc9tYkdPpbWRKFYN9
	 oDJLhg1x71wDaOCSs/Eg7YIqKclT8DBfb8PBuQPfByZsW9B4ZYgtMEVGKoYYJ+WTbO
	 PVGU7QpnH8942kRRa/CmefB/v4ULfifGIqR50xd6vpnq7yFFRRsKdaGVMNFniNoEW4
	 RbMIX4NyAWuHA==
To: yocto@yoctoproject.org
From: "Mauro Ziliani" <mauro@faresoftware.it>
Subject: File collision: same path from 2 recipes
Message-ID: <10274ebc-8857-8c51-55b0-f0a888ce8bf9@faresoftware.it>
Date: Tue, 29 Sep 2020 14:08:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfG3Hl2us2Z+G/U10vDZhKwpaKhqrUDZ8+IHjvZyMiJ1qsTmiv5/ZxGuXA4IseK47Ez1ot6uPDgXk+0R3Dm0Kgl338KU9sDPfH4WLEeo065NlsMBeCNqY
 VdMo791kEcD/2erOuuGFu9mU13+Bu4TXlFsVgit+M+u9zr4/hyT1wUdc
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Language: it
Content-Transfer-Encoding: quoted-printable

Hi all.

There is a QA to test if 2 recipes try to install a file with the same pa=
th?

In my BSP 2 recipes try install the file=20
${D}/etc/network/if-up,d/hostapd_restart


I'd like receive an error from bitbale


Best regards,


 =A0=A0 MZ


Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.6638.1580484676359826604
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 Jan 2020 07:31:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=m5PTF4HV;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CBF3BE01381; Fri, 31 Jan 2020 07:31:15 -0800 (PST)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.171 listed in list.dnswl.org]
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C71CE01155
	for <yocto@yoctoproject.org>; Fri, 31 Jan 2020 07:31:13 -0800 (PST)
Received: by mail-il1-f171.google.com with SMTP id b15so6496980iln.3
        for <yocto@yoctoproject.org>; Fri, 31 Jan 2020 07:31:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=Jw5Nc9xzjjvTa3OzFvIOQlntENQQ5wS6Z3wjsL7Xc+Q=;
        b=m5PTF4HVjwdDgiATvDHIRiOmhlfOrgA8VEbzsWDrJQd5h2IR6N632vrLPJ+DdqFMGL
         MpyHaTB3NryulHf4+0Zg0dCPJXRKvFtWXPqBgcf/WDVsLnNkT6h7qMfsnsfYYtEMBcjB
         WJiUCPz4RrRkgbUJV7ClQ2QVQgxRodzAiIu9zt4ONRg3dt0xl9M1UQ2rmTrAMBEtQwX2
         Sz57nC79USHjCFAHJjDm2Dyz8lmCribJTI4WjakQq8Ju6Ch8hq0dqNFFBvmZKtKSeQRn
         51GBfisOPlbdp6HCE3M4QV/kOtg+jVZMVx6gFLmd8mX6sCOFfrW6bL4A/qvI/Iknks0J
         hTGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Jw5Nc9xzjjvTa3OzFvIOQlntENQQ5wS6Z3wjsL7Xc+Q=;
        b=MPyTbouiomLHEC9FTqEpjTsicQHGA38qkOG9BF7C6MrauY4TfqzTE1hkqTZdfePIjS
         NVEQeMA5rufFjLoq7M194LRRHS9vQjcTcue9IiQiFMHa/bfUoGwoEU/PAW36PyxpQqYw
         WP6tqAqE0U0K3oNbIWbzkeXhnNOcH/oi1CydNzxTbSR0WfGp3eHlEtxBH53ExIKu9ynP
         VTfcSyEXbLs4P9QiFf3lxdxYk2kndinnDDWY0vLbE9w/+uAOwp6owcmmPOH3EUSBxjob
         XCgroadfIFyePNn4tLXdf1+A3Fi6GvO7CVP81johaO9vlI+JMSgpaIb9is8gzSAv4wX3
         lMAA==
X-Gm-Message-State: APjAAAWYNfxj1EMNMaJG9gzOTR3Cck5Zab04R/NdnOF4/phuFN+HekJW
	zN1odOAmlhYUBH7yxoO4pltc007Tb/WqXNiQ8b51zvm9
X-Google-Smtp-Source: APXvYqzmXaRyGHUH2G7C9ldyAYY7jnTT/1Fjh27e3DhCojuWfZ93fJrW7rbt98wQx+47bzDOxAbgc/7ObvPNHFmQc4E=
X-Received: by 2002:a92:390d:: with SMTP id g13mr3179729ila.53.1580484673218;
 Fri, 31 Jan 2020 07:31:13 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad5:5d0d:0:0:0:0:0 with HTTP; Fri, 31 Jan 2020 07:31:12
 -0800 (PST)
From: "JH" <jupiter.hce@gmail.com>
Date: Sat, 1 Feb 2020 02:31:12 +1100
Message-ID: <CAA=hcWTEQnjHhE4=AeFjVTaGfrYkhEzb1k6mwO6-Bk1siGmPcg@mail.gmail.com>
Subject: Still missing ubi after added and_config,ubifs
To: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

How can I build u-boot for running on RAM? I add UBOOT_CONFIG[nand] =
"mx6ull_14x14_evk_nand_config,ubifs", but I still got errors in
u-boot:

Unknown command 'ubi' - try 'help'
Unknown command 'ubi' - try 'help'
Unknown command 'ubi' - try 'help'

What I could be missing ubi command in u-boot?

Thank you.

- jh

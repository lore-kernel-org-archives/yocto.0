Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C37EE00C27; Thu, 25 Jul 2019 15:45:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.50 listed in list.dnswl.org]
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com
	[209.85.166.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACA95E00B33
	for <yocto@yoctoproject.org>; Thu, 25 Jul 2019 15:45:34 -0700 (PDT)
Received: by mail-io1-f50.google.com with SMTP id h6so14198952iom.7
	for <yocto@yoctoproject.org>; Thu, 25 Jul 2019 15:45:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=X4YdCUn+Q39oRWyomoMAcSbLCpIabblLqQsa+qdcX9o=;
	b=hQDTrvdvjhndMxRSwSuwUNaIzKN/cgGJLT0HSoBOidxhl5iWDKz2PZyydag8jTC9dA
	2wbrsiuEHakgpNUJ/m8QaGTM5PumyEzL9tnLNDpUZvkEf+Vb2Ss/nUPNv/kGiZK8afbd
	hVW5tvBayvkGsZ62h1RwwihqWQzltKoJNJ3CeJS5nFIWQESTWVcUHEmDnlmFkEtPMOoa
	Y59hohQBcYh0J4P6zKerPGylSCJeKLfDptUGlYuskWfibtJWzbpONwJeTEMmi88I+4zy
	9IWWUkydOI4SN5+ljBjY3+crcsRa4skGMk9rweIWItQBa4+axCKA8OiXMQky5sUaAopL
	P0mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=X4YdCUn+Q39oRWyomoMAcSbLCpIabblLqQsa+qdcX9o=;
	b=rVPyQW+5zT6c8yJigOblWyppBDgglEmgUaKnKgYtv8Q/E4iZvUzhAVU1AEl/hpZH4q
	5Hm3freC8jDSJ72/zdRWDyGryRCTsy45x8B/h5rilPYVhdbpNkXHgilySbNIj582Mhmk
	8A1pD1Cxak+fSeoKWoTSS1fHFe434Po45B9uuBo/VYFWSCKmzRiNmzNOBxinrRD35TmV
	JNSKLiS08/svABJlZTAVKWGxe4kqFfZWrEivRoHti+vh1Pj94VSDdAbxDpyTs4kiNWuS
	v3h6GdzDTtcBmqVYiYbtVFm5EwBpg89WoJBMr+qRrEskdvNp2hWLjaswj5625XLKpypC
	pJiA==
X-Gm-Message-State: APjAAAUx2XdFVsd3HZcTWfiDohnbGeb0aSxEyTU1yRgSg9siKtRh2jrg
	0HX1e9gQFD4k0FI75tGyZow049XezCB76UVu0pSnpQS1
X-Google-Smtp-Source: APXvYqwkvIqsBAKxf1+M4c4xVNIXqRiKcXXhpW2l3TfRwYY3R8G5rwYJTjRUfSvoed+9KVyw6jyCZCHl9rzI8P/APWg=
X-Received: by 2002:a6b:8f47:: with SMTP id r68mr87945824iod.204.1564094734013;
	Thu, 25 Jul 2019 15:45:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:a712:0:0:0:0:0 with HTTP; Thu, 25 Jul 2019 15:45:33
	-0700 (PDT)
From: JH <jupiter.hce@gmail.com>
Date: Fri, 26 Jul 2019 08:45:33 +1000
Message-ID: <CAA=hcWQAt_d3aE0d0ZdHZH=cg-DDy7Hw+VyYXw5JNpOsjSe_Tw@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Recurrent service file
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 25 Jul 2019 22:45:35 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I am running Yocto distroI am building a service file like a cron job
to run every 10 minutes, I searched from Internet, there was tips to
use Restart=always and RestartSec=10min, but that seems not quite
right, the document said that RestartSec is for delaying 10min, any
tips how to fix following format?

[Unit]
Description=Cron job

[Service]
Type=simple
Restart=always
RestartSec=10min
ExecStart=/usr/sbin/sa_cron_job.sh

[Install]
WantedBy=multi-user.target

Thank you.

Kind regards,

- jupiter


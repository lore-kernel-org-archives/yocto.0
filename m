Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.1953.1578608931223842864
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jan 2020 14:28:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=zaDDvONS;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 140.211.169.56, mailfrom: jdmason@kudzu.us)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9905AE0142F; Thu,  9 Jan 2020 14:28:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.49 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com [209.85.166.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95C53E00BB3
	for <yocto@yoctoproject.org>; Thu,  9 Jan 2020 14:28:49 -0800 (PST)
Received: by mail-io1-f49.google.com with SMTP id b10so8892782iof.11
        for <yocto@yoctoproject.org>; Thu, 09 Jan 2020 14:28:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=IGHBQhIL8ISQq/D0vbQtyYYNelysuCFxSknRUlKilyY=;
        b=zaDDvONSgAXvJGnHhQR8/YWRQPbCaXWvscAIyITW4t9fAt2iL/CeORJIuB5QtwS2pa
         FmefBKjS1mVONXwdrQyaMSNmH/sOqpMhTZLw/72l1fLnmak99EY5irv2QBy86tbE/qGz
         MyMJJnhJPMo9KIz4lzFdRjZs/QxYgbdlGgEL2S1XxctXoYv7J0dnLlx3pv1cPvmLPvCZ
         mfciGdwnorJcCa+2CG318PYVNiroh/148q9hUf2FoB+D7DzFmE048ORbnFmWKiq+MWpt
         8kr+v2ZCUJ5eIfnogZ8xbpftKhop4lmROlw++O7a5pehpmTorAwJHbVs+1ER2R9LgT/k
         U2ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=IGHBQhIL8ISQq/D0vbQtyYYNelysuCFxSknRUlKilyY=;
        b=U16M08YhRdVNFpjomJs7IvJ+2nNkRC7hsARK6JEvOonEmTm8aL5vBeGCoJAAiR4oKH
         qmabqgg4N7/nDysheBDb1ILMvz0Wx2jdv7Jl5kyIczloBsBAtOWMPW7tWyNdr4VkBU+d
         EoFsrqA0bN+WSElOT21ivEMkBwoNdAaICA1fIGzz9QIOnP+Nt9AQgTy+6JfN9pZkkyWE
         RYYU11nVrX3XPMFYW/Ki5e57/GC9BmyHhH7JrCHyjjqw00yePWSdJe7d29aM0RxKci/q
         imGWVjIgMCs6HAvLzu/uxvpBlj9DYevaROu/p+Pg9BwA7ejtTfiz0DR6Sw1N6o3V2Lcc
         eCUA==
X-Gm-Message-State: APjAAAXzbj8zElBoIPpjgMCjZhfjQU/kOI+/mK7iSf3qD38/XICvSQYW
	VeD+cJSM1CQE9HvtdQWtOIL049QBkCUviNrFQFr/2GEmmMsw4Q==
X-Google-Smtp-Source: APXvYqzjPJvWuj9AcpzuHnKcsusiSHcYWG+Dmv1eKzRTbE4SRYA5zSMZsF7eNySWqOaJPc5BtojlwlTcuuCd7VEgaWw=
X-Received: by 2002:a6b:6205:: with SMTP id f5mr10077791iog.42.1578608928975;
 Thu, 09 Jan 2020 14:28:48 -0800 (PST)
MIME-Version: 1.0
From: "Jon Mason" <jdmason@kudzu.us>
Date: Thu, 9 Jan 2020 17:28:38 -0500
Message-ID: <CAPoiz9whfiTNqdM4WVLxrFHkhZHLnapPi+56o2sByra2P6USQA@mail.gmail.com>
Subject: OpenEmbedded Workshop at FOSDEM20 schedule
To: OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>, 
	Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>, 
	Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

The OpenEmbedded Workshop 2020 schedule is now available
https://pretalx.com/oe-workshop-2020/schedule/

As you can see, there are some very compelling talks.  Buy your
tickets now, before we sell out.
https://pretix.eu/OpenEmbedded/oe-workshop-2020/

Thank you,
The OpenEmbedded Board

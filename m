Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68485E00282
	for <yocto@yoctoproject.org>; Mon,  2 Sep 2013 00:02:18 -0700 (PDT)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3cT2Kh5myRz4KK5s;
	Mon,  2 Sep 2013 09:02:16 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3cT2Kh5d6SzbbgF;
	Mon,  2 Sep 2013 09:02:16 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from smtp-auth.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024)
	with ESMTP id aphIDrbybHo0; Mon,  2 Sep 2013 09:02:10 +0200 (CEST)
X-Auth-Info: L4ToPbyfZU6UYM+RVUBaBZ2+5xjCcH4iaEK7h16bld8=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Mon,  2 Sep 2013 09:02:04 +0200 (CEST)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 042CB1A7858;
	Mon,  2 Sep 2013 09:02:04 +0200 (CEST)
Received: from gemini.denx.de (localhost [IPv6:::1])
	by gemini.denx.de (Postfix) with ESMTP id CBEEB380BF7;
	Mon,  2 Sep 2013 09:02:03 +0200 (MEST)
To: Asier <atamayoarbide@gmail.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <CAMZj-5MD+kLf3JVS7Mmyq-JfREKPdcoam0NFCTrqsFw4bnrx4A@mail.gmail.com>
References: <CAMZj-5MD+kLf3JVS7Mmyq-JfREKPdcoam0NFCTrqsFw4bnrx4A@mail.gmail.com>
Comments: In-reply-to Asier <atamayoarbide@gmail.com>
	message dated "Fri, 30 Aug 2013 12:34:24 +0200."
Date: Mon, 02 Sep 2013 09:02:03 +0200
Message-Id: <20130902070203.CBEEB380BF7@gemini.denx.de>
Cc: yocto@yoctoproject.org
Subject: Re: Embedded Linux with Xenomai support
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
X-List-Received-Date: Mon, 02 Sep 2013 07:02:22 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Dear Asier,

In message <CAMZj-5MD+kLf3JVS7Mmyq-JfREKPdcoam0NFCTrqsFw4bnrx4A@mail.gmail.com> you wrote:
>
> Is there any Linux distribution based on the Yocto project that lets me
> configure my embedded kernel with Xenomai? If not, has anybody got any
> experinece in adding Xenomai to the Yocto project?

ELDK adds full Xenomai support starting with release v5.4 ; please see
www.denx.de/wiki/view/ELDK-5 for details, or feel free to ask for more
details on the ELDK mailing list, see
http://lists.denx.de/mailman/listinfo/eldk

> I'm using an Atom N270 chipset.

ELDK primarily supports ARM, MIPS and Power architectures.  We didn't
test the Xenomai stuff on x86 yet.

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
Real programmers don't comment their code. It was hard to  write,  it
should be hard to understand.


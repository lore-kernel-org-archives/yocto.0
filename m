Return-Path: <ashcharles@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18714E00815; Tue, 27 Jan 2015 11:02:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ashcharles[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
Received: from mail-wg0-f51.google.com (mail-wg0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FA21E00753
	for <yocto@yoctoproject.org>; Tue, 27 Jan 2015 11:02:21 -0800 (PST)
Received: by mail-wg0-f51.google.com with SMTP id k14so16462215wgh.10
	for <yocto@yoctoproject.org>; Tue, 27 Jan 2015 11:02:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=vMrLKI2IwuAocxL5kXpGKiAijPEF7FM80xt6TQwJeh0=;
	b=E2kps9AocGhPC/PyXfHnfgXjQ9Hpf3/67wxM4txmnBAjTWKxaURYWrrVe26WPai7KZ
	ITqpj+gFCh4bU1eWtek4Xp3rjtdB6lU5Fuvu50Vyftd7UvoBKndkYte/TvEKgVavovsl
	Zg3hm18ka/iN8poVNeGblFg6fetLVxE5fHwesR1lmpH1JiBDUrZi4uwAAlKDh8cDm2XS
	7E8J1/x7KJszcj1E2DD9GcusoDiiMVywgM2SXvzYDJcOnBtxoPwzHr7u2fK7ELKgadMw
	d6Ia0wdqVv5CQPN9JDKbw6ODiBOs1kJn+4bsId+qWqHZ8oVrzfcvHjMV6++bt6q/pc3j
	P+gg==
X-Received: by 10.194.179.166 with SMTP id dh6mr881921wjc.87.1422385340457;
	Tue, 27 Jan 2015 11:02:20 -0800 (PST)
MIME-Version: 1.0
Received: by 10.27.76.136 with HTTP; Tue, 27 Jan 2015 11:01:50 -0800 (PST)
From: Ash Charles <ashcharles@gmail.com>
Date: Tue, 27 Jan 2015 11:01:50 -0800
Message-ID: <CAK8F28mUrgh3nXrOu0Mdb0zrWEgvtnjX-bD2UebzGskA4y4taA@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: 'screen' MACHINE_FEATURE
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
X-List-Received-Date: Tue, 27 Jan 2015 19:02:31 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

Based on the yocto manual [1], it looks like "screen" is a valid
MACHINE_FEATURE and, in fact, it looks like some machines actually
call out this feature.  That said, I can't actually see that this
MACHINE_FEATURE is used.  I checked with buildhistory and some
grepping but maybe I missed something?
Should I be keeping this in my machines or is the deprecated?

Thanks for any insight,
--Ash

[1] http://www.yoctoproject.org/docs/1.7.1/mega-manual/mega-manual.html#ref-features-machine


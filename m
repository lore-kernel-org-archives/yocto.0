Return-Path: <mickey.happygolucky@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31917E00D0B; Fri, 22 Sep 2017 21:15:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mickey.happygolucky[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.175 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.175 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f175.google.com (mail-ua0-f175.google.com
	[209.85.217.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B027E00D00
	for <yocto@yoctoproject.org>; Fri, 22 Sep 2017 21:15:54 -0700 (PDT)
Received: by mail-ua0-f175.google.com with SMTP id t5so1767411uad.13
	for <yocto@yoctoproject.org>; Fri, 22 Sep 2017 21:15:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=sXIKJp6oYB//kyT1/2I94OgGHBYlLo6mE4p0nhn0pDw=;
	b=sv/g6fvCcJbHDu3kEplWe9aTVaOFdDJsoIMSol826+7z/uA/YJrSrHOAxly7TJb53v
	ieHPTlf2twexn01NGORvShBuZkym+QNpdE/LvJDpzo9c749DVMYQHnofwzsPE89IrFFB
	e5pbhkuI/fVL0vln8IWXVoACXRbG9LlHqZfR2c8quEP7nRCg/DbC/T5Xqek6/dHD2LEE
	iBi7jb0J5q7IjXF78STxv+n/M9v5rPeHYAojTOdAiXWhYOud2VV/l3rUDvaHheZ1ftdM
	SbFHM8akpnbfoZ5o/PlNr6iysTSJkAQs7sbgtLzZ8wiuojqy8cAb0OzShftJNK2FzrO1
	fRKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=sXIKJp6oYB//kyT1/2I94OgGHBYlLo6mE4p0nhn0pDw=;
	b=V8aQyzhmDB4vze2pun9bEnPzwm2WJV2PB2Vm1uDfjk/cGUG/W9zIb7CO/L8wza0lSo
	PZiOvZ0+fv9nmtp5f1N/+GDuHkQCkURHiDHXj3OIWPuHDwPi8R5UuJHL3r/wn7KV/h5v
	JnSWMhO7jcEcF4+vzEvE/hwNTl+V56rXWxHMtInRWEG+SGgENMm0zNXDmJYci5SmVoyf
	UgRchHvW8K2LMH4BdgcEAismuEdgzdncLYA4VrZAJc/IwPafa7mh21QTFBc2w5BaG6Yg
	jqobWKQ7ugKd7SfIYNPTiQLX34O3V8P0UfQUo2nMPwQ2CEx/1P9cBMyxBkru5a6r86Tf
	kpDQ==
X-Gm-Message-State: AHPjjUgb2xIQZ892b0oZCj9UBMay2SlS9kOEVuxYkS9oDzA6FZHd6KSq
	t5koWuLDE01ETNukXgxwGujYFdZbeF4tfsTk95tsqg==
X-Google-Smtp-Source: AOwi7QB8EFy2qREAZ+i7B2DXwhV590dKkNg/y6+lM9oSQIq2zA2j+EdgfPK1Z5gc2NlKophczqKSbwFFGUvD+tyGkOU=
X-Received: by 10.176.20.169 with SMTP id d38mr1295755uae.184.1506140153224;
	Fri, 22 Sep 2017 21:15:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.31.201.130 with HTTP; Fri, 22 Sep 2017 21:15:52 -0700 (PDT)
From: Yusuke Mitsuki <mickey.happygolucky@gmail.com>
Date: Sat, 23 Sep 2017 13:15:52 +0900
Message-ID: <CACMwXoWOfgvRzEebbKE4tHCcPmJeChYC1angZiJLPmLFRLTcLQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: libgcrypt building fails for armv6 binaries.
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
X-List-Received-Date: Sat, 23 Sep 2017 04:15:55 -0000
Content-Type: text/plain; charset="UTF-8"

Hello yocto

libgcrypt has problem that build for armv6.
bitbake said error messages at do_compile as follows:
...(snip)...
| ../../libgcrypt-1.8.0/cipher/rijndael-armv8-aarch32-ce.S: Assembler messages:
| ../../libgcrypt-1.8.0/cipher/rijndael-armv8-aarch32-ce.S:1165:
Error: selected processor does not support `rbit r8,lr' in ARM mode
| ../../libgcrypt-1.8.0/cipher/rijndael-armv8-aarch32-ce.S:1165:
Error: selected processor does not support `rbit r9,r9' in ARM mode
| ../../libgcrypt-1.8.0/cipher/rijndael-armv8-aarch32-ce.S:1165:
Error: selected processor does not support `rbit r10,r10' in ARM mode
| ../../libgcrypt-1.8.0/cipher/rijndael-armv8-aarch32-ce.S:1165:
Error: selected processor does not support `rbit r11,r11' in ARM mode
| ../../libgcrypt-1.8.0/cipher/rijndael-armv8-aarch32-ce.S:1165:
Error: selected processor does not support `rbit r8,lr' in ARM mode
| ../../libgcrypt-1.8.0/cipher/rijndael-armv8-aarch32-ce.S:1166:
Error: selected processor does not support `rbit r8,lr' in ARM mode
| ../../libgcrypt-1.8.0/cipher/rijndael-armv8-aarch32-ce.S:1166:
Error: selected processor does not support `rbit r9,r9' in ARM mode
| ../../libgcrypt-1.8.0/cipher/rijndael-armv8-aarch32-ce.S:1166:
Error: selected processor does not support `rbit r10,r10' in ARM mode
| ../../libgcrypt-1.8.0/cipher/rijndael-armv8-aarch32-ce.S:1166:
Error: selected processor does not support `rbit r11,r11' in ARM mode
| ../../libgcrypt-1.8.0/cipher/rijndael-armv8-aarch32-ce.S:1166:
Error: selected processor does not support `rbit r8,lr' in ARM mode
| ../../libgcrypt-1.8.0/cipher/rijndael-armv8-aarch32-ce.S:1167:
Error: selected processor does not support `rbit r8,lr' in ARM mode
| ../../libgcrypt-1.8.0/cipher/rijndael-armv8-aarch32-ce.S:1167:
Error: selected processor does not support `rbit r9,r9' in ARM mode
...(snip)...

I googled about this problem then I found the clue at here.
https://mail-index.netbsd.org/pkgsrc-bugs/2017/08/01/msg062410.html

I thought it fixed at libcrypt_1.8.1.

I tried update to 1.8.1. It seems fine.
So I suggest the libgcrypt updating for 1.8.1.

By the way, I created the patch for this problem.
But I am not sure, where to send to this patch?
I could not found the guidelines of contributing [meta].
I should send to OE-Core's ML? or  here directly??

And, Would you let me know what strings of options to git send-email I
should to set?

Thanks.


Return-Path: <rudolf.streif@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 636DBE00C6F; Tue,  1 Mar 2016 08:42:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rudolf.streif[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.169 listed in list.dnswl.org]
Received: from mail-pf0-f169.google.com (mail-pf0-f169.google.com
	[209.85.192.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21C09E00C80
	for <yocto@yoctoproject.org>; Tue,  1 Mar 2016 08:42:04 -0800 (PST)
Received: by mail-pf0-f169.google.com with SMTP id l6so18265707pfl.3
	for <yocto@yoctoproject.org>; Tue, 01 Mar 2016 08:42:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:user-agent:mime-version
	:content-transfer-encoding;
	bh=pUflQPkTqHKF9zVFBF8qScS6mQIoNlkpuwms7c9eZ8I=;
	b=ApLTND2jND55fYaktFutR5LBAhim2KFftPnA18cCU4J0ouyiv0KdkH4xnBNHvdXeRK
	U2gnhi1/wIy0GNj7Bj7j/QW6lwGvXWudr6fIzqFI5cibKA9ikGW4gSq7YULuuukDngPo
	qc+1TiZ+5ogLnc3jf+bVn49W9D8xi0SIU0M1v3vqpgAllDexDJCitS8cexnHhJqfV3jg
	ZqAa2+cLXOyKqB2lkMfF/MUM7KW0KnNXhU8hsQ81BFHiibJjfEdnuRMzwBFbXi2cI8vT
	M8THy01R4LLKb/7ZWb691FsNZ97b4Wa9QVmvW17/ACb8o3HvurI6UhWf0BuAUAjtoWoH
	PiYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:user-agent
	:mime-version:content-transfer-encoding;
	bh=pUflQPkTqHKF9zVFBF8qScS6mQIoNlkpuwms7c9eZ8I=;
	b=lqj4jmnpRfbALLp+ITtb2S6EpRxdYEXzb2jM5HT98Kjw67tWbLV7f0AB0RpZZWkwEE
	Chrn+SJx/1Iz/x6V+QXVcoEkkf97lMoru79nLI0UjC+9AeRNLDgE7Kyg7tJf2dZy/xNK
	RPncclpTynWsSbl6xKj8TsjEE2dgDQet0+tqTOyOeUl3KjhtjSTRW60iiEAF897D55pF
	a91V++8hAllEMu+OsBJxy1ODhax3NICSBEYJMkMu6QuIiQr3lyNg2oGjp5KrNE/zjjdp
	15iqJX2x92XTjsM2jo3+Z8ENEE3Q7UAn0Eacdo6zkggYhXxGHnD01cFXKxOBwPg55Q8z
	pbMg==
X-Gm-Message-State: AD7BkJIjKB8/E0eXf1iqBCISIdQa8kqqJI5aGqm5I4v7O8PSqUmKEalqWE7doFUmnaVXkw==
X-Received: by 10.98.14.68 with SMTP id w65mr31666103pfi.144.1456850524351;
	Tue, 01 Mar 2016 08:42:04 -0800 (PST)
Received: from rjs-zotac.streifs.net (ip68-7-48-20.sd.sd.cox.net. [68.7.48.20])
	by smtp.gmail.com with ESMTPSA id
	n82sm25633862pfb.53.2016.03.01.08.42.03 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 01 Mar 2016 08:42:03 -0800 (PST)
From: Rudolf J Streif <rudolf.streif@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 01 Mar 2016 08:42:02 -0800
Message-ID: <5285202.8PW0mz0glJ@rjs-zotac.streifs.net>
User-Agent: KMail/4.14.10 (Linux/4.3.5-200.fc22.x86_64+debug; KDE/4.14.14;
	x86_64; ; )
MIME-Version: 1.0
Subject: [wic] Creating sdimage-bootpart
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
X-List-Received-Date: Tue, 01 Mar 2016 16:42:13 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

I tried creating an image with wic using sdimage-bootpart which produces this 
error message:

---------
wic create sdimage-bootpart -e core-image-base -D
Checking basic build environment...
Done.

Creating image(s)...

<removed for clarity>
  File 
"/run/media/rstreif/YoctoDevelop/yocto/poky/scripts/lib/wic/imager/direct.py", 
line 67, in __init__
    self.ptable_format = self.ks.bootloader.ptable
AttributeError: 'NoneType' object has no attribute 'ptable'
---------


The reason for this message is that sdimage-bootpart.wks does not have a 
bootloader entry and consequently self.ks.bootloader = None.

As a workaround you can of course simply adding a bootloader entry to the wks 
even if it's not needed/used when creating an image for Beaglebone etc.

The question is what the correct behavior should be:

1. bootloader entry in wks is mandatory, then the wks parser should flag it as 
an error if it's not present.

2. bootloader entry in wks is optional, then the DirectImageCreator class 
should be able to handle that correctly.


I think the latter should be the correct behavior. However, the 
DirectImageCreator class has some troublesome reliance on that entry, in 
particular that the source plugin for the overall image creation seems to be, 
for convenience reasons supposedly, associated with it.

Cheers,
Rudi


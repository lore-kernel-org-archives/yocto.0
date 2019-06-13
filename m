Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99B68E00D8F; Thu, 13 Jun 2019 04:34:44 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.49 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com
	[209.85.166.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D846E00D46
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2019 04:34:43 -0700 (PDT)
Received: by mail-io1-f49.google.com with SMTP id e3so16045127ioc.12
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2019 04:34:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=ULIAZ8Q3QPdeQGyjOPtvnCiXuoHmcxkOTUKRera8NY8=;
	b=Na3bzBSZxkv1Wwyp82E5KES/SAL527BCiMS5UsucMQmEJBgAUbKsrgd1hzEQNuvZvV
	SA8DxFvo8DBV0sM2ljc1ZMAifO7IQSQM7+PQZ6VPv9zbG9sQhgOMBL0H5CPpw2ug1EF1
	wW9sbxlJlUMzg/f495za3sNaGgxlQicvJAo6aB/mjKHmwgwXoAz4CSACIXhkhpzYqQq+
	ekuj+h+sqve5q3mzqgL4tx4gvmAG7UJW/sZB0fIP3YLHAqn4JBV4MOrdg/53UmPJxYwp
	TMJnYCrFfJTc8DlBN9/bQVRA6ZP0ge+I0Id9np23xqZkthGGLMEIAkibTLl7unzps9zH
	5AJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=ULIAZ8Q3QPdeQGyjOPtvnCiXuoHmcxkOTUKRera8NY8=;
	b=SDSx7vMApfc8B4EmeQEc7t+GRLBmuzNrD9AuxgvNKPQY1FK6a88DMgEFcJKEwDKL8b
	ADbIrHSAwXVhh7fI9ETBfLqNlkX6obwml1DXm4cA8/VughS3G7WztEQaJpD20b64se0Q
	n2zjyssfqg0mHvSxqc9mul4kuQggzBBZzywBNwvcGigIimquEwvrfzczkxpoajru/i7h
	JfpumdMpDyKoGY5/HK3kZMnnt8XlJYNauIJCdaFQRW/rY8mMaI3ikDrWUBBGeWDFq4i5
	7lrf9aGYcg/hawdQElVOBeTIuQMZKPfBxMjzuTACWgQqj9paEWLVxLlutqM8Eyd/IIFg
	MzwA==
X-Gm-Message-State: APjAAAW+Y4RIVuQ1u3gUbVmMTMbR/mwImhjxKhi6O1dw9rW2a4qMvLlE
	9cmIPG0wM6HUZCUqfUwiOPD6EbVrHtJi2Wtw0tNSQtOd
X-Google-Smtp-Source: APXvYqzs6D4yW9P/QsbRSJMHZPS0Jge24fB7mCGYNciH4P8X9bf+2o1ipHD7/oQAeHVQBkWBr+d7/iCumVC1XjYV0qc=
X-Received: by 2002:a02:69d7:: with SMTP id e206mr60596101jac.21.1560425683015;
	Thu, 13 Jun 2019 04:34:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:92cf:0:0:0:0:0 with HTTP; Thu, 13 Jun 2019 04:34:42
	-0700 (PDT)
From: JH <jupiter.hce@gmail.com>
Date: Thu, 13 Jun 2019 21:34:42 +1000
Message-ID: <CAA=hcWQQD-zc9LxQ5ft0fzUEuX-9wwA=rvjtVwoMRmCAG=Xfew@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Command to make zimage to ramdisk format
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
X-List-Received-Date: Thu, 13 Jun 2019 11:34:44 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I built the Yocto images:

dev-image-20190528085324.rootfs.wic.gz
zImage--xxxx.bin

I need to build zImage to ramdisk to run it on RAM in development.
What is the correct mkimage command can be used for add ramdisk to the
zimage?

$ mkimage -A arm -T ramdisk -C none -n uInitrd -d /path/to/initrd.img
/path/to/uInitrd

Thank you.

Kind regards,

- JH


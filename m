Return-Path: <john.rama01@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8CFFE00D82; Wed, 14 Dec 2016 17:27:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (john.rama01[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f46.google.com (mail-pg0-f46.google.com [74.125.83.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FB8FE00D49
	for <yocto@yoctoproject.org>; Wed, 14 Dec 2016 17:27:29 -0800 (PST)
Received: by mail-pg0-f46.google.com with SMTP id 3so13913989pgd.0
	for <yocto@yoctoproject.org>; Wed, 14 Dec 2016 17:27:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=8uNRcHEHinT4aNPhr3aSda1NUK28978zN26HJyULqkk=;
	b=KFM+h0pvBUr3vMp82klslzqlHxupVbpj5DBQSanBx7Tv1tOp5Z8in65eCboRpbUSm6
	pvwX8xosHJRBGwwmJUaQC4lt5mwwkzbhmiaIz95R0OlrMROr+EFt8UHdxHsc4V5Esea9
	p18imzzHdP8UEE+MiP/GAxfPbRcDMXHSwlCFqtUpjo4SDR9379SQxuH6KwpHVvzVlQrB
	kzh0UwFmOLQPPtOhEOlR79uG9HyBxGlXVd9O+ROyjM0nakXgZfW50FdoBldZXTOcLmAX
	2Z+PzzAYun9UdX2i917INo8ohVAcu6LzHCBe9IWJmmZ2x0vYYICB0ZUXL91wZwjuOnZ/
	aPIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=8uNRcHEHinT4aNPhr3aSda1NUK28978zN26HJyULqkk=;
	b=X7t8yIMNlZYbjnaL+k42fwNdwPmmiTasGrag1HWVv6eaEtAp25+DVzjwmr6UV72WC4
	LPXII23IV1QPC6VJbLf07fh8+L8nYN1zaYJEsBn3yhgcHE+SNXBs4tEZ/H1NRKOyk5C/
	ZfM55vxtTCykZWkM89TSZGu/m8EnPwlY4+8OidUOT7lmmzic42AFwQDy9JJMg6eo6IL7
	w9VAUUXt/19YjNdI2+TdwMqTApz2L5AvrK7OnCrB9PZBYY9yikdv684OVCmErGrkqqjH
	d7f+zHTafNkWIynnp0Y1Z3WX6wjbe1Kgz1UUgkY7QwQUOAXJ4Mf4kqYdey5QL1uTsvju
	yLWw==
X-Gm-Message-State: AKaTC01HO8k2swRtvGyHDwNdksGPzP/fzpSIBOR3stQnfQ58pTS7EJgpd9/q+jErgJY0zw==
X-Received: by 10.99.122.14 with SMTP id v14mr191437825pgc.31.1481765248264;
	Wed, 14 Dec 2016 17:27:28 -0800 (PST)
Received: from [192.168.10.4] (KD118155101045.ppp-bb.dion.ne.jp.
	[118.155.101.45]) by smtp.googlemail.com with ESMTPSA id
	186sm89899552pfv.61.2016.12.14.17.27.26 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 14 Dec 2016 17:27:26 -0800 (PST)
To: yocto@yoctoproject.org
From: John Rama <john.rama01@gmail.com>
Message-ID: <5851F18E.3020401@gmail.com>
Date: Thu, 15 Dec 2016 10:27:42 +0900
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.4.0
MIME-Version: 1.0
Subject: NFS rootfs: mount: only root can mount proc on /proc
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
X-List-Received-Date: Thu, 15 Dec 2016 01:27:31 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Dear Yocto specialists

I would like to know how people, who familiar with Yocto, prepare NFS rootfs for target.

When running bitbake with image recipe, the target rootfs is generated at the following directory
{YOCTO_BUILD_DIR}//tmp//work/{TARGET}-poky-linux-gnueabi/{IMAGE}/1.0-r0//rootfs/.
However it's UID and GID is based on the account with which you runs the bitbake.
If you export this rootfs for the target, it will results in the problem reported in following thread.

http://www.linuxquestions.org/questions/linux-software-2/nfs-rootfs-mount-only-root-can-mount-proc-on-proc-4175595326/

I would like to hear how people avoid this problem.

The ideas I can come up with are followings, but those of them are not perfect..
1. Run the bitbake as root account
  - would not run as root since the all of generated files are root permission even for the log files.
2. Change UID and GID whenever generating new image
  - I guess next build would fall into the trouble because of the owner change.
3. Untar the tar ball under  {YOCTO_BUILD_DIR}//tmp//deploy/image/{TARGET}/*rootfs.tar.bz2 to  the export dir
  - takes additional time.. Not good.

So, is there any good idea to workaround this problem ?
Any insights and comments are really appreciated.

Kind Regards,
John Rama


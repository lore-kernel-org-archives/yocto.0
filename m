Return-Path: <atul.singh008@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2775CE00769; Wed, 16 Jul 2014 06:28:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (atul.singh008[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f181.google.com (mail-ie0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDAECE004FF
	for <yocto@yoctoproject.org>; Wed, 16 Jul 2014 06:28:33 -0700 (PDT)
Received: by mail-ie0-f181.google.com with SMTP id rp18so708983iec.26
	for <yocto@yoctoproject.org>; Wed, 16 Jul 2014 06:28:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=woxr0vQpvfT6Q7pelQGqA5Z+1tqHJO83rkuEe1r3OZc=;
	b=Y1f+rQypHdxyEEFz5nUqRlC9mcadSMF6QEGk2zcmDJcyJ1DaIk4lRYn4dghDtfwX/P
	W6bsKhjoXx+M9X67cjRHN1991muYR8RZHNxYuQlL45KShygD+HkRLgTgyMS0Y1pKPgqu
	cpj0+27tI5Wq4ZpLd5rr6iqtlHmG3cBDgZRSGLsUv+qbecDKmhTGh07EH47C6yn0HsEz
	TTuLXZQXAs1frRL5PveZK4RRDk91FDH5wdN9dCGaVUmwATFL8ETwOpNZu5I8c7QI5+4O
	U7l+AIWV43z46PSxebHFksuqYMMGV4qEu1oTBUjAAxPqbR1AyGuSvC3j5lBZyVA3yhjw
	QYkQ==
MIME-Version: 1.0
X-Received: by 10.50.137.71 with SMTP id qg7mr16174724igb.24.1405517313104;
	Wed, 16 Jul 2014 06:28:33 -0700 (PDT)
Received: by 10.64.86.225 with HTTP; Wed, 16 Jul 2014 06:28:32 -0700 (PDT)
Received: by 10.64.86.225 with HTTP; Wed, 16 Jul 2014 06:28:32 -0700 (PDT)
Date: Wed, 16 Jul 2014 18:58:32 +0530
Message-ID: <CAH21_vFnWJZC60p8vzqjB-B9YCiKKbVOsUFts7Ej80gp5K1-TQ@mail.gmail.com>
From: atulkumar singh <atul.singh008@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Toolchain build independent of host machine
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
X-List-Received-Date: Wed, 16 Jul 2014 13:28:36 -0000
Content-Type: multipart/alternative; boundary=001a11c3c1962c73c304fe4f8015

--001a11c3c1962c73c304fe4f8015
Content-Type: text/plain; charset=UTF-8

Hi All,

I wish to build my toolchain independent of host machine, either my sdk
machine is 32bit or 64 bit.
Like for 32bit host machine i am mentioning with i686 for SDKMACHINE in
local.conf and x86-64 for 64 bit machine.
Please let me know what i need to do to make my toolchain independent of
whether my host machine is 32bit or 64bit.

Thanks and regards,
Atul

--001a11c3c1962c73c304fe4f8015
Content-Type: text/html; charset=UTF-8

<p>Hi All,</p>
<p>I wish to build my toolchain independent of host machine, either my sdk machine is 32bit or 64 bit.<br>
Like for 32bit host machine i am mentioning with i686 for SDKMACHINE in local.conf and x86-64 for 64 bit machine.<br>
Please let me know what i need to do to make my toolchain independent of whether my host machine is 32bit or 64bit.</p>
<p>Thanks and regards,<br>
Atul</p>

--001a11c3c1962c73c304fe4f8015--

Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3301DE00D10; Sun, 15 May 2016 10:42:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (balazovic.peter[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f54.google.com (mail-lf0-f54.google.com
	[209.85.215.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BAB1E00CFF
	for <yocto@yoctoproject.org>; Sun, 15 May 2016 10:42:28 -0700 (PDT)
Received: by mail-lf0-f54.google.com with SMTP id m64so108953741lfd.1
	for <yocto@yoctoproject.org>; Sun, 15 May 2016 10:42:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to;
	bh=BdAQhn70PpzXLpTgKSVQRmzqYC9uasfNszA6+Ef97AE=;
	b=ozq9oNKvR/h8ZVToH4M3wofgLkWZzulS49bWYUqSfYBPA902Nf6jfFptRLolxLYbxd
	iX+k9y0A3vncMBk1886VVFOkkxtH9MzmN9ZjofTI0/yPwguM6xmCoXdYC9OPB+yVwH/j
	kw8updYLKipta1RuZODKx6T1iyrpCCLwfFC1n6vJp7aY2A3zOTCNPzdXR5UkZIdU5r1v
	FK/R7AXgOM5BsYB4qbK4fk0hMMMk3LHpTPPw8DnRlnPD7Sv9FoZnno068PojuoQk5JtS
	uZK5DNMWBXQjUpKLoU/9P4AAW1AsCfgITQzx2xweAsOFrIILF/+PkUJ+84AJ+4WBrYzT
	k89A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=BdAQhn70PpzXLpTgKSVQRmzqYC9uasfNszA6+Ef97AE=;
	b=U+YwhNmPR9JNtuDf9vkpmOO/OPceu6KJzpH5YAnZ819qywpHCL4s7ZuhgnubgfUeue
	l2Iq4uTL/WVFf5mX19Cuc0gQZcxpHwJx7LouAuCp9QBf9KEP2J58LLMrAQW1EIIsDaZx
	UoxdbQr7oECGWlqfQxFKFd/JVoWQgjGdH4XE51iKgVlxHC35wIEhUv5L1cPrSMFpJ3g+
	MZq0K1BDA3Okv5cLTuVjjj5RJmGqsxB0JOv7rwrb4OnnyXHB+INJmP7EoNbsAeN/YD0K
	CCaXLIhYsN3KSNWZX9xI7OJjc0Arv45I89IgA1QNYtmil470ycWTzV/yxaINzGcLPgLL
	fZsA==
X-Gm-Message-State: AOPr4FUtc8ZM6ikZxzVHHIOvMMJhqU/05bhw2yc/FtzyCW4wtaHbdPl2T2TH7S48F6yYbl+X8YT0EmbCnqMTyg==
MIME-Version: 1.0
X-Received: by 10.25.18.102 with SMTP id h99mr10376607lfi.127.1463334146582;
	Sun, 15 May 2016 10:42:26 -0700 (PDT)
Received: by 10.25.35.81 with HTTP; Sun, 15 May 2016 10:42:26 -0700 (PDT)
Date: Sun, 15 May 2016 19:42:26 +0200
Message-ID: <CAFq4t4g_HXb2h4Vhy+ctcP_XQCPOTfRiyeWBTJf4DEnOO5VXaw@mail.gmail.com>
From: Peter Balazovic <balazovic.peter@gmail.com>
To: yocto@yoctoproject.org
Subject: build yocto/linux under windows
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
X-List-Received-Date: Sun, 15 May 2016 17:42:30 -0000
Content-Type: text/plain; charset=UTF-8

Dears,

i'm looking for a way to build Yocto/Linux and develop for my embedded
target i.mx processor platform under Windows?
Is there a way to build Yocto/Linux under Windows and to have
cross-compiler toolchain to be run under windows?
Actually I would like to know how to run cross-compiler toolchain under windows?

Thank you.


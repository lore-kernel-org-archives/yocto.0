Return-Path: <maillinglists18@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17E91E00C95; Wed, 21 Nov 2018 23:33:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (maillinglists18[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.53 listed in list.dnswl.org]
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com
	[209.85.167.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF5D0E00901
	for <yocto@yoctoproject.org>; Wed, 21 Nov 2018 23:33:04 -0800 (PST)
Received: by mail-lf1-f53.google.com with SMTP id e26so5820444lfc.2
	for <yocto@yoctoproject.org>; Wed, 21 Nov 2018 23:33:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=IYuGkrH9sbGAso9tgi1O75KsNVWf50v9KKvoG0HiJcg=;
	b=UFLIGEPobGjpeNu7q+c52D7sQJTRET7jUv2Rx7dreE5wIFO9joCWu9cXBz0z1lnjEH
	ns3vDOUKNGvrbm4b0g62TZSTV3XxtUUsIEtOCyHvgKOIFxJrswO0Glt4Q0hm3ywDhqYq
	gOvyARER+dE14Q3UE9ZNGGcJabCtLTxE2U202LHNnPZVcyi84beWgX1qOoM7rDOA6qu5
	4QZRiq67k+/u0PRfXNRJXhnD+sTJrXDKdVnJXdyFLqf9qkJ+fy8KOruYvkm1wHts7Uu1
	Go0FJmuviGWhLvQmvV3uZNfm8U6Odc2OJsFQv26SQKuKN4KsSRgE5LgTVHQIQhnMjZJG
	b4tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=IYuGkrH9sbGAso9tgi1O75KsNVWf50v9KKvoG0HiJcg=;
	b=ooGFpu2ls+mLirjdGn6xz+lMzc5sFZ9GkwI9UYbvL0q1sTNQqXp3R9IJdPPCPmtROT
	t5B18bLW42GI+KslsViLYctWotATMevFZFnYscosFNQX9hBfUTaKBZGLQ6oVXctH0QHh
	ZyTP9VwoDi8ArOQW2MnQvEyywh7ImhHJ8wLTcHgzR5Z2Z9q89TUh/QbRJIXEK9Pnue0J
	42Mr9GsTp5E59sdjxaS6r0lFxdjJGpesOuEZnZl3NWhm/8tAEOInafT4kVADD/PN12bA
	bAYvOg0/hQTHPwta1J5NapRzFo3A+DtQk/9AZL+JmpDDk6KpbqHF2f2UBawELQnHtTQa
	AO+Q==
X-Gm-Message-State: AGRZ1gILGhLSRzD/1AHQSBraigLj1DdGzr5J13gBVgJBLvKcEGRViDOQ
	ByNm2rGmIKDI9vpyA8bGKKhQaU0sfDbtlIy++WlWNg==
X-Google-Smtp-Source: AJdET5e6zr3c0RHUabJs2hIicEf7SRMDL/br5CAcZNKbAe4HWc09wr3lR8bgqJBTkD73DxQmwyudfibbB83xUjkA0/s=
X-Received: by 2002:a19:4ace:: with SMTP id x197mr5529030lfa.39.1542871983364; 
	Wed, 21 Nov 2018 23:33:03 -0800 (PST)
MIME-Version: 1.0
From: Teemu K <maillinglists18@gmail.com>
Date: Thu, 22 Nov 2018 09:32:49 +0200
Message-ID: <CAAmVmrpp8-JULPYsGhz6xVpm7SQ2sUWXDxo5+oLjjvrhSMpQJQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Forcing GCC version for native compilation
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
X-List-Received-Date: Thu, 22 Nov 2018 07:33:06 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I have project made for Yocto 1.7, but I'd like to compile it on newer
Linux distribution that default GCC version is 5.x. GCC version itself
causes some problems, because some things have changed.

There is also GCC 4.8 available, but it's not called 'gcc', but 'gcc-4.8'.

The question is that is there way to force yocto use 'gcc-4.8' instead
of 'gcc'? I did some searching and couldn't find any options how to do
it. I tried to making link to ~/bin/gcc pointing gcc-4.8 and having
that first in PATH, but that didn't quite work. I'm guessing path got
re-set at some point.

And before someone says. Updating Yocto to solve problem is not
solution. System is being updated, but current system still needs to
be able to compile.

-TeemuK


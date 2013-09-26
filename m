Return-Path: <hans.beckerus@gmail.com>
Received: from mail-ob0-f179.google.com (mail-ob0-f179.google.com
	[209.85.214.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14E6DE01638
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2013 01:37:26 -0700 (PDT)
Received: by mail-ob0-f179.google.com with SMTP id wn1so1508579obc.10
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2013 01:37:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=TWYJC/jFa7IT4I+Y8YK1K1hAJGg+n3SzBMbFkp5ouVI=;
	b=F5hu6XeHkf4+grB1srk0iOSfUxf2ZAftZhnSj0Mq8svLFBoaSlKH97VnlTwPrntCid
	l4N2YP94XlrCIPeFQL3JOUxbc8c8U3I7nz/sBjYGCMzJdc2cPvfmKq7nXLJxTP93yP6L
	gQXNC91EI9GrHiN3fWTNUnDmcXRgF8aaSODKsI3cjUH/jyb91mAYTBV41hP6ErDW1JYh
	K6PPf/ikSlIfMEKwkmDLOBAWaYcVlT2MynScfMgWiht+ddQXLYYThFfqK9In1Itjbwus
	VBJjcxFTEYLDmrWnVhz+PGUgT6lyTNbUOhatusAbiT8kGUo3ZDudb8NfrMm0ZWCV1Pqu
	tcVA==
MIME-Version: 1.0
X-Received: by 10.60.160.197 with SMTP id xm5mr349928oeb.53.1380184645518;
	Thu, 26 Sep 2013 01:37:25 -0700 (PDT)
Received: by 10.182.44.8 with HTTP; Thu, 26 Sep 2013 01:37:25 -0700 (PDT)
Date: Thu, 26 Sep 2013 10:37:25 +0200
Message-ID: <CAFyqS9qkBO+NOEOYH7O5-XY1kM5qdLPEHEb-W_y-1eKmqKsc3A@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: problem with perl and locale support in SDK
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
X-List-Received-Date: Thu, 26 Sep 2013 08:37:27 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi. We get following problem when trying to execute any perl programs
in the SDK environment.
This is an example of running 'perl -v'

perl: warning: Setting locale failed.
perl: warning: Please check that your locale settings:
LANGUAGE = (unset),
LC_ALL = (unset),
LC_MESSAGES = "C",
LC_COLLATE = "C",
LC_TIME = "C",
LANG = "en_US"
    are supported and installed on your system.
perl: warning: Falling back to the standard locale ("C").

This is perl 5, version 14, subversion 3 (v5.14.3) built for x86_64-linux

>which perl
/opt/poky/1.4+snapshot/sysroots/x86_64-pokysdk-linux/usr/bin/perl

Running this from inside the Yocto sysroot does not render the same problem.
>/home/poky/build/tmp/sysroots/x86_64-linux/usr/bin/perl-native/perl -v

This is perl 5, version 14, subversion 3 (v5.14.3) built for
x86_64-linux-thread-multi

Why is perl built differently for native and nativesdk? Is this
something that we can control?

Thanks.
Hans


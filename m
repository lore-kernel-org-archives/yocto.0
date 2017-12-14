Return-Path: <sherifomran2000@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B158CE00D71; Wed, 13 Dec 2017 17:58:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sherifomran2000[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f173.google.com (mail-pf0-f173.google.com
	[209.85.192.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 748BEE00D6D
	for <yocto@yoctoproject.org>; Wed, 13 Dec 2017 17:58:15 -0800 (PST)
Received: by mail-pf0-f173.google.com with SMTP id p84so2556080pfd.3
	for <yocto@yoctoproject.org>; Wed, 13 Dec 2017 17:58:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=FuoDrnUoxVk4LwYSTb9VGRpGhP/fGKFWvL/68VcAX6A=;
	b=bDHJyv2Help/yVLyA2e5e2tepEcIrOHv5r0Cn3VOqKVrP1iV3R3nY/G0CYKd0Jaz0N
	tSbh9jUK9ddya3he5P4v3rhXBoWNQ2EK9XTnS9w2NLxe/1fiGUecxpOW3vycUkq4ux8s
	UIdsRbisb0Rycq4FH1dK6B3UruAqpNaYZjPowV0+g9j27gjhfEzqT+uPoVuqm+WpkMrN
	Z/QFn0YxR+5NzEqQu0dlAq2hsmHZ+aaHVCjFeRorcW4RKN/msTvkPjpCA49Bz7JtO0oX
	gy76ppM5zhvcI7W/ZXHMfvZwoOr0tAuq0ywClSCoS8y1Ho+NXUZAxJAfZVfacA/3Q4I0
	oRzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=FuoDrnUoxVk4LwYSTb9VGRpGhP/fGKFWvL/68VcAX6A=;
	b=CjedXmc8iVu2sksNA4Gbr/g1Wm0zul4SM5m9/tOT6kozLb0O0fBFvmUFy+kXgP91M9
	a/m+RFEF2Pd1kx5JOjiNYvCyOgo4QgrpZuUlcHSrzrzqmMbvqBE6SKCH4rTvzzPPHZmW
	P4mqqjjrOMqgZfa4Lfnx8K8Cnns+q7oDMkM89vZAFY6W9lL1J5ChttrUGnAtMo4GeEzu
	70AZwNHqKKww0uykM20VId17riQlF5NCLBaelE02zhAA1QBRbdaPnaObJNMz3r7HBh7V
	ISJBSkvywJze6mQNcJntfQbU23oH7zRAq9teGtkYFnR5RcMmYMEohgrqWEwoT/hsVsKe
	LFsg==
X-Gm-Message-State: AKGB3mKgBKpWz4WgNrOynlakYHLAkrgrQkFuDQgnemqXKB3mpn2DpRPn
	eNa+kx8q6Q08wwGwfk9ypfUboAQhubSfqNp5Uhc=
X-Google-Smtp-Source: ACJfBos0KdLV/jlaqAZQ9Am0qphbzopXd3/2YIU2BsYGOogYSXLFP3Tr2dlE59bcDvz8MVwgXItRUVYRnAlfogJCTec=
X-Received: by 10.98.238.8 with SMTP id e8mr7945072pfi.23.1513216694403; Wed,
	13 Dec 2017 17:58:14 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.138.69 with HTTP; Wed, 13 Dec 2017 17:58:13 -0800 (PST)
From: Sherif Omran <sherifomran2000@gmail.com>
Date: Thu, 14 Dec 2017 02:58:13 +0100
Message-ID: <CAPb0b+MTepwNFB6KEybbdH9kYaox-N54=gFsuyWa9Xn+zK2MoQ@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: [meta-raspberrypi] linux kernel rt
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
X-List-Received-Date: Thu, 14 Dec 2017 01:58:15 -0000
Content-Type: multipart/alternative; boundary="f403043bfcc489c79f056043372d"

--f403043bfcc489c79f056043372d
Content-Type: text/plain; charset="UTF-8"

hey guys,

any body tried the real time kernel? I get an error, it is snot in the
compatibility list.
can we skip it?

thanks

--f403043bfcc489c79f056043372d
Content-Type: text/html; charset="UTF-8"

<div dir="ltr"><div><div><div>hey guys,<br><br></div>any body tried the real time kernel? I get an error, it is snot in the compatibility list.<br></div>can we skip it?<br><br></div>thanks<br></div>

--f403043bfcc489c79f056043372d--

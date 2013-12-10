Return-Path: <olof.johansson@axis.com>
Received: from ra.se.axis.com (ra.se.axis.com [195.60.68.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD6F1E00785
	for <yocto@yoctoproject.org>; Tue, 10 Dec 2013 07:53:35 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by ra.se.axis.com (Postfix) with ESMTP id 6011C3F20F3;
	Tue, 10 Dec 2013 16:53:34 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at ra.se.axis.com
Received: from ra.se.axis.com ([127.0.0.1])
	by localhost (ra.se.axis.com [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id aFaOp8dl1XdZ; Tue, 10 Dec 2013 16:53:34 +0100 (CET)
Received: from boulder.se.axis.com (boulder.se.axis.com [10.0.2.104])
	by ra.se.axis.com (Postfix) with ESMTP id 2C06A3F20E9;
	Tue, 10 Dec 2013 16:53:28 +0100 (CET)
Received: from boulder.se.axis.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id 160FB9F2;
	Tue, 10 Dec 2013 16:53:28 +0100 (CET)
Received: from thoth.se.axis.com (thoth.se.axis.com [10.0.2.173])
	by boulder.se.axis.com (Postfix) with ESMTP id 0AFB5355;
	Tue, 10 Dec 2013 16:53:28 +0100 (CET)
Received: from xmail2.se.axis.com (xmail2.se.axis.com [10.0.5.74])
	by thoth.se.axis.com (Postfix) with ESMTP id 0950B3404E;
	Tue, 10 Dec 2013 16:53:28 +0100 (CET)
Received: from axis.com (10.92.17.1) by xmail2.se.axis.com (10.0.5.74) with
	Microsoft SMTP Server (TLS) id 8.2.255.0;
	Tue, 10 Dec 2013 16:53:27 +0100
Date: Tue, 10 Dec 2013 16:53:26 +0100
From: Olof Johansson <olof.johansson@axis.com>
To: Diego Sueiro <diego.sueiro@gmail.com>
Message-ID: <20131210155326.GV31548@axis.com>
References: <CAMCfZKHWGAQJ95K=T-0xpQRoO+RKvgvx9AWKMP9SUPMjAnTUDQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMCfZKHWGAQJ95K=T-0xpQRoO+RKvgvx9AWKMP9SUPMjAnTUDQ@mail.gmail.com>
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: busybox 1.21 ash bug?
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
X-List-Received-Date: Tue, 10 Dec 2013 15:53:37 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

Hi,

[Sorry for duplicate replies, apparently I wasn't subscribed
 with the right email address.]

On 13-12-10 13:22 +0100, Diego Sueiro wrote:
> Recently I switched to dora branch which builds busybox 1.21.
> I was using dylan branch with busybox 1.20 and the some shell
> scripts stopped working.  There is a problem related with "for"
> statements.
> 
> For example, on script below, it runs nice on busybox 1.20 but
> on 1.21 fails with the output: "./script.sh: line 3: syntax
> error: bad for loop variable".
> 
> #!/bin/sh
> 
> for (( i=1; i <= 5; i++ ))
> do
>  echo "Random number $i: $RANDOM"
> done

That type of for loop is a bashism; as far as I know and can
tell, busybox ash does not support it (even with ASH_BASH_COMPAT=y).

The code that is executed when the parser finds a "for" token:

ash.c: parse_command(void)
    ...
    switch (readtoken()) {
    ...
    case TFOR:
        if (readtoken() != TWORD || quoteflag || !goodname(wordtext))
            raise_error_syntax("bad for loop variable");

Are you sure it's using busybox ash when it actually works? I can
reproduce the error message your are seeing in both busybox 1.20
and 1.21.


RANDOM is also an extension, but one that is supported by busybox
(or rather, can be). The default defconfig in oe-core does not
enable it, see ASH_RANDOM_SUPPORT.

-- 
olofjn


Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.2220.1587516141565975678
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Apr 2020 17:42:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@assonance-org.20150623.gappssmtp.com header.s=20150623 header.b=ZpEGm7tt;
 spf=softfail (domain: assonance.org, ip: 140.211.169.56, mailfrom: aaron@assonance.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C183E01A3F; Tue, 21 Apr 2020 17:42:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.167.178 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52412E019F9
	for <yocto@yoctoproject.org>; Tue, 21 Apr 2020 17:42:18 -0700 (PDT)
Received: by mail-oi1-f178.google.com with SMTP id r66so445144oie.5
        for <yocto@yoctoproject.org>; Tue, 21 Apr 2020 17:42:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=assonance-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=J7AoA7reHnFVGn095qFI56cuFEq5xZj33hcySulU2N4=;
        b=ZpEGm7ttTb6qBZpP0UeBhmoz7qbyuee4wLFjD+BDz/KhXIbKd+AKuKDoWpWoUUTO9V
         Z1uzoI5rB9MYctZnobYp0USoesRI9XiJvwC67V7wzQAU3gFiackXHmuXv+k0HHMKwifi
         H1jhks+7m8MPdXzfTCjAS/uwVEso+mKweWatQDFnrYNhkFEp89G83AL9doEsq2u0sk+v
         UJT3MY+ayP0uS2KKrZzXV0ieloDEjU0Oj4Oe6hX/r7Ri0Eo+xmjfFYi6dLTiy2ZbZ2Wj
         EbGsuuJj75cZn06uKZRcetAYWXm9iha0sLghTXos1m/hxBGb5xngqqYIYHjqoo4Wsflm
         jYRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=J7AoA7reHnFVGn095qFI56cuFEq5xZj33hcySulU2N4=;
        b=F64e+DkDt9nI1leF9O2cARWyU3IGxXVrkQNhO6AqHaL27tHtBEC793sX9yjx7t6zsy
         tH3gYp9exjAp3NMrbcFKuqZ53Wn8yT1cEGt/4VxWcROxq1GJ2JkItnRy07IaF/3NDyvM
         O8PopsEEPj/eru1T0XVgwGwLFb6Xlb3b7spinLP144F6RUk0RvkXrTCKWIf3rTZkpgip
         ySGLT2G1PCT5XsdyxGmRYfj5WpVqHql+8KHqS6DO2I2bxv4i2z242zNU2HA71058N9tI
         oGsYfrQhMFAjTvnivrTil2g9a/1Q+RVYcUAh8d2h5bVlzKplTWgUuJOhUT0+9P83SP4P
         SbZg==
X-Gm-Message-State: AGi0PuZW9AETcodecRtNefmGUWIkGjB6TRUHo1DUyDqrbasWtSV/hPTA
	yZXXYhZPrFFqrpzoFXpdIeO5ODNBRLjo4EQoQmXiJ/OUy3FlfA==
X-Google-Smtp-Source: APiQypJdybQrLIrjOWdFTfgSKAijsavdmY7TEAAdNmEYJJKXrWGTTeQyDcyRLZLp0yVe9UDRE9GfQWch2wdNGMeoIcI=
X-Received: by 2002:aca:5588:: with SMTP id j130mr4907782oib.144.1587516137709;
 Tue, 21 Apr 2020 17:42:17 -0700 (PDT)
MIME-Version: 1.0
From: "Joel A Cohen" <aaron@assonance.org>
Date: Tue, 21 Apr 2020 20:42:06 -0400
Message-ID: <CAFSZm+jNAuR=8ppSb7b9aMddFdXA_VJNjF1oKHgLssmoiqA0dA@mail.gmail.com>
Subject: FYI: "which" program is broken by default on centos-8
To: Yocto list discussion <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000076b46605a3d667fb"

--00000000000076b46605a3d667fb
Content-Type: text/plain; charset="UTF-8"

Centos 8 'which' installs an alias by default: alias which='(alias; typeset
-f) | /usr/bin/which --tty-only --read-alias --read-functions --show-tilde
--show-dot'

This comes from the which rpm, in /etc/profile.d/which.sh

This breaks in OE, I'm guessing because the shell used doesn't support
whatever is going on there. You get a mystifying message about unexpected
parentheses.

To fix for the moment, I just got rid of the alias, but is it worth adding
a check or something?

Thanks,
Aaron

--00000000000076b46605a3d667fb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Centos 8 &#39;which&#39; installs an alias by default: ali=
as which=3D&#39;(alias; typeset -f) | /usr/bin/which --tty-only --read-alia=
s --read-functions --show-tilde --show-dot&#39;<br><div><br></div><div>This=
 comes from the which rpm, in /etc/profile.d/which.sh</div><div><br></div><=
div>This breaks in OE, I&#39;m guessing because the shell used doesn&#39;t =
support whatever is going on there. You get a mystifying message about unex=
pected parentheses.</div><div><br></div><div>To fix for the moment, I just =
got rid of the alias, but is it worth adding a check or something?</div><di=
v><br></div><div>Thanks,</div><div>Aaron</div><div><br></div><div><br></div=
></div>

--00000000000076b46605a3d667fb--

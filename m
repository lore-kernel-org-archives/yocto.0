Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.5721.1582373491561946812
 for <yocto@lists.yoctoproject.org>;
 Sat, 22 Feb 2020 04:11:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=B9B1Gc3Q;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA8D9E0172C; Sat, 22 Feb 2020 04:11:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (jupiter.hce[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.174 listed in list.dnswl.org]
Received: from mail-il1-f174.google.com (mail-il1-f174.google.com [209.85.166.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00A23E007AE
	for <yocto@yoctoproject.org>; Sat, 22 Feb 2020 04:11:29 -0800 (PST)
Received: by mail-il1-f174.google.com with SMTP id f10so3910997ils.8
        for <yocto@yoctoproject.org>; Sat, 22 Feb 2020 04:11:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=5aHbHYqNG5JIvkc2gceulLrS6ucvhrco8+DdKXMlYU4=;
        b=B9B1Gc3Ql4CBMsoAUny2LqcW7GMvYhbFqNnWSVsJIVAk0fHXXSUXrLKnGT0xa9XEFK
         xMLRyHABWJ7pgTsCAX+b9gfanoJ6RhWyThdRany2+nDQeQzf9RqJICavCXdgSBDP5f3a
         yPnK8ObEaD+gaQoUtJopwruwszkrJW8WLdKICGvLJVl3qDbqyiYwZKSnGX/b/2NAkJ2K
         YU67dE1qH1oN8F+oLQ/y4xOQi3clpI8LQwTwZHuUtW9kiBWapKxjVmmHVDH5jPlSCoRL
         7OOcU/H6xCvAKo/TE8oUSgKEeEdo+Qe+CIs/27HbFJWxZ9bm9VxjdOYlXCBl1upZu07F
         JwZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=5aHbHYqNG5JIvkc2gceulLrS6ucvhrco8+DdKXMlYU4=;
        b=e0oIGvs+nNM6lWp313jeb6tek+vCH3RvsTlrQh2nMkWcQl9td3PQj+tskNQu+kDbwo
         oESleGldyY/6KpCO1El3RvtT1ls1dS/MkZaReti5VJPk6+U7afSn2CtKnTLXpjpABcqm
         trKkBH+AYfFo6k27Ri9oNZK7T5I6jEW9mtvaaDmMeF7kMbNfoeAh3poMZ1EXsYVNC3zv
         2KJTO/wlR8ZombfoAOj/yVzHQsHA/S7XL9ntZWbygDRUJ5ia/5gbB8o70R+yD/kn4Q79
         RbQsfIM1oobNko7cuHHcDkhbiFLDeFXlnEic4ZeeISG2d5OJVsljx6mXo4x4A4OFPcH2
         hEEg==
X-Gm-Message-State: APjAAAXkUZsYH6XmfxoDcvUrT0p+Pck8aNDjOLpIfo9DMeX4s+7i3JIQ
	5WIcUDehVAFmm2hFLFXKxSldM7jSudP+fC8v2Aymow==
X-Google-Smtp-Source: APXvYqy9+ri+ort8iUOcJf3BgxA2PzWSlg3viICmiuwFwAUJ+NPRKMO3mYk71GKaN3okka6xNxd4UGWk5RYCZ4mlgTg=
X-Received: by 2002:a92:216:: with SMTP id 22mr42581404ilc.53.1582373489265;
 Sat, 22 Feb 2020 04:11:29 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad5:5d0d:0:0:0:0:0 with HTTP; Sat, 22 Feb 2020 04:11:28
 -0800 (PST)
From: "JH" <jupiter.hce@gmail.com>
Date: Sat, 22 Feb 2020 23:11:28 +1100
Message-ID: <CAA=hcWRdUPJ3W5VsQVpckNk8WmVGAh7vVUzMOHVm1mPiLX+y4w@mail.gmail.com>
Subject: Yocto systemd service have different enviornment than the root
To: Yocto discussion list <yocto@yoctoproject.org>
Cc: Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

Where is the systemd service environment set from?

Here is the systemd service env:

SHLVL=1
JOURNAL_STREAM=8:30355
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
INVOCATION_ID=fbd7ba8782544a828902301423a98196
LANG=C
PWD=/

How can I set up systemd service to use the root environment set up by
/etc/profile? It is not neccesary to set up in my.service file, it can
set up in a shell script my.sh called by service file:

ExecStart=/usr/bin/my.sh


Here is the root environment I login to it, set up in /etc/profile:

# env
USER=root
SYSTEMD_PAGER=cat
SHLVL=1
LD_LIBRARY_PATH=/data/lib
HOME=/home/root
OLDPWD=/data
HUSHLOGIN=FALSE
PS1=\u@\h:\w\$
LOGNAME=root
TERM=xterm
PATH=/usr/local/bin:/usr/bin:/bin:/data/bin:/data/sbin:/usr/local/sbin:/usr/sbin:/sbin
LANG=C
HZ=100
SHELL=/bin/sh
PWD=/data/log
EDITOR=vi

Thank  you.

- jh

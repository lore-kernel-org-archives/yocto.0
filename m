Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.1453.1580751276891563098
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Feb 2020 09:34:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=s42QVxsY;
 spf=softfail (domain: linaro.org, ip: 140.211.169.56, mailfrom: ryan.harkin@linaro.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71BBBE016A1; Mon,  3 Feb 2020 09:34:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.222.173 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2EBE2E00D33
	for <yocto@yoctoproject.org>; Mon,  3 Feb 2020 09:34:35 -0800 (PST)
Received: by mail-qk1-f173.google.com with SMTP id w25so15038277qki.3
        for <yocto@yoctoproject.org>; Mon, 03 Feb 2020 09:34:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=yZOeCJyHm12Fv4v5TrXRha4DIdKa2DYD/RbwvAYJqQk=;
        b=s42QVxsYcnSekED9rkP3zr57Fw/gP2lnq2O6XsSfcr+xP7u7/t3fqemupgVFCWSJFD
         FsvaHWgzLsJeezjkjfFpT5gvsS6pzG+vjKnPm5ADXiC3OoaxcCrGb4EJsRWdqrAqPPmJ
         CfFlEoHEeuwsYEpHyJmIJTNqd9eLY4GMcLwGgLfcaVfr9iS7pbmLHROaIu6QHJdtpGVT
         Zm1lv7vWIq6yDJ3H+z9afvyCihf0wNEJUyxoAMDGtlWzgCxPvk6ZdSJBvt+FLM2VGmvg
         MiR8qN5tXKwZtWyltNLNo/iSOtC5NhhCKremTHyY4TfOaRmVZY3iT0CxpMn2GfGMf5k7
         k9IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=yZOeCJyHm12Fv4v5TrXRha4DIdKa2DYD/RbwvAYJqQk=;
        b=TgQfAo6O96MYlwevd4/Z1tu2AcX8M525/bMKqBONHzbyUuEroSxu8gLh6zBjrz90Wp
         yL5LBWy5Z5ybdzftmqANCf35vjgf6yoLRv2NeNlHvCN3lUMPDY4f5qgyZsSJvUWbgU7x
         L+/op5YH54ZamTHxL+Q2ssMlYDdOUXoB28ObXYsRrFULvQctD30ZrNgnsKLuWcEhlhJw
         pBHiKgYJJIAYW3DCo2mabxr7lKiN0IzXgXX+8UFqbYQYuCmwq3SAxWUeXI9he3hXY8HX
         DFOFx9U+ZZKv3ceDX3bdQ0g+hn6zb5YL834UtHnY0fv4QR+y36qVC1PPtSWDvipgai0r
         9blw==
X-Gm-Message-State: APjAAAX08k2NlrGB2by64xwCCL/j+Fo/4WKpwoFk6tEDveHkOg3K8PvD
	mxPGL/3dopre/BybyMOw1RGESZfJTj5vmEJtLxAiYYAPioY=
X-Google-Smtp-Source: APXvYqxwTr+eVIsu99yoR5+kQHiq9KKd2Nhhy1JEsu/44TCajIereG09llI1gBAaxKMiOFhHwbllf3wDRZUA3J5V0U4=
X-Received: by 2002:a37:488f:: with SMTP id v137mr23890945qka.16.1580751274057;
 Mon, 03 Feb 2020 09:34:34 -0800 (PST)
MIME-Version: 1.0
From: "Ryan Harkin" <ryan.harkin@linaro.org>
Date: Mon, 3 Feb 2020 17:34:23 +0000
Message-ID: <CAD0U-h+q4k-EywV8XEfZ2nsoHoRQaNyRy77E2kRLuos8dAmNTA@mail.gmail.com>
Subject: Building and selecting multiple kernel versions
To: yocto@yoctoproject.org
Cc: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Content-Type: multipart/alternative; boundary="0000000000002b3882059daf56ed"

--0000000000002b3882059daf56ed
Content-Type: text/plain; charset="UTF-8"

Hello all,

I'm looking for advice on how to support multiple kernel versions in my
distro with minimal changes, and minimal disruption to my users.

Some background:

I have a legacy Sumo based distro with an image config, and a machine
config, with the machine using a 4.9 kernel. Last year, I upgraded
everything to Warrior, and moved to a 4.19 kernel.

Some of my users who are migrating from Sumo, wish to keep their 4.9
kernel. So I'm trying to work out how to handle this in the simplest way.

I know that I can add a 4.9 recipes to my Warrior branches, set
PREFERRED_VERSION in my distro.conf. But I don't want to change the default
preferred version globally. And I don't really want users to update the
distro.conf. Ideally, they should be able to take what I give them and
"just" build it to get a 4.9 or 4.19 variant.

Ideally, I don't want to *have* to build both kernels and then create two
images. I expect that will cause confusion and lead to people flashing the
wrong images. So I'd prefer it to be either/or. Of course, I have to test
all of this, so I want to be able to build both variants in CI, which makes
editing distro.conf even more  unattractive.

I've considered giving them a "setup-environment" script that edits the
distro.conf for them, but that seems a bit hacky too. And doesn't really
satisfy my CI requirements.

Has anyone done this before? Or do you have some advice about how I could
handle this?

Many thanks,
Ryan.

--0000000000002b3882059daf56ed
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello all,<br></div><div><br></div><div>I&#39;m looki=
ng for advice on how to support multiple kernel versions in my distro with =
minimal changes, and minimal disruption=C2=A0to my users.</div><div><br></d=
iv><div>Some background:</div><div><br></div><div>I have a legacy Sumo base=
d distro with an image config, and a=C2=A0machine config, with the machine =
using a 4.9 kernel. Last year, I upgraded everything to Warrior, and moved =
to a 4.19 kernel.</div><div><br></div><div>Some of my users who are migrati=
ng from Sumo, wish to keep their 4.9 kernel. So I&#39;m trying to work out =
how to handle this in the simplest way.</div><div><br></div><div>I know tha=
t I can add a 4.9 recipes to my Warrior branches, set PREFERRED_VERSION in =
my distro.conf. But I don&#39;t want to change the default preferred versio=
n globally. And I don&#39;t really want users to update the distro.conf. Id=
eally, they should be able to take what I give them and &quot;just&quot; bu=
ild it to get a 4.9 or 4.19 variant.</div><div><br></div><div>Ideally, I do=
n&#39;t want to *have* to build both kernels and then create two images. I =
expect that will cause confusion and lead to people flashing the wrong imag=
es. So I&#39;d prefer it to be either/or. Of course, I have to test all of =
this, so I want to be able to build both variants in CI, which makes editin=
g distro.conf even more=C2=A0 unattractive.<br></div><div><br></div><div>I&=
#39;ve considered giving them a &quot;setup-environment&quot; script that e=
dits the distro.conf for them, but that seems a bit hacky too. And doesn&#3=
9;t really satisfy=C2=A0my CI requirements.</div><div><br></div><div>Has an=
yone done this before? Or do you have some advice about how I could handle =
this?</div><div><br></div><div>Many thanks,</div><div>Ryan.</div><div><br><=
/div></div>

--0000000000002b3882059daf56ed--

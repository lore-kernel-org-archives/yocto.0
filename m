Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.12998.1583947603206493589
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Mar 2020 10:26:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=JfVBnlSZ;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: wpdster@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2E20E01825; Wed, 11 Mar 2020 10:26:42 -0700 (PDT)
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
	*      (wpdster[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.219.43 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0661E01823
	for <yocto@yoctoproject.org>; Wed, 11 Mar 2020 10:26:41 -0700 (PDT)
Received: by mail-qv1-f43.google.com with SMTP id r15so1248051qve.3
        for <yocto@yoctoproject.org>; Wed, 11 Mar 2020 10:26:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=ZVLzuAJwUIGXoEPUDLMLNeGIR/Qkk4xRQstiajG6QN0=;
        b=JfVBnlSZKeAgJX+ORs/3dmXUSutifbFP/VarfHWYlFgOGwlu8dJTnkzT8FKainckia
         gqwaPM0/04KWSQQkv+pmeS4Fzi9VcP214yXnjpJcZzaavJUJaj47EUcYxTrOoBccNisa
         eXlx8UsW/1VAifQA+xrQkdvzO08Sww7Gdx2ElZGCTN/Y6RE6aSTTdH/8Aqv+R/A1Sgm5
         +c2q5i5kkpM8EbhfP4iEkIPLB9ZUWM+gHl34eCIQo3RzGlatNxKMvt6A4Qsae7lqeaA7
         Ez1mZhstnuSAxCOywYOMWxIp2u9WK7WEfJj3AV9iIMTMJ6di3eAGY6PDrUPqX10KTw3C
         LQBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ZVLzuAJwUIGXoEPUDLMLNeGIR/Qkk4xRQstiajG6QN0=;
        b=tt+ukxoAOmNZLXsDebXnN/9gGL1HtZfnODKIHGE+Wk6UifuIE8NCwMcUI3fyYN7VAf
         xLwAU2Hd6gZm37cS60BjYTfEUhoTmqkxzkVsajFc2xSAJJRJddSVNyPNvmO67IfGFZXh
         3/rJysgHvv/MQvIl23u0Qp6TyrczZ/2P5RWtVOd30s7OAio7W1VhWjH+v8C2erg1Myn9
         wWrf7JUlTUBqKMbGo2tnaMO+MaT4nC3p31Jrg6cJGXoRF5i8OwQnQGrmxjmCa7BDbL4A
         MEoqLSH3aFlg20SC0d+o+I++mk9d9PMK6uutk+f1OzqNR+q3g1txmabw2xf5ZY8J6jeN
         RBag==
X-Gm-Message-State: ANhLgQ1/O07s/Tr6B0lg+Gc31QMCTObzikCCOiiid+EzKqT1Pc9ZWS6N
	L0lpa5ckIS3aYTHSA/phKl9jhYK3nkqkC+5XWHyqxg==
X-Google-Smtp-Source: ADFU+vsrYDCmV77I8mVcjVrzS3y1IGrAF4OJ6/dtaeJGSxg6s5qiv5osP2lRdr5G+IeFv6/nvwX/LW0RU7A7zBOSjn0=
X-Received: by 2002:ad4:4829:: with SMTP id h9mr2139840qvy.135.1583947600499;
 Wed, 11 Mar 2020 10:26:40 -0700 (PDT)
MIME-Version: 1.0
From: "Patrick Doyle" <wpdster@gmail.com>
Date: Wed, 11 Mar 2020 13:28:16 -0400
Message-ID: <CAF_dkJBpN2A5C5vCfWsv=07QBtswLpqLo94yKt+ifEF-Cza-Rw@mail.gmail.com>
Subject: Splitting a recipe into multiple packages and inherit extrausers
To: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

I may be overthinking/overtweaking this but...

I have a recipe with that creates a number of executables, one of
which is a daemon.

I have split that daemon off into its own separate package using the
PACKAGES =+ "${PN]-blah-blah-blah" construct.

I want the daemon to run as a non-root user, so I have "inherit
extrausers" in my recipe.

Suppose I only wanted to create that extra user iff the package
containing the daemon was included in the image.  Is this possible?
How?

--wpd

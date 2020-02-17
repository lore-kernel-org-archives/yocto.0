Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.6998.1581934987508787401
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Feb 2020 02:23:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@toganlabs-com.20150623.gappssmtp.com header.s=20150623 header.b=PtFPOiHW;
 spf=none, err=permanent DNS error (domain: toganlabs.com, ip: 140.211.169.56, mailfrom: pidge@toganlabs.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A912E01587; Mon, 17 Feb 2020 02:23:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.222.174 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A01E4E0049C
	for <yocto@yoctoproject.org>; Mon, 17 Feb 2020 02:23:05 -0800 (PST)
Received: by mail-qk1-f174.google.com with SMTP id c188so15673499qkg.4
        for <yocto@yoctoproject.org>; Mon, 17 Feb 2020 02:23:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=JRZYaVs3EwHRtEOHBB7OIDzkR0TIzFiooM0xBSKBBJ4=;
        b=PtFPOiHWgT8yuYLiBfQK7teI7evfHuHT9iPffK9u8b7jZkUMk+Q4z3JhjlzVTuVgG9
         HReUoF1aOjrwLfjFlzh8jUQHUT02+UhspeVDLICbqmCKK8NSolsMJrDev6osEr3Tsbdp
         se9HUvVv6dWJt/UfSjiv/OOswF4oFZKRZgeRT54ebAJ+KgdLH1UehYtBO0kAQ8ot31GC
         S2GjDjnzvQJu+Y6Z5GwDPfCbPnx0vd06+Dqpm/ePfF+FvWg7UgKAlcCUl+rA0kOz4p/Y
         xAV2BimJ8mkAtqjuOjdG10fOAw7LJmApX4Xjogs2hTk7TMrP2/OAVk/jNQkBx98GOk1F
         RYjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=JRZYaVs3EwHRtEOHBB7OIDzkR0TIzFiooM0xBSKBBJ4=;
        b=dx+G6m1IdkgiLK8yX990qMjGloIohSa6L+B5u8UXx4ZnnKlbGsditoCbvJBhTfJU+N
         OKYEdpfxgC0tvZsd65cHaz7XMuffLuLdE7hLphQOY4Ttk0WQDhcjIIQDB7sosmZESN0o
         JxLydNb4d4UCLv5t1dWV8tQq0wkmcnlRhjOdaMOgCDHd8SUKJ4rxJImFEMceVeLFkc4a
         LF6hq6Fn9xt884f7eC0+PbN9vUy6JJfV8Y/fktBdJiYnd7oPvwZlipL3+YYCVNcYbgr9
         cDBaDLKQcvEHkEElrt+YWM3BMqLgBo3OXhb5oAPRffc8JL012qty6pEcfrfZm+DlT1F+
         8TEA==
X-Gm-Message-State: APjAAAWlbHO1Rnz6ZGf29WenZSJUNWRCuPYbOEJp7xg8czt3lyApdc5a
	yizzWS0+4jkEaKj+jsPlkQfNMU0nQuvV1/XPTrojSfkgnhbrAA==
X-Google-Smtp-Source: APXvYqzB5Fb3kLOfYD1bqOdVP0zfPh0ZPYsLwwVlFSOB7XsIn8A+yeYFEGCkR5gx8OjDcmWOdmOb5XQqls45Ch0gJGs=
X-Received: by 2002:a37:a786:: with SMTP id q128mr12452262qke.448.1581934984626;
 Mon, 17 Feb 2020 02:23:04 -0800 (PST)
MIME-Version: 1.0
From: "Eil?s N? Fhlannag?in" <pidge@toganlabs.com>
Date: Mon, 17 Feb 2020 10:22:53 +0000
Message-ID: <CANik3vEvr22hCSZcDnENcFPCcZaF+LvTN+9UPfZH1Oj93j-7rA@mail.gmail.com>
Subject: meta-java on git.yoctoproject.org has gone away.
To: Yocto <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

It looks like there is an issue with cgit or something?

http://git.yoctoproject.org/cgit.cgi/meta-java

returns 500 Internal Server Error.

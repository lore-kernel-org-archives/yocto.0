Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.490.1574809509949945236
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Nov 2019 15:05:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=MI7EBWwF;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7AA1BE00C9B; Tue, 26 Nov 2019 15:05:09 -0800 (PST)
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
	*      [209.85.166.50 listed in list.dnswl.org]
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com [209.85.166.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB739E0091A
	for <yocto@yoctoproject.org>; Tue, 26 Nov 2019 15:05:06 -0800 (PST)
Received: by mail-io1-f50.google.com with SMTP id b26so20693331ion.7
        for <yocto@yoctoproject.org>; Tue, 26 Nov 2019 15:05:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=hVcNB0yP0UDS2uRePz36wNEEZU/fdkMnO75EKVL+t0A=;
        b=MI7EBWwFLIyTlxx+KmgcmZurHn3LSKBWy8FE9CwE+rEyZmCkSbBDWY3xIwtAmdCcpN
         rqe4NgqxR4PeFhRhCw0S9DGD3tqxe2VIBiUymgUcKHKKG+wPfZ7DatJCnCm/zjyXBevi
         rv2gpEk2/akwA+H9dvbCRqEQfil/fSPO8ag4KrTBE0FnQOdmdly2QRL1NCsX3SSXrgJD
         SUAK/eoXTkwd67Za+a6GcpOH/2yxN92L73/p4W34u8Sl3W7pziXJXugKC7g23rFEiq73
         khCrAKCmv8AZkSjgU+GbQ2HcpBOtapUq6ZLuPx9ToBvGT4fsbFNLjoqUAbgsCvkKXeDg
         T8/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=hVcNB0yP0UDS2uRePz36wNEEZU/fdkMnO75EKVL+t0A=;
        b=MaYLHgs6jAzdqLsKYsQfCFPzmx2q2H0D/5k6aJEfUUGwX9NIJUSYD3MeGXYj3KXDEt
         iPfG60yiknUmCxszCWPLLHidx7hHHhiMQqXPWGz0W6hZBahWOrLwjFornri1U4mCcQ/i
         HVTSQIunU/NM6dOGz8hOrJEE3s2KdQfzl0xTsRchpC5T7BMhuXTi6IWx0lQEj25hIDMj
         k5V77h/uz92UJ7WvvMz/GRZGvkJ0ALnT0wXY7OT5YXRkzPLpvTowex9CHWT82fmtGrpx
         EIR/29Tz8n/fs/eZ/fQVY4PNUq9PHoIJNZ0EvJOnIpDC4OX2sGfinC9xn2RCk7OWGZuM
         nyGQ==
X-Gm-Message-State: APjAAAU4J/QFLJUznYKwDfJx4Qhb3OFZW9jQ542ND6/YZ4EBx9wxPluZ
	gc5hLN/YCX9XiVe+J3B7caPR/kb9B06BW7rBbchdK4AM
X-Google-Smtp-Source: APXvYqyvmpPJn71wifTdrJRApMnOcs0bU8h/8WrSQ7SCLO8hfwJ6KQIVEzsYPcKRBMN32wWdq7KFJ0npmTELjE3mXnw=
X-Received: by 2002:a05:6602:251a:: with SMTP id i26mr33212010ioe.302.1574809506209;
 Tue, 26 Nov 2019 15:05:06 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ac0:f24e:0:0:0:0:0 with HTTP; Tue, 26 Nov 2019 15:05:05
 -0800 (PST)
In-Reply-To: <CAA=hcWRAe4gHBs6gZ3f9kUWu-N_oFEtKy2j2y2UB4aYuXY8kWg@mail.gmail.com>
References: <CAA=hcWRAe4gHBs6gZ3f9kUWu-N_oFEtKy2j2y2UB4aYuXY8kWg@mail.gmail.com>
From: "JH" <jupiter.hce@gmail.com>
Date: Wed, 27 Nov 2019 10:05:05 +1100
Message-ID: <CAA=hcWSmL1FDb-nN_r_Mpryynjpy5cscJT3BjXoZmYAZQVveRg@mail.gmail.com>
Subject: Re: What signal type from DBUS query to get 4G LTE singaling strenth level, RSSI?
To: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Apology, wrong mailing list.

On 11/27/19, JH <jupiter.hce@gmail.com> wrote:
> Hi,
>
> I am using dbus to query 4G LTE signaling strength level from
> "Strength" and get -80 or -100, is it from RSSI?
>
> dbus_message_new_method_call("net.connman", "/",
> "net.connman.Manager", "GetServices");
> ....
>
> Thank you.
>
> Kind regards,
>
> - jh
>

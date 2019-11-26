Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.162.1574808423192332974
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Nov 2019 14:47:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=hpGlZ7dw;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC905E00E02; Tue, 26 Nov 2019 14:47:00 -0800 (PST)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.43 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com [209.85.166.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78464E00D4F
	for <yocto@yoctoproject.org>; Tue, 26 Nov 2019 14:46:58 -0800 (PST)
Received: by mail-io1-f43.google.com with SMTP id s3so22587454ioe.3
        for <yocto@yoctoproject.org>; Tue, 26 Nov 2019 14:46:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=D35o78A0v6+B87N13JbPJvqytQ2Vqf2wSwGx04PSzqo=;
        b=hpGlZ7dwUhWgy2Gf5JrRjG1Vd30Xsy1FX79D/1STFXz1XTPB+y1rhpt/9cXM/BJM4O
         Q2Kk1F0y8WYpKES0/UMPgKQp0phM9QXQ7ItZKNrOt7HBNFi9kigmLbpA1yBoMJp+93z7
         5lIJVYkky/qKFJTIAWIWOU5yEbMxqsFyYdPpJG/ixel62hr/D9EdqFGHg0TLyEZfUvFf
         Wg5A4JDLiXZbS5CujThgJgyf7HqaxteZ3Kn1aZEqUFu8ehYgPbYwHocW08K5QvqlCgi4
         jqaUQREkvc8TCrMm3Twa6GdWoCRp8erbaIil1j4vKZPv7sFUQ05ZqYeZk7QWTQcb8YJw
         dHtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=D35o78A0v6+B87N13JbPJvqytQ2Vqf2wSwGx04PSzqo=;
        b=WtTNc1SfDuAa6GoBISHBA9gGMrRApXLnx/zHAxmn8RsooiT4pvCYzQMU0+LjX03tWd
         kojkxHIzRwRBp0cCIzRA9czh6USuW6QCWGJKeZzdJme0SpEnPdkAvBGsvZ4GlQOFYjBX
         80gfdXWbUsJJkCaxl4mhUeCIbV1izEkGQuCIqo9bSGlQrFkEwnNulWqcP4gJO6EDRd0Q
         6jWtx1xsBCCoXcBfDSr0FiC9R7C/e2tiF+AWFsgBp8/wN7L0HjRl+fDL/uXuvuch/FJW
         kMcWfbywM/nECOoPwHrK816MAyHmXWhQ1itmK4tX+UrcJOdZ+EbMjp5JK5J37+2yBhJG
         tiow==
X-Gm-Message-State: APjAAAXb/S/izyiKuXmMusfZDICIrdFJ7RR0e/OytzEShoYMP/WnYqfP
	i+3hTg85RcvlY9IOSGiyHyArAx66gixLJ+zY9IzWUfRn
X-Google-Smtp-Source: APXvYqy4doWbfjmAWC8pvzrbZ117w3kfZGY960w5PgyVYFc09NjoRJoA2KEjUge+hKnIYBSYZGoRvSJSnduZk6UW+gM=
X-Received: by 2002:a6b:d912:: with SMTP id r18mr21581998ioc.306.1574808417772;
 Tue, 26 Nov 2019 14:46:57 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ac0:f24e:0:0:0:0:0 with HTTP; Tue, 26 Nov 2019 14:46:57
 -0800 (PST)
From: "JH" <jupiter.hce@gmail.com>
Date: Wed, 27 Nov 2019 09:46:57 +1100
Message-ID: <CAA=hcWRAe4gHBs6gZ3f9kUWu-N_oFEtKy2j2y2UB4aYuXY8kWg@mail.gmail.com>
Subject: What signal type from DBUS query to get 4G LTE singaling strenth level, RSSI?
To: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I am using dbus to query 4G LTE signaling strength level from
"Strength" and get -80 or -100, is it from RSSI?

dbus_message_new_method_call("net.connman", "/",
"net.connman.Manager", "GetServices");
....

Thank you.

Kind regards,

- jh

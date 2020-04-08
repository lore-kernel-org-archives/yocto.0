Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.9761.1586347163672863883
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Apr 2020 04:59:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=D8ZdIbR8;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D88EE01987; Wed,  8 Apr 2020 04:59:23 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D91EE0197F
	for <yocto@yoctoproject.org>; Wed,  8 Apr 2020 04:59:21 -0700 (PDT)
Received: by mail-io1-f43.google.com with SMTP id w1so1234303iot.7
        for <yocto@yoctoproject.org>; Wed, 08 Apr 2020 04:59:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=eeTChEF0EuxjKWSa9mExvHoOLtzQqlioIaefeGav+4Y=;
        b=D8ZdIbR8MYyr+L+Lx6zPDFuePHOkh8sxAXUHmTRThRtzC2GG9ECwjko9XPpDrIvyaW
         BBP9TsDlp8tXfmPo7I4zATSOl0GDzlNukbbw66fG9ZLP11ftDxMo8iN4obOMjbpWLnxt
         5ou6xV6kfHxkb4NmHeGxR0tbHsMj/uI9YVVM+oKCl5pu1FJzrKcbrKCmCjOwkPym3L+9
         GWFKVYvg6+IcZM3bH7pkURLGqzpI7xFzfDPsl3by1lo/QzWlij+IY1AFmzrct8HXqXjF
         TbwkUE0u8F1gLaHbQNGxfB6FKnEEEPQ/UNQ6fshQ1AbSBqgN5ybiQ6W7klULcu9QK0TS
         rTCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=eeTChEF0EuxjKWSa9mExvHoOLtzQqlioIaefeGav+4Y=;
        b=rTyQCaAoZz0Dq6uXMhprTw7yn0UXWUzEtuFKSar7c0vFEcspV4gQvojrF1YcwmqZCn
         rqhlaulAtMUGvuIQAp/6PupEJ5/1iBPOmONYZEbLZGKj1B64b/mvxChbVCgBUhgzVp1p
         8YXrgGIfznvCle9Am4G1wKhFOhHmE8XcrCqrzaV7FwjCj3lOJnXT4cS3QHkZpfD1at5a
         SXKAVo/ieiDYFjnjyLufz5+qg3tV8iSjPTngihK2iPu+H9mdMuD1X6H6wz9QHXWeJLE4
         qBBsfvfE1idpaD3t2f2JDV3BXASJOm23A/SpQsVvKV8K6M2C03NBIYpCVg1iJtCPXZfP
         nsYg==
X-Gm-Message-State: AGi0PubW87rxw7/kQh7yqLdhd2ukN9D7k71gfkLneIcm8+Rc/QmzRY2M
	ScfLdpgiDlOZIZZS/edz+l0EShVmkdUeLwhSLugcEoeG
X-Google-Smtp-Source: APiQypKn/MHmSOYHjC9NP+prbMSQoZ2wPu9GAh/BrNBG8Fn5dWGvr0GDurE16aZGw7tpdgAsuEJgsyDxYtk4p6hQIi4=
X-Received: by 2002:a6b:c9d2:: with SMTP id z201mr6691841iof.169.1586347161293;
 Wed, 08 Apr 2020 04:59:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:e252:0:0:0:0:0 with HTTP; Wed, 8 Apr 2020 04:59:20 -0700 (PDT)
From: "JH" <jupiter.hce@gmail.com>
Date: Wed, 8 Apr 2020 21:59:20 +1000
Message-ID: <CAA=hcWSfHfn3uZNVsYMCRj0wgGEhpO+TS0-mQgz3X8WtLaWV9g@mail.gmail.com>
Subject: Shorten booting time
To: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I am running Yocto built Linux on an ARM device, it takes about more
than 1 minutes to boot from NAND and kernel, any good strategy to
reduce the ARM device booting time? I can think of cutting down
unnecessary configures in kernel.

Thank you.

Kind regards,

- jh

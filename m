Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.10026.1589888328709359439
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 May 2020 04:38:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Jnk+SbRs;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F4F9E01BAF; Tue, 19 May 2020 04:38:48 -0700 (PDT)
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
	*      [209.85.218.43 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F477E01B19
	for <yocto@yoctoproject.org>; Tue, 19 May 2020 04:38:46 -0700 (PDT)
Received: by mail-ej1-f43.google.com with SMTP id x20so11465054ejb.11
        for <yocto@yoctoproject.org>; Tue, 19 May 2020 04:38:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=TMytJm73Pjhd44szWZdtWNYKaj8QbddQDM0jDBN0XeI=;
        b=Jnk+SbRsk0zJIvkNctYZSQsYiQxNgtifGs7U00oGmyaxAVinPfWeCzoHE2Fc+qIeHW
         GAOXnfcnKbuhDA+VmJJwWjHsSb2VDBV5og+M2gJIAA+zZkKBvCyi4Kr63jrW87VUpCm2
         ojsZs7eHB8uoJ5IK76dR9FMgsn9eE1ru9yhuLAdkA94i9s9/ntxKrL6WptMA8vN7fLyE
         B/s2HHZggtYXFvZr9HqYB9T7OEj0ZEaKjLy1zEG5QqmzyOI+Xj3GyN5wFi9Wo4fvJXnw
         q382QNrBUqMorQyx7XXHdwUdR4foWMR7bHEPuXq9DPuJi+svvD7bjQlq3NG7ojymhx2c
         o3BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=TMytJm73Pjhd44szWZdtWNYKaj8QbddQDM0jDBN0XeI=;
        b=erIa0wJCR30BF1zPnGxpoIj2WejVjOwKMIKj00MhMcwB0hdMXrKI9gr1+SMZnMrEUs
         Iyr0aQeFAHS6wURywTSCdCR5oJuBlOQlYsSHCOVOuk9SDOJy9+94PR01Xdd485xhncwQ
         8PktUjEcks4WgVFeKPgi43jzNn4ZKpYhavEsvloStggzQzPylWP1lEO/lkquRZvXKwjg
         eGIyc5HeBWhZay3Jfj9YDp3ZqTgjB/LXK01fmwmIZxR3Ok/jC1e3MrQumwfbxQsl1188
         2bgNrgeNriXUAUeAL6aEkbDTh2Urt3ShsMI3aVJWnhIXAe85yAeyyQL1ohJT1cIoCp0U
         8KLg==
X-Gm-Message-State: AOAM533uK5bep5m8pshWnLMX0+qdxj6bReRGX4AzXMHTVIkeSy/QC5s7
	/FqFfthfvYK9zK2q9MARwnldmjYYb9d9yQjNTtU3/luQ
X-Google-Smtp-Source: ABdhPJwIipwfzhey4a6ziabyRLGhSi6H2XUXMDqp/Jfp3HgJr2y0+cl6/Rrxoas3wC5b7YgPt+z7flqEdqhXgvbzZaY=
X-Received: by 2002:a17:906:eb48:: with SMTP id mc8mr221431ejb.551.1589888325652;
 Tue, 19 May 2020 04:38:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a54:3344:0:0:0:0:0 with HTTP; Tue, 19 May 2020 04:38:44
 -0700 (PDT)
From: "JH" <jupiter.hce@gmail.com>
Date: Tue, 19 May 2020 21:38:44 +1000
Message-ID: <CAA=hcWSnoTiTQu+azr+pW=h9Jss+Wg-0umKkMV_1W7SyeVg2WQ@mail.gmail.com>
Subject: Missing another DTB file in images directory
To: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I have two device tree source files, imx6ulz.dts and imx6ulz-kobs.dts,
I defined machine configure file with KERNEL_DEVICETREE = "imx6ulz.dtb
imx6ulz-kobs.dtb", I can see both imx6ulz.dtb imx6ulz-kobs.dtb in
build directory, but there is only one imx6ulz.dtb in the images
directory, missed imx6ulz-kobs.dtb, how can I package imx6ulz-kobs.dtb
to the images directory?

Thank you.

Kind regards,

- jh


-- 
"A man can fail many times, but he isn't a failure until he begins to
blame somebody else."
-- John Burroughs

Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.16103.1594718517364794009
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Jul 2020 02:21:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rxZhggaB;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: mans.zigher@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0978E01E7C; Tue, 14 Jul 2020 02:21:56 -0700 (PDT)
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
	*      (mans.zigher[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com [209.85.208.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88D16E01E30
	for <yocto@yoctoproject.org>; Tue, 14 Jul 2020 02:21:55 -0700 (PDT)
Received: by mail-lj1-f194.google.com with SMTP id q7so21636543ljm.1
        for <yocto@yoctoproject.org>; Tue, 14 Jul 2020 02:21:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=blWcn6qq1yhj474rL7MySSa3wO/dg6Db0gAk+PJJAK0=;
        b=rxZhggaB6OIJDtWDBidkaTiEKih6sJWz3Mywqyxfm2bWQGJM+LsTwYSlxc075KmweB
         L1dUWory2MCHH2sXuY+EJf3MmI0BYfq8q9OhTVwky2ka6iyjrTArEA5q1+qowwAx3qeJ
         7h6+/WH/7BSvDolpZ1ZvgeVhXdxt05ODp3jBfJsX+rR5346IRoFBBy8Mw7QsNdq7Z9d7
         fDuRHDBEWU/zf39v6icNOZPvVT39DK1sHo+rTw9LaXMmK6xmS2pEtkqT82x8dcKC0nFc
         1BGgfQturbVmNHltNLbAYatRIwr4v/rEbLP7yK9FlLB6GaCHycrbwAQ6H4UAKJHgfKk+
         /9Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=blWcn6qq1yhj474rL7MySSa3wO/dg6Db0gAk+PJJAK0=;
        b=gSMoPWgn6jvDM39QXF3G/I8nuveBXeX0QrilKkw+iM0qXtoiLN1PSIojapN+Ed5P84
         clYxJunMedmgtgU9vjx7VvbLJc6G4kVgkW8Fxdb//pg33PqLbaemmX22Hm6BRAXwFSmg
         C8QWrwjjgjOAsZneKkPAKE0XT5MO9iuRmgHHNVnd1HQ+ZkbDX1fXstPchVbI3WlYXseU
         6lJc1f2wBHKR5KMqJ03vNDD1onolTEon1Rp9KYwzT7kWW1gMnFE6WLxtuXUa5GHuaXF/
         Zyi33Y3yrqSUNS8y7DdTlG6/v490o1aqYl+S85VlMETN0YNbAIom/u7ctiFuoyNbinx9
         P6xg==
X-Gm-Message-State: AOAM5302W2jsMFXBvvmoAnIGh+iwjRZ8S1Etwg+iCe6B6EVLoLJHi5pd
	Vtql0K7Ay5Rw8TjG88mw2/NGbVSMFiVbj5AE6SkoysXLO7+vQQ==
X-Google-Smtp-Source: ABdhPJz5m7ehk+tw1hBv4N6WRgTOvRltt2vQOUxqlUzsbMpnMFkcEovTZ1Syp/xTiFB9C0a4EVo/e1GTMUj0dZJou10=
X-Received: by 2002:a2e:9450:: with SMTP id o16mr448760ljh.295.1594718513141;
 Tue, 14 Jul 2020 02:21:53 -0700 (PDT)
MIME-Version: 1.0
From: "Mans Zigher" <mans.zigher@gmail.com>
Date: Tue, 14 Jul 2020 11:21:42 +0200
Message-ID: <CAEhQi8kgE933ACogqL48Ncdofcu-DW85sJ275ccZH0WFTKEOJA@mail.gmail.com>
Subject: [yocto] meta layers priority using BBFILE_PRIORITY in layer.conf is not working for me?
To: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I am using thud for my distro and I have two bbappend for my kernel I
need to make sure that meta-layer1 is parsed before meta-layer2 to get
the patches applied in the right order. So the patches in meta-layer2
need to be applied after meta-layer1 patches have been applied. I have
adjusted the BBFILE_PRIORITY accordingly so layer1 has 1120 and layer2
has 1110 based on "A larger value for the BBFILE_PRIORITY variable
results in a higher precedence." but whatever I do I am still getting
the wrong order and do_patch is failing. Any pointers to what I am
doing wrong? I must be doing something wrong that is preventing the
BBFILE_PRIORITY in my layer.conf to have an effect. Running
"bitbake-layers show-layers" shows the expected output but when
running the do_patch it is wrong and when dumping the env using
"bitbake -e virtual/kernel" it is clear the order is wrong.

BR

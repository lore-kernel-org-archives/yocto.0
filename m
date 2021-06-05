Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
 by mx.groups.io with SMTP id smtpd.web12.7050.1622853836661392599
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Jun 2021 17:43:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=eHjKpvx+;
 spf=pass (domain: gmail.com, ip: 209.85.219.173, mailfrom: jupiter.hce@gmail.com)
Received: by mail-yb1-f173.google.com with SMTP id b13so16110792ybk.4
        for <yocto@lists.yoctoproject.org>; Fri, 04 Jun 2021 17:43:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=SVUu8jHTIIfSCe0pCDgfnYT9GlPtSjiQyh1GWlIvcCs=;
        b=eHjKpvx+bPff/4lDbcPkqD50w3/qa5GSJHJiSXM9gTGpqTG6knYBzdnlTKG6PcVU5o
         b23/bp2HZ5nhG4avxV/Bx3b2c9n81NFXyzKmEBWvt/HZpeZCnNrWYwCZl+qodgCIwZpc
         6gi5/zmucPnc+UtZOhAxmABCDJ6mEI7K3WpbGCQOcfajXbQvzuzcyjMZ9OILKDUq2NWg
         5Y7dgwdD4j3G2++Xr0k/RVComGV+fDG9eoEVSHtI5b+7xPS4fpbfs1v9DmWBf8iqz+5A
         PZa63k8UsmMbG++esFS27hArNoDxtbI6n4yNuEuBLmS7rtU6vy0POYnWTYNzoS8weXmD
         ziTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=SVUu8jHTIIfSCe0pCDgfnYT9GlPtSjiQyh1GWlIvcCs=;
        b=dPuRxZkrN8usLhgaFwX/1pjNWbzeIYPIzJUkDZNQwV4/8029EZ63BrsrgXJXdGKKF2
         GcOfVLYrN2gXqgr+FnhLDB6HKTllw336KmN0gOpE1dzZUbsj2RqJM/jGPXVy9Z4GYDYc
         XPkA4L1734/lAVgIuZJAD8AinqRUIygmLRYtPII+nNNh+QNO1KdabmO0ZJQaProbPgft
         cVqKz/I7SYgLEr89MdJ55WouAApqQXkcCz0p/yQcLnk+DRmiQlLNRUvgcbI+tyHopENq
         IePPCHANthaPERaRnVmgR5Bna2IPBTzI6bDbEiwCqI/tZNEUipiqXoN1GEj3WfPDfaaU
         Tx6w==
X-Gm-Message-State: AOAM530O2Ji9Ty8vlyU3J0/eM0LaZaDxkjWohveEsx8Qj/MfO/rWomZ+
	PDqp2ay4otFged4PkZbq+o5B9bfQ0y92M2PEetRK1cXK9RPTaQ==
X-Google-Smtp-Source: ABdhPJxyr9l//G7C04iXvMsMaQC5QLQ7g2MFtCZhhHPmekvPjLCzhGkJzh895w/wqvq5Zbbz1pY1Im6Owz6FaBfAbRY=
X-Received: by 2002:a25:8191:: with SMTP id p17mr8730282ybk.405.1622853835691;
 Fri, 04 Jun 2021 17:43:55 -0700 (PDT)
MIME-Version: 1.0
From: "JH" <jupiter.hce@gmail.com>
Date: Sat, 5 Jun 2021 10:43:19 +1000
Message-ID: <CAA=hcWQ7vordSRwq-O2+8b5FV79EKHZM6s-dq49EWt6Ra5Owdg@mail.gmail.com>
Subject: Is it a bug or it does not support device tree /delete-node/?
To: yocto <yocto@lists.yoctoproject.org>
Cc: openembedded-devel <openembedded-devel@lists.openembedded.org>, 
	Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I am building following imx6ulz-kobs.dts file to a dtb in zeus:

$ cat imx6ulz-kobs.dts

#include "imx6ulz.dts"

/{
  model = "customized imx6ull";
  compatible = "fsl,imx6ull";
};

&gpmi {
    /delete-node/ fsl,use-minimum-ecc;
};

The building process was fine, but that fsl,use-minimum-ecc in dtb was
not deleted, is it a bug or it does not support  /delete-node/?

Thank you.

- jupiter

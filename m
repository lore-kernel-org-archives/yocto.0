Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.901.1619804313098387549
 for <yocto@lists.yoctoproject.org>;
 Fri, 30 Apr 2021 10:38:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=JZY+HVbz;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: kent.dorfman766@gmail.com)
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 2906C38C0554
	for <yocto@yoctoproject.org>; Fri, 30 Apr 2021 17:38:31 +0000 (UTC)
Received: by mail-pf1-f179.google.com with SMTP id p4so1478403pfo.3
        for <yocto@yoctoproject.org>; Fri, 30 Apr 2021 10:38:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=PU3cv+CsJPrwVRexN2RdmLpTkDXDrnblZED4JwE+GDY=;
        b=JZY+HVbzbvgjzESos32ngxoJFMIW0fuw1XwpTacAakMTegggiZXf19vVNIqQQyTC2M
         OMdj7SDMD2z8vOLLuatxHXbro079hD1EMpk6h+eLzK13BKWT3+5HKVgcga2Uu+zX8Ka5
         E6PpvyBM3zjGGcOsqY3frUC/apfiq+nE5zn09W6pNgyQ7Eq2QBl8msVVCmK1+Nlnktnr
         3CjoHQllS+J6w9AIaYgmZnONOJnQ2Hr3qHf+TvnnlcsSzRO5B4/Am2VMHedKHmWTeXa3
         yyH/uQtGer9NrPoPtFVw+RSgShjUGkA9JnfvlUTGtc7rdkhdt1FoQ2CEk0ScXO8mIfPe
         9wng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=PU3cv+CsJPrwVRexN2RdmLpTkDXDrnblZED4JwE+GDY=;
        b=qceSINBCMPSRlSpADIUBZV+dvvgnWuAbCtrCOSgh2gBLTGfiZ6l2Fa5VNmM2Qv3KhD
         fVz9Q/5Y6lmVkJR+ZaQqjswvt7NmVEcRIAuTQXxPUUGBGjo8mvZuRZyXIJRTENnCmuyo
         OU36mwte+SsTGF2cCeLCQ6Uj6dbSq/cqdoX9ucS1PF+gSQbOEzIvKrvN8UFIPVwLWESM
         XC3gUjRl2gGfAbLTYBfQrirh7d4poSNzH3CFHaemmBsFUobdQSJndBaTyKtSRA9av7Bm
         dbhsYuIw7t1mVaNbmoxf0zSFS7Es32nz5pF2vU9zo+PhZ0aCwglFxgjCB0nWuWuLhavA
         9xlQ==
X-Gm-Message-State: AOAM53321Eygqe4Aakl+eNAa9T6a8UUUWRA3Ljr5OZA353ZCleIb2TkU
	3ggtjtZPAUh6Ujpef9yUHMKbQH/1R6loW06mRx5Fjw+llf0=
X-Google-Smtp-Source: ABdhPJzc4S8mru46JC4Nr3KL8pwPlky2RxV9Log7en7CflZzu8c3qOElEiL3O7srrXOe/+x6dNkAlIC2zOiI4cBfVJo=
X-Received: by 2002:aa7:908c:0:b029:209:aacd:d8b with SMTP id
 i12-20020aa7908c0000b0290209aacd0d8bmr6045297pfa.74.1619804309497; Fri, 30
 Apr 2021 10:38:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6a20:7da9:b029:1c:3e3c:2c94 with HTTP; Fri, 30 Apr 2021
 10:38:28 -0700 (PDT)
From: "Kent Dorfman" <kent.dorfman766@gmail.com>
Date: Fri, 30 Apr 2021 13:38:28 -0400
Message-ID: <CAK4PFCWvjp5Zzm-LCTo3Wr1+_VVzQgMfD+3L4B0_RQx3UNzcGg@mail.gmail.com>
Subject: devtool modify fails
To: yocto@yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

To my way of thinking, a

$ devtool modify linux

should NEVER fail if it is preceded by

$ bitbake -c do_cleanall linux

The intended staging of the kernel into the workspace fails, saying
that it cannot find miscellaneous and adhoc .scc files that no longer
exist after several variants of kernel config modifications.

fails on do_kernel_metadata...

| ERROR. input file "cfg/xilinx_intc.scc" does not exist

How to fix???

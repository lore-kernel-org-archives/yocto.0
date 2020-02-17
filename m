Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.5515.1581923974119057669
 for <yocto@lists.yoctoproject.org>;
 Sun, 16 Feb 2020 23:19:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Icdccx3R;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AAFBCE0163D; Sun, 16 Feb 2020 23:19:33 -0800 (PST)
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
	*      [209.85.166.179 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com [209.85.166.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D623E0049C
	for <yocto@yoctoproject.org>; Sun, 16 Feb 2020 23:19:32 -0800 (PST)
Received: by mail-il1-f179.google.com with SMTP id l4so13394581ilj.1
        for <yocto@yoctoproject.org>; Sun, 16 Feb 2020 23:19:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=nJ5k3uviOV3CkwTn6pvz49xVf4blTPT8fyjkGfJZMtk=;
        b=Icdccx3RjgTm4IBwS1QhkLokJa+iXLWgqCfmXL5f6i5c7y8ITQD2piMUO2CFi7gAPT
         ZvUFxD39Tp8fPnuykqNkdwZAGVWBI0QUR4yJCbm4PWPzXOczBK1xEKKd3v9rAcFTMiog
         c/HFsqtW7fl3c3h2dYZz+J7UjIM2EW6PjYpR0ekfQy8nMcO/PG9IFj8aZ3R+HUKbauqp
         33ERd+TyivdFu83Z2IMGsGZT2bm78auYuoDvd+uowWhThZS/r36TDBJU2DqXBIx5Q//R
         0biY74Jfz7yPh1f/e1wBWBzAa/FSV9Fc7Bhq1REF62urKdMMT1S5TpIF7RXB3rA3hGhp
         c15A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=nJ5k3uviOV3CkwTn6pvz49xVf4blTPT8fyjkGfJZMtk=;
        b=qNC+YYzGWjL/V9LWwK6b3ow3o+lJQaNcsYnTKWPCR6Y+rNI2OtPFpNBCxkTXLshxW5
         kPZp+Ux89fc9XpyuE+dVJukoZVW7VickV72KJ/beBAQZ71KDLs+MJ25ED838bSC2jWVI
         jkMnFOmH5sWAyUaZO+1Am0y7WQzicq91ivOfmIy6GIJct0U3tiLQi5uw08WiH1nbZRwD
         OzO2HXtJ3BAHEIWcg9GQvN1gShlTj3p3tVYPamu0DonvqYFunOgJrUFcGarrQvKTO39z
         YfCYQ5HnExbk3oPIVRsW/2flyOBCJYLwWa0PaXmcqPybeEXMmMKx4cKqEiA+BWORXrT6
         tHkg==
X-Gm-Message-State: APjAAAXhPA/o2JHQ+ZNG/mIqZFb7I/BWQGvIbgMnOsuuNhoyMycCciiR
	DkHz21aBwM20AAgN83imNpzUEFTwapUYtAHXxpc=
X-Google-Smtp-Source: APXvYqzRf1Sm9alGWRjseGlppxak5y39LI7xlRjV70+pVPtCEFcA4fXJD8L1kWspyqZvI0n1rgG4c4D0N/FXtJ+BOLA=
X-Received: by 2002:a92:5855:: with SMTP id m82mr13226817ilb.302.1581923971944;
 Sun, 16 Feb 2020 23:19:31 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad5:5d0d:0:0:0:0:0 with HTTP; Sun, 16 Feb 2020 23:19:31
 -0800 (PST)
From: "JH" <jupiter.hce@gmail.com>
Date: Mon, 17 Feb 2020 18:19:31 +1100
Message-ID: <CAA=hcWRtFrgz+ad5-7FUBhN+VSdM0j9Mp=TFoEH95k9L8xXd=Q@mail.gmail.com>
Subject: Which parameters are shared by kernel and u-boot?
To: openembedded-core@lists.openembedded.org
Cc: Yocto discussion list <yocto@yoctoproject.org>, u-boot@lists.denx.de
Content-Type: text/plain; charset="UTF-8"

Hi,

Does kernel and u-boot both need be compiled by u-boot configure files
to include bootargs, mtdpars etc?

Thank you.

Kind regards,

- jh

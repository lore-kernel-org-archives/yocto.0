Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.18.1582148693997830157
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Feb 2020 13:44:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=CENVwTE/;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 664D8E01613; Wed, 19 Feb 2020 02:12:10 -0800 (PST)
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
	*      [209.85.166.178 listed in list.dnswl.org]
Received: from mail-il1-f178.google.com (mail-il1-f178.google.com [209.85.166.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A30AE01589
	for <yocto@yoctoproject.org>; Wed, 19 Feb 2020 02:12:08 -0800 (PST)
Received: by mail-il1-f178.google.com with SMTP id b15so20061500iln.3
        for <yocto@yoctoproject.org>; Wed, 19 Feb 2020 02:12:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=99e0dy03JAPM/JGfCn5wUWDFOt3AZ3iDJCyXN0Ox4xg=;
        b=CENVwTE/otJNXGJoy4X91jHmhLJiBDVBu2MHJy/G1EibJ9ZhTz4Sua8C5ytREWYgfm
         OAnygEhTW33VAYzFodAd+uXmC9YwLJ4pVn1cx84BuDoQH3MmMumnmSdlIKCb0tZj5WiU
         YQ7XvD7oruAZo3LBpXv32WLNiZ4Jx57gY6RkY0svsJmN0XH2vhhazc0GQxcNv/wEiVue
         NiUtat9cFmPo/amSv0rqvuFMxF2JZwXf7sOAvVM3zLFDI0OpYAlSY9htgLt2GtF5Fv4+
         dn1QCFZhg3vIGu0gvrSGk1AkrY5cDggqq6DUfPdKNBlXeM9ipV2CKI4PBj3YicX63roX
         bN8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=99e0dy03JAPM/JGfCn5wUWDFOt3AZ3iDJCyXN0Ox4xg=;
        b=R+HYtM3OiaNKpyPQBy5kkyUTFoQ/ZCjF9CQgoBS4AhSiN3Q5qRsB4RlHldmylhC3/v
         dVOfJQN0piWiIAEf17k9oMloHJiDmJbEdMgOSbxODAPeeh/3YibRayupcqRQwaaat/42
         SeVjaedGUzSjGcoRPGSD1StXNGoiXQ5yMvBpMAR+Go18WaxxuFT2kmopFCIr1yFsM/OS
         +aiv9l5fxga/ZSgMZw/C3zMI4w0/jZrAnflYjso+ZEkLJChWveQWnJSf+S/x0iJX5JYe
         N41458AIzXF9eaIwm4vQpyv1PlsJltY2zBLYs/LyFgN8iFKze/uQ5tRGNCr7CO/GywQp
         PUOA==
X-Gm-Message-State: APjAAAUbImqPSfYQbCdFFJOtzonMk642Txh2fiOAT8kU8INODYFIVK5d
	5Aq+EO2GYNfJujahF8CNZa2DZDeXCJzFKRiNMps=
X-Google-Smtp-Source: APXvYqxUlIAE3oxmCk9XUM/AwrcPh5uQh/Vwh7ZReY55sHhERw4AKVFzhlHOCu9G7Gk/SO6V/4lE34mP9eQLBkT3dwI=
X-Received: by 2002:a92:ce85:: with SMTP id r5mr24327013ilo.301.1582107128576;
 Wed, 19 Feb 2020 02:12:08 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad5:5d0d:0:0:0:0:0 with HTTP; Wed, 19 Feb 2020 02:12:08
 -0800 (PST)
From: "JH" <jupiter.hce@gmail.com>
Date: Wed, 19 Feb 2020 21:12:08 +1100
Message-ID: <CAA=hcWRUzFinBcNXf5EF+2mCwMhA5tz-vEFKubg6_QkwvxOEEg@mail.gmail.com>
Subject: oe-core recipe for defining directories in /
To: Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

Which recipe defines all directories in "/"? I need to make a bbapand
to add directories to /.

Thank you.

Kind regards,

- jh

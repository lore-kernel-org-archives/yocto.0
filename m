Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
 by mx.groups.io with SMTP id smtpd.web11.6572.1575101950640639686
 for <yocto@lists.yoctoproject.org>;
 Sat, 30 Nov 2019 00:19:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@melangex-com.20150623.gappssmtp.com header.s=20150623 header.b=tCi+WpYj;
 spf=none, err=permanent DNS error (domain: melangex.com, ip: 209.85.167.54, mailfrom: morne.lamprecht@melangex.com)
Received: by mail-lf1-f54.google.com with SMTP id r15so21264299lff.2
        for <yocto@lists.yoctoproject.org>; Sat, 30 Nov 2019 00:19:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=melangex-com.20150623.gappssmtp.com; s=20150623;
        h=sender:date:from:to:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=SJGFkSJa4syejQV/ObESqrhf4HUFUzh9YZW+FU2cqy4=;
        b=tCi+WpYjG02pwxgoXvjqs//PThy7+j9WxdkhyAjlH/POu0d43rQ851YI1/2D6UxLs2
         1r85aCenbVd8qU3gyNKyYoprUqlhWriinJ5a3qgiglz8GOuf2WdHM1AA9qmFEi6Jzjk5
         kVKRDyGzGk00rE7uavqMs0P4xUdtOs9gZR7HdbmKet8rgklx6YFNbMzMNbD5Hf0wfrIc
         swEHvRUAHOlvdGd2Hcgwd6hKlAu1dI7plZmEcdjwioNNFiI5O8LKITsvaVAv7hr+Mdi8
         7xJm3f/DmefvdvjbPIxlI4/7WV6B5VvXQpvqwpnqH/auUe69J+1ZzrRHX2N7Yo0/I8w6
         R0Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent;
        bh=SJGFkSJa4syejQV/ObESqrhf4HUFUzh9YZW+FU2cqy4=;
        b=ImqV3gQw22WxSSwe7w1tTzn/Of6goAYDzTEy9VMo7QEW+5EA7CkYBWj1KoWR9R+DeL
         7cbGuVFbBvIdAjfSQEEqIh9RT28LZUbmH3Uu/hRbOdbY88pp5dbH22+CIhgOZ4b3EQR5
         KEqUcjuT252pxVnVP1iq24rgeK2F1U6VyXZj66MkX+iZNsCqGhl5IkbzUprJuMOMo1oq
         w56yNGGhdY665sso8tZF2Ym9h7RuL+vArlzseKbnj4favCic5A8Dpy2G4HqUInwwMVB1
         s19NLgSvTsGplWuSruoOGZkN5TbMDO4GemFFjpsXLNLX9wO03VkRBNBXT84Oprzg7ZBQ
         7eKg==
X-Gm-Message-State: APjAAAX1DGPJLnA6L8CvIUBPyN7ioWQYODTeD3IsArDzwbBTWMRhhmFo
	MuTd4PZBl34HtZTFwTN3PaRlDcdK3Wk=
X-Google-Smtp-Source: APXvYqw+qQNOgH9P2iwRjVEJUeC6I14lIGUH7vimjUzbotIl0V6PCPhDdQ6pDktwbWVLt6DeHpkqPg==
X-Received: by 2002:ac2:4884:: with SMTP id x4mr9174665lfc.92.1575101948529;
        Sat, 30 Nov 2019 00:19:08 -0800 (PST)
Return-Path: <morne.lamprecht@melangex.com>
Received: from localhost ([209.203.60.70])
        by smtp.gmail.com with ESMTPSA id t143sm6763043lff.2.2019.11.30.00.19.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Nov 2019 00:19:07 -0800 (PST)
Sender: =?UTF-8?Q?Morn=C3=A9_Lamprecht?= <morne.lamprecht@melangex.com>
Date: Sat, 30 Nov 2019 10:19:03 +0200
From: "Morne" <morne@linux.com>
To: yocto@lists.yoctoproject.org,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] How does metadata include in an image recipe work?
Message-ID: <20191130081903.GC656500@archworkstation>
Mail-Followup-To: yocto@lists.yoctoproject.org,
	Yocto discussion list <yocto@yoctoproject.org>
References: <CAA=hcWRqZ_TNNgfNcPR_Sg0h+coP8FGw6kWZPJ-bdjQy28n5Zg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAA=hcWRqZ_TNNgfNcPR_Sg0h+coP8FGw6kWZPJ-bdjQy28n5Zg@mail.gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

>but when I run bitbake ex-image2, it only built ex-image2 image, it did not 
>built images defined in ex-image1.bb.

See this previous answer on the mailing list to a similar question:

https://www.yoctoproject.org/pipermail/yocto/2018-August/042220.html

		- Morné

Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
 by mx.groups.io with SMTP id smtpd.web10.9454.1624462671375199090
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Jun 2021 08:37:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=AIDJSmk5;
 spf=pass (domain: gmail.com, ip: 209.85.160.172, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f172.google.com with SMTP id t9so2384354qtw.7
        for <yocto@lists.yoctoproject.org>; Wed, 23 Jun 2021 08:37:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Bmp8cI8pTT4P2iGzNFqZjWm/vUGUy6jzre1KBIPb9Vo=;
        b=AIDJSmk5CvuE1EJcA2fvODhmPnP1+2jr+C5IQ6jrDnwvynjyZ7H0zfIRCvsmbBs0V9
         xvrKp+BzBt7ysS/xuwka903sGIYfpjISIQheHH0IbG7i8TkTG739VJGy8J8ds8mJ8wQ5
         WcVZOR85h6ZagbhnPLX7sFEU4i/TiNfLpjAQmSxiPtIZo/k8BKD+i53rehcrstwmoyCb
         BKTQTbd3h6Hl7EoDmHF76QnX4NlrnnJ9RyErYe7AIjLtne+LLFll5GTcU0tIXBDabTu+
         k1mjRtR5RfR0/Zk5QCvo3szMeDkW96pIkc+CpPXbM6WnR+83uOnmI3vHmgH/fE/TJA1a
         Uhqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Bmp8cI8pTT4P2iGzNFqZjWm/vUGUy6jzre1KBIPb9Vo=;
        b=ktSW69RIFtQbPxF1ca78zxPk2HE5xvBgC+emMzDvThsmpmHTfdQYuRYLP50V2GAEv3
         rlo+g1lCFCt7iZVIwa4pV5igQ/3tp0iByfdkaRyLBFo+Rkp5vc/ksT975snSgejbqTGq
         zbdTUA5W9yWcrKUly/5EY97WYg6wEj0CPEP+esMHcXDW8iCubKu9bhb8BDdBjJjo/b4K
         X9TICIwcD6OzxoHqz37rFJjk3SZ3PP+3Ih++STt+7kAK/MOplI5TTrL3syOcyCeg3Tks
         Pf6RrXEKpIuIyKR1JfcfLEZ2uT7J1qVByKel+Y3lhXUC0pFBV9fCRiyyJhvXwost1JvC
         sVmw==
X-Gm-Message-State: AOAM530qdi9DT6GdCxP/iKx/2kGLtixIlR9WANorISgv4nHYd2+LfV6U
	t5bcdNriJohw3XAkdHOvXeck3kG5z+tFaw==
X-Google-Smtp-Source: ABdhPJzCKnuIaINL7juAYTJ6ip9ilxa16e00H9gBM6XFZIo1J6zbV7QEqU3REjCpMGKFSTIa9+uoDg==
X-Received: by 2002:ac8:5804:: with SMTP id g4mr497895qtg.158.1624462670326;
        Wed, 23 Jun 2021 08:37:50 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id y63sm149818qke.16.2021.06.23.08.37.49
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Jun 2021 08:37:49 -0700 (PDT)
Date: Wed, 23 Jun 2021 11:37:47 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [PATCH][meta-rockchip] rock-pi-e: use common rk3328.inc
Message-ID: <20210623153747.GA37912@localhost>
References: <1689BE9279F844D4.29750@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <1689BE9279F844D4.29750@lists.yoctoproject.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Applied to meta-rockchip master.

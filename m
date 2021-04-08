Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
 by mx.groups.io with SMTP id smtpd.web08.759.1617901569780614067
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Apr 2021 10:06:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Mq2k0Zuc;
 spf=pass (domain: gmail.com, ip: 209.85.222.173, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f173.google.com with SMTP id x11so2904277qkp.11
        for <yocto@lists.yoctoproject.org>; Thu, 08 Apr 2021 10:06:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ufFM/HnzCmESpiorJrkfCstf+zGpgfbBT1q4IvE6kAc=;
        b=Mq2k0Zuc2sfvkYWh/dLTa0HbmEvKeDm0t121XyKHFUoOYh6Ut9lq5QakiL7tVGKFuW
         s8zN8HUoT5Tmi+TswinebnwKGkh0Q3pnQdjESGiY9GnCQzi9OvCvRRJa+eyFAzgUeLrs
         eLA1+9YBM96Tm4KHEUGzdWb3VpHtDR5konfVmEG9z8P6asBPK22CklLJ7WoVjVonaqLN
         TVZL46wzRsUJfH/d/t5cQXOkzHFZbEtS7EGIO/kqPio7IPRDR1qJUMY6M7oiNgNtp3oi
         QGzzj3JEe+7pmBGwgQ/GCdXNQC02TaqaNPDRXM8c0idPmGNGQkpyPP11c58+04ddbemC
         WoFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ufFM/HnzCmESpiorJrkfCstf+zGpgfbBT1q4IvE6kAc=;
        b=YLOi3nbW/00xPLlpzc5QGJwoVHZaYm3C/1lZDIy+yL+BZaunRkNGd/ZjmcNozACd1y
         z5J2qC1yuH/KN0+NT7k9um5EaMM01rdY107Q+Pxo/y+5YTGruKYHXi856TfGf68fwaRD
         zZk00H2l0GCAYPATF35qvRfg64sh3gxC79LtXfpN3DeZHvlcq73xrr5/qOyN18Vj2u5f
         V/ioy4m11wFHneNJEHh24YGoGdyN/JwyCHAbWZbU+jPq6M48UeOFu/P5/DnjB9/lOCit
         U4Vr3hjgD/MM4dmNGFIBww3BmMIJOtABLN6brNpNQqx4EhCaHWBKqvty3P9lzJ5PLAkY
         QREA==
X-Gm-Message-State: AOAM533NrdSudik6ohyGqI1l02lIBAPuxx/TsU86oNCOWL+4bTngQDcQ
	kAh4MmVz03D6v/qw8AQ31dk=
X-Google-Smtp-Source: ABdhPJyCdiVsj7j7UV1OFmsezNKVomwSyZk9wdwqd8dwtjt0SZlDFrLvzYr/TrJ6v4OXcT3r7CBrHg==
X-Received: by 2002:a05:620a:2207:: with SMTP id m7mr9607975qkh.405.1617901568895;
        Thu, 08 Apr 2021 10:06:08 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id q3sm9625qtr.82.2021.04.08.10.06.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Apr 2021 10:06:08 -0700 (PDT)
Date: Thu, 8 Apr 2021 13:06:06 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yann.dirson@blade-group.com
Cc: yocto@lists.yoctoproject.org, Yann Dirson <yann@blade-group.com>
Subject: Re: [meta-rockchip][PATCH v2] trusted-firmware-a: use 1500000 baud for serial console
Message-ID: <20210408170606.GA23527@localhost>
References: <20210408073402.2537232-1-yann@blade-group.com>
MIME-Version: 1.0
In-Reply-To: <20210408073402.2537232-1-yann@blade-group.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Tested with rock-pi-4b and applied to master.
Thanks!

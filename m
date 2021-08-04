Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
 by mx.groups.io with SMTP id smtpd.web09.12723.1628099602656301786
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Aug 2021 10:53:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=D6jg7W4R;
 spf=pass (domain: gmail.com, ip: 209.85.222.182, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f182.google.com with SMTP id z24so3567919qkz.7
        for <yocto@lists.yoctoproject.org>; Wed, 04 Aug 2021 10:53:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=zxuViJqZa62e5P4ZWMx1PJcOl5P5hQrvIDhxRwURReg=;
        b=D6jg7W4RNztdts698XGaIWXnVw+FnUHhGwyKA2gMhOjKZhQOEcymA28kZ5mBcmHKKJ
         Brb+6c8nh1FfoH00GgSsIxoIjNvp43bSSdrYi5yZdZ8L2UFmLTD6G252MOpUIgb2xhQ0
         j5kZEGfn0YhLfM9E3J5D2GTSh0VyWPNPCy4FxSinkxBbcHH9q6ufop4Vh3c2V8xWFwmP
         njIjCBDQIBp4GdFFNQei08p/Ts+m88gUS3+X8xzPGcRNkTB466UGwavMgxjiGATuDDff
         k/xIRjJqJrhwUDUE7hnsH6HhsFB5fpZpywblns0bn6HvaVJyXHkgksqExGorhKvkF7WK
         4dSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=zxuViJqZa62e5P4ZWMx1PJcOl5P5hQrvIDhxRwURReg=;
        b=f3xFbk+xK/TdMrpnddDeEZhSg6zYwtiPGj9ZG6CmMiRS2CvFdExuR3rhQysxb+kmYy
         dlb3sHoTI4YV6HqNr4SiUoih3xs3bi1xBTAC+YBIGnTyHsxP6Ms+jDdLrEBe+Zl87Cjx
         pfGQX9Sgh1MBAKEi4R8Asnim0FRi4L2mDMkKePKx3I1ZAs1j9o12l3wvMy4sJq5Pe5PD
         2qqvItViYyJoV0tyXJPpBaudUDaWU0S9K3qSMKQDhziHsTGHl6eQtDaPHNkKu2DK0i38
         KLAhkNPva4YXczDrczpSTfX+0sNBoFS/EOI29MFuQYIjV0t8+ODDe8rlfsyYphdS9i6F
         090A==
X-Gm-Message-State: AOAM5338glO5fczwsCs3/QJ0e1asNz/pLRJenhqJw1yjQrjGg5xyaQ/b
	bGkrfrMJwiAfoUrYHP5Cm/A=
X-Google-Smtp-Source: ABdhPJyCViyByn13ND53fykSv7auzySC808DDKC9pWlh7UV0DtPwJkI13Tor6GD5KX0859x+49Aecg==
X-Received: by 2002:a37:4053:: with SMTP id n80mr613014qka.336.1628099601863;
        Wed, 04 Aug 2021 10:53:21 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id j7sm1129325qtx.39.2021.08.04.10.53.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Aug 2021 10:53:20 -0700 (PDT)
Date: Wed, 4 Aug 2021 13:53:18 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip][PATCH v2 1/2] layer: Convert to new override syntax
Message-ID: <20210804175318.GA12530@localhost>
References: <20210803195132.2702516-1-raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20210803195132.2702516-1-raj.khem@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

There are still some cases which are being missed. For example, this patch
doesn't build successfully for marsboard-rk3066, rock2-square, and
tinker-board.

I had been working on a similar patch yesterday as well which I had been
build-testing and run-testing when your patches came in ;-)

I've added your SOB to them since they're so similar.

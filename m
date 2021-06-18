Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
 by mx.groups.io with SMTP id smtpd.web12.11432.1624038564439034616
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Jun 2021 10:49:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=R6KDs5It;
 spf=pass (domain: gmail.com, ip: 209.85.222.173, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f173.google.com with SMTP id j62so12859852qke.10
        for <yocto@lists.yoctoproject.org>; Fri, 18 Jun 2021 10:49:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=aMUHgjedf9SvzRY9iDT8OhB/jOmJQ9p2Udp3jQC21hk=;
        b=R6KDs5Itz2JZP+XbxL4RJBrIeCG058as05gutpjSalS8JCvJwhrYq4An+YyKGL0R7j
         ozboJev/bOsnYj69LgiVMbbxrzgOHS+bd6UiRgpyB6UcDq+O6gc+TmU9SHhGSLXDugR7
         2F/FUXL9ZKdJb4mZUH9TWm43uNH1W4vGmrns0S6RD1S7NuKLUSihmJS9RYeEEVTWR8lM
         EvU/VxlkMhLEMGDEUOgcIKbQsD/AYMMGDEY49cpWbIh4BOu3J7NQuOF6s2b8BQUEUcjq
         rMrJ2OSa12J4DDs3jzJI9KlVzhtCKoHugBh5yl/LG3qIshCFrXECdwiAULFNMJrERWoZ
         XQUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=aMUHgjedf9SvzRY9iDT8OhB/jOmJQ9p2Udp3jQC21hk=;
        b=ji7dQcK1IVd0/pKixDXN11QAcXtTL0b13BjfeZso4x2sbdOuR6cHOhxq081O8sQhAo
         Hh/krSxDGOlxye07jaYQK5N5KZhZpTpRN8Z8PIcDcEnxtaz7sWTN5VGV7whW6djY8TKS
         joUDkc6zdwo2l47Nqa7vZCYVztO2BZm1sPQJbyfG09HsRX7naZ+5SFAQNptcLW24fivp
         uBawzAhaJQRIKfnt3+fM2fYw9d2+VbWcU/G+FPnUNcxiAw4Iy5hkNFZ5JR4O9zv8ChUe
         qrp0xmBGxOAz7f+HrGkqN9WvHk+McCiSrhGz1O52DkZKFRSVBM0OBqS0fBuLOgrvwmyR
         2W1A==
X-Gm-Message-State: AOAM532bvLvLlVBhvWRmGL/+hW35+oX59/V4iI8991B+sZDYXqmwrRtd
	HG2tFq+k1wrooWJXb+vpC2M=
X-Google-Smtp-Source: ABdhPJz9vP8VnsG6fSkmE8rFqSsqBnDpYqRXMSFM8SeTYt6sewkjSm1GK3MHUvFTl7iWUuTnLFa5Mg==
X-Received: by 2002:a05:620a:12ec:: with SMTP id f12mr4384125qkl.246.1624038563507;
        Fri, 18 Jun 2021 10:49:23 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id h12sm5753628qtn.44.2021.06.18.10.49.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jun 2021 10:49:22 -0700 (PDT)
Date: Fri, 18 Jun 2021 13:49:20 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yann.dirson@blade-group.com
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip][PATCH v3] Rock64: add machine
Message-ID: <20210618174920.GA8288@localhost>
References: <20210615130757.72188-1-yann@blade-group.com>
MIME-Version: 1.0
In-Reply-To: <20210615130757.72188-1-yann@blade-group.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Applied to meta-rockchip master. Thanks! :-)

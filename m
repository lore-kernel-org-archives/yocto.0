Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
 by mx.groups.io with SMTP id smtpd.web11.9507.1616509241267530272
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Mar 2021 07:20:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=uUTE1XEC;
 spf=pass (domain: gmail.com, ip: 209.85.222.176, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f176.google.com with SMTP id c3so14452813qkc.5
        for <yocto@lists.yoctoproject.org>; Tue, 23 Mar 2021 07:20:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=qwKs6qpBeDIe8ZZ4MBr2zliwqwBisHIaj9ujrLgI70o=;
        b=uUTE1XECqPir35mPphiuZgGPdNAEW7LlaI4uWsPJv2J2WyhfJYgwfs9Wjlq6fTrhXx
         TNTna7bC35JZNWs5Zw+8lwBsn/pmdgpYTGTQx2cGtq1okdVFoO+DwbWiNBwDYuix1pWf
         mvrJnpNyaJEaRFm5GkHuMhqe4yQ8t0k25vEKKca05Zg0KcaRIvr39wDIc2E+jiEKRuGo
         yJlcYNaHmaVfp5lbXk8PZ3EoZCsuP2nu11oPYo39mftngfKvS1q5+/u0se+pRHGrFLug
         X/NmyQK8+mW/mRq0tLg4q8Ud2YJj+I7LHy7OvBbvNed/Hcd1Ja6p+fYtj7ZgL1kOlvrC
         5znA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=qwKs6qpBeDIe8ZZ4MBr2zliwqwBisHIaj9ujrLgI70o=;
        b=R66PqmXddXIRdG+QxYm9bOUJ5lN3RwoogfjmTRnkNRAceIrOx/gco3DHBMTxv2Y7nw
         y0BHMMqYMBKM3e0FcYWUkV8fUJmr2/R9FaMpDAAk9XDWYHylF6+MJX2FtxXHKqqHj2IO
         cj2gjQXN0VmWbv2uL1PPb/I5a++08uMwCNz4B9vAOVjaFrVSEqjkEDqXd9EmU//xb170
         ZnN/KLo0BKmnD1IsGfwS9HPG7/WszD9iOaN6/eG38xY8K4X/uz6HPJw+vEfEGa0NxiIO
         mivtfsVcqvF3+u/29cTiyyC7JgAU18cPK/ZGf5J+ixYK382awqcg64ROJSXK6GG1O067
         DeKg==
X-Gm-Message-State: AOAM531MXTJlqoTgvN3wRK98xAGWoeF41C8gmfhLuv2OCAsUL78CfVBF
	77nXqQUbYmwBxI5N71ZjpOo=
X-Google-Smtp-Source: ABdhPJxtcf9w5RWah2SDeKbOsIC8hCEFP5I4sLxnW40VzoJMoT9UDz+55WEvC8rHvm4KtbrFXyIiUA==
X-Received: by 2002:a05:620a:699:: with SMTP id f25mr5630212qkh.249.1616509240405;
        Tue, 23 Mar 2021 07:20:40 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id n140sm13571090qka.124.2021.03.23.07.20.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Mar 2021 07:20:39 -0700 (PDT)
Date: Tue, 23 Mar 2021 10:20:38 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yann.dirson@blade-group.com
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip][PATCH v3] NanoPi-M4: add machines
Message-ID: <20210323142038.GA26669@localhost>
References: <20210323102013.717850-1-yann@blade-group.com>
MIME-Version: 1.0
In-Reply-To: <20210323102013.717850-1-yann@blade-group.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Applied, thanks! :-)


Anecdotally, having the bmap file available has the following effect on
writing a core-image-base image to a µSD card:
	without: 33s
	with:    11s

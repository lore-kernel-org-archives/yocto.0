Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web12.225.1586293498783012768
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Apr 2020 14:04:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=G5jbqEvN;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f41.google.com with SMTP id h2so3123904wmb.4
        for <yocto@lists.yoctoproject.org>; Tue, 07 Apr 2020 14:04:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=OmpKrzpWP2Poqg0fFzm9VD1IdVyLRYDUi0MNZBWxB2g=;
        b=G5jbqEvNJgFrhrXtppxxkFIkbh6xBibxB0iF8xD4fg5qENZK1TnKb/b99LRw2gIMpa
         HnYcE0+Nl4QmwT0e/8G4pX3zQhUwvSiVOz3un+0jUP016AlAMNQMh35SDJhjYTq9fuJQ
         F6XAYEcDXrN8F23fDQownKNtqmcM/mKk05nsk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=OmpKrzpWP2Poqg0fFzm9VD1IdVyLRYDUi0MNZBWxB2g=;
        b=ZVOgsf0eyqJCkf7qmMIoxe5rYGHXDBRQfGbnpTSotlQRRX856/N7VqfqCRkJ1czmWu
         QOUc83rXkmnPYtHKqYRpdIiQZ3YDHbQjnS9x/iJ6Ykn43obyKCANU2xmisP1hoPv9Khp
         0iDW5qBaj0iyam6qgzNa9pLiEwFdexyGg/xoPmhsCyRmq5SCg0pXJn7epsdU8odC6MOi
         F1nsZNCCvyVCIX38ppVoLmwfI4/W+ecScygNLmA7sFuR6F8CzgJzxc74RIiK94oQGrgR
         t8nUTXJ9unOfLFUqX4BjOadQocdV8qx/c3kjcHslGcP23dsEEuIm3HhEuBd5D3UyPwYJ
         TysA==
X-Gm-Message-State: AGi0PuZ13PAq1OCHslv6dWgxZyvexlPJwvwgGoWWrYMrV5G6jEEt/BTX
	JVf0SPMWAgW+bTM4Nigj3HE7rw==
X-Google-Smtp-Source: APiQypInjcs6YXpmZfAAgvtZNKTFoWmdE+5LK8RcOYQyjur0iqpQx4Ou0YlWJsVC68VK3cRUVeUavw==
X-Received: by 2002:a1c:ed1a:: with SMTP id l26mr1136628wmh.175.1586293497277;
        Tue, 07 Apr 2020 14:04:57 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id t67sm3779326wmt.48.2020.04.07.14.04.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Apr 2020 14:04:56 -0700 (PDT)
Message-ID: <078e777465fcb1bcbcaba9f3290edeb0160b6e6e.camel@linuxfoundation.org>
Subject: Re: QA notification for completed autobuilder build (yocto-3.1.rc1)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Poky Build User <pokybuild@debian8.yocto.io>, 
	yocto@lists.yoctoproject.org
Cc: otavio@ossystems.com.br, yi.zhao@windriver.com, apoorv.sangal@intel.com,
  ee.peng.yeoh@intel.com, aaron.chun.yew.chan@intel.com,
 akuster808@gmail.com,  sjolley.yp.pm@gmail.com, sangeeta.jain@intel.com
Date: Tue, 07 Apr 2020 22:04:55 +0100
In-Reply-To: <20200406225303.32E2A1A00A2@debian8-ty-1.yocto.io>
References: <20200406225303.32E2A1A00A2@debian8-ty-1.yocto.io>
User-Agent: Evolution 3.36.1-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2020-04-06 at 22:53 +0000, Poky Build User wrote:
> A build flagged for QA (yocto-3.1.rc1) was completed on the
> autobuilder and is available at:
> 
> 
>     https://autobuilder.yocto.io/pub/releases/yocto-3.1.rc1

I haven't see any "started QA" email about this yet.

We have had some issues with rc1 reported by people so given that and
the above, I'm going to abort rc1 and build rc2.

Cheers,

Richard


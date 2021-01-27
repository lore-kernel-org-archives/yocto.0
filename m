Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.16223.1611787205371448916
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Jan 2021 14:40:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=aHezAg9Z;
 spf=softfail (domain: linuxfoundation.org, ip: 198.145.29.25, mailfrom: richard.purdie@linuxfoundation.org)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 3E39038C08AE
	for <yocto@yoctoproject.org>; Wed, 27 Jan 2021 22:40:05 +0000 (UTC)
Received: by mail-wm1-f50.google.com with SMTP id y187so2987647wmd.3
        for <yocto@yoctoproject.org>; Wed, 27 Jan 2021 14:40:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=PaKWfow5rbABZiATKxTWuSknL6BLbps/tkOrcO0UrCg=;
        b=aHezAg9ZgwTdJnv1ZFZ7PAYaq8mQNk86xVfhmfoLpduMqMZzeEvJmZqhhNsXJoPkQI
         B7k86td5WNQb9Nzy5JQX132KYC3Vp0i0Kb72b5VRcJfr3x9tC2KZzMWYiJDJCdKrkFn7
         hEHOvpry7RUXNIY+zdTPS0gC3upIDnHHe18fQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=PaKWfow5rbABZiATKxTWuSknL6BLbps/tkOrcO0UrCg=;
        b=YE2B5lwCuK3A/9XZc8hPfnjYhKqaL6YBAp6WRjbQZhVq2EZzMLqbDXnJXpbzsdfCo5
         7E5JPgHyN48O5lsuP4KB0kX3m0O0hNIiw1EFYbrc4m+RnZ9Inik7bHZuuSi0FOLYeMoj
         RcmyHwEXDj38bAa3glxDiAuvo0/W6E0c5jdc2KApfTsQBQ7cEvy8/KLqBYuuF3+nV7YY
         N95kyhwfIg2xVabGfy5wovzDC9ciVtisWIu9iYp6yNOnCB6+q6L3usJI9bXO7OQwnFgs
         2biVlbkwWKUxaOdbxFnQYZyuhdj3bVK/Hl16kOJSY5idl4b9NhaL9i28sK1s5SLNt/Gv
         wIlw==
X-Gm-Message-State: AOAM532Z6sCC+kvZ+IW221ZrJnGjPV90rnOWf9+vUe5xGnZ+ZXBRgaTA
	dUXXfH9xwIx6kPg8E8NGR9SXAg==
X-Google-Smtp-Source: ABdhPJw+KWTs7kohKybTr9AjDKsS03vaUK/T3d2bL9OLCqqS3m0d6q5DO49VckYS75S8HCXDwY7hOQ==
X-Received: by 2002:a05:600c:4fc2:: with SMTP id o2mr450655wmq.90.1611787203790;
        Wed, 27 Jan 2021 14:40:03 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:4bc5:547d:5310:bf3a? ([2001:8b0:aba:5f3c:4bc5:547d:5310:bf3a])
        by smtp.gmail.com with ESMTPSA id i8sm4752366wry.90.2021.01.27.14.40.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Jan 2021 14:40:03 -0800 (PST)
Message-ID: <615d07452e57a775207f03cc0f66e238f5d6c2a5.camel@linuxfoundation.org>
Subject: Re: [yocto] Including binary application as part of the image output
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: chuckkamas@yahoo.com, yocto <yocto@yoctoproject.org>
Date: Wed, 27 Jan 2021 22:40:02 +0000
In-Reply-To: <10e8c340-6435-6158-5d9f-0d00fb4afb4c@yahoo.com>
References: <10e8c340-6435-6158-5d9f-0d00fb4afb4c.ref@yahoo.com>
	 <10e8c340-6435-6158-5d9f-0d00fb4afb4c@yahoo.com>
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2021-01-27 at 10:32 -0800, chuck kamas via
lists.yoctoproject.org wrote:
> 
> As part of our image we build our company's application. This 
> application becomes part of the image and is executed when the image boots.
> 
> My question is how to have the binary image also be available along with 
> the image's wic file? Is there a line I can add to a recipe to have it 
> copy that image file to the tmp/deploy directory or other appropriate 
> directory so that it is available?

You could add a "do_deploy" task that places it there. See
meta/classes/deploy.bbclass and other recipes which add such a task.

Cheers,

Richard


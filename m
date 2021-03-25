Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web10.8796.1616682054868980101
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Mar 2021 07:20:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=I3M7X43m;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f54.google.com with SMTP id k8so2482319wrc.3
        for <yocto@lists.yoctoproject.org>; Thu, 25 Mar 2021 07:20:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=1NEAGW7P2nm/79d/Giyo4jXMs9znkZLPj1PXmlmoqn0=;
        b=I3M7X43mUCVoLYLyQAlNLaPRFe1Q2rIJ68DvMRZHhwzkKF9/2IZoRVQ3uDdZtfH2bZ
         StrWNi3fwjkA5Jxq8uoiUZ20rx1RYbIHWPovwFuvaUeu7okfLKW21Sq1uCZ6bIHWKWGX
         7i++fzRPQxrznnaa1QHjspDn2azdOCZJW1BxM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=1NEAGW7P2nm/79d/Giyo4jXMs9znkZLPj1PXmlmoqn0=;
        b=N4dYtCg8XCyMrydjcM6+Qt1WjS6D211+/SbiMQCuNnyKG+olBpBVns+FDUouY5NVpo
         +K4lCcbvBv/dk5M9sECUkBypDaTeQ9S3WaUJzhd8DiENn3z4W7e+tamf9Adze0gPL1vl
         IJMwZpiuAZYLWvcmMLa9zdw54MiabGgiJp1aT1dmfggopllKlrPkyQDNGUrCzZJ0ht9M
         mFd+S4YsiSrMiJyCTqoh0JWeZQnBjW0Qirh19kjB84oF0ia9DTWuz6F+FOSyaBYikhmE
         xJelSzp0NWV2OsbWXNUy0iDhe36xjPP6IvXNs+oyTJRRb/z73Ram7Cn3MDyUxMq2L50O
         reYQ==
X-Gm-Message-State: AOAM530XfoUTSro1BgYp4Irb3dQ1HS4g9WwNEobPaMiPiYc6wdtEbFaU
	c7RBQYWWL0orRCtqeNp8zsCoUw==
X-Google-Smtp-Source: ABdhPJw+sOWtJ61nOohNRWsW3Scs6s8/DFa5HwaY0frUxhX/0lEMX2eQxUznUSH6YkNe60aHmYGx0w==
X-Received: by 2002:a5d:5047:: with SMTP id h7mr9606876wrt.111.1616682053278;
        Thu, 25 Mar 2021 07:20:53 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:6a6e:24cd:b165:9075? ([2001:8b0:aba:5f3c:6a6e:24cd:b165:9075])
        by smtp.gmail.com with ESMTPSA id q17sm7880215wrv.25.2021.03.25.07.20.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Mar 2021 07:20:52 -0700 (PDT)
Message-ID: <3af78152f03202ea5b93ea02c6fc4314cfae52f3.camel@linuxfoundation.org>
Subject: Re: [yocto] [yocto-autobuilder-helper][dunfell 01/23] scripts: Add runqemu-renice.c for renicing runqemu
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Steve Sakoman <steve@sakoman.com>, yocto@lists.yoctoproject.org
Date: Thu, 25 Mar 2021 14:20:51 +0000
In-Reply-To: <347bae056acff57ee70d8dedd121ed04e4e4c554.1616625264.git.steve@sakoman.com>
References: <cover.1616625264.git.steve@sakoman.com>
	 <347bae056acff57ee70d8dedd121ed04e4e4c554.1616625264.git.steve@sakoman.com>
User-Agent: Evolution 3.39.2-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2021-03-24 at 14:39 -1000, Steve Sakoman wrote:
> From: Richard Purdie <richard.purdie@linuxfoundation.org>
> 
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> (cherry picked from commit 838be1a00c0383b63d1ab60aa991919404b82655)
> Signed-off-by: Steve Sakoman <steve@sakoman.com>
> ---
>  scripts/runqemu-renice.c | 44 ++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 44 insertions(+)
>  create mode 100644 scripts/runqemu-renice.c

This is another one which is only relevant to master, it isn't used from the
older branches.

[Basically the autobuilder has some code which it pulls from the helper
but uses it from the master branch, it isn't release specific. This is 
the janitor, index code and renice offhand, there may be other bits I forget]

Cheers,

Richard


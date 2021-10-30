Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2845AC433F5
	for <webhook@archiver.kernel.org>; Sat, 30 Oct 2021 12:33:11 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by mx.groups.io with SMTP id smtpd.web10.18383.1635597190411011080
 for <yocto@lists.yoctoproject.org>;
 Sat, 30 Oct 2021 05:33:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=PL73uKvM;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.43,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f43.google.com with SMTP id p14so20893299wrd.10
        for <yocto@lists.yoctoproject.org>;
 Sat, 30 Oct 2021 05:33:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=xxaaUnLnhnOnwT9ZlhyNt+hJ5pe1pylQAmCjSsDm84A=;
        b=PL73uKvMWuqMlySxwudV52ZS8/jPZwd7vgirJ6PBRJEY+0M/R3/JxyTzIh+BiP0MWM
         0PWLtpMS3HrDyPwShdgZugVFvgwgoLpwi4ZdRNy28LtuC3SW0iHQuU8tiSd1RvJ2ucVI
         wpckUsS3ylgxNzj72MWNS0LmggXCzuyv7p7RI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=xxaaUnLnhnOnwT9ZlhyNt+hJ5pe1pylQAmCjSsDm84A=;
        b=jdmYP8UrdOfNtGwBYSkl0ARm6zW6iloZ8YwrteK8rTMwNW46o6GJX1K7AmVu1lWKND
         8o4SjJ/yH0/bjyiJP34z451mKKu3yQf4W58Bda+zzti1clyiSDwApjzQfYx1fyTpZMxJ
         lW7v96JG5sVXBanKKegTHxSLBZ2CT82/5DPduKx/052D0hNTD5l+dSas32s4JuvcIG4I
         i0yGa5PJwucRCGUSvVqseM7ZrNOAjBmh30kny3dLzBPoU+yuYXIu5vAG3BSEe0iHHHEL
         iO+v0uuXN1iuNtAkTafYuCPt7JcZebdOD9dwtqRR/IqIVamsmz9rSxOIyP0gfDJLaywm
         S1Fg==
X-Gm-Message-State: AOAM532P7j2b+AgJoYcNf6Yl0QBpsjj0HCJIu7QsZQAvqE4tLRaeb8t8
	plQrPDMvJR2ckGXgaBB6+r3FQw==
X-Google-Smtp-Source: 
 ABdhPJxZpHV1iiyh3IWVX69xyWjzn6T2qmooF87kNZhz25+M415ijeRFO/i+FxaMTxcoqcIxG03GeQ==
X-Received: by 2002:adf:ce0e:: with SMTP id p14mr314439wrn.423.1635597188813;
        Sat, 30 Oct 2021 05:33:08 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:af33:8564:b018:31d5?
 ([2001:8b0:aba:5f3c:af33:8564:b018:31d5])
        by smtp.gmail.com with ESMTPSA id
 k22sm8369069wrd.59.2021.10.30.05.33.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Oct 2021 05:33:08 -0700 (PDT)
Message-ID: 
 <fb302152e4230a1db2df3f7d4dce2def2d32e224.camel@linuxfoundation.org>
Subject: Re: [yocto] [yocto-autobuilder2][PATCH] builders.py: Add
 canStartBuild disk space check
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Trevor Gamblin <trevor.gamblin@windriver.com>,
	yocto@lists.yoctoproject.org
Date: Sat, 30 Oct 2021 13:33:04 +0100
In-Reply-To: <20211029132247.205325-1-trevor.gamblin@windriver.com>
References: <20211029132247.205325-1-trevor.gamblin@windriver.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 30 Oct 2021 12:33:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55192

On Fri, 2021-10-29 at 09:22 -0400, Trevor Gamblin wrote:
> We need a way to limit the builds for when a given worker has less than
> a certain amount of disk space available. This implements a
> canStartBuild method based on the example in the Buildbot docs and
> blocks a build if the worker has less than 60GB of disk space available.
> Unlike the example code, we want the stdout of the command so that we
> can calculate the amount of disk space, rather than just relying on the
> remote command's return code.
> 
> Docs: https://docs.buildbot.net/latest/manual/customization.html#canstartbuild-functions
> 
> [YOCTO #14591]
> 
> Signed-off-by: Trevor Gamblin <trevor.gamblin@windriver.com>
> ---
>  builders.py | 44 ++++++++++++++++++++++++++++++++++++++++----
>  1 file changed, 40 insertions(+), 4 deletions(-)
> 
> diff --git a/builders.py b/builders.py
> index 5773950..0d1facc 100644
> --- a/builders.py
> +++ b/builders.py
> @@ -8,6 +8,7 @@ from yoctoabb import config
>  from yoctoabb.steps.writelayerinfo import WriteLayerInfo
>  from yoctoabb.steps.runconfig import get_publish_dest, get_publish_resultdir, get_publish_name, RunConfigCheckSteps, TargetPresent
>  from buildbot.process.results import Results, SUCCESS, FAILURE, CANCELLED, WARNINGS, SKIPPED, EXCEPTION, RETRY
> +from buildbot.process.remotecommand import RemoteCommand
>  
>  from twisted.python import log
>  from twisted.internet import defer
> @@ -45,6 +46,41 @@ def ensure_props_set(props):
>          "publish_destination": props.getProperty("publish_destination", "")
>      }
>  
> +@defer.inlineCallbacks
> +def shell(command, worker, builder):
> +    args = {
> +        'command': command,
> +        'workdir': worker.worker_basedir,
> +        'logEnviron': False,
> +        'want_stdout': True,
> +        'want_stderr': False,
> +    }
> +
> +    cmd = RemoteCommand('shell', args, collectStdout=True, stdioLogName="stdio")
> +    cmd.worker = worker
> +    yield cmd.run(None, worker.conn, builder.name)
> +    return cmd
> +
> +@defer.inlineCallbacks
> +def canStartBuild(builder, wfb, request):
> +    log.msg("Checking available disk space...")
> +
> +    cmd = yield shell("df -BG | grep $(findmnt -T . | awk '{print $2}' | sed -n 2p) | awk '{print $4}' | sed 's/[^0-9]*//g'", wfb.worker, builder)
> +    threshold = 60 # GB of space
> +    if int(cmd.stdout) < threshold:
> +        log.msg("Detected {0} GB of space available, less than threshold of {1} GB. Can't start build".format(cmd.stdout, threshold))
> +        wfb.worker.putInQuarantine()
> +        return False
> +    else:
> +        log.msg("Detected {0} GB of space available, more than threshold of {1} GB. OK to build".format(cmd.stdout, threshold))
> +
> +    wfb.worker.quarantine_timeout = 120
> +    wfb.worker.putInQuarantine()
> +
> +    wfb.worker.resetQuarantine()
> +
> +    return True
> +

Unfortunately this quarantine piece is causing problems. It means that even if
there is free space on the builder and always was, a maximum of one build every
2 minutes can be started.

I'll probably drop the quarantine piece as it was a nice to have soft start for
recovery rather than an essential.

Cheers,

Richard




Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
 by mx.groups.io with SMTP id smtpd.web10.2235.1620244537049256390
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 May 2021 12:55:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Rlj/jy7V;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.43, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f43.google.com with SMTP id v12so3126723wrq.6
        for <yocto@lists.yoctoproject.org>; Wed, 05 May 2021 12:55:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=uCtHHdjg5stYRAVbNMqZv9tvw8ETSRRfxnpR7q9EW/w=;
        b=Rlj/jy7VpoijxZGVEyd32jKbEfkc9tx3j0sXKbbyW/G/qpuxDt9Ka/BNZibqGGmddY
         YJX7sCparZtXJtJ/CFwqPatvpmEDhhRleBU7pN1/Z/69mP5BY6Sm9enO5TRONNktDrvi
         TsTJmBH0k/WXyLzcU63i9XhBiWpRO9hNc4Wm4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=uCtHHdjg5stYRAVbNMqZv9tvw8ETSRRfxnpR7q9EW/w=;
        b=Y+RauZcgLzwOivRzbgC6B0XZF7CjsP7UwggaJOu44ofKCX7lNnafcduZJvVBCqvdho
         z7wNOUhZCaUSKC2BcGhOmMsEjaHrfFrsnYnZ+MHtHeK/clxr1m5bQ6Tyx/10+39HcglO
         L/38E9lJlqv3kOW/EPLSrPyFZZM55+oWzLG7in9QKz2ULqX/m+15FXdZKqYMclZsykBP
         sNkbA9htwIs8DrWYVLhBu1xYarb7banAZP1Z568Hzu5mHPTAcpQm/cdev9llTXaBfqZT
         uxE8w7E/cMuzmYtnA7nV70aB9YqV55nONGYXMemZ74erxGD534FsnFjFTUp/0D/On24k
         rEtA==
X-Gm-Message-State: AOAM5309OP4jEofkY8bkIl7osL1yoLstMbxhUsO1rk+DWrSdWsgh2M7h
	5cc+PZRj4KfiDlEjAKCatnjj2A==
X-Google-Smtp-Source: ABdhPJy7XP/EP2ZzDhtUkSPGmXsABoj0YsY6QPKkpuW49Oy4GMri3SowQf+e77nzFTneeuVxmlzBhA==
X-Received: by 2002:a05:6000:1866:: with SMTP id d6mr769819wri.141.1620244535652;
        Wed, 05 May 2021 12:55:35 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:8041:e424:9226:62e7? ([2001:8b0:aba:5f3c:8041:e424:9226:62e7])
        by smtp.gmail.com with ESMTPSA id f203sm6488214wmf.20.2021.05.05.12.55.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 May 2021 12:55:35 -0700 (PDT)
Message-ID: <293588c569ff3b6031b42fdbfadfb6c421158857.camel@linuxfoundation.org>
Subject: Re: [yocto] SSH_AUTH_SOCK unavailable when pulling modules #golang
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: sven@svenschwermer.de, yocto@lists.yoctoproject.org
Date: Wed, 05 May 2021 20:55:32 +0100
In-Reply-To: <yseH.1620066309524235040.gUmM@lists.yoctoproject.org>
References: <yseH.1620066309524235040.gUmM@lists.yoctoproject.org>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2021-05-03 at 11:25 -0700, Sven via lists.yoctoproject.org wrote:
Hi,

I have put together a recipe inheriting from go-mod. This project depends on 
> out-of-repo modules that sit in private repos. As long as the SSH key required 
> to pull the requirements is present as a file (under $HOME/.ssh), everything 
> works fine. However, as soon as the SSH credentials are only available via 
> agent and $SSH_AUTH_SOCK, the do_compile step fails. I have traced this down 
> to the fact that the $SSH_AUTH_SOCK environment variable is not available to
> do_compile which is when the requirements are pulled. This is the sort of error 
> message I get:

ERROR: mypackage-git-r0 do_compile: Execution of '[...]/mypackage/git-r0/temp/run.do_compile.20076' 
> failed with exit code 1:
# cd .; git ls-remote https://bitbucket.org/myorg/some-requirement
Permission denied (publickey).
fatal: Could not read from remote repository.

Note, that the do_fetch step succeeds in pulling the actual repo. I tried fixing 
> the problem by wrapping the do_compile function and providing $SSH_AUTH_SOCK from
> the original environment:

def origenv(d, var):
    return d.getVar("BB_ORIGENV", False).getVar(var, False)

do_compile() {
    if [ -n "${@origenv(d, 'SSH_AUTH_SOCK') or ''}" ]; then
        export SSH_AUTH_SOCK="${@origenv(d, 'SSH_AUTH_SOCK')}"
    fi
    go_do_compile
}

This allows the do_compile step (and all subsequent steps) to finish successfully. 
> However, that way, I get a bunch of errors like this (cleansstate does not help):

ERROR: When reparsing [...]/mypackage_git.bb:do_compile, the basehash value 
> changed from eb51e4ec321c723587cec03bb9b33b94ee43e0b0939eb43b52824e3d5cfebec2 
> to 2bb034f43856917d6454a56b32946b1c68cf7f286b20fd7a7eaf1bfd2a92d34f. The metadata 
> is not deterministic and this needs to be fixed.
ERROR: The following commands may help:
ERROR: $ bitbake mypackage -cdo_compile -Snone
ERROR: Then:
ERROR: $ bitbake mypackage -cdo_compile -Sprintdiff

Neither command helps to fix this. What can I do? I'm on poky yocto-3.1.5-18-gbb7747497a.

You can probably 'fix' that with:

do_compile[vardepsexclude] += "SSH_AUTH_SOCK"

however you really shouldn't be accessing the network in a compile task.
That is a wider go issue :(.

Cheers,

Richard




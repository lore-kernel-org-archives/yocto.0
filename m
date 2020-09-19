Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
 by mx.groups.io with SMTP id smtpd.web12.6357.1600495456969399431
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Sep 2020 23:04:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=frgFVEwc;
 spf=pass (domain: gmail.com, ip: 209.85.215.170, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f170.google.com with SMTP id k14so4728394pgi.9
        for <yocto@lists.yoctoproject.org>; Fri, 18 Sep 2020 23:04:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ZSjez374oo4fNdmHL2jNLKNpYSeDEfrar5aXtEGNjDw=;
        b=frgFVEwcGGPecOSF4mcBgOfd55aIuoffPpZJ1m7tLFV+4Ld5jpmIwySbgIcnMmj2aD
         W/0e/zBQMUhhYY9brZL7hXdJJfkCoOvHIaTZSLQBWrRzBlz4bHsWCsOqM+ohYhBjmp9n
         6wBuxsEw1Daqf8zEmGN+LnD43Bg7ECojh10YweJifrdfhxVLCt2wWtxhqb5rzJ8G8pkN
         E6lyVYLeEMlQuXt93EPwwvecREW24eHYfaT/dQwl/d2IjQe+vCzskciMvnccMHyk+XcV
         Jqxsui7/oIGpotp7i7C8HP2+qQlEBX7JaUloQLdcfqBG/jo3xTqAy8x9fkXZ5U152Xa5
         rODg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=ZSjez374oo4fNdmHL2jNLKNpYSeDEfrar5aXtEGNjDw=;
        b=FV8ZnemigbDhbUrBHtJevsTC+QWiOG6Wc+CYXBUmq/cxw76cMHLnegc8Omqy2U2QoM
         vB9ElSDilQL2jR4nw6Jef9iLQs6HTvaLJy/xnsF91/g3qwg6nyGxKi7z9SbytrwY6vGr
         2dDibMSHEiCcWZ96dYHR6jX7KCFYmlMT1YBbyyQb1e04a/i7QMGCJ8p682TBuj7YGyVf
         sEg/7/5PIzHkmiSRs27+CNX2feLEUZlAt+JwbeigYL5GojQNYN81kZ5pAxr/P1FjpjsD
         PfRZLE1HxlPmXE1LCvW7jlOrytNjwFguZMZYqXeWmB/wl8D4vO7G+KCa9b2IzSlq+Bwx
         OCug==
X-Gm-Message-State: AOAM530uTGVf4VKaBgcaQlAvzb1nAM8+0gsQpZkeS12XovY1F3sMAYdU
	CjmpLSTCKE3I+FVBErSsuCy5STYHLua7jg==
X-Google-Smtp-Source: ABdhPJw/Ga+NbNL+3Hd/YU/vdEQ2AhFpPUX3XyH3DrUrlM+mq6JHm1sFjLeqdt1oShEzUGhj36Fumw==
X-Received: by 2002:a63:f70e:: with SMTP id x14mr29502605pgh.407.1600495455804;
        Fri, 18 Sep 2020 23:04:15 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:8d7e:79c0:27e5:7d4? ([2601:646:9200:4e0:8d7e:79c0:27e5:7d4])
        by smtp.gmail.com with ESMTPSA id h1sm4461112pji.52.2020.09.18.23.04.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 23:04:15 -0700 (PDT)
Subject: Re: [yocto] Yocto recipe for Tailscale #yocto #golang
To: mthompson@dustyrobotics.com, yocto@lists.yoctoproject.org
References: <554d231986639cbe9b6a77c36b41a9947e0458a3.camel@delisys.ch>
 <23477.1600472819113950080@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <8132db85-5881-636e-c091-d84c47efe4fe@gmail.com>
Date: Fri, 18 Sep 2020 23:04:14 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.2.2
MIME-Version: 1.0
In-Reply-To: <23477.1600472819113950080@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit



On 9/18/20 4:46 PM, Mike Thompson via lists.yoctoproject.org wrote:
> OK, I'm making some progress a Bitbake recipe for the Tailscale client 
> built using Go from various samples I found in the OpenEmbedded layers.
> However, I'm running into import issues during compilation and I'm 
> hoping a person familiar with Go might be able to provide some hints. 
>  From what I can tell, Go packages to are allowed to declare that they 
> must be imported using a specific name 
> <https://golang.org/cmd/go/#hdr-Import_path_checking> and it seems that 
> declaration is included in the Tailscale source code.
> Is there a way to craft the Bitbake recipe to honor that requirement for 
> the Tailscale Go source code?
> Currently, my Bitbake recipe for Tailscale looks as shown below.
> tailscale_1.0.5.bb
> -----------------------------------------------------------------
> SUMMARY = "Tailscale client and daemon for Linux"
> HOMEPAGE = "github.com/tailscale/tailscale"
> LICENSE = "DWTFYW"
> LIC_FILES_CHKSUM = 
> "file://src/${GO_IMPORT}/LICENSE;md5=d995c1c44529856a0f35a5ad43e51cc5"
> GO_IMPORT = "github.com/tailscale/tailscale"
> SRC_URI = "git://${GO_IMPORT};nobranch=1;tag=v${PV}"
> inherit go
> GO_INSTALL = "${GO_IMPORT}/cmd/tailscale"
> RDEPENDS_${PN}-dev += "bash"
> -----------------------------------------------------------------
> The Bitbake output with the import error is below:
> -----------------------------------------------------------------
> $ bitbake tailscale
> ...
> NOTE: Executing Tasks
> ERROR: tailscale-1.0.5-r0 do_compile: Execution of 
> '/home/mike/Development/markbot_linux/build_markbot/tmp/work/corei7-64-dusty-linux/tailscale/1.0.5-r0/temp/run.do_compile.10615' 
> failed with exit code 1:
> can't load package: package 
> github.com/tailscale/tailscale/cmd/tailscale: code in directory 
> /home/mike/Development/markbot_linux/build_markbot/tmp/work/corei7-64-dusty-linux/tailscale/1.0.5-r0/build/src/github.com/tailscale/tailscale/cmd/tailscale 
> expects import "tailscale.com/cmd/tailscale"
> can't load package: package .: no Go files in 
> /home/mike/Development/markbot_linux/build_markbot/tmp/work/corei7-64-dusty-linux/tailscale/1.0.5-r0/build
> WARNING: exit code 1 from a shell command.
> ERROR: Logfile of failure stored in: 
> /home/mike/Development/markbot_linux/build_markbot/tmp/work/corei7-64-dusty-linux/tailscale/1.0.5-r0/temp/log.do_compile.10615
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | can't load package: package 
> github.com/tailscale/tailscale/cmd/tailscale: code in directory 
> /home/mike/Development/markbot_linux/build_markbot/tmp/work/corei7-64-dusty-linux/tailscale/1.0.5-r0/build/src/github.com/tailscale/tailscale/cmd/tailscale 
> expects import "tailscale.com/cmd/tailscale"
> | can't load package: package .: no Go files in 
> /home/mike/Development/markbot_linux/build_markbot/tmp/work/corei7-64-dusty-linux/tailscale/1.0.5-r0/build
> | WARNING: exit code 1 from a shell command.
> | ERROR: Execution of 
> '/home/mike/Development/markbot_linux/build_markbot/tmp/work/corei7-64-dusty-linux/tailscale/1.0.5-r0/temp/run.do_compile.10615' 
> failed with exit code 1:
> | can't load package: package 
> github.com/tailscale/tailscale/cmd/tailscale: code in directory 
> /home/mike/Development/markbot_linux/build_markbot/tmp/work/corei7-64-dusty-linux/tailscale/1.0.5-r0/build/src/github.com/tailscale/tailscale/cmd/tailscale 
> expects import "tailscale.com/cmd/tailscale"
> | can't load package: package .: no Go files in 
> /home/mike/Development/markbot_linux/build_markbot/tmp/work/corei7-64-dusty-linux/tailscale/1.0.5-r0/build
> | WARNING: exit code 1 from a shell command.
> |
> ERROR: Task 
> (/home/mike/Development/markbot_linux/sources/meta-markbot/recipes-tailscale/tailscale/tailscale_1.0.5.bb:do_compile) 
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 2253 tasks of which 2245 didn't need to 
> be rerun and 1 failed.
> -----------------------------------------------------------------
> Thanks,
> Mike Thompson


perhaps you need to inherit go-mod as well, if its using modules.

> 
> 
> 
> 

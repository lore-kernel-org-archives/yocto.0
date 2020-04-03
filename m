Received: from mail-il1-f194.google.com (mail-il1-f194.google.com [209.85.166.194])
 by mx.groups.io with SMTP id smtpd.web11.1024.1585934776256855769
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Apr 2020 10:26:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=tQ37EtdT;
 spf=pass (domain: gmail.com, ip: 209.85.166.194, mailfrom: raj.khem@gmail.com)
Received: by mail-il1-f194.google.com with SMTP id x16so8006825ilp.12
        for <yocto@lists.yoctoproject.org>; Fri, 03 Apr 2020 10:26:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=eidsvz+XNQKQUaTGnbVJWfioOZaKiMNu+01wXpe8zWQ=;
        b=tQ37EtdToQ/oSBVy8mF+hJYre/pYMCYU44fy873cGYaqMUFt1VWI8Fu+OxaWyAirYK
         TLZEMOGQwJVT9TKMfxWsjpIouW+0gkvDsmjYJOEjBe9xzgm8elb6DpYUDXj9eWTS7Ru6
         hk9I2jR7Bgl8un0hgOZqqNj7DkZQPNxET/jR+aRXrqLt/PWccg4X1A5b+iuYgzLmJ7Ul
         0x4q5ZPd+cHRIsA/5EBX9AFhC3rEVY9GRJOrzDN6tlmiXb2JDIrWgrUMnzvDMX6co3Wt
         xOnIipSXGAm3He5KGJzZoZfwEDW/B2XTbPbkFCYN91AXRXJnmloN1VoD9l09ZWyBsDsZ
         8kCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=eidsvz+XNQKQUaTGnbVJWfioOZaKiMNu+01wXpe8zWQ=;
        b=uN0TeUovNCyfqaoK2vN4YOKyG2/zl4B9T3rsEI+UkS9SG6CG9o99SepsHazbcZ6LfN
         yhWQQoL0u4G7LQ1JE2hL2ZgFZVk/6zVRcPoseNG47OnoTr2u2V08Mc3dHC98g06oOzyd
         5llpG+DGQXwbXmlsdge2Te1BS3OLT3D5JMW5FYvYV0Jop384f5OsiHjV/1ceg8WMh+52
         1RgDFPK2WzNue4vlKkoslapmAGV/c/2U9ZZxGHREvDA7DrVeY1eLoK1tLUPpUXGCyH7h
         rVDTJ85Ca/BQlX6Xd8nW2AShfcjjS7Q7tpxarxPd3rBCBZ5tXfvx3EvK+nzQlbvQuQnr
         3/tA==
X-Gm-Message-State: AGi0Pub92idWaHOCWBClfz42YlmEsTPcFbGjym/sEiV3FWKUcUbE1WF4
	gui41PCD533zfoUlwkNRRlI7upBaIRE=
X-Google-Smtp-Source: APiQypKbUAKcv/uttvVlcGvUV9VLVudLR6+cHtJsaxSk/yOuzHYp2SmXcaX+gLUftTENuLzyfuaKLg==
X-Received: by 2002:a92:bbd8:: with SMTP id x85mr10013118ilk.40.1585934775092;
        Fri, 03 Apr 2020 10:26:15 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:5d80:f4ba:ee3c:9546? ([2601:646:9200:4e0:5d80:f4ba:ee3c:9546])
        by smtp.gmail.com with ESMTPSA id c28sm2995205ilf.26.2020.04.03.10.26.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Apr 2020 10:26:14 -0700 (PDT)
Subject: Re: [yocto] JFFS2 no udef, all char/block devices hardlinked to /dev/console
To: =?UTF-8?Q?Andreas_Dr=c3=b6scher?= <yocto@bugfree.ch>,
 yocto@lists.yoctoproject.org
References: <4aa6bbbd-0a48-f08f-1ef3-30f52041c33e@droescher.ch>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <cd629181-8433-ac54-ec35-9922ad6d155e@gmail.com>
Date: Fri, 3 Apr 2020 10:26:13 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <4aa6bbbd-0a48-f08f-1ef3-30f52041c33e@droescher.ch>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit



On 4/3/20 1:45 AM, Andreas Dröscher wrote:
> Hi
> 
> I'm doing a Yocto Zeus build for a very old Linux Kernel (The Kernel is 
> built
> outside of Yocto). Since my target CPU, based on mips32 little endian, was
> removed from Linux mainline I've opted to use musl to keep at least the
> user space up to date.
> 
> I'm building a JFFS2 root fs using --devtable= since my kernel does not 
> have
> devfs/udev. The file looks like:
> /dev/console    c   640      0       0        5      1       -       
> -       -
> /dev/full       c   640      0       0        1      7       -       
> -       -
> /dev/mtd        c   640      0       0       90      0       0       
> 2       8
> /dev/mtdblock   b   640      0       0       31      0       0       
> 1       8
> /dev/null       c   666      0       0        1      3       -       
> -       -
> ...
> 
> Running mkfs.jffs2 outside Yocto works. Running mkfs.jffs2 as part of the
> default image build step breaks my char/block devices. All device files are
> hard linked to the first one. Moreover the permissions are also reset.
> 

are you running same mkfs.jffs2 utility in and outside yocto experiment 
? if not then lets fix that first, it could be a problem in the native 
package that yocto build system produces.

> Example Output of ls /dev/*:
> crw-r----- 16 root root 5, 1, Jan 1 1970 /dev/console
> crw-r----- 16 root root 5, 1, Jan 1 1970 /dev/full
> crw-r----- 16 root root 5, 1, Jan 1 1970 /dev/mtd0
> crw-r----- 16 root root 5, 1, Jan 1 1970 /dev/mtd1
> ...
> crw-r----- 16 root root 5, 1, Jan 1 1970 /dev/mtdblock0
> crw-r----- 16 root root 5, 1, Jan 1 1970 /dev/mtdblock1
> ..
> crw-r----- 16 root root 5, 1, Jan 1 1970 /dev/mtdchar
> crw-r----- 16 root root 5, 1, Jan 1 1970 /dev/null
> 
> It looks like add_host_filesystem_entry calls lstat for all files added 
> to the
> JFFS2 including files that do not exist. For some reason I do not yet 
> understand
> lstat returns garbage instead of just failing on my system (Ubuntu 
> 18.04). This
> in turn leads to the hard linking and permisson issues described above. I
> suggest to disable lstat for device files to counter this issue:

the fact that it works outside yocto, I think it might be premature to 
disable it, we should see if we can find the real cause for the issue, 
it could be fixed rightly then


> 
> ---
>   jffsX-utils/mkfs.jffs2.c | 8 ++++++--
>   1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/jffsX-utils/mkfs.jffs2.c b/jffsX-utils/mkfs.jffs2.c
> index 9afd920..2779706 100644
> --- a/jffsX-utils/mkfs.jffs2.c
> +++ b/jffsX-utils/mkfs.jffs2.c
> @@ -219,14 +219,18 @@ static struct filesystem_entry 
> *add_host_filesystem_entry(const char *name,
>           const char *path, unsigned long uid, unsigned long gid,
>           unsigned long mode, dev_t rdev, struct filesystem_entry *parent)
>   {
> -    int status;
> +    int status = -1;
>       char *tmp;
>       struct stat sb;
>       time_t timestamp = time(NULL);
>       struct filesystem_entry *entry;
> 
>       memset(&sb, 0, sizeof(struct stat));
> -    status = lstat(path, &sb);
> +
> +    //Do not call lstat for char- and  block-devices
> +    if (major(rdev) == 0) {
> +        status = lstat(path, &sb);
> +    }
> 
>       if (status >= 0) {
>           /* It is ok for some types of files to not exit on disk (such as
> 
> 
> 

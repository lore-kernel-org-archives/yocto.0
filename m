Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
 by mx.groups.io with SMTP id smtpd.web12.409.1630517428433149827
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Sep 2021 10:30:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=lHFYCu0J;
 spf=pass (domain: gmail.com, ip: 209.85.222.170, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f170.google.com with SMTP id a10so181921qka.12
        for <yocto@lists.yoctoproject.org>; Wed, 01 Sep 2021 10:30:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=05JduZrL3nxi0cadmT77/A+9BC3d5vb1CDVqZFcME1M=;
        b=lHFYCu0JctxF8PgErkjEwD8rKdh2AnRpysOnD2xy4fWi8mIm4I4Bpqv/sGJls5XQFP
         UoAgP1kdDsBHmQw6QtUV4Ft5KEeZuSfLosg5hgbRKBSGtb+Tqhx5L05cwAsY4xBE7SBN
         jKv9DsBN+FXv+C4Cbotl+NzdbSaOfqDHRPZdCubOumVoW4jb8LNKyxLnUFnI2PL5XkyU
         s6/y5vDS64uJD7doLMiWauTag57s/TzMknYdvwxFN3vJ9eevAGwhHtuzB2CuS1l3lyH7
         2vPMvlqHGiTOi2gx6HbVdHN0ZD/vsPcS4xfGBOzovwxwiV7lpl3A/t9ql5yuhCqaV3c9
         Qo6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=05JduZrL3nxi0cadmT77/A+9BC3d5vb1CDVqZFcME1M=;
        b=ZRnQKL3Li7PXO9ZEgS71zZ+JEujm5rtUmchoRy6oyrnuPFCNdctQRgPrA+sMavhRR8
         6AhEsG5li9DYNrQPL59oBbzS6jf3f27p88vR4U/Nw9umSTeNgAlLWQ0BKrRIwv0Cbd78
         6mSajVRXht5hqc3iaXz8mnUA8T8Q8f8/GF2xmgls0VVK+wTNIxSBzRJEqzLM1XNgZzVK
         LeJ1fMvroC1R4AMZlhGx3dM7CkkoBMvnLffMC/R7+UWM7c5nPeVfwpBxDjUnDiiF7Sx9
         jbvpgdmR20nLtTtCx3aQNQMO/AiEnWKYz/oVyi/QwLYFUrd/EnGArTX+3De776H2AywQ
         rp0Q==
X-Gm-Message-State: AOAM532pg/i+E16SG6GKF5frLNiW2MpAjqY/p+FtXr7Ld8w/nLPaShCB
	UQqgDTr3C6aTWGdkzW+7KSYsQvXOTDg4bX5NjEQ9/L83TDiNow==
X-Google-Smtp-Source: ABdhPJw25ZBLt+SYKUOz9O52xG8ZiFPfwdrdr1fsXkkXF4bsIjaJ+u/5ZXXMCklJYv3oDw9XFrhVsJrMZrTvnJUIA10=
X-Received: by 2002:a37:58b:: with SMTP id 133mr780971qkf.146.1630517427327;
 Wed, 01 Sep 2021 10:30:27 -0700 (PDT)
MIME-Version: 1.0
References: <9YXg.1629971335581080377.YiDx@lists.yoctoproject.org>
In-Reply-To: <9YXg.1629971335581080377.YiDx@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Wed, 1 Sep 2021 10:30:01 -0700
Message-ID: <CAMKF1srVr1fm1-Q4epRgZ1wmBYkCdRQpHHADy46MDVRL0o9-uQ@mail.gmail.com>
Subject: Re: [yocto] porting riscv on openjdk
To: abhishek.kumar@exaleapsemi.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

please use https://github.com/riscv/riscv-openjdk fork.

On Wed, Sep 1, 2021 at 7:22 AM <abhishek.kumar@exaleapsemi.com> wrote:
>
> hi sir
> i am trying to build openjdk on riscv but i am facing problem can you suggest what steps i need to follow
>
> root@exaleapsemi-3:~/abhi/jdk# bash configure
> configure: Configuration created at Thu Aug 26 08:50:43 UTC 2021.
> checking for basename... /usr/bin/basename
> checking for dirname... /usr/bin/dirname
> checking for file... /usr/bin/file
> checking for ldd... no
> checking for bash... /bin/bash
> checking for cat... /bin/cat
> checking for chmod... /bin/chmod
> checking for cp... /bin/cp
> checking for cut... /usr/bin/cut
> checking for date... /bin/date
> checking for gdiff... [not found]
> checking for diff... /usr/bin/diff
> checking for echo... echo [builtin]
> checking for expr... /usr/bin/expr
> checking for find... /usr/bin/find
> checking for gunzip... /bin/gunzip
> checking for pigz... [not found]
> checking for gzip... /bin/gzip
> checking for head... /usr/bin/head
> checking for ln... /bin/ln
> checking for ls... /bin/ls
> checking for gmkdir... [not found]
> checking for mkdir... /bin/mkdir
> checking for mktemp... /bin/mktemp
> checking for mv... /bin/mv
> checking for gawk... /usr/bin/gawk
> checking for printf... printf [builtin]
> checking for rm... /bin/rm
> checking for rmdir... /bin/rmdir
> checking for sh... /bin/sh
> checking for sort... /usr/bin/sort
> checking for tail... /usr/bin/tail
> checking for gtar... /bin/gtar
> checking for tee... /usr/bin/tee
> checking for touch... /bin/touch
> checking for tr... /usr/bin/tr
> checking for uname... /bin/uname
> checking for wc... /usr/bin/wc
> checking for xargs... /usr/bin/xargs
> checking for grep that handles long lines and -e... /bin/grep
> checking for egrep... /bin/grep -E
> checking for fgrep... /bin/grep -F
> checking for a sed that does not truncate output... /bin/sed
> checking for df... /bin/df
> checking for nice... /bin/nice
> checking for greadlink... [not found]
> checking for readlink... /usr/bin/readlink
> checking for cygpath... [not found]
> checking for wslpath... [not found]
> checking for lsb_release... [not found]
> checking for cmd.exe... [not found]
> checking for cmp... /usr/bin/cmp
> checking for uniq... /usr/bin/uniq
> checking build system type... riscv64-unknown-linux-gnu
> checking host system type... riscv64-unknown-linux-gnu
> checking target system type... riscv64-unknown-linux-gnu
> checking openjdk-build os-cpu... linux-riscv64
> checking openjdk-build C library... gnu
> checking openjdk-target os-cpu... linux-riscv64
> checking openjdk-target C library... gnu
> checking compilation type... native
> checking for top-level directory... /home/root/abhi/jdk
> checking if custom source is suppressed (openjdk-only)... disabled, default
> checking for --enable-debug... disabled, default
> checking which debug level to use... release
> checking which variants of the JVM to build... server
> checking if absolute paths should be allowed in the build output... no, release build
> checking for sysroot...
> checking for toolchain path...
> checking for extra path...
> checking where to store configuration... in default location
> checking what configuration name to use... linux-riscv64-server-release
> checking for zypper... [not found]
> checking for apt-get... /usr/bin/apt-get
> checking for pandoc... [not found]
> checking for gmake... [not found]
> checking for make... /usr/bin/make
> configure: Testing potential make at /usr/bin/make, found using make in PATH
> configure: Using GNU make at /usr/bin/make (version: GNU Make 4.3)
> checking if make --output-sync is supported... yes
> checking for output-sync value... none
> checking if find supports -delete... yes
> checking what type of tar was found... gnu
> checking that grep (/bin/grep) -Fx handles empty lines in the pattern list correctly... yes
> checking for unzip... /usr/bin/unzip
> checking for zip... /usr/bin/zip
> checking for greadelf... [not found]
> checking for readelf... /usr/bin/readelf
> checking for dot... [not found]
> checking for hg... [not found]
> checking for git... /usr/bin/git
> checking for stat... /bin/stat
> checking for time... time [builtin]
> checking for flock... /usr/bin/flock
> checking for dtrace... [not found]
> checking for gpatch... [not found]
> checking for patch... /usr/bin/patch
> checking for ulimit... ulimit [builtin]
> checking bash version... 5.0.18
> checking if bash supports pipefail... yes
> checking if bash supports errexit (-e)... yes
> checking for pkg-config... /usr/bin/pkg-config
> checking pkg-config is at least version 0.9.0... yes
> checking for default LOG value...
> checking if packaged modules are kept... enabled, default
> checking for version string... 18-internal+0-adhoc.root.jdk
> checking for javac... [not found]
> checking for java... [not found]
> configure: Could not find a valid Boot JDK. OpenJDK distributions are available at http://jdk.java.net/.
> configure: This might be fixed by explicitly setting --with-boot-jdk
> configure: error: Cannot continue
> configure exiting with result code 1
> root@exaleapsemi-3:~/abhi/jdk# apt-get install libcups2-dev
> Reading package lists... Done
> Building dependency tree
> Reading state information... Done
> E: Unable to locate package libcups2-dev
> root@exaleapsemi-3:~/abhi/jdk# apt-get install libfontconfig1-dev
> Reading package lists... Done
> Building dependency tree
> Reading state information... Done
> E: Unable to locate package libfontconfig1-dev
> root@exaleapsemi-3:~/abhi/jdk# apt-get install libasound2-dev
> Reading package lists... Done
> Building dependency tree
> Reading state information... Done
> E: Unable to locate package libasound2-dev
> root@exaleapsemi-3:~/abhi/jdk# bash configure
> configure: Configuration created at Thu Aug 26 08:52:37 UTC 2021.
> checking for basename... /usr/bin/basename
> checking for dirname... /usr/bin/dirname
> checking for file... /usr/bin/file
> checking for ldd... no
> checking for bash... /bin/bash
> checking for cat... /bin/cat
> checking for chmod... /bin/chmod
> checking for cp... /bin/cp
> checking for cut... /usr/bin/cut
> checking for date... /bin/date
> checking for gdiff... [not found]
> checking for diff... /usr/bin/diff
> checking for echo... echo [builtin]
> checking for expr... /usr/bin/expr
> checking for find... /usr/bin/find
> checking for gunzip... /bin/gunzip
> checking for pigz... [not found]
> checking for gzip... /bin/gzip
> checking for head... /usr/bin/head
> checking for ln... /bin/ln
> checking for ls... /bin/ls
> checking for gmkdir... [not found]
> checking for mkdir... /bin/mkdir
> checking for mktemp... /bin/mktemp
> checking for mv... /bin/mv
> checking for gawk... /usr/bin/gawk
> checking for printf... printf [builtin]
> checking for rm... /bin/rm
> checking for rmdir... /bin/rmdir
> checking for sh... /bin/sh
> checking for sort... /usr/bin/sort
> checking for tail... /usr/bin/tail
> checking for gtar... /bin/gtar
> checking for tee... /usr/bin/tee
> checking for touch... /bin/touch
> checking for tr... /usr/bin/tr
> checking for uname... /bin/uname
> checking for wc... /usr/bin/wc
> checking for xargs... /usr/bin/xargs
> checking for grep that handles long lines and -e... /bin/grep
> checking for egrep... /bin/grep -E
> checking for fgrep... /bin/grep -F
> checking for a sed that does not truncate output... /bin/sed
> checking for df... /bin/df
> checking for nice... /bin/nice
> checking for greadlink... [not found]
> checking for readlink... /usr/bin/readlink
> checking for cygpath... [not found]
> checking for wslpath... [not found]
> checking for lsb_release... [not found]
> checking for cmd.exe... [not found]
> checking for cmp... /usr/bin/cmp
> checking for uniq... /usr/bin/uniq
> checking build system type... riscv64-unknown-linux-gnu
> checking host system type... riscv64-unknown-linux-gnu
> checking target system type... riscv64-unknown-linux-gnu
> checking openjdk-build os-cpu... linux-riscv64
> checking openjdk-build C library... gnu
> checking openjdk-target os-cpu... linux-riscv64
> checking openjdk-target C library... gnu
> checking compilation type... native
> checking for top-level directory... /home/root/abhi/jdk
> checking if custom source is suppressed (openjdk-only)... disabled, default
> checking for --enable-debug... disabled, default
> checking which debug level to use... release
> checking which variants of the JVM to build... server
> checking if absolute paths should be allowed in the build output... no, release build
> checking for sysroot...
> checking for toolchain path...
> checking for extra path...
> checking where to store configuration... in default location
> checking what configuration name to use... linux-riscv64-server-release
> checking for zypper... [not found]
> checking for apt-get... /usr/bin/apt-get
> checking for pandoc... [not found]
> checking for gmake... [not found]
> checking for make... /usr/bin/make
> configure: Testing potential make at /usr/bin/make, found using make in PATH
> configure: Using GNU make at /usr/bin/make (version: GNU Make 4.3)
> checking if make --output-sync is supported... yes
> checking for output-sync value... none
> checking if find supports -delete... yes
> checking what type of tar was found... gnu
> checking that grep (/bin/grep) -Fx handles empty lines in the pattern list correctly... yes
> checking for unzip... /usr/bin/unzip
> checking for zip... /usr/bin/zip
> checking for greadelf... [not found]
> checking for readelf... /usr/bin/readelf
> checking for dot... [not found]
> checking for hg... [not found]
> checking for git... /usr/bin/git
> checking for stat... /bin/stat
> checking for time... time [builtin]
> checking for flock... /usr/bin/flock
> checking for dtrace... [not found]
> checking for gpatch... [not found]
> checking for patch... /usr/bin/patch
> checking for ulimit... ulimit [builtin]
> checking bash version... 5.0.18
> checking if bash supports pipefail... yes
> checking if bash supports errexit (-e)... yes
> checking for pkg-config... /usr/bin/pkg-config
> checking pkg-config is at least version 0.9.0... yes
> checking for default LOG value...
> checking if packaged modules are kept... enabled, default
> checking for version string... 18-internal+0-adhoc.root.jdk
> checking for javac... [not found]
> checking for java... [not found]
> configure: Could not find a valid Boot JDK. OpenJDK distributions are available at http://jdk.java.net/.
> configure: This might be fixed by explicitly setting --with-boot-jdk
> configure: error: Cannot continue
> configure exiting with result code 1
> 
>

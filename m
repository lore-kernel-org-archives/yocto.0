Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
 by mx.groups.io with SMTP id smtpd.web12.7156.1598424186876160922
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Aug 2020 23:43:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Y7SSYNQ1;
 spf=pass (domain: gmail.com, ip: 209.85.210.170, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f170.google.com with SMTP id t185so446263pfd.13
        for <yocto@lists.yoctoproject.org>; Tue, 25 Aug 2020 23:43:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=gY78Ny6UiM1aMtSB53qWs1EFs9oZ9S9RkGN0I2NZYH4=;
        b=Y7SSYNQ1LxSiJbXqvGetneqBx/SdUT4ZscoGuUtHj9VAlX2bTjevgPuhqVX/pkiCGl
         wXKUrWHSbix84YEKmF3IK5dLfvGF7oyYLY65Z6LBoSTHjqtR4WgC+y+RM1ID93Jjgn1M
         Jyp+npOqvhq6PfEiWjfX11TsVCHhlKTZXHH3QfoGcCWQA74iR0H109K2+wmnSsiCwNaV
         HO76gI7y6cwGrweq6CMV0TtdrR4kIQ0OuEzCROCwdCq3mKMFSZGnWSVx9DBJqVZtEDyb
         mrF3DCGQv/sHG3pWizbcrtKhcrv4mDs8St/39bi/S9aSFUUL5bvGVEhH4evnmjBg2FL2
         C8pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=gY78Ny6UiM1aMtSB53qWs1EFs9oZ9S9RkGN0I2NZYH4=;
        b=Zx1ioZl1by+elQm8G1ir425AgPZM4frRnDEuMxuI4WhXJo97Oqxg+KL86TFXlFXPXF
         WFW//JfK76gBQek2kji3geIFhrJa6pB0d0cCVc7+rEJvOAPdN+ptoDzxwtTZbHP/g6NU
         ZdbzZ4iqBkKjwcHJIJyvPOgqrnvvXMQoyWSZYynfra8Gg3faesuNrRm74gnrgFFiFcjL
         QlvMZYL4AOFWBsY3HSQtlGJUQZUJ+SQi8WKgys+DYMHXFsT+2qZmS7flwqr2YmHn9eny
         4F9WuGftqZ5sHHPLxfT8D2VSwl8aznMrdNgFihXSJBItdziZ12zIC3F1UOHtNzrhYoIS
         M/uA==
X-Gm-Message-State: AOAM532IDfRzPnBBDHD53FhF43q3KKMpDiobcRE4e+I0kNCSwcmDX3um
	7poitCabj9xIuWX3lSzXycRrOj51KGViTQ==
X-Google-Smtp-Source: ABdhPJxP4PYaiIfOlXmRBjQ7MRgenmylMu4QSS+KxSZBn57XzYSEwkte54qd5WekZ4UpvgZ+im4Ejg==
X-Received: by 2002:a63:5961:: with SMTP id j33mr9458934pgm.130.1598424185958;
        Tue, 25 Aug 2020 23:43:05 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:e8b6:ed97:4b5a:9e46? ([2601:646:9200:4e0:e8b6:ed97:4b5a:9e46])
        by smtp.gmail.com with ESMTPSA id x17sm1471669pfn.160.2020.08.25.23.43.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Aug 2020 23:43:05 -0700 (PDT)
Subject: Re: [yocto] #sdk -Standard SDK build with cmake and meta-clang gives error when I attempt topull in compiler-rt
To: steven.monsees@baesystems.com, yocto@lists.yoctoproject.org
References: <CAMKF1so3=f3tCEHNdCHS2iKU_NxdX4ciqKFEKtnqcO_33Vz-Bg@mail.gmail.com>
 <12084.1598352460742733934@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <988a37d6-01e5-0e49-1c38-158d4edf5cdd@gmail.com>
Date: Tue, 25 Aug 2020 23:43:04 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <12084.1598352460742733934@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit



On 8/25/20 3:47 AM, Monsees, Steven C (US) via lists.yoctoproject.org wrote:
> I think there is a problem with compiler-rt component and cmake…
> 

it seems to be using gcc to compile, perhaps you can add TOOLCHAIN = 
"claing" inside compiler-rt recipe and see if it makes progress.

> Doing bitbake compiler-rt produces:
> 
> Initialising tasks: 100% 
> |#####################################################| Time: 0:00:00
> 
> NOTE: Executing SetScene Tasks
> 
> NOTE: Executing RunQueue Tasks
> 
> ERROR: compiler-rt-5.0.1+gitAUTOINC+4b38c4038a-r0 do_configure: Function 
> failed: do_configure (log file is located at 
> /disk0/scratch/smonsees/yocto/workspace_2/meta-bae/meta-limws/builds/sbcb-default/tmp/work/corei7-64-poky-linux/compiler-rt/5.0.1+gitAUTOINC+4b38c4038a-r0/temp/log.do_configure.17534)
> 
> ERROR: Logfile of failure stored in: 
> /disk0/scratch/smonsees/yocto/workspace_2/meta-bae/meta-limws/builds/sbcb-default/tmp/work/corei7-64-poky-linux/compiler-rt/5.0.1+gitAUTOINC+4b38c4038a-r0/temp/log.do_configure.17534
> 
> Log data follows:
> 
> | DEBUG: Executing shell function do_configure
> 
> | -- The C compiler identification is GNU 7.3.0
> 
> | -- The CXX compiler identification is GNU 7.3.0
> 
> | -- The ASM compiler identification is GNU
> 
> | -- Found assembler: 
> /disk0/scratch/smonsees/yocto/workspace_2/meta-bae/meta-limws/builds/sbcb-default/tmp/work/corei7-64-poky-linux/compiler-rt/5.0.1+gitAUTOINC+4b38c4038a-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux/x86_64-poky-linux-gcc
> 
> | -- Check for working C compiler: 
> /disk0/scratch/smonsees/yocto/workspace_2/meta-bae/meta-limws/builds/sbcb-default/tmp/work/corei7-64-poky-linux/compiler-rt/5.0.1+gitAUTOINC+4b38c4038a-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux/x86_64-poky-linux-gcc
> 
> | -- Check for working C compiler: 
> /disk0/scratch/smonsees/yocto/workspace_2/meta-bae/meta-limws/builds/sbcb-default/tmp/work/corei7-64-poky-linux/compiler-rt/5.0.1+gitAUTOINC+4b38c4038a-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux/x86_64-poky-linux-gcc 
> -- works
> 
> | -- Detecting C compiler ABI info
> 
> | -- Detecting C compiler ABI info - done
> 
> | -- Detecting C compile features
> 
> | -- Detecting C compile features - done
> 
> | -- Check for working CXX compiler: 
> /disk0/scratch/smonsees/yocto/workspace_2/meta-bae/meta-limws/builds/sbcb-default/tmp/work/corei7-64-poky-linux/compiler-rt/5.0.1+gitAUTOINC+4b38c4038a-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux/x86_64-poky-linux-g++
> 
> | -- Check for working CXX compiler: 
> /disk0/scratch/smonsees/yocto/workspace_2/meta-bae/meta-limws/builds/sbcb-default/tmp/work/corei7-64-poky-linux/compiler-rt/5.0.1+gitAUTOINC+4b38c4038a-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux/x86_64-poky-linux-g++ 
> -- works
> 
> | -- Detecting CXX compiler ABI info
> 
> | -- Detecting CXX compiler ABI info - done
> 
> | -- Detecting CXX compile features
> 
> | -- Detecting CXX compile features - done
> 
> | -- Looking for unwind.h
> 
> | -- Looking for unwind.h - found
> 
> | CMake Error at CMakeLists.txt:38 (find_package):
> 
> |   By not providing "FindLLVM.cmake" in CMAKE_MODULE_PATH this project has
> 
> |   asked CMake to find a package configuration file provided by "LLVM", but
> 
> |   CMake did not find one.
> 
> |
> 
> |   Could not find a package configuration file provided by "LLVM" with 
> any of
> 
> |   the following names:
> 
> |
> 
> |     LLVMConfig.cmake
> 
> |     llvm-config.cmake
> 
> |
> 
> |   Add the installation prefix of "LLVM" to CMAKE_PREFIX_PATH or set
> 
> |   "LLVM_DIR" to a directory containing one of the above files.  If "LLVM"
> 
> |   provides a separate development package or SDK, be sure it has been
> 
> |   installed.
> 
> |
> 
> |
> 
> | -- Configuring incomplete, errors occurred!
> 
> | See also 
> "/disk0/scratch/smonsees/yocto/workspace_2/meta-bae/meta-limws/builds/sbcb-default/tmp/work/corei7-64-poky-linux/compiler-rt/5.0.1+gitAUTOINC+4b38c4038a-r0/build/CMakeFiles/CMakeOutput.log".
> 
> | WARNING: 
> /disk0/scratch/smonsees/yocto/workspace_2/meta-bae/meta-limws/builds/sbcb-default/tmp/work/corei7-64-poky-linux/compiler-rt/5.0.1+gitAUTOINC+4b38c4038a-r0/temp/run.do_configure.17534:1 
> exit 1 from 'cmake $oecmake_sitefile 
> /disk0/scratch/smonsees/yocto/workspace_2/meta-bae/meta-limws/builds/sbcb-default/tmp/work/corei7-64-poky-linux/compiler-rt/5.0.1+gitAUTOINC+4b38c4038a-r0/git 
> -DCMAKE_INSTALL_PREFIX:PATH=/usr -DCMAKE_INSTALL_BINDIR:PATH=bin 
> -DCMAKE_INSTALL_SBINDIR:PATH=sbin 
> -DCMAKE_INSTALL_LIBEXECDIR:PATH=libexec 
> -DCMAKE_INSTALL_SYSCONFDIR:PATH=/etc 
> -DCMAKE_INSTALL_SHAREDSTATEDIR:PATH=../com 
> -DCMAKE_INSTALL_LOCALSTATEDIR:PATH=/var -DCMAKE_INSTALL_LIBDIR:PATH=lib 
> -DCMAKE_INSTALL_INCLUDEDIR:PATH=include 
> -DCMAKE_INSTALL_DATAROOTDIR:PATH=share -DCMAKE_INSTALL_SO_NO_EXE=0 
> -DCMAKE_TOOLCHAIN_FILE=/disk0/scratch/smonsees/yocto/workspace_2/meta-bae/meta-limws/builds/sbcb-default/tmp/work/corei7-64-poky-linux/compiler-rt/5.0.1+gitAUTOINC+4b38c4038a-r0/toolchain.cmake 
> -DCMAKE_VERBOSE_MAKEFILE=1 -DCMAKE_NO_SYSTEM_FROM_IMPORTED=1 
> -DCOMPILER_RT_STANDALONE_BUILD=ON 
> -DCOMPILER_RT_DEFAULT_TARGET_TRIPLE=x86_64-poky-linux 
> -DCOMPILER_RT_BUILD_XRAY=OFF -G Ninja ${PACKAGECONFIG_CONFARGS} -Wno-dev'
> 
> | ERROR: Function failed: do_configure (log file is located at 
> /disk0/scratch/smonsees/yocto/workspace_2/meta-bae/meta-limws/builds/sbcb-default/tmp/work/corei7-64-poky-linux/compiler-rt/5.0.1+gitAUTOINC+4b38c4038a-r0/temp/log.do_configure.17534)
> 
> ERROR: Task 
> (/disk0/scratch/smonsees/yocto/workspace_2/poky/../meta-clang/recipes-devtools/clang/compiler-rt_git.bb:do_configure) 
> failed with exit code '1'
> 
> NOTE: Tasks Summary: Attempted 495 tasks of which 488 didn't need to be 
> rerun and 1 failed.
> 
> Summary: 1 task failed:
> 
>    
> /disk0/scratch/smonsees/yocto/workspace_2/poky/../meta-clang/recipes-devtools/clang/compiler-rt_git.bb:do_configure
> 
> 
> 
> 

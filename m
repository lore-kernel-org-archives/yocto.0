Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.325.1582149951971748821
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Feb 2020 14:05:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=aByRyR6d;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: raj.khem@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6AC42E01564; Wed, 19 Feb 2020 14:05:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.214.179 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3CC2E01432
	for <yocto@yoctoproject.org>; Wed, 19 Feb 2020 14:05:50 -0800 (PST)
Received: by mail-pl1-f179.google.com with SMTP id y1so646999plp.7
        for <yocto@yoctoproject.org>; Wed, 19 Feb 2020 14:05:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=37yv2hCiSmlG0BdM+IHQO2/73yy5yOqcq+hqkN9W58c=;
        b=aByRyR6du/LPRaR6hllktn+Rz2M18Y8wurD4/+4II5eDTpO/WKPMjEw5wLBrNjs8jA
         frBA9TOYVF3dJOJW2UVqB+MzPH0x+L8l9YCsjRXWDoOz9vDKnE++oMuXG8U8WmjQ5qNt
         srgmKdFqgOZ5zR5M1jkYSihPCRcm7i7jEacFP7ImjYCqjmAXT6khSul1LrBuy1eV4sVt
         aPeHH8oE0472AVLnFFNvfDK4MbOogDSeDxfJFGbn3C6tRtAINPgdosH5SgM201S42YVa
         4TLeEL3fIGjzYKf2e1eWdGLEo/GjFAg2YL3qKAt6rZcDZbpAbAAKaXJIYc+Gzw25IgXD
         4ajg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=37yv2hCiSmlG0BdM+IHQO2/73yy5yOqcq+hqkN9W58c=;
        b=fvoGF7s3QsD7WCqY+KT6KGDy76/TEywsRLyA/VjPsdyedhQ3PwMysr7hIOizYRSc1b
         75LW6a9GXZHPSNKr/4fs179cai1NLcccK2Rd30dxL2hGH5ToeIVbUNYUUnUm4XgGzcxG
         pDXyKz3SpRVzYd5Xfy2Z5BGKbUTYJ5X6vGOMFmg3lm3CHoqLhTF9mh876+oRt8c4nRCM
         zTkmBiSRjXQyayQ4JfhJJWWp2Tw43pMPI7F+s3hRza+YLqE1ZwMZwOvhzcMt9V6UKLI5
         pyzF/EWH9XgGDeiV6EeHvcNgFGIxDjhGVYMGyExlZiHkQOxeLpIeGxwYSnpnh4wbqWSd
         6k3Q==
X-Gm-Message-State: APjAAAWzEQa1TW5VbI02ikDgz/HNgijrBiTHBkC+hbxUzvpQja1mkyMp
	9vcPKl+1ArLPszbRa5U3bYSAWAC01Ns=
X-Google-Smtp-Source: APXvYqyj+UdSZkp4AuhD5lKaUjuMZEDsrzQnhT/HpWlG9hwWuu1jVijO5J8BgJM8nZXvZglSrD50EQ==
X-Received: by 2002:a17:90a:8c8a:: with SMTP id b10mr11472232pjo.51.1582149949730;
        Wed, 19 Feb 2020 14:05:49 -0800 (PST)
Received: from ?IPv6:2601:646:9200:4e0:cca7:f312:1961:a4b9? ([2601:646:9200:4e0:cca7:f312:1961:a4b9])
        by smtp.gmail.com with ESMTPSA id 23sm615360pfh.28.2020.02.19.14.05.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Feb 2020 14:05:49 -0800 (PST)
Subject: Re: [yocto] Debugging gdb built by Yocto
To: Patrick Doyle <wpdster@gmail.com>,
 Yocto discussion list <yocto@yoctoproject.org>
References: <CAF_dkJAyS20skTujCh_SCQXq+muJjCmn5=mnUG+A8qWitzNzqQ@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <4de716f2-7f2c-3ded-f0b7-ac7e36e0e79c@gmail.com>
Date: Wed, 19 Feb 2020 14:05:48 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAF_dkJAyS20skTujCh_SCQXq+muJjCmn5=mnUG+A8qWitzNzqQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 2/18/20 8:26 AM, Patrick Doyle wrote:
> Does anybody have any tips or tricks for how I might debug the
> (cross-canadian) gdb built by Yocto's SDK?
> 
> I need to add some printf's to the gdb code to help track down why
> something isn't working, but none of my traditional
> get-ready-to-debug-this-code techniques are working.
> 
> How can I run the gdb that I just built?  Note that I am presuming that I can
> 
> $ bitbake gdb-cross-canadian-mipsel -ccompile -f
> 
> to rebuild gdb after I add a printf or two to it... but I can't figure
> out how to run gdb without going through the sdk installation step.
> 
> $ bitbake gdb-cross-canadian-mipsel -cdevshell
> # ../build-mipsel-poky-linux/gdb/gdb
> bash: ../build-mipsel-poky-linux/gdb/gdb: No such file or directory
> # file ../build-mipsel-poky-linux/gdb/gdb
> ../build-mipsel-poky-linux/gdb/gdb: ELF 64-bit LSB shared object,
> x86-64, version 1 (GNU/Linux), dynamically linked, interpreter
> /opt/iro, BuildID[sha1]=7f985bbe4cb6c97558b159860b2498f6389b254e, for
> GNU/Linux 3.2.0, not stripped
> # ldd ../build-mipsel-poky-linux/gdb/gdb
> ../build-mipsel-poky-linux/gdb/gdb: /lib/x86_64-linux-gnu/libm.so.6:
> version `GLIBC_2.29' not found (required by
> ../build-mipsel-poky-linux/gdb/gdb)
>      linux-vdso.so.1 =>  (0x00007fff8a0c2000)
>   ...
> 
> # LD_LIBRARY_PATH=../recipe-sysroot-native/usr/libexec:../recipe-sysroot-native/usr/lib
> ../build-mipsel-poky-linux/gdb/gdb
> bash: ../build-mipsel-poky-linux/gdb/gdb: No such file or directory
> 
> None of the techniques from my bag-of-tricks works.
> 
> I guess I could go grab the source myself, manually apply the patches
> myself, build it, and see if that works.
> 
> Or I could sit down real hard and think about why I am trying to debug
> the canadian-cross built tool on my development host... perhaps I
> should try debugging the native (cross)-gdb on my native host.  I'll
> go try that now, but, in the mean time, I thought it was about time
> for me to ask others for some clues.
> 
> Any clues or pointers?

its perhaps due to the fact that host where this will run is sdkhost and 
not your normal buildhost, so perhaps you can use uninative tarball 
provided glibc to run it if your sdkhost is similar to buildhost and 
that might work.

> 
> --wpd
> 
> 
> 
> 

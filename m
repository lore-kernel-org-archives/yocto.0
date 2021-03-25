Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
 by mx.groups.io with SMTP id smtpd.web12.1395.1616696942530354806
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Mar 2021 11:29:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZDn3b68w;
 spf=pass (domain: gmail.com, ip: 209.85.216.47, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f47.google.com with SMTP id w8so1400540pjf.4
        for <yocto@lists.yoctoproject.org>; Thu, 25 Mar 2021 11:29:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:references:from:organization:subject:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=xYZbDwAKh11WNoFgT+BRrYksw1m/1PO3cuwp+LeNB5o=;
        b=ZDn3b68wrTCy+YjR33SIMhWoHQCtKnLDhXpFM+28f0L8orrX1D5OsQGpWz2FHVQ2Yw
         3mFbN9ZFahJ5OVixSl8tnQjm1d8PuFJ06qETy2jvDZjsAQ1B9Rjdy1zPHxQRG5kFK+Tz
         +X85cUTi+3x+QEgU3IU9pXCSOgOvPxtUiOPlB6o6ioN+KhnaHBdjNYhxYmGnNzXfXlru
         J33ooopB42ABvJtL2YETtc5XTLyoxfX5cPb94HToYVyjgCVzuIbMxtyeaXNFRacm/VdG
         OMQ1dw3iEgnHRce0iJNxapvnPw+DdP/xhwijMSUL2qsGgFKqEUCWag1N2ytZll9x652f
         ZUEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:references:from:organization:subject
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=xYZbDwAKh11WNoFgT+BRrYksw1m/1PO3cuwp+LeNB5o=;
        b=OVTbh1BJR1PD+vAGwuHBNobb2KX2nptub4Uta5/u4tRRNQhAM8OAXv/gMzuHa8pZPS
         Dg8YJri4j7wmS7S+O81Rw/T46Y68M8bkioCzKuGi+UmBC61OuyHoHsx5t1hdwu2h5f8p
         kVAydxiID/4kjWAvkRSu+8U93jiBrPYWvY/jcP6HE+s8yVZrUw78gQF+Btk4HbpHtNtc
         BBxOkZU6e7YPDGuycnvxIT1pd1tVWQNFXroG5hcvSRulluNMbwAKK8iTlLI/4ASNipKF
         tXYkPI3ENzTot9amw5s1Fj6T23jJbCgcdNtaXts9FifmGmEEedYQebCO+TvMiEH4whAM
         Yn3g==
X-Gm-Message-State: AOAM533BIicd6H4AnDlLNZ41BLOA6OvL+YSVEUhq0jho8+vjuEXeqEOv
	dZcvXX0RhZ8G+tDxtGYvnmx60Sv8OwwoLA==
X-Google-Smtp-Source: ABdhPJwpLzf4xV/4umEFKEHLjPG5bHGrjC6C4G03qtbebFkBYK2t0+wSD/o9wKOn8USvdpI9vHvMaQ==
X-Received: by 2002:a17:90a:1a59:: with SMTP id 25mr10118936pjl.54.1616696941760;
        Thu, 25 Mar 2021 11:29:01 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:a0f0:2da1:1afd:1712:ea8b? ([2601:646:9200:a0f0:2da1:1afd:1712:ea8b])
        by smtp.gmail.com with ESMTPSA id h19sm6719192pfc.172.2021.03.25.11.29.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Mar 2021 11:29:01 -0700 (PDT)
To: Tuomas Huuki <tuomas.huuki@crosscontrol.com>, yocto@lists.yoctoproject.org
References: <QRNZ.1616659590788645548.bU9I@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Subject: Re: [yocto] libcansocket: Weird issue with pkgsplit
Message-ID: <5d3d6f0b-b712-1628-21b9-64ad538e09f5@gmail.com>
Date: Thu, 25 Mar 2021 11:29:00 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.16; rv:78.0)
 Gecko/20100101 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <QRNZ.1616659590788645548.bU9I@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit



On 3/25/21 1:06 AM, Tuomas Huuki wrote:
> Hello all,
> I have an interesting situation with libcansocket and bitbake that I 
> cannot wrap my head around. For some reason, the packages are being 
> split up somewhat strangely and I cannot figure out why.
> First of all, the recipe used is:
> https://github.com/openembedded/meta-openembedded/blob/9a0de2779b9b31f134ffe19388b5b9b37bb6450e/meta-oe/recipes-extended/socketcan/libsocketcan_0.0.11.bb 
> <https://github.com/openembedded/meta-openembedded/blob/9a0de2779b9b31f134ffe19388b5b9b37bb6450e/meta-oe/recipes-extended/socketcan/libsocketcan_0.0.11.bb>
> So no strange things there.
> 
> Additionally, looking at the built items:
> 
> ../build/tmp/work/aarch64-poky-linux/libsocketcan/0.0.11-r0/image/usr/lib$ ls -lah libsocketcan*
> lrwxrwxrwx 1 tuomas tuomas  21 maali 18 10:38 libsocketcan.so -> libsocketcan.so.2.3.0
> lrwxrwxrwx 1 tuomas tuomas  21 maali 18 10:38 libsocketcan.so.2 -> libsocketcan.so.2.3.0
> -rwxr-xr-x 1 tuomas tuomas 58K maali 18 10:38 libsocketcan.so.2.3.0
> 
> All looks good at this point. Now, when I deploy the image, the first 
> link is missing.
> When I look at pkgdata I can see that the link ends up in libsocketcan-dev:
> 
> $ oe-pkgdata-util list-pkg-files libsocketcan
> libsocketcan:
>      /usr/lib/libsocketcan.so.2
>      /usr/lib/libsocketcan.so.2.3.0
> $ oe-pkgdata-util list-pkg-files libsocketcan-dev
> libsocketcan-dev:
>      /usr/include/can_netlink.h
>      /usr/include/libsocketcan.h
>      /usr/lib/libsocketcan.so
>      /usr/lib/pkgconfig/libsocketcan.pc
> 


Its following usual soname naming conventions [1] for versioned shared 
libs where .so is a symlink which is used when something is linking to 
it during build time. thats why its in -dev package, if you want to use 
it at runtime then linker
will add proper versioned .so into DT_NEEDED sections of dependent 
package which will be libsocketcan.so.2 in this case. So if your program 
is trying to dlopen it then I would suggest to use libsocketcan.so.2 and 
if its trying to link to it during build time then it should add right 
entry into DT_NEEDED sections.

I am also wondering why would you want to move .so to main package.

[1] https://tldp.org/HOWTO/Program-Library-HOWTO/shared-libraries.html


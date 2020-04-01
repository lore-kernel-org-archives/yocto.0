Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
 by mx.groups.io with SMTP id smtpd.web10.419.1585776330518962067
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Apr 2020 14:25:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=BZ3GPeyU;
 spf=pass (domain: gmail.com, ip: 209.85.222.169, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f169.google.com with SMTP id u4so1674274qkj.13
        for <yocto@lists.yoctoproject.org>; Wed, 01 Apr 2020 14:25:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=sZqx/tz37PlRIPlJhLoeFh97aNosuqBaEndCElEcNUw=;
        b=BZ3GPeyU843tYtzpXvd6u38YnV5vPa7QmpbZYPUHweZ3xqQ1pKi+LmeHQZVciuTS9e
         YWXFhvq6epjo7YDgSzspUFKKMN2sKxtqig6f7BhWS1/g4Nrv4iGLefcXkrZRdfEplyM8
         Hh5x6/oxT8vcH8yElVUnSu5mKHOM90CGdYNZZcJChLqmCy8YotTAw/BYotHzE7EnxIXq
         RgTI9pDHE5cmLDOce7upO4KOD0TapgZdU4y1yWlVxD7lUPxpz/RIMM6uHm5PjAV/fzdB
         3PK8gJr0KlfRBeesIjJQqD1zMpVqXV1UbEOHeYP3FdIRgl74c9Qb2tBoXdHTTlqhQIDE
         oV2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=sZqx/tz37PlRIPlJhLoeFh97aNosuqBaEndCElEcNUw=;
        b=QtuU+i9QVPYc4JNHhdW4/YU7wp4N5Jkh5lr64lUWuk52WU3VmZveWXwJ8yKorQWPEI
         2tpMaw+LWdK6mRiOJedzGY6C5XD8dnlunNU6IAC0ZKWfiETAxLKb26QZ7RSbbp6JdygH
         /HewEWwImbslUtXhZDRzUk3uXNsZBq0VHOEMw+PHGNQfPEAgfqV7Thrg6qtpYgv2fEVD
         p3q2DlAyTJFWXz6P+6mWQcJg8+eEyj7halQd0d8VOhvo4vIFz3VTQxbrgZHWGCRwjWnT
         VTXlKhvvbX7S9hiF2GU2w6alRdMiOSDKWT6V9GGQV0v0VMZPsertYGDCFnNVz36tFSmA
         StLQ==
X-Gm-Message-State: AGi0PuYe/gMDgq1iY74wP6pbdzTLEacSGo5kwqAh24ztpAcD4pxYj6V7
	N6G2r93lMvoJBs3XfyGjKL4/LNbhUtI=
X-Google-Smtp-Source: APiQypLuUDTD/9xJXKbm9/sYXLOjdNbxF3xygJKgOaYD2mkc7/4m6tSUGm5ORHIzMv76cIHY12G6xg==
X-Received: by 2002:ae9:e88c:: with SMTP id a134mr312082qkg.183.1585776329063;
        Wed, 01 Apr 2020 14:25:29 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:3c0f:54c2:33b2:61a7? ([2601:646:9200:4e0:3c0f:54c2:33b2:61a7])
        by smtp.gmail.com with ESMTPSA id 5sm2160756qka.16.2020.04.01.14.25.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Apr 2020 14:25:28 -0700 (PDT)
Subject: Re: [yocto] python argparse or alternate method
To: Joel Winarske <joel.winarske@gmail.com>,
 Konrad Weihmann <kweihmann@outlook.com>
Cc: yocto@lists.yoctoproject.org
References: <kdtC.1585760118725241485.ETNE@lists.yoctoproject.org>
 <1601C2BF1E7C8C87.18583@lists.yoctoproject.org>
 <VI1PR05MB4286E300219B89A7EE37D170A8C90@VI1PR05MB4286.eurprd05.prod.outlook.com>
 <CABKMkPLuhj+4zbi8pCfxf_Evv6h51-QMRwTY8pY-FOzvXA0xrg@mail.gmail.com>
 <VI1PR05MB42861FD368535D839B1289FBA8C90@VI1PR05MB4286.eurprd05.prod.outlook.com>
 <CABKMkPKSHo91AqatLSwOn5x8+qQ2cikWEyn8+C2nBUp3YKEFOA@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <a9205b56-233a-4a40-6515-e384dbd74588@gmail.com>
Date: Wed, 1 Apr 2020 14:25:27 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CABKMkPKSHo91AqatLSwOn5x8+qQ2cikWEyn8+C2nBUp3YKEFOA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit



On 4/1/20 2:20 PM, Joel Winarske wrote:
> Hi Konrad,
> 
> Thanks, that helps a lot.  It works!  I used straight split() which 
> prevented the first value from being null.
> 
> Yes, I agree less pythonic :)  The only recipe I've seen building gn 
> based projects is OSSystem's meta-browser/chromium.  I followed it's 
> pattern, as the Flutter Engine is a derivative of Chrome.
> 
> The issue with these large gn based projects is that they're self 
> contained builds.  A build system within a build system.  I must admit 
> though the gclient DEPS download scheme is efficient.  I initially 
> looked at parsing out the DEPs file into a large SRC_URI list, but 
> quickly hit Yocto serializing them.  Perhaps OE could benefit from 
> tighter integration with gn.
> 

perhaps a generic gn class might be helpful, there have been attemps to 
add depot_tools/glient to fetchers in past but there is no consistent 
apis there, it kept on changing in myriad different ways. gn is more or 
less same story, its too tightly integrated into the software its 
building, we should abstract it if we can.

> I'm open to any other alternative approaches.
> 
> 
> Cheers,
> Joel
> 
> On Wed, Apr 1, 2020 at 1:09 PM Konrad Weihmann <kweihmann@outlook.com 
> <mailto:kweihmann@outlook.com>> wrote:
> 
>     Hi Joel,
> 
>     okay, I see - although I have to admit the argparse idea looks very
>     weird, the error is that according to
>     https://docs.python.org/3/library/argparse.html#argparse.ArgumentParser.parse_args
>     the pkgconfig_args variable should be a list not a single string.
> 
>     so doing pkgconfig_args = d.getVar("PACKAGECONFIG_CONFARGS").split("
>     ") should fix the issue.
>     But from a bitbake perspective you should really think about
>     choosing a less pythonic version
> 
>     Best
> 
>     Konrad
> 
>     On 01.04.20 22:00, Joel Winarske wrote:
>>     Hi Konrad,
>>
>>     I left out the details of the path encoding :)  Effectively I was
>>     attempting to duplicate get_out_dir() as found here:
>>     https://github.com/flutter/engine/blob/master/tools/gn
>>
>>     My recipe is here:
>>     https://github.com/jwinarske/meta-flutter/blob/zeus/recipes-graphics/flutter-engine/flutter-engine_git.bb
>>
>>     Cheers,
>>     Joel
>>
>>     On Wed, Apr 1, 2020 at 10:46 AM Konrad Weihmann
>>     <kweihmann@outlook.com <mailto:kweihmann@outlook.com>> wrote:
>>
>>         There is a single tick missing, but I'm sure you get the point
>>
>>         On 01.04.20 19:37, Konrad Weihmann wrote:
>>>
>>>         What about
>>>
>>>         do_configure() {
>>>
>>>            cd ${@bb.utils.contains('PACKAGECONFIG_CONFARGS',
>>>         '--verbose', out/verbose', 'out', d)}
>>>
>>>         }
>>>
>>>         On 01.04.20 18:55, Joel Winarske wrote:
>>>>         Hello,
>>>>
>>>>         I'm trying the below in a recipe.  Bitbake gives me: ERROR:
>>>>         Unable to parse ...: Exited with "2"
>>>>
>>>>         inherit python3native
>>>>
>>>>         require utils.inc
>>>>
>>>>         do_configure() {
>>>>
>>>>             cd ${@get_out_dir(d)}
>>>>         }
>>>>
>>>>         (in utils.inc)
>>>>         def get_out_dir(d):
>>>>             import os
>>>>             import argparse
>>>>             pkgconfig_args = d.getVar("PACKAGECONFIG_CONFARGS")
>>>>
>>>>             parser = argparse.ArgumentParser()
>>>>             parser.add_argument("--verbose", help="increase output
>>>>         verbosity",
>>>>                                 action="store_true")
>>>>             args = parser.parse_args(pkgconfig_args)
>>>>             if args.verbose:
>>>>                 return os.path.join('out', 'verbose')
>>>>
>>>>             return 'out'
>>>>
>>>>
>>>>
>>>>         What am I doing wrong, or is there a better way?  Seems like
>>>>         it doesn't like "args = parser.parse_args(pkgconfig_args)"
>>>>
>>>>         The output directory is a combination of the arguments.
>>>>
>>>>
>>>>         Thanks!
>>>>         Joel
>>>>
>>>
>>
> 
> 
> 

Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0203E008EC; Thu,  9 Apr 2015 07:35:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36587E0049A
	for <yocto@yoctoproject.org>; Thu,  9 Apr 2015 07:34:59 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 36F1BF811E3; Thu,  9 Apr 2015 08:34:59 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id D8733F811D7;
	Thu,  9 Apr 2015 08:34:58 -0600 (MDT)
Message-ID: <55268E23.4090905@mlbassoc.com>
Date: Thu, 09 Apr 2015 08:35:15 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <5526828B.3080709@mlbassoc.com>
	<1927599.TACnxmbye2@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <1927599.TACnxmbye2@peggleto-mobl.ger.corp.intel.com>
Subject: Re: Using PACKAGECONFIG
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 09 Apr 2015 14:35:03 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-04-09 08:16, Paul Eggleton wrote:
> Hi Gary,
>
> On Thursday 09 April 2015 07:45:47 Gary Thomas wrote:
>> I'm trying to extend PACKAGECONFIG for a recipe (vlc).  The
>> main recipe contains this:
>>     PACKAGECONFIG ?= " live555"
>>     PACKAGECONFIG[mad] = "--enable-mad,--disable-mad,libmad"
>>     PACKAGECONFIG[a52] = "--enable-a52,--disable-a52,liba52"
>>     PACKAGECONFIG[jack] = "--enable-jack,--disable-jack,jack"
>>     PACKAGECONFIG[live555] = "--enable-live555,--disable-live555,live555"
>>     PACKAGECONFIG[libass] = "--enable-libass,--disable-libass,libass"
>>     PACKAGECONFIG[mkv] = "--enable-mkv,--disable-mkv,libmatroska libebml"
>>     PACKAGECONFIG[postproc] =
>> "--enable-postproc,--disable-postproc,libpostproc" PACKAGECONFIG[opencv] =
>> "--enable-opencv,--disable-opencv,opencv" PACKAGECONFIG[libva] =
>> "--enable-libva --enable-avcodec,--disable-libva --disable-avcodec,libva
>> libav"
>>
>> I'd like to only add "libva" to the default, so I wrote this
>> in my local.conf:
>>     PACKAGECONFIG_pn-vlc_append = " libva"
>> Inspecting it
>>     $ bitbake vlc -e | grep ^PACKAGECONFIG
>>     PACKAGECONFIG=" libva"
>>
>> Oops.  Just to be sure, I tried
>>     PACKAGECONFIG_pn-vlc = "live555 libva"
>> which gives
>>     $ bitbake vlc -e | grep ^PACKAGECONFIG
>>     PACKAGECONFIG="live555 libva"
>>
>> Note: I tried
>>     PACKAGECONFIG_append_pn-vlc = " libva"
>> which does work.  However, I've also used
>>     PACKAGECONFIG_pn-chromium_append = " component-build"
>> for a different recipe that does work... VERY CONFUSED
>>
>> What am I doing wrong?  How do I correctly add to the default list?
>
> In general, for a conditional append, you must use _append_<override> - the
> other way around will not do an append, AFAIK it will just set the value.
>
> There are some other valid options that you didn't mention above:
>
> 1) Set it outright to list all of the options you want instead of appending.
> At least you know exactly what is going into the value. (I know some people
> don't like this.)
>
> 2) Set it using += or _append from a bbappend.

Thanks for the explanation - I'll make sure to use the correct
form from now on (and fix my incorrect uses for chromium!)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------


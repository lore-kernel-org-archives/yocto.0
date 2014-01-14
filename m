Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB367E00813
	for <yocto@yoctoproject.org>; Tue, 14 Jan 2014 06:49:47 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id B6258F811E7; Tue, 14 Jan 2014 07:49:46 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id E829AF81199;
	Tue, 14 Jan 2014 07:49:43 -0700 (MST)
Message-ID: <52D54E89.6020905@mlbassoc.com>
Date: Tue, 14 Jan 2014 07:49:45 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <52D536A0.5060307@mlbassoc.com>
	<CAP71Wjw=Q3m-bEPMniCMug0Pn4d=VoQ5VqLHGNck29XqzDkbzA@mail.gmail.com>
	<52D53908.30304@mlbassoc.com>
	<CAJTo0LaY3r6f+VER=+Nnh3du9KG=tcJ6KiNW0oK_1yBiv6K=pQ@mail.gmail.com>
	<52D53D02.1050207@mlbassoc.com> <20140114134754.GD3717@jama>
	<52D541E5.3040401@mlbassoc.com>
	<CAP71Wjz3g1kNJHHAMNaf0-rUFDqMtnM5eWUQKRZRMgKJTAJR+w@mail.gmail.com>
	<52D547C9.3070703@mlbassoc.com>
	<CAJTo0LYizuLdJZHwpbJSDxFWTYiHnHXTL4r2ZrxCPOe==fUF4w@mail.gmail.com>
	<52D54A19.2020407@mlbassoc.com>
	<CAJTo0LYqp=Z4gE0sECX5Q2zSuE9+0X6gf7SUoimHWshGiKHKOQ@mail.gmail.com>
In-Reply-To: <CAJTo0LYqp=Z4gE0sECX5Q2zSuE9+0X6gf7SUoimHWshGiKHKOQ@mail.gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: gstreamer without X11?
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
X-List-Received-Date: Tue, 14 Jan 2014 14:49:48 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-01-14 07:37, Burton, Ross wrote:
> On 14 January 2014 14:30, Gary Thomas <gary@mlbassoc.com> wrote:
>> You can duplicate this with off-the-shelf Poky/Yocto.  Just disable x11
>> in local.conf
>>    DISTRO_FEATURES_remove = "x11"
>> Then you'll get this error:
>>    [gthomas@titan q_test]$ bitbake -e virtual/libx11
>>    Loading cache: 100%
>> |##################################################################################|
>> ETA:  00:00:00
>>    Loaded 1188 entries from dependency cache.
>>    ERROR: Nothing PROVIDES 'virtual/libx11'
>>
>>    ERROR: libx11-diet PROVIDES virtual/libx11 but was skipped: missing
>> required distro feature ['x11'] (not in DISTRO_FEATURES)
>>    ERROR: libx11 PROVIDES virtual/libx11 but was skipped: missing required
>> distro feature ['x11'] (not in DISTRO_FEATURES)
>>    ERROR: nativesdk-libx11 PROVIDES virtual/libx11 but was skipped: missing
>> required distro feature ['x11'] (not in DISTRO_FEATURES)
>>
>> Should I file a bitbake bug?
>
> I can't see (although I'm no bitbake expert) why -e has to consider
> dependencies.  For example, bitbake -e -b
> ../meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.36.bb with
> x11 removed from DISTRO_FEATURES correctly shows PACKAGECONFIG="".

Yes, that one works.  Testing for virtual/libx11 does not.

>
> Filing a bug seems reasonable to me.
>

Filed as bug #5724

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------


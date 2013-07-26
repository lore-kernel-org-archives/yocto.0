Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69D42E013DE
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2013 08:43:03 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 1A635F81208; Fri, 26 Jul 2013 09:43:01 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id D689AF81208;
	Fri, 26 Jul 2013 09:42:59 -0600 (MDT)
Message-ID: <51F29905.5040606@mlbassoc.com>
Date: Fri, 26 Jul 2013 09:43:01 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130623 Thunderbird/17.0.7
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <51EFDD09.3030909@mlbassoc.com>
	<CAJTo0LaHOJtt=RvofQEvuZ+K1fYL3u8acv5dUD3XNZvx+pH9wg@mail.gmail.com>
	<51EFE508.8060004@mlbassoc.com>
	<CAJTo0LbYYzeG0-kti7sj_cH7ji_b8xXJxYxSu6T=Snq++wJeUQ@mail.gmail.com>
In-Reply-To: <CAJTo0LbYYzeG0-kti7sj_cH7ji_b8xXJxYxSu6T=Snq++wJeUQ@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Packaging questions
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
X-List-Received-Date: Fri, 26 Jul 2013 15:43:03 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-07-24 08:38, Burton, Ross wrote:
> On 24 July 2013 15:30, Gary Thomas <gary@mlbassoc.com> wrote:
>>>> ERROR: QA Issue: non -dev/-dbg/-nativesdk package contains symlink .so:
>>>> amanda path
>>>>
>>>> '/work/armv7a-vfp-neon-amltd-linux-gnueabi/amanda/3.3.3-r0/packages-split/amanda/usr/lib/amanda/libamar.so'
>>>
>>>
>>> I'm curious, what does the symlink point to?  It's possible that we
>>> can refine the check to reduce the number of false positives, because
>>> this is a fairly common one that needs to be skipped.
>>
>>
>> The .so symlink points to a fully qualified library, e.g.
>> -rwxr-xr-x 1 gthomas gthomas 1383729 Jul 24 06:35 libamanda-3.3.3.so
>> lrwxrwxrwx 1 gthomas gthomas      18 Jul 24 06:35 libamanda.so ->
>> libamanda-3.3.3.so
>>
>> The problem seems to be that this is the unqualified .so name and not a
>> version qualified name like 'libamanda.so.3'.  The package isn't building
>> the version qualified names, just the fully unqualified one.
>>
>>
>>>
>>> You can skip this QA test by setting INSANE_SKIP.  In this case,
>>> INSANE_SKIP_${PN} = "dev-so" (you can identify the tag to use by
>>> looking through classes/insane.bbclass for the error message).
>
> So that's not the pattern that the test was designed for (not that
> it's actually implementing that design).  I'm sure Amanda developers
> have a reason for this, but the presence of a .so symlink in a non-dev
> package is enough to trip this test, so INSANE_SKIP is the best thing
> to do.

One final packaging question.  In my build I have these files:
   /etc/amanda/
   /etc/amanda/MyConfig/
   /etc/amanda/MyConfig/tapelist
   /etc/amanda/MyConfig/disklist
   /etc/amanda/MyConfig/amanda.conf

I want the /etc/amanda/MyConfig to be packaged separately in "amanda-demo" package.
   PACKAGES += " ${PN}-demo "
   FILES_${PN}-demo += " \
		 /etc/amanda/MyConfig/ \
		 /amanda \
   "
   FILES_${PN} += "${libdir} \
	    ${libexecdir}/amanda/* \
	    /var/amanda \
	    /etc/amanda \
   "

Sadly, the /etc/amanda/MyConfig tree is ending up in the main package.  How
can I stratify it the way I want?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------


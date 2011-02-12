Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 919964C8007E
	for <yocto@yoctoproject.org>; Sat, 12 Feb 2011 12:09:25 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1CI9Jpq026659;
	Sat, 12 Feb 2011 10:09:19 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Sat, 12 Feb 2011 10:09:18 -0800
Received: from Macintosh-5.local ([172.25.36.226]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Sat, 12 Feb 2011 10:09:18 -0800
Message-ID: <4D56CCCD.6040106@windriver.com>
Date: Sat, 12 Feb 2011 12:09:17 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: "Cui, Dexuan" <dexuan.cui@intel.com>
References: <789F9655DD1B8F43B48D77C5D30659733294D0BE@shsmsx501.ccr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D306597332C18774@shsmsx501.ccr.corp.intel.com>
	<1865303E0DED764181A9D882DEF65FB68629835F3E@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <1865303E0DED764181A9D882DEF65FB68629835F3E@shsmsx502.ccr.corp.intel.com>
X-OriginalArrivalTime: 12 Feb 2011 18:09:18.0903 (UTC)
	FILETIME=[F77F6470:01CBCADF]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Master build error caused a small typo by commit today : fetch2: unpack revision
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 12 Feb 2011 18:09:26 -0000
Content-Type: text/plain; charset=GB2312
Content-Transfer-Encoding: 8bit

On 2/12/11 3:30 AM, Cui, Dexuan wrote:
> Hi Mark,
> As Liping said, the following change breaks building xorg-minimal-fonts as destdir is not correct.
> Can you please explain the actual different between cp and tar here? I think "cp -p" is similar to "tar -x -p" here?
> 

We can revert the change.  But the reason for it is tar preserves hard links,
while cp does not.

So if a directory being copied contain foo, foo1, foo2, and foo3  all hardlinks
of each other, they will end up still being hard links of each other on the
target side.

I previously went through the classes and updated almost all cases of CP to the
tar method.  (Obviously without the %d typo...)  This reduced over 200MB from
the eglibc build.. (mostly in locale info)

--Mark

> @@ -706,17 +720,17 @@ class FetchMethod(object):
>                              destdir = "."
>                          elif not os.access("%s/%s" % (rootdir, destdir), os.F_OK):
>                              os.makedirs("%s/%s" % (rootdir, destdir))
> -                    cmd = 'cp -pPR %s %s/%s/' % (file, rootdir, destdir)
> +                    #cmd = 'cp -pPR %s %s/%s/' % (file, rootdir, destdir)
> +                    cmd = 'tar -cf - -C "%d" -ps . | tar -xf - -C "%s/%s/"' % (file, rootdir, destdir)
> 
> 
> Thanks,
> -- Dexuan
> 
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Ke, Liping
> Sent: 2011Äê2ÔÂ12ÈÕ 15:53
> To: Ke, Liping; richard.purdie@linuxfoundation.org; mark.hatle@windriver.com
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Master build error caused a small typo by commit today : fetch2: unpack revision
> 
> Hi, Mark
> 
> After fixing this typo, I found another error when bitbake xorg-minimal-fonts,
> It will report
> ERROR: Function 'org-minial-fonts: LIC_FILES_CHKSUM points to invalid file: ../misc/fonts/alias' failed
> 
> I checked the folder of build/tmp/work/all-poky-linux/xorg-minimal-fonts-1_1.0-r0, fonts.alias fonts.dir
> Cursor.pcf.gz we not under misc subfolder as its expectation, but on the outer folder, 
> seems the SRC_URI="file://misc" defined in the Xorg-minimal-fonts.bb does not work.
> 
> Thanks a lot!
> criping
> 
> 
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>> bounces@yoctoproject.org] On Behalf Of Ke, Liping
>> Sent: Saturday, February 12, 2011 1:06 PM
>> To: richard.purdie@linuxfoundation.org; mark.hatle@windriver.com
>> Cc: yocto@yoctoproject.org
>> Subject: [yocto] Master build error caused a small typo by commit
>> today : fetch2: unpack revision
>>
>> Hi, all
>>
>> Just found a small typo which caused built error today. The "%d" (file)
>> should be changed to "%s", otherwise, compile error.
>>
>> Anybody could help to modify the small bug if you're happening sending
>> patches.
>>
>> Thanks a lot for your help!
>> criping
>>
>>
>>
>>
>>
>> author	Mark Hatle <mark.hatle@windriver.com>	2011-02-11
>> 17:43:54 (GMT)
>> committer	 Richard Purdie <richard.purdie@linuxfoundation.org>	2011-
>> 02-12 00:30:29 (GMT)
>> commit	3faa635fd408695dd5b754fda3f6060dd670b81d (patch) (side-by-
>> side diff)
>> tree	d0ba5d2d4acca9f7748029116f3a74877ee899c9
>> parent	e56f63a2843e5a7d70fd60e0aaed4d962a277da7 (diff)
>> download	poky-3faa635fd408695dd5b754fda3f6060dd670b81d.zip
>> poky-3faa635fd408695dd5b754fda3f6060dd670b81d.tar.gz
>> poky-3faa635fd408695dd5b754fda3f6060dd670b81d.tar.bz2
>>
>>
>>
>> @@ -706,17 +720,17 @@ class FetchMethod(object):
>>                              destdir = "."
>>                          elif not os.access("%s/%s" % (rootdir,
>> destdir), os.F_OK):
>>                              os.makedirs("%s/%s" % (rootdir, destdir))
>> -                    cmd = 'cp -pPR %s %s/%s/' % (file, rootdir,
>> destdir)
>> +                    #cmd = 'cp -pPR %s %s/%s/' % (file, rootdir,
>> destdir)
>> +                    cmd = 'tar -cf - -C "%d" -ps . | tar -xf - -C
>> "%s/%s/"' % (file, rootdir, destdir)
>>
>>
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8945AE009D4; Wed, 29 Apr 2015 07:54:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 866ACE009C9
	for <yocto@yoctoproject.org>; Wed, 29 Apr 2015 07:53:38 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id DE79827E242;
	Wed, 29 Apr 2015 14:53:36 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id dZy8Q_9-hDJh; Wed, 29 Apr 2015 14:53:34 +0000 (UTC)
Received: from [192.168.1.16] (AMarseille-651-1-40-127.w92-150.abo.wanadoo.fr
	[92.150.31.127])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 8495427E224;
	Wed, 29 Apr 2015 14:53:34 +0000 (UTC)
Message-ID: <5540F06B.40706@dynamicdevices.co.uk>
Date: Wed, 29 Apr 2015 16:53:31 +0200
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: Mauro Carvalho Chehab <mchehab@osg.samsung.com>
References: <17420222.681949.1430314213894.JavaMail.yahoo@mail.yahoo.com>	<5540E546.9020606@dynamicdevices.co.uk>
	<20150429113434.2ce31089@recife.lan>
In-Reply-To: <20150429113434.2ce31089@recife.lan>
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] meta-ivi & meta-raspberrypi
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
X-List-Received-Date: Wed, 29 Apr 2015 14:54:17 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 29/04/2015 16:34, Mauro Carvalho Chehab wrote:
> Em Wed, 29 Apr 2015 16:05:58 +0200
> Alex J Lennon <ajlennon@dynamicdevices.co.uk> escreveu:
>
>> On 29/04/2015 15:30, Oliver wrote:
>>> Hello
>>>
>>> I have been working building together the meta-raspberrypi & the meta-ivi layers.
>>> I have been stuck with configuration/compilation of weston(from mata-ivi layer):
>>>
>>> 1)
>>>
>>> You can check the intial thread http://lists.genivi.org/pipermail/genivi-meta-ivi/2015-April/000508.html
>>>
>>>
>>> egl provided by userlad is not detected as the *.pc files are not deployed
>>> Someone has faced similar problems:
>>>
>>>    http://git.buildroot.net/buildroot/commit/?id=2282b93f4248a32de84805456efa352f69b28624
>>>
>>> 2)
>>> With this I am able to reach the do_compile stage but there are errors related to the undefined type
>>>
>>> PFNEGLQUERYWAYLANDBUFFERWL
>>> Hacked this one forcing the inclusion of <weston-egl-ext.h> :-S
>>>
>>>
>>> 3)
>>> At linking time the next trouble is:
>>>
>>> /home/oliver/raspberry/build-rpi-ivi/tmp/sysroots/i686-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.9.1/ld: cannot find -lwayland-egl
>>>
>>> IIRC this lib is provided by mesa-gl, but in my build, mesa is configured(--disable-egl (is this ok being provided by userlad?)) which might be the reason why libwayland-egl is not getting deployed in the image?
>>>
>>> Any correction to my statements or hint to go further would be appreciated
>>>
>>> Best Regards & thanks for your time
>>>
>>> Oliver
>> Hi Oliver,
>>
>> I was looking at wayland/weston last year.  I can't remember exactly
>> where I was at with it I am afraid, but I think I had it building and
>> have pushed some of the code I was playing with to GitHub
>>
>> I think this was related to the .pc issue
>>
>> https://github.com/DynamicDevices/meta-raspberrypi/commit/491dd14585efdb52378a57fa6ddacb1f15065257
>>
>> And this was what I was doing with weston. Looks like I was disabling EGL.
>>
>> https://github.com/DynamicDevices/meta-raspberrypi/commit/c657f69deb57035fc43319dd7d41745c17d7d6e1
>>
>> Sorry I can't be more help but perhaps there's something in there that
>> might be of use.
> I was able to build weston/wayland with meta-raspberrypi, for
> the Tizen distro:
> 	http://blogs.s-osg.org/bringing-tizen-to-a-raspberry-pi-2-near-you/
>
> I had to apply a few patches to make it work on both Tizen and
> meta-raspberrypi. The forks are at:
> 	http://git.s-osg.org/
>
> The current version there is actually disabling EGL. Enabling
> it seems to be possible, but we're still trying to make it work
> (it compiles fine, though, so I think we're close).
>
> Once done, my plan is to work on porting the patches back to
> meta-raspberrypi (and tizen-distro).
>
>

Great news Mauro. If you need anybody to test out your patches, when
ready, please give me a shout.

Cheers, Alex



Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D754E004D2
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2012 17:30:45 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 08 Feb 2012 17:30:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="107943888"
Received: from unknown (HELO [10.255.14.207]) ([10.255.14.207])
	by orsmga002.jf.intel.com with ESMTP; 08 Feb 2012 17:30:44 -0800
Message-ID: <4F3321C4.70605@linux.intel.com>
Date: Wed, 08 Feb 2012 17:30:44 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0) Gecko/20120131 Thunderbird/10.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CANFv2EmFLxf8zkCgFYamCyBmh_j5sQJO2QpexQLSUg=+NMi5vg@mail.gmail.com>
	<4F317372.6040501@linux.intel.com> <4F319DB3.6090006@gmail.com>
	<4F31C627.7050608@linux.intel.com> <4F32E073.5020004@gmail.com>
In-Reply-To: <4F32E073.5020004@gmail.com>
Subject: Re: Building your own UI
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
X-List-Received-Date: Thu, 09 Feb 2012 01:30:45 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 08/02/12 12:52, jfabernathy wrote:
> On 02/07/2012 07:47 PM, Joshua Lock wrote:
>> On 07/02/12 13:54, jfabernathy wrote:
>>> On 02/07/2012 01:54 PM, Joshua Lock wrote:
>>>> On 07/02/12 07:57, James Abernathy wrote:
>>>>> This may be a dumb question, but I'll ask anyway.
>>>>> Suppose you have a project where you need a very custom user
>>>>> interface.
>>>>> Not just a series of applications that appear on a desktop like you
>>>>> see
>>>>> in sato, or Gnome, or KDE. Basically your application becomes the UI.
>>>>> I can see 2 approaches to this:
>>>>>
>>>>> 1. Start with core-image-minimal and add the packages you need to
>>>>> support GFX, X11, and your application plus dependencies.
>>>>> 2. Take core-image-sato and change the applications to be your
>>>>> subtasks
>>>>> , and the look-and-feel of the desktop.
>>>>>
>>>>> What are the considerations of both approaches?
>>>>
>>>> A key selling point of the Yocto approach is to provide a highly
>>>> customised OS for your target application, rather than taking an
>>>> existing solution and stripping it back.
>>>>
>>>> 2. is the antithesis of the Yocto approach if you don't want/need the
>>>> Sato UI.
>>>>
>>>> The intention is that the core metadata should provide sufficient
>>>> granularity through the defined images and tasks to get people started.
>>>>
>>>> I'd recommend something like 1. only taking core-image-core (horrible
>>>> name I know) if you want an X based OS.
>>>>
>>> I built core-image-core and it works and is basic. So it's not a really
>>> small Sato???
>>>
>>>> We no doubt need more documentation in this area, and Hob is designed
>>>> to help here.
>>>>
>>>>
>>>>> Is one better, or easier than the other?
>>>>
>>>> Creating your own image is better in that you only build and ship what
>>>> you need. Arguably building atop a custom image is easier, but you
>>>> lose control.
>>>>
>>>>> How would you do this in Yocto?
>>>>
>>>> You might consider creating a custom image by starting with
>>>> core-image-minimal and adding IMAGE_FEATURES and IMAGE_INSTALL entries
>>>> to provide the core functionality you desire.
>>>>
>>>> $ less foo.bb
>>>> # a noddy example image, base of a NAS OS
>>>>
>>>> # start with core-image-minimal
>>>> require recipes-core/images/core-image-minimal.bb
>>>>
>>>> IMAGE_FEATURES += "package-management nfs-server ssh-server-dropbear"
>>>> IMAGE_INSTALL += "my-custom-nas-app"
>>>>
>>> I have difficulty understanding the difference in IMAGE_FEATURES and
>>> IMAGE_INSTALL. To me IMAGE_INSTALL is clear I've used that in a
>>> core-image-sato.bbappend file in an image directory in my own recipes-xx
>>> directory. I see how IMAGE_FEATURES is uses in the core-image-core:
>>>
>>> IMAGE_FEATURES += "apps-console-core ${X11_IMAGE_FEATURES}"
>>>
>>> But I have no idea what ${X11_IMAGE_FEATURES} is or how to find where
>>> it's defined. The apps-console-core is define in the Poky Refernce
>>> manual:
>>>
>>> http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.html#ref-features-image
>>>
>>>
>>>
>>> However, I'm not sure were to find it's definition in the many recipes.
>>
>> The features are defined in core-image.bbclass:
>> http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/core-image.bbclass
>>
>>
>> Most of them translate into one or more task recipes
>> (meta/recipes-*/tasks/) except package-management which translates to
>> ROOTFS_PKGMANAGE which in turn is defined in each of the package
>> management rootfs construction classes (meta/classes/rootfs_*.bbclass).
>
> Thanks, Joshua,
>
> I have build a number of the images with minimal x11 features to see the
> difference. All of them appear to be the basic Sato without the apps or
> borders. And all start with the bit Yocto Project Splash screen. I
> remember back a few years and it may go back to more than that, you
> could launch just X without a window manager or at least a basic one and
> all you had was one xterm session. You could right click and create
> another xterm, but anything else had to be launched from the command
> line in the xterm. like glxgears, mplayer, etc. It was a good way of
> testing without committing to a look and feel. Does that level exist in
> Yocto. I'm not seeing how I use what I'm seeing even with the x11-basic
> to create a custom platform look.

It's perfectly possible, it just may be that you have to create your own 
bare bones image.

The problem with trying to provide generic tasks and images is that 
everyones opinion of what constitutes minimal/bare bones is different. :-)

This thread has made it clear that we need to expedite the formation of 
some documentation guiding folks through building custom images.

Cheers,
Joshua
-- 
Joshua Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre


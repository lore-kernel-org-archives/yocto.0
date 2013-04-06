Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4659E0151F
	for <yocto@yoctoproject.org>; Sat,  6 Apr 2013 05:01:00 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 32D86F811E1; Sat,  6 Apr 2013 06:01:00 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id EC3C0F811DC;
	Sat,  6 Apr 2013 06:00:58 -0600 (MDT)
Message-ID: <51600E7C.7050100@mlbassoc.com>
Date: Sat, 06 Apr 2013 06:01:00 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130308 Thunderbird/17.0.4
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <515EC933.70305@mlbassoc.com> <515F040F.40402@mlbassoc.com>
	<30341079.23PBRlhEQk@helios> <515F613C.6080909@mlbassoc.com>
In-Reply-To: <515F613C.6080909@mlbassoc.com>
Subject: Re: Weird FILESPATH issue
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
X-List-Received-Date: Sat, 06 Apr 2013 12:01:01 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-04-05 17:41, Gary Thomas wrote:
> On 2013-04-05 11:31, Paul Eggleton wrote:
>> On Friday 05 April 2013 11:04:15 Gary Thomas wrote:
>>> On 2013-04-05 06:53, Gary Thomas wrote:
>>>> I think the problem is because the main recipe contains this line:
>>>>     FILESPATH = "${FILE_DIRNAME}/python-pygobject:${FILE_DIRNAME}/files"
>>>>
>>>> How can I write my .bbappend file to pick up the patch from my [local]
>>>> layer?
>>>>
>>>> Thanks
>>>>
>>>> n.b. isn't that 'FILESPATH' line in the main recipe rather unfriendly?
>>>
>>> What I don't get is that I've done this exact same style of .bbappend for
>>> other recipes and it works fine.  For example, I have this
>>>
>>>     ${LAYER}/recipes-sato/gtk-engines/gtk-sato-engine_git.bbappend:
>>>          FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>>>          SRC_URI_append = " file://adjust-sato-theme.patch "
>>>          PACKAGE_ARCH = "${MACHINE_ARCH}"
>>>
>>> This .bbappend file works perfectly :-(
>>
>> The FILESPATH line you referred to is very old and probably no longer
>> necessary. Try dropping it and see if everything works.
>
> I did and it still doesn't work.  Now it looks at many more directories,
> including the overrides, etc, but still not looking in the layer that
> contains the .bbappend.  I now get these:
>      /home/local/poky-multi/meta/recipes-devtools/python/python-pygobject-native-2.27.91/i686
>      /home/local/poky-multi/meta/recipes-devtools/python/python-pygobject-native-2.27.91/cobra4430p82
>      /home/local/poky-multi/meta/recipes-devtools/python/python-pygobject-native-2.27.91/omap4
>      /home/local/poky-multi/meta/recipes-devtools/python/python-pygobject-native-2.27.91/armv7a
>      /home/local/poky-multi/meta/recipes-devtools/python/python-pygobject-native-2.27.91/amltd
>      /home/local/poky-multi/meta/recipes-devtools/python/python-pygobject-native-2.27.91/
>      /home/local/poky-multi/meta/recipes-devtools/python/python-pygobject-native/i686
>      /home/local/poky-multi/meta/recipes-devtools/python/python-pygobject-native/cobra4430p82
>      /home/local/poky-multi/meta/recipes-devtools/python/python-pygobject-native/omap4
>      /home/local/poky-multi/meta/recipes-devtools/python/python-pygobject-native/armv7a
>      /home/local/poky-multi/meta/recipes-devtools/python/python-pygobject-native/amltd
>      /home/local/poky-multi/meta/recipes-devtools/python/python-pygobject-native/
>      /home/local/poky-multi/meta/recipes-devtools/python/python-pygobject-2.27.91/i686
>      /home/local/poky-multi/meta/recipes-devtools/python/python-pygobject-2.27.91/cobra4430p82
>      /home/local/poky-multi/meta/recipes-devtools/python/python-pygobject-2.27.91/omap4
>      /home/local/poky-multi/meta/recipes-devtools/python/python-pygobject-2.27.91/armv7a
>      /home/local/poky-multi/meta/recipes-devtools/python/python-pygobject-2.27.91/amltd
>      /home/local/poky-multi/meta/recipes-devtools/python/python-pygobject-2.27.91/
>      /home/local/poky-multi/meta/recipes-devtools/python/python-pygobject/i686
>      /home/local/poky-multi/meta/recipes-devtools/python/python-pygobject/cobra4430p82
>      /home/local/poky-multi/meta/recipes-devtools/python/python-pygobject/omap4
>      /home/local/poky-multi/meta/recipes-devtools/python/python-pygobject/armv7a
>      /home/local/poky-multi/meta/recipes-devtools/python/python-pygobject/amltd
>      /home/local/poky-multi/meta/recipes-devtools/python/python-pygobject/
>      /home/local/poky-multi/meta/recipes-devtools/python/files/i686
>      /home/local/poky-multi/meta/recipes-devtools/python/files/cobra4430p82
>      /home/local/poky-multi/meta/recipes-devtools/python/files/omap4
>      /home/local/poky-multi/meta/recipes-devtools/python/files/armv7a
>      /home/local/poky-multi/meta/recipes-devtools/python/files/amltd
>      /home/local/poky-multi/meta/recipes-devtools/python/files/
>
> Still very confused.
>

I figured it out - there were compounding problems here.

Firstly, the FILESPATH setting in the main recipe is wrong and
needs to be removed.  Secondly, my .bbappend override needs to
be written using ':=' like this:
   FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:${THISDIR}/${PN}:"

Now it's working fine.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------


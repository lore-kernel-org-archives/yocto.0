Return-Path: <scott.a.garman@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D417FE0059A
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2012 14:42:43 -0800 (PST)
Received: from mail-pz0-f52.google.com ([209.85.210.52])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 25 Jan 2012 14:42:43 -0800
Received: by dadp14 with SMTP id p14so11913020dad.25
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2012 14:42:43 -0800 (PST)
Received: by 10.68.74.69 with SMTP id r5mr2193798pbv.118.1327531361101;
	Wed, 25 Jan 2012 14:42:41 -0800 (PST)
Received: from [192.168.1.12] (c-76-115-40-64.hsd1.or.comcast.net.
	[76.115.40.64])
	by mx.google.com with ESMTPS id h9sm5791616pbq.14.2012.01.25.14.42.39
	(version=SSLv3 cipher=OTHER); Wed, 25 Jan 2012 14:42:40 -0800 (PST)
Message-ID: <4F208561.8010804@intel.com>
Date: Wed, 25 Jan 2012 14:42:41 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111229 Thunderbird/9.0
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4F203D8E.3010508@gmail.com> <4F207F9B.2060809@linux.intel.com>
In-Reply-To: <4F207F9B.2060809@linux.intel.com>
X-Gm-Message-State: ALoCoQkwFXOTadcC/AqmWYfIsQhFrmpkfGVYLvgcbIX44mXjkwD3/3b7jCKl4oog8X/9mP1xSEBF
Cc: yocto@yoctoproject.org
Subject: Re: normal user for Intel BSPs?
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
X-List-Received-Date: Wed, 25 Jan 2012 22:42:44 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/25/2012 02:18 PM, Darren Hart wrote:
> On 01/25/2012 09:36 AM, jfabernathy wrote:
>> I've noticed that the meta-intel BSP come up with the default
>> terminal, serial console user, etc. as root.  What would it take to
>> make my own BSP that was exactly the same, but the default was a not
>> admin user, but you could su or sudo to root?
>
> I'm adding Scott G. who I believe has been working on the useradd
> scripts and such (to sanity check the following). I believe you should
> be able to setup new users by extending an image recipe with a new task
> to make the necessary useradd/mod etc calls on the rootfs prior to
> packaging it up.
>
> Scott, can you offer more detail on how that is done?

Hi Jim, Darren:

The useradd mechanism is for supporting custom users and groups in 
recipes. It sounds like what Jim may find more expedient would be to 
define a recipe which includes a first-boot script which creates the 
additional users/groups and then sets up custom ownership on the 
terminal, serial console user, etc. Otherwise you'd have to do this in 
several recipes.

Using the first-boot script approach is documented here:

http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.html#usingpoky-extend-addpkg-postinstalls

Whereas using the useradd bitbake class is documented in an example 
recipe in meta-skeleton/recipes-skeleton/useradd/useradd-example.bb. 
There is also a slide deck you may find useful here:

http://wiki.yoctoproject.org/wiki/images/e/e6/Custom_Users_Groups_in_Yocto1.1.pdf

I'll also mention that I'm still shaking out bugs in the useradd 
mechanism. We have some race conditions that are complicating matters 
when building from sstate. So if you're using one of our stable 
releases, the first-boot script approach is probably your safest bet.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center


Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6462E017D8
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 16:16:49 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 39313F81220; Thu, 31 Oct 2013 17:16:49 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 4F30AF8121F;
	Thu, 31 Oct 2013 17:16:48 -0600 (MDT)
Message-ID: <5272E4E0.2060407@mlbassoc.com>
Date: Thu, 31 Oct 2013 17:16:48 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CALb2248JBMiWJJ8ppDBhV+D15rArsg5VxTnW7OAjwUi76U9VgA@mail.gmail.com>
	<20131031203257.GK32015@jama>
In-Reply-To: <20131031203257.GK32015@jama>
Subject: Re: Adding Custom Files to Build
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
X-List-Received-Date: Thu, 31 Oct 2013 23:16:51 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-10-31 14:32, Martin Jansa wrote:
> On Thu, Oct 31, 2013 at 01:28:27PM -0700, Leo Schwab wrote:
>> This may seem rather basic, but something that I haven't been able to
>> find any clear discussion on is how to add or modify files in the
>> final rootfs image.
>>
>> We have customized versions of /etc/network/interfaces and
>> /etc/wpa_supplicant.conf, with more to come.  Right now I've been
>> adding them by hand to the SD cards, but I would prefer they were
>> added to the rootfs and the .sdcard images as part of the build.
>>
>> I briefly considered creating a .bbappend file to modify the build for
>> the wpa_supplicant.bb recipe, but it turns out that
>> /etc/wpa_supplicant.conf itself comes from a custom file inside the
>> recipe, and it wasn't at all clear how to hook in or override that.
>>
>> I also get the impression that writing a recipe that simply copies
>> stuff to final image will get me yelled at by the build system, since
>> I'm overwriting files already provided by another recipe.
>>
>> Can anyone point me in the right direction?
>
> Creating .bbappends is the right direction, you just need to read a bit
> more docs (hint: FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:")

Look at how it's done elsewhere, e.g. meta-raspberrypi or meta-yocto-bsp
for examples of how to provide overrides for your own platform/target/whim.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------


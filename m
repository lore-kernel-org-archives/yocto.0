Return-Path: <jfabernathy@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93494E01353
	for <yocto@yoctoproject.org>; Tue,  7 Feb 2012 13:55:01 -0800 (PST)
Received: by qcsd1 with SMTP id d1so5154403qcs.35
	for <yocto@yoctoproject.org>; Tue, 07 Feb 2012 13:55:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=0pZBcx95g3xYTiZKwXNLuHOEVp0+WomL+98Na1Tksq0=;
	b=QVO/qSI8aXa2vEfZv5EngXDYmWBWn8ftHA0ALD4cW7cLYYapuLL+AxQ7rO7qD2nkoE
	TYaOw0r8qhyWkSqH27atoTV3vdJHyhseghfbkWrc3hLITpCOVvglq/P/OxaZaaRswGRQ
	5Dr27Ktx89QlHLS4OZ304NRsFbbhLHyjwyloc=
Received: by 10.224.212.134 with SMTP id gs6mr23976618qab.32.1328651700536;
	Tue, 07 Feb 2012 13:55:00 -0800 (PST)
Received: from [10.0.1.54] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id
	hi8sm43510723qab.3.2012.02.07.13.54.59 (version=SSLv3 cipher=OTHER);
	Tue, 07 Feb 2012 13:54:59 -0800 (PST)
Message-ID: <4F319DB3.6090006@gmail.com>
Date: Tue, 07 Feb 2012 16:54:59 -0500
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111229 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CANFv2EmFLxf8zkCgFYamCyBmh_j5sQJO2QpexQLSUg=+NMi5vg@mail.gmail.com>
	<4F317372.6040501@linux.intel.com>
In-Reply-To: <4F317372.6040501@linux.intel.com>
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
X-List-Received-Date: Tue, 07 Feb 2012 21:55:01 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/07/2012 01:54 PM, Joshua Lock wrote:
> On 07/02/12 07:57, James Abernathy wrote:
>> This may be a dumb question, but I'll ask anyway.
>> Suppose you have a project where you need a very custom user interface.
>> Not just a series of applications that appear on a desktop like you see
>> in sato, or Gnome, or KDE.  Basically your application becomes the UI.
>> I can see 2 approaches to this:
>>
>>  1. Start with core-image-minimal and add the packages you need to
>>     support GFX, X11, and your application plus dependencies.
>>  2. Take core-image-sato and change the applications to be your subtasks
>>     , and the look-and-feel of the desktop.
>>
>> What are the considerations of both approaches?
>
> A key selling point of the Yocto approach is to provide a highly 
> customised OS for your target application, rather than taking an 
> existing solution and stripping it back.
>
> 2. is the antithesis of the Yocto approach if you don't want/need the 
> Sato UI.
>
> The intention is that the core metadata should provide sufficient 
> granularity through the defined images and tasks to get people started.
>
> I'd recommend something like 1. only taking core-image-core (horrible 
> name I know) if you want an X based OS.
>
I built core-image-core and it works and is basic. So it's not a really 
small Sato???

> We no doubt need more documentation in this area, and Hob is designed 
> to help here.
>
>
>> Is one better, or easier than the other?
>
> Creating your own image is better in that you only build and ship what 
> you need. Arguably building atop a custom image is easier, but you 
> lose control.
>
>> How would you do this in Yocto?
>
> You might consider creating a custom image by starting with 
> core-image-minimal and adding IMAGE_FEATURES and IMAGE_INSTALL entries 
> to provide the core functionality you desire.
>
> $ less foo.bb
> # a noddy example image, base of a NAS OS
>
> # start with core-image-minimal
> require recipes-core/images/core-image-minimal.bb
>
> IMAGE_FEATURES += "package-management nfs-server ssh-server-dropbear"
> IMAGE_INSTALL += "my-custom-nas-app"
>
I have difficulty understanding the difference in IMAGE_FEATURES and 
IMAGE_INSTALL.  To me IMAGE_INSTALL is clear I've used that in a 
core-image-sato.bbappend file in an image directory in my own recipes-xx 
directory.  I see how IMAGE_FEATURES is uses in the core-image-core:

IMAGE_FEATURES += "apps-console-core ${X11_IMAGE_FEATURES}"

But I have no idea what ${X11_IMAGE_FEATURES} is or how to find where 
it's defined.  The apps-console-core is define in the Poky Refernce manual:

http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.html#ref-features-image

However, I'm not sure were to find it's definition in the many recipes.

Jim A

>> Where do you look for information you need to accomplish this?
>
> Mostly by following examples in the existing metadata at the moment, 
> see the comment above about hob and documentation.
>
> Cheers,
> Joshua



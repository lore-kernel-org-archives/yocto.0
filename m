Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (unknown [209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 323E4E002AB
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2012 09:09:45 -0700 (PDT)
Received: by pbbrq13 with SMTP id rq13so10131834pbb.35
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2012 09:09:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type;
	bh=arGv7OIi1DXeEUuEmxHaJ5+635XZO5bRFRVfSHxir+s=;
	b=JibEJFv2ICVx69wrqfBsHsKzlF1cu4ul6xBWu4YjoMY8K1GGNbcgdT5GdlzhoKc43v
	1h4n/dYNimssJ1P30XVksQXPur+3AzOSYE48kp/Wu0ZOpPJ1jwvfyrkW4wJEgo2Icu5K
	BUxM/0jalXizVl9H+GYdL5sEPsyl5cGmtvVq0Z34BG5sRjtKtu++5/zgsyj6q+6kTI+R
	99L9C4Bmvd0p27MXYlOwztRL/4kBVovQk1j//+NC1uLw/EgEjvqlu4s3ggOZrh7jyA8q
	gB3TWC6Sn2UScq85d1wrwaZL/vEdRz4NXfOcn482UqihA/QKFWBZYjnQzMBz1gOnvDDV
	GGKQ==
Received: by 10.66.85.4 with SMTP id d4mr15050334paz.11.1347811756848;
	Sun, 16 Sep 2012 09:09:16 -0700 (PDT)
Received: from [192.168.1.111] ([94.205.108.162])
	by mx.google.com with ESMTPS id pj10sm5257209pbb.46.2012.09.16.09.09.14
	(version=SSLv3 cipher=OTHER); Sun, 16 Sep 2012 09:09:16 -0700 (PDT)
Message-ID: <5055F9A6.20709@gmail.com>
Date: Sun, 16 Sep 2012 20:09:10 +0400
From: Elvis Dowson <elvis.dowson@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120827 Thunderbird/15.0
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <0937D44A-6DDB-49BD-B8E3-14873C5D8839@gmail.com>
	<CAMKF1sr9zgFJMrhBM_xdVPMM_zhnQCzjxYanub6O7NFG4w1Ohg@mail.gmail.com>
In-Reply-To: <CAMKF1sr9zgFJMrhBM_xdVPMM_zhnQCzjxYanub6O7NFG4w1Ohg@mail.gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Dependency walk for busybox recipe
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
X-List-Received-Date: Sun, 16 Sep 2012 16:09:45 -0000
Content-Type: multipart/alternative;
	boundary="------------050003030506000308030907"

--------------050003030506000308030907
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 09/16/2012 07:54 AM, Khem Raj wrote:
> On Sat, Sep 15, 2012 at 10:59 AM, Elvis Dowson <elvis.dowson@gmail.com> wrote:
>> So I added busybox-1.19.4 recipe back into my poky master branch, and the resulting size of the busybox-1.19.4 /bin/busybox or /bin/sh executable is 604.2 kb.
> make sure that .config of busybox has not changed even if you have
> same version backported
I've made sure that the defconfig files used in the recipe are 
identical. The only addition that I notice now, is that the recent 
rework done to task-core-boot, resulting in it being renamed as 
packagegroup-core-boot.bb adds the following extra line:

${@base_contains("MACHINE_FEATURES", "rtc", "busybox-hwclock", "", d)} \

My virtex5.conf machine features entry does not specify an rtc,

MACHINE_FEATURES = "kernel26 apm ext2 ext3 vfat ethernet keyboard screen 
serial"

yet the current poky master attempts to pull it in:

NOTE: Resolving any missing task queue dependencies
ERROR: Nothing RPROVIDES 'busybox-hwclock' (but 
/tool/yocto/poky/meta/recipes-core/packagegroups/packagegroup-core-boot.bb 
RDEPENDS on or otherwise requires it)
NOTE: Runtime target 'busybox-hwclock' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['busybox-hwclock']
NOTE: Runtime target 'packagegroup-core-boot' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['packagegroup-core-boot', 
'busybox-hwclock']
ERROR: Required build target 'core-image-minimal' has no buildable 
providers.
Missing or unbuildable dependency chain was: ['core-image-minimal', 
'packagegroup-core-boot', 'busybox-hwclock']

Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

Is this a bug? Is the rtc being added from somewhere else? Should this 
be happening?

Best regards,

Elvis Dowson

--------------050003030506000308030907
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 09/16/2012 07:54 AM, Khem Raj wrote:<br>
    </div>
    <blockquote
cite="mid:CAMKF1sr9zgFJMrhBM_xdVPMM_zhnQCzjxYanub6O7NFG4w1Ohg@mail.gmail.com"
      type="cite">
      <pre wrap="">On Sat, Sep 15, 2012 at 10:59 AM, Elvis Dowson <a class="moz-txt-link-rfc2396E" href="mailto:elvis.dowson@gmail.com">&lt;elvis.dowson@gmail.com&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">So I added busybox-1.19.4 recipe back into my poky master branch, and the resulting size of the busybox-1.19.4 /bin/busybox or /bin/sh executable is 604.2 kb.
</pre>
      </blockquote>
      <pre wrap="">
make sure that .config of busybox has not changed even if you have
same version backported
</pre>
    </blockquote>
    I've made sure that the defconfig files used in the recipe are
    identical. The only addition that I notice now, is that the recent
    rework done to task-core-boot, resulting in it being renamed as
    packagegroup-core-boot.bb adds the following extra line:<br>
    <br>
    <small><font face="Courier New, Courier, monospace">${@base_contains("MACHINE_FEATURES",
        "rtc", "busybox-hwclock", "", d)} \</font></small><br>
    <br>
    My virtex5.conf machine features entry does not specify an rtc, <br>
    <br>
    <small><font face="Courier New, Courier, monospace">MACHINE_FEATURES
        = "kernel26 apm ext2 ext3 vfat ethernet keyboard screen serial"</font></small><br>
    <br>
    yet the current poky master attempts to pull it in:<br>
    <br>
    <small><font face="Courier New, Courier, monospace">NOTE: Resolving
        any missing task queue dependencies<br>
        ERROR: Nothing RPROVIDES 'busybox-hwclock' (but
        /tool/yocto/poky/meta/recipes-core/packagegroups/packagegroup-core-boot.bb
        RDEPENDS on or otherwise requires it)<br>
        NOTE: Runtime target 'busybox-hwclock' is unbuildable,
        removing...<br>
        Missing or unbuildable dependency chain was: ['busybox-hwclock']<br>
        NOTE: Runtime target 'packagegroup-core-boot' is unbuildable,
        removing...<br>
        Missing or unbuildable dependency chain was:
        ['packagegroup-core-boot', 'busybox-hwclock']<br>
        ERROR: Required build target 'core-image-minimal' has no
        buildable providers.<br>
        Missing or unbuildable dependency chain was:
        ['core-image-minimal', 'packagegroup-core-boot',
        'busybox-hwclock']</font></small><br>
    <br>
    Summary: There were 2 ERROR messages shown, returning a non-zero
    exit code.<br>
    <br>
    Is this a bug? Is the rtc being added from somewhere else? Should
    this be happening?<br>
    <br>
    Best regards,<br>
    <br>
    Elvis Dowson<br>
  </body>
</html>

--------------050003030506000308030907--

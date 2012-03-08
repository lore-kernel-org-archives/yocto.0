Return-Path: <jfabernathy@gmail.com>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCD6AE0030B
	for <yocto@yoctoproject.org>; Thu,  8 Mar 2012 12:44:21 -0800 (PST)
Received: by ggcs6 with SMTP id s6so658523ggc.35
	for <yocto@yoctoproject.org>; Thu, 08 Mar 2012 12:44:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=+nBq79U2UNtUAaXbsFmPBgEpJLuG7wWxCTDGHzl5Vxw=;
	b=HCPwo3bnEsChD2kqZyN/ozsWUdi+HChrSqF0WQWl2KoTZ2STeqdD9uIOCXklrJE2Zb
	SB0hpjLHgXySntgjadb5asbYYVRKCbCKTJ1vQpU8IBvtZcmtGUJ+YPmFk4EJcUBO1AN3
	hrOUWEJqtgrullJLnV7JJhIR0wqtbJmdJddu9VWxx1ysELziJd28AXkK9DzTHETtvwHF
	RA3CsjydJk7sE0nZBhaayK4m+1PyyIzMUasEC81Z2mnhG5b2ZFkJpmubsaL0vQCB8xTu
	S5Hr6ceCT+jh6HHqFy2nGDTZ/KolcQl0Gr1B9o/+iqFCG7zbu79TtOrwvgmumKZF5e/u
	74XQ==
Received: by 10.236.80.4 with SMTP id j4mr12453430yhe.120.1331239461137;
	Thu, 08 Mar 2012 12:44:21 -0800 (PST)
Received: from [10.0.1.54] (nc-184-4-33-105.dhcp.embarqhsd.net. [184.4.33.105])
	by mx.google.com with ESMTPS id r7sm7667548yhm.9.2012.03.08.12.44.19
	(version=SSLv3 cipher=OTHER); Thu, 08 Mar 2012 12:44:20 -0800 (PST)
Message-ID: <4F591A23.3050908@gmail.com>
Date: Thu, 08 Mar 2012 15:44:19 -0500
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.2) Gecko/20120216 Thunderbird/10.0.2
MIME-Version: 1.0
To: Autif Khan <autif.mlist@gmail.com>
References: <4F58D16C.8030309@gmail.com>
	<CADzUK1K0BTWTm8kfto2SZGpv7Q6sSGcCKggCHXeaconFKR9xcg@mail.gmail.com>
In-Reply-To: <CADzUK1K0BTWTm8kfto2SZGpv7Q6sSGcCKggCHXeaconFKR9xcg@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Adding test files to an image
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
X-List-Received-Date: Thu, 08 Mar 2012 20:44:22 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/08/2012 11:57 AM, Autif Khan wrote:
>> Suppose I want to build the meta-intel/meta-sugarbay image and also include
>> some video and audio files into the /home/root directory to facilitate
>> testing of the video and audio players.
>>
>> Can I include these files in a recipe somewhere?
> I use the recipe at the end of this message to include whatever I
> want. This recipe has to be added to the image - I have a custom
> image, so it goes in there. I am sure a recipe can be added to
> something in local.conf - I just do not know that variable. My guess
> it is IMAGE_IMSTALL += "mypics".
>
> Regardless ...
>
> mypics-1.0.tar.gz contains a file called COPYING and its mds5um on the
> 2nd line. It can be replaced with a license from common licenses
> directory - but at the time when I wrote this recipe, I did not know
> how to do that. Anything that goes in there ends up in
> /home/root/mypics.
>
> It can probably be tweaked to look better - I am sure SRC_URI line is
> not perfect. But it seems to work between Edison to master
>
> For larger files - like video worth 200MB or so, I just store them on
> a hard disk and mount manually on /media/hdd or where-ever. Not that
> it wont work in this recipe, just that it would take longer to build
> the image etc.
>
> All the best. Hopefully, this will get you started in the right direction.
>
> LICENSE = "MyLic"
> LIC_FILES_CHKSUM = "file://COPYING;md5=697172b05e4bff0a2421579697ba5653"
>
> MY_DESTINATION = "/home/root/mypics"
>
> SRC_URI = "file://mypics-1.0/mypics-1.0.tar.gz"
>
> do_install_append() {
>          install -d ${D}${MY_DESTINATION}
>          install -m 0644  ${S}/* ${D}${MY_DESTINATION}
> }
>
> PR = "r0"
>
> FILES_${PN} += "${MY_DESTINATION}/*"
I have some issues that seem to be related to where everything gets 
unpacked and where it thinks it needs to install from.

Below is my recipe file name "myvideos_1.0.bb"

DESCRIPTION = "my video test files"
SECTION = "examples"
LICENSE = "CLOSED"

MY_DESTINATION = "/home/root/myvideos"

SRC_URI = "file://myvideos_1.0/myvideos-1.0.tar.gz"

do_install_append() {
         install -d ${D}${MY_DESTINATION}
         install -m 0644  ${S}/* ${D}${MY_DESTINATION}
}

PR = "r0"

FILES_${PN} += "${MY_DESTINATION}/*"


I have the myvideo-1.0.tar.gz file in the myvideos_1.0 directory, same 
level as the recipe in a directory call myvideos.

The error I'm getting is :
Log data follows:
| ERROR: Function failed: do_install (see 
/build/sugarbay-master/tmp/work/x86_64-poky-linux/myvideos-1.0-r0/temp/log.do_install.9051 
for further information)
| install: cannot stat 
`/build/sugarbay-master/tmp/work/x86_64-poky-linux/myvideos-1.0-r0/myvideos-1.0/*': 
No such file or directory
NOTE: package myvideos-1.0-r0: task do_install: Failed
ERROR: Task 2 
(/home/jim/poky/meta-jfa/recipes-jfa/myvideos/myvideos_1.0.bb, 
do_install) failed with exit code '1'
NOTE: Tasks Summary: Attempted 651 tasks of which 644 didn't need to be 
rerun and 1 failed.


The tar.gz is getting unpacked in the 
..tmp/work/x86_64-poky-linux/myvideos-1.0-r0 directory per the unpack 
log file below:

NOTE: Unpacking 
/home/jim/poky/meta-jfa/recipes-jfa/myvideos/myvideos_1.0/myvideos-1.0.tar.gz 
to /build/sugarbay-master/tmp/work/x86_64-poky-linux/myvideos-1.0-r0/

The critical parts of the run.do_install is below:

do_install() {
     base_do_install
         install -d 
/build/sugarbay-master/tmp/work/x86_64-poky-linux/myvideos-1.0-r0/image/home/root/myvideos
         install -m 0644  
/build/sugarbay-master/tmp/work/x86_64-poky-linux/myvideos-1.0-r0/myvideos-1.0/* 
/build/sugarbay-master/tmp/work/x86_64-poky-linux/myvideos-1.0-r0/image/home/root/myvideos

}

base_do_install() {
     :

}

cd 
/build/sugarbay-master/tmp/work/x86_64-poky-linux/myvideos-1.0-r0/myvideos-1.0
do_install

-------------------------
So it looks like it unpacks it one place, but is looking to install from 
somewhere else. I'm just not sure how all the S and D variables are set 
and what they do.

Jim A



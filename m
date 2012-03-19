Return-Path: <jfabernathy@gmail.com>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBA3BE013A3
	for <yocto@yoctoproject.org>; Mon, 19 Mar 2012 09:02:03 -0700 (PDT)
Received: by ggcs6 with SMTP id s6so7134536ggc.35
	for <yocto@yoctoproject.org>; Mon, 19 Mar 2012 09:02:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=97MnDKlPu97N3frRnswxSg0kfV6apRlXRT5eUpZrtj4=;
	b=xNddCHEtd7Fazr39iQbwf/GqEEfZl9/SfnWA71jN/62Oa3hfOJ7LCVIs8w2WwQpUvy
	2zxSf7hXwDm7BGbgIFp1uJWOfTePOmMRIonREy3en7AgA18LIQkbVyJrtw9vFBr6VMdp
	2PUBVzz8nIQeNIGuoIYVsbM1oR0QT/UuRdGgPxP64d2PLcq4kx2xXRVK5YEnU4Q8Msjj
	jKUZ1heFsRsg8Eoez6s0Ls8aux11z9mmR2puRKTJl8VNN4KueHMQ31QfnEQMH1D585TE
	ihmdKFC6kWZUHD8Cp8GNDNlLoZmr3qP1Jg14EN9qws/VtbeRu8+C1A1RZxuY/+zbS61V
	dXTw==
Received: by 10.236.197.100 with SMTP id s64mr12635286yhn.108.1332172922849;
	Mon, 19 Mar 2012 09:02:02 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-33-105.dhcp.embarqhsd.net. [184.4.33.105])
	by mx.google.com with ESMTPS id l2sm17234247anb.11.2012.03.19.09.02.01
	(version=SSLv3 cipher=OTHER); Mon, 19 Mar 2012 09:02:02 -0700 (PDT)
Message-ID: <4F675879.3050304@gmail.com>
Date: Mon, 19 Mar 2012 12:02:01 -0400
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.2) Gecko/20120216 Thunderbird/10.0.2
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: build error after recent pull
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
X-List-Received-Date: Mon, 19 Mar 2012 16:02:04 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Just did a git pull today on poky and meta-intel.  I tried to rebuild 
meta-sugarbay again and got a build error.  Not sure why yet.  Not 
critical, just a spot check of things.
------------------


NOTE: package mesa-dri-2_7.11-r13.1: task do_configure: Succeeded
NOTE: Running task 1723 of 5148 (ID: 1928, 
/home/jim/poky/meta/recipes-graphics/mesa/mesa-dri_7.11.bb, do_compile)
NOTE: package mesa-dri-2_7.11-r13.1: task do_compile: Started
ERROR: Function failed: do_compile (see 
/build/sugarbay-master/tmp/work/x86_64-poky-linux/mesa-dri-2_7.11-r13.1/temp/log.do_compile.25687 
for further information)
ERROR: Logfile of failure stored in: 
/build/sugarbay-master/tmp/work/x86_64-poky-linux/mesa-dri-2_7.11-r13.1/temp/log.do_compile.25687
Log data follows:
| DEBUG: SITE files ['endian-little', 'common-linux', 'common-glibc', 
'bit-64', 'x86_64-linux', 'common']
| ERROR: Function failed: do_compile (see 
/build/sugarbay-master/tmp/work/x86_64-poky-linux/mesa-dri-2_7.11-r13.1/temp/log.do_compile.25687 
for further information)
| NOTE: make -j 8
| make[1]: Entering directory 
`/build/sugarbay-master/tmp/work/x86_64-poky-linux/mesa-dri-2_7.11-r13.1/Mesa-7.11/src'
| Making sources for autoconf
| make[2]: Entering directory 
`/build/sugarbay-master/tmp/work/x86_64-poky-linux/mesa-dri-2_7.11-r13.1/Mesa-7.11/src/mapi/glapi'
| make[2]: *** No rule to make target 
`/build/sugarbay-master/tmp/sysroots/x86_64-linux/usr/lib/x86_64-poky-linux/gcc/x86_64-poky-linux/4.6.3/include/stddef.h', 
needed by `glapi_dispatch.o'.  Stop.
| make[2]: Leaving directory 
`/build/sugarbay-master/tmp/work/x86_64-poky-linux/mesa-dri-2_7.11-r13.1/Mesa-7.11/src/mapi/glapi'
| make[1]: *** [subdirs] Error 1
| make[1]: Leaving directory 
`/build/sugarbay-master/tmp/work/x86_64-poky-linux/mesa-dri-2_7.11-r13.1/Mesa-7.11/src'
| make: *** [default] Error 1
| ERROR: oe_runmake failed
NOTE: package mesa-dri-2_7.11-r13.1: task do_compile: Failed
ERROR: Task 1928 
(/home/jim/poky/meta/recipes-graphics/mesa/mesa-dri_7.11.bb, do_compile) 
failed with exit code '1'



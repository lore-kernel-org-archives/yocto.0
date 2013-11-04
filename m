Return-Path: <msvilans@aeonyx.ca>
Received: from homiemail-a27.g.dreamhost.com (caiajhbdcbbj.dreamhost.com
	[208.97.132.119])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57A80E016DC
	for <yocto@yoctoproject.org>; Mon,  4 Nov 2013 10:59:43 -0800 (PST)
Received: from homiemail-a27.g.dreamhost.com (localhost [127.0.0.1])
	by homiemail-a27.g.dreamhost.com (Postfix) with ESMTP id 4F5D9598065
	for <yocto@yoctoproject.org>; Mon,  4 Nov 2013 10:59:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=aeonyx.ca; h=message-id
	:date:from:mime-version:to:subject:content-type; s=aeonyx.ca;
	bh=Y5pRO6X7An0fjM9x0fcURvCxIQ0=; b=vbqO8w6AArb8XF5WUHzXQsfx/xQh
	q/DH00qgySSRK0nhk9TnrEz/IRZUPya01bWclbdVebP2Q/D8tNeUv4V4UYqq1a4y
	gWCdXV/e+7R5D0DNFI8csx+iuVRLRtUZBkfCfXmLeKkPR7k+0Kw4PhBh2z0T/xog
	jDTVLEjdLNSGQT0=
Received: from [192.168.1.127] (216-167-250-35.eastlink.ca [216.167.250.35])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: msvilans@aeonyx.ca)
	by homiemail-a27.g.dreamhost.com (Postfix) with ESMTPSA id 9E94359809E
	for <yocto@yoctoproject.org>; Mon,  4 Nov 2013 10:58:23 -0800 (PST)
Message-ID: <5277EE4D.2080303@aeonyx.ca>
Date: Mon, 04 Nov 2013 13:58:21 -0500
From: Markus Svilans <msvilans@aeonyx.ca>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Deploying Yocto built images on x86
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
X-List-Received-Date: Mon, 04 Nov 2013 18:59:46 -0000
Content-Type: multipart/alternative;
	boundary="------------040602030408010906030703"

--------------040602030408010906030703
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Dear list,

What do people do for deploying Yocto built images to actual x86 hardware?

I am researching how to build an appliance type Linux box on x86 
hardware, but I am unclear on what are the generally accepted methods 
for doing that. The box would need to have a read-only rootfs, mounted 
in RAM, with one or more partitions for storing persistent files.

I am looking for some method, where I could bitbake a recipe, that will:

  * build a FAT image for syslinux and initramfs files
  * build one or more small ext3/4 partitions for persistent storage
    (config files, log files, etc.)
  * generate a single binary image, that can be easily installed to a
    hard drive (via dd or other tool), and will automatically handle the
    various partitions, boot record, etc. on the target hard drive


The following presentation from 2006 mentions the mkimg and imgloader 
tools, that appear to do just that:
http://elinux.org/images/1/1b/Jordan_crouse_celf_2006.pdf

But there seems to be no mention of the mkimg / imgloader tools anywhere 
online. What happened to them? Are they proprietary AMD tools?


Any insights or links to good literature would be much appreciated.

Thanks very much
Markus



--------------040602030408010906030703
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Dear list,<br>
    <br>
    What do people do for deploying Yocto built images to actual x86
    hardware?<br>
    <br>
    I am researching how to build an appliance type Linux box on x86
    hardware, but I am unclear on what are the generally accepted
    methods for doing that. The box would need to have a read-only
    rootfs, mounted in RAM, with one or more partitions for storing
    persistent files.<br>
    <br>
    I am looking for some method, where I could bitbake a recipe, that
    will:<br>
    <ul>
      <li>build a FAT image for syslinux and initramfs files</li>
      <li>build one or more small ext3/4 partitions for persistent
        storage (config files, log files, etc.)</li>
      <li>generate a single binary image, that can be easily installed
        to a hard drive (via dd or other tool), and will automatically
        handle the various partitions, boot record, etc. on the target
        hard drive<br>
      </li>
    </ul>
    <p><br>
      The following presentation from 2006 mentions the mkimg and
      imgloader tools, that appear to do just that:<br>
      <a class="moz-txt-link-freetext" href="http://elinux.org/images/1/1b/Jordan_crouse_celf_2006.pdf">http://elinux.org/images/1/1b/Jordan_crouse_celf_2006.pdf</a><br>
    </p>
    <p>But there seems to be no mention of the mkimg / imgloader tools
      anywhere online. What happened to them? Are they proprietary AMD
      tools?<br>
    </p>
    <p><br>
      Any insights or links to good literature would be much
      appreciated.<br>
    </p>
    <p>Thanks very much<br>
      Markus<br>
    </p>
    <p><br>
    </p>
  </body>
</html>

--------------040602030408010906030703--

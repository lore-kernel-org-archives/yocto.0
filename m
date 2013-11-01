Return-Path: <msvilans@aeonyx.ca>
Received: from homiemail-a89.g.dreamhost.com (caiajhbdcbef.dreamhost.com
	[208.97.132.145])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EAA2E01678
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2013 12:43:21 -0700 (PDT)
Received: from homiemail-a89.g.dreamhost.com (localhost [127.0.0.1])
	by homiemail-a89.g.dreamhost.com (Postfix) with ESMTP id C0416318072
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2013 12:43:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=aeonyx.ca; h=message-id
	:date:from:mime-version:to:subject:content-type:
	content-transfer-encoding; s=aeonyx.ca; bh=2XDM29oqCP5D9DUR3ID/U
	Gcceus=; b=M7CfOQpAI7gNVXR3DWKor1c0VgG+a8QW3+xEkhJSX039nsV7+Z6sj
	gr4LF9/KVDTlcrmPcW3q1ol9nTidCIxMpQDhKG3KpRVmsRO3eGqTzO9EjCUuxFXI
	RcTomf/C7QpXdeEwSq1pQRoMPF+lGqVOm5GMs59VYJMSqUzxaMSXhU=
Received: from [192.168.1.127] (216-167-250-35.eastlink.ca [216.167.250.35])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: msvilans@aeonyx.ca)
	by homiemail-a89.g.dreamhost.com (Postfix) with ESMTPSA id 7AC0D318064
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2013 12:43:20 -0700 (PDT)
Message-ID: <52740457.5020101@aeonyx.ca>
Date: Fri, 01 Nov 2013 15:43:19 -0400
From: Markus Svilans <msvilans@aeonyx.ca>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: bbappend files and "ERROR: no recipes available for"
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
X-List-Received-Date: Fri, 01 Nov 2013 19:43:24 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Dear list,

I am working on a compact filesystem image, that contains firmware only 
for the network hardware on the motherboard.

Therefore, I created a linux-firmware.bbappend file, with the following 
contents:

> # Cherrypick the firmware files that we need for our hardware
>
> #FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>
> PACKAGES += "${PN}-rtl8168d-1"
>
> FILES_${PN}-rtl8168d-1 = " \
>   /lib/firmware/rtl_nic/rtl8168d-1.fw \
> "


However, running "bitbake linux-firmware" fails with this bbappend file 
present:


> ERROR: No recipes available for:
> /home/markus/yocto/genericx86-64-dora-10.0.0/meta-markus/recipes-kernel/linux-firmware/linux-firmware.bbappend
> ERROR: Command execution failed: Exited with 1


Other bbappend files, such as for custom kernel config for linux-yocto, 
worked without complaints.

So far, I was following the instructions for using bbappend files here:
http://www.yoctoproject.org/docs/1.5/dev-manual/dev-manual.html#using-bbappend-files
http://www.yoctoproject.org/docs/current/kernel-dev/kernel-dev.html


 From what I can see, I am setting up my linux-firmware.bbappend file 
consistently with the instructions.

What am I doing wrong here?

Thanks very much
Markus





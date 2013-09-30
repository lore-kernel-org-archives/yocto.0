Return-Path: <karl@hiramoto.org>
Received: from homiemail-a77.g.dreamhost.com (caiajhbdccah.dreamhost.com
	[208.97.132.207])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C573E0167A
	for <yocto@yoctoproject.org>; Mon, 30 Sep 2013 06:06:37 -0700 (PDT)
Received: from homiemail-a77.g.dreamhost.com (localhost [127.0.0.1])
	by homiemail-a77.g.dreamhost.com (Postfix) with ESMTP id A8D8C9406B
	for <yocto@yoctoproject.org>; Mon, 30 Sep 2013 06:06:36 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; c=nofws; d=hiramoto.org; h=message-id:date
	:from:mime-version:to:subject:content-type:
	content-transfer-encoding; q=dns; s=hiramoto.org; b=RXhX0hKG8qxp
	QT1kdzAAMzy1UT0n4pmCSjBJFPBX5k6CRkruEnvkHbDFVaF5Af7YijjaWwWnia+x
	6vjOU/mwYiy11xVjNN5O4ZVeEe66wwm+W5eJwR/1Fk6OCBhdIRbmNY95MhCmGZll
	E8KRh29i38rjzo0tVGQIovx6BmU7vwU=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=hiramoto.org; h=message-id
	:date:from:mime-version:to:subject:content-type:
	content-transfer-encoding; s=hiramoto.org; bh=a+RCBBN7313WhnSlkP
	r4Aw0igoI=; b=KaxgYgVj7HOsUdOmeKUFoH/If1E9VPK+69GuPyJnAsI0ywy21L
	ZGfTwps70jEhkh0kBu4SAcFt3ebMdfEU3QerOtbgksmFJlWXzebzZ8rqobhvKSsm
	47Uevt6ZS9Wj2/q25NVRJ3EVZhVQ2Km6Uh5axF4yV5jvjHM0CLBRry/gU=
Received: from [10.64.1.2] (167.Red-79-155-47.dynamicIP.rima-tde.net
	[79.155.47.167])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: karl@hiramoto.org)
	by homiemail-a77.g.dreamhost.com (Postfix) with ESMTPSA id 045C894065
	for <yocto@yoctoproject.org>; Mon, 30 Sep 2013 06:06:35 -0700 (PDT)
Message-ID: <524976BA.2000707@hiramoto.org>
Date: Mon, 30 Sep 2013 15:03:54 +0200
From: Karl Hiramoto <karl@hiramoto.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130921 Thunderbird/17.0.9
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: firmware image combining rootfs and kernel
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
X-List-Received-Date: Mon, 30 Sep 2013 13:06:39 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Hi on my board, I build my  squashfs rootfs  and kernel image, and that 
works fine on yocto 9.0.1

How do i make my-image.bb   recipe,   build  a combined image? This 
would be similar to what openwrt does where you have a firmware.img   
that combines rootfs and kernel.
In openwrt there are different image file formats  for example: 
http://wiki.openwrt.org/doc/techref/header that contain  rootfs and kernel.

Does anyone know of any OE  recipies to handle this?  I need to have my 
own script build the firmware.img  that has dependencies of the 
virtual/kernel  and rootfs
And has variables that point  to  $DEPLOY_DIR / uImage  and $DEPLOY_DIR 
/ my-image.squashfs


Thanks,

karl


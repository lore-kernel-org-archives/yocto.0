Received: from mo4-p01-ob.smtp.rzone.de (mo4-p01-ob.smtp.rzone.de [85.215.255.50])
 by mx.groups.io with SMTP id smtpd.web11.17949.1593597654955513887
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Jul 2020 03:00:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@rsi-elektrotechnik.de header.s=strato-dkim-0002 header.b=ndZncSHX;
 spf=none, err=permanent DNS error (domain: rsi-elektrotechnik.de, ip: 85.215.255.50, mailfrom: prvs=14517a8ec1=holzmayr@rsi-elektrotechnik.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1593597652;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:Date:Message-ID:From:References:To:Subject:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=BTs92eQ7yUzoAF41Nkg2qicvGArOwah6hQE+B6irqSU=;
	b=ndZncSHXdlSnN5w/iMRLH4XYPd1RbCkETme4kkTrIzr3k2xt5VjPYQORdebEn0Aaoc
	jUEzsE86xXgge1tqYslb6QP5CQ1QDo1kAORvsIp//1a00+dF9ZVFdiF03wERuIVGfiqF
	TOwWvPW9tJNYh8mrOpK3fv320RW04F9QfMST0CiAeL0PYnKH0/ZJqNrRXxNYh54Xb03X
	sVZfnRWyyxotMIhiP58uAWRXL4WjKmLmlCkScdfyaS8c8qYAP+4XG5s1hdD7OnV9/D1E
	cydG3EygRZ1gFpK4F/04eMxepTNRFTaFzTE3dqvm8IHmqXiX2lzkiE8Q7ZVjg+ny02Id
	Wngw==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/KqCOd+ZZzzoK8epFp9XQIUl6aPGQL"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	by smtp.strato.de (RZmta 46.10.5 AUTH)
	with ESMTPSA id t09fdew61A0qPS4
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256 bits))
	(Client did not present a certificate)
	for <yocto@lists.yoctoproject.org>;
	Wed, 1 Jul 2020 12:00:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1593597651; x=1594202451;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Subject:To:
	References:From:Message-ID:Date:User-Agent:MIME-Version:
	In-Reply-To:Content-Type:Content-Transfer-Encoding; bh=BTs92eQ7y
	UzoAF41Nkg2qicvGArOwah6hQE+B6irqSU=; b=knCIFxJE/rsiRv8XGYtZgakGL
	1Mm75TYPGsStwlZXDz3R2MPHmuhDAWnSfyyqT8zc+o1Q33zsb3lOaeM73tVOLJRU
	OczvedKqYDs6LGolQP5pCC17XlJlPnOVzcGEqIcWPOn0UlVufR93t56OoeSOjuo9
	Kp4z/gIkZ5Ic4Nl7IA=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v19.5.5) with ESMTPSA id md50000286817.msg; 
	Wed, 01 Jul 2020 12:00:51 +0200
X-Spam-Processed: mail.rsi-elektrotechnik.de, Wed, 01 Jul 2020 12:00:51 +0200
	(not processed: message from trusted or authenticated source)
X-MDArrival-Date: Wed, 01 Jul 2020 12:00:51 +0200
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=14517a8ec1=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
X-MDaemon-Deliver-To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] How to install rrdtool-per package?
To: yocto@lists.yoctoproject.org
References: <5aRG.1593597049418588674.ppPw@lists.yoctoproject.org>
From: "Josef Holzmayr" <holzmayr@rsi-elektrotechnik.de>
Message-ID: <11c1c7af-0b29-a7bf-dc4a-e0b1b4e64b4a@rsi-elektrotechnik.de>
Date: Wed, 1 Jul 2020 12:00:48 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <5aRG.1593597049418588674.ppPw@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Howdy!

Looks very much like you'll need to set up PACKAGECONFIG of rrdtool, 
then it should provide rrdtool-perl.

See also: 
http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-extended/rrdtool/rrdtool_1.7.2.bb?h=master#n104

Greetz

Am 01.07.2020 um 11:50 schrieb ingemar0720@gmail.com:
> My Yocto build failed and it seems to be looking for "rrdtool-perl" 
> package. I've added package "rrdtool" into my "INSTALL_APPEND" variable 
> but it still fail. The logs is in below. Could someone helped me to find 
> the correct recipe to install it?
> 
> """
> 
> repo: using cache for: oe-repo
> 
> not found other for:
> 
> not found modules for:
> 
> not found deltainfo for:
> 
> not found updateinfo for:
> 
> oe-repo: using metadata from Wed 01 Jul 2020 09:34:21 AM UTC.
> 
> Last metadata expiration check: 0:00:01 ago on Wed 01 Jul 2020 09:34:22 
> AM UTC.
> 
> No module defaults found
> 
> --> Starting dependency resolution
> 
> --> Finished dependency resolution
> 
> Error:
> 
>   Problem: conflicting requests
> 
>    - nothing provides rrdtool-perl needed by 
> rpimonitor-2.13-r0.arm1176jzfshf_vfp
> 
> (try to add '--skip-broken' to skip uninstallable packages or '--nobest' 
> to use not only best candidate packages)
> 
> ERROR: Logfile of failure stored in: 
> /home/ingemar/yocto/sdk/build/tmp/work/raspberrypi0_wifi-poky-linux-gnueabi/rpi-image/1.0-r0/temp/log.do_rootfs.27003
> 
> ERROR: Task 
> (/home/ingemar/yocto/sdk/build/../build/meta-rpi/recipes-core/images/rpi-image.bb:do_rootfs) 
> failed with exit code '1'
> 
> """
> 
> 
> 
> 

-- 
_____________________________________________________________
R-S-I Elektrotechnik GmbH & Co. KG
Woelkestrasse 11
D-85301 Schweitenkirchen
Fon: +49 8444 9204-0
Fax: +49 8444 9204-50
www.rsi-elektrotechnik.de

_____________________________________________________________
Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
Geschäftsführer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
USt-IdNr.: DE 128592548


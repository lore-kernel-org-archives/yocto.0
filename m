Return-Path: <marc.ferland@gmail.com>
Received: from mail-qa0-f48.google.com (mail-qa0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C42E5E002AB
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2012 10:15:48 -0700 (PDT)
Received: by mail-qa0-f48.google.com with SMTP id c11so1946053qad.14
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2012 10:15:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id:user-agent:mime-version
	:content-type; bh=rw+n5zTlijf4nKceFjXcechEbqiGB9W6D7YoZ/zTfl0=;
	b=pi7MjtMzemHMGnU+KqPw08ruXcnUvMuWH735if0Gw6jBGgWTYIBRIHlC5AlvhPmGOP
	PicZqcXPjdsTvx2uZCvUgG6uRnCNpaYk+aKtITtRNFFqpjxIe34THSpuNegsvpHyGh9k
	o0xoPq+Tsx8u9JnBtmsyKzHgyBpHJ5jUijMdOLPrYbAduiGRf7aqguUHtn9flTVmowAu
	rLQMAqQ96xHHCcH6otpuEklhgC0y1qwhIeNg4+dBAVqaU69L5jEDNAz0yezwxEHYPOAq
	GrCcX0eOS6bctqyQzm26KdMzwrDcYfMpgagG9e8Dy4bPOB2DdkHNfSzVAdOxf12QoLRP
	HzFA==
Received: by 10.229.106.31 with SMTP id v31mr4737789qco.5.1351530947811;
	Mon, 29 Oct 2012 10:15:47 -0700 (PDT)
Received: from ferlandm@sonatest.com
	(modemcable066.15-37-24.static.videotron.ca. [24.37.15.66])
	by mx.google.com with ESMTPS id hw8sm6272679qab.9.2012.10.29.10.15.44
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 29 Oct 2012 10:15:47 -0700 (PDT)
Sender: Marc Ferland <marc.ferland@gmail.com>
Received: by ferlandm@sonatest.com (sSMTP sendmail emulation);
	Mon, 29 Oct 2012 13:15:51 -0400
From: Marc Ferland <ferlandm@sonatest.com>
To: yocto@yoctoproject.org
Date: Mon, 29 Oct 2012 13:15:51 -0400
Message-ID: <87wqy9rygo.fsf@sonatest.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.1 (gnu/linux)
MIME-Version: 1.0
Subject: rootless X emgd
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
X-List-Received-Date: Mon, 29 Oct 2012 17:15:49 -0000
Content-Type: text/plain

Hi,

I'm trying to make my machine work with rootless X. The machine looks a
lot like crownbay (with emgd).

I'm getting the following when X starts:

[2910604.796] (II) EMGD: Intel(R) Embedded Media and Graphics Driver version 1.10.2209 for:                                                       
        Intel US15W Class                                                                                                                         
[2910604.796] (--) using VT number 3                                                                                                             
                                                                                           
[2910604.871] (WW) VGA arbiter: cannot open kernel arbiter, no multi-card support          
[2910604.871] (==) EMGD(0): RGB weight 888                                                 
[2910604.871] (==) EMGD(0): Default visual is TrueColor                                    
[2910604.873] drmOpenDevice: node name is /dev/dri/card0                                   
[2910604.875] (WW) LoadKernelModule: Setting of real/effective user Id to 0/0 failed[2910604.883] [drm] failed to load kernel module "emgd"
[2910604.883] (II) EMGD(0): Graphics hardware initialization failed.                                                                       
[2910604.883] (II) EMGD(0):   The cause was a failure to connect with the DRM during PreInit().                                            
[2910604.884] (II) EMGD(0): Cannot open a connection with the DRM                                                                          
[2910604.884] (II) UnloadModule: "emgd"                                                                                                    
[2910604.884] (EE) Screen(s) found, but none have a usable configuration.                                                                  
[2910604.884]                                                                                                                              
Fatal server error:                                                                                                                        
[2910604.884] no screens found

Anyway to solve this?

BTW, I'm using denzil.

Regards,

Marc


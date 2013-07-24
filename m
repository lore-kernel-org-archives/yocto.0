Return-Path: <chgans@googlemail.com>
Received: from mail-pb0-f41.google.com (mail-pb0-f41.google.com
	[209.85.160.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13B45E01525
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2013 19:51:40 -0700 (PDT)
Received: by mail-pb0-f41.google.com with SMTP id rp16so9247149pbb.28
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2013 19:51:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=sender:message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=M5A669WC+IR1Y1T2m4mj4V4Uwx0pnkheVQbC28b7JAs=;
	b=nc0RZ5Z91EWrOkW6AL8NyuvJYAK3K9lGgbPsk1zXw/oFW//usVmrzMAOaB7PonapUI
	hnh9pD5RFjOCBSa/C1FXp+0pkjxQFlGsFA7o23VWal4bMdCWJ/x2uJBf/apskjtbojcf
	rxo+is76qXL9CRoci7NbhiJgkgFM6zGinf7Ar/RqC34EeRcCNhWSEHQWSGOX2O5jyx1U
	Sq7OabBc6SVSavMa86rLsbcef/C3+HwPbfNnGLfjspMumHREusHZgk1sVHQIfMEa3CDP
	ONZb330USF10CHkLa65Fh5VCH/D7xbW5RST3jOv0qbRvhzWFG5cea6yZMicAnksmro2X
	Lsmw==
X-Received: by 10.68.170.37 with SMTP id aj5mr40203724pbc.79.1374634300238;
	Tue, 23 Jul 2013 19:51:40 -0700 (PDT)
Received: from krys-red.trunet.local ([210.48.94.225])
	by mx.google.com with ESMTPSA id ys4sm44855020pbb.9.2013.07.23.19.51.37
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 23 Jul 2013 19:51:39 -0700 (PDT)
Sender: Chris Gagneraud <chgans@googlemail.com>
Message-ID: <51EF4137.80107@gna.org>
Date: Wed, 24 Jul 2013 14:51:35 +1200
From: Christian Gagneraud <chgans@gna.org>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130623 Thunderbird/17.0.7
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Generating an image with systemd and connman
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
X-List-Received-Date: Wed, 24 Jul 2013 02:51:44 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi there,

I have successfully generated Dylan core-image-minimal with the meta-ti 
layer. I would like to know what is the procedure to select systemd for 
the init process and connman as the network manager.

It seems to me that systemd can be selected using EXTRA_IMAGE_FEATURES 
from local.conf (at least with the poky distro)
The Yocto dev manual mention using DISTRO_FEATURES_append but it is 
usable when creating a custom distro.

Concerning connman, I found references only in sato and self-hosted images.

As well, I would like to know how can I make Qt build depends on 
connman, so that I get the right bearer plugin.

Any help or point out greatly appreciated.

Regards,
Chris




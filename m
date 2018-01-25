Return-Path: <venkataravi.eluri@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 966A6E00E0A; Wed, 24 Jan 2018 22:48:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (venkataravi.eluri[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f195.google.com (mail-io0-f195.google.com
	[209.85.223.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE088E00CE8
	for <yocto@yoctoproject.org>; Wed, 24 Jan 2018 22:48:30 -0800 (PST)
Received: by mail-io0-f195.google.com with SMTP id f4so7517128ioh.8
	for <yocto@yoctoproject.org>; Wed, 24 Jan 2018 22:48:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:subject:to:cc:message-id:date:user-agent:mime-version
	:content-language:content-transfer-encoding;
	bh=XWR0eIXPtqJxOlcnj6MvsFlj6qM2Tb1bOkR/ZMVLi7s=;
	b=MEWB0Hd4lyt6ydK94QCxVTihUTxU2uHuiJajLnywDkkEqVSIvBN7bVC6+fyTb8UMlE
	Eg3NUp0Pdr/Vo6oEvjCuDo+StAjh6G2TS4Z/7WJY4MUi5P6TDDdxlXJjzuJXJ9a/12e5
	am+aGrBrhA+oXLlBaTaCbWKlW8gHVxbTPvsbSR/c3tEHHnbwEr2e68Nx3gkZYsne9ZM2
	/cFhP+Qepr77XfR2TARt6vYHJhidiXQLVXWIwDm0j5xqB8XW3zRJC4YFU+Tw0iCQH5Ha
	eusUORNbTiT3J/AA47V1Vjupvv3Z85mPV2P5evorN/Fo6AP/fRvxYW3yHe5fYoLQ/6+9
	7Biw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
	:mime-version:content-language:content-transfer-encoding;
	bh=XWR0eIXPtqJxOlcnj6MvsFlj6qM2Tb1bOkR/ZMVLi7s=;
	b=P5kouRVJ4SmP7KHpVdaa3lYHC91/5RkGOQ8XQm+IVJL0KhacitIFQ5erHcdV126jzj
	hS7Ltyakpmx3o9j11e7vkuC416WugW4lLrsKRFZkuQKdzNORMYUYIC12VnRO+1UJ2Obd
	e0gm8jRJhsd6s6Xb40c6BOskyIsjkh3pQKISLAgemrrRJHcTly9xWXNcUsbr6DUg3ZDi
	/AN4Z8ZStKWKjdaJdBgHqKxt386igb6+huRXdVtG5QszaTI/iBiSeHxwxgSZpjZWCH9x
	IVTV25OHq2eIJZ0QRnizKwr6o7OiLpXlJuB5C7Zi5EKA1LIubiFbUVgWIYQ55KrCpqnm
	FBIg==
X-Gm-Message-State: AKwxyteNVZhXs8FfYo+Yp2knjoHSvWPNvbkwi5vLjhvdmQNAfHnDjqhi
	F7z2kf5LvlNqhPPvYk2gjNodOHk=
X-Google-Smtp-Source: AH8x226lB03uDh9x9t2aC3RJZyxWzVNXM1+9yvi/QCLArpoLa5AqOOPOpN+/8Hekk7r2hjTS72dVnw==
X-Received: by 10.107.29.200 with SMTP id d191mr12108540iod.106.1516862910136; 
	Wed, 24 Jan 2018 22:48:30 -0800 (PST)
Received: from [192.168.137.251] ([117.246.166.37])
	by smtp.gmail.com with ESMTPSA id p68sm384508itc.26.2018.01.24.22.48.28
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 24 Jan 2018 22:48:29 -0800 (PST)
From: ravi <venkataravi.eluri@gmail.com>
To: yocto@yoctoproject.org
Message-ID: <42929a2a-b057-a00b-65d9-2d27b18cf767@gmail.com>
Date: Thu, 25 Jan 2018 12:18:25 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.2
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 30 Jan 2018 08:54:36 -0800
Subject: : (snappy:763): clutter-CRITICAL **: Unable to initialize clutter: Unable to initialize the clutter backend: no available drivers found
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
X-List-Received-Date: Thu, 25 Jan 2018 06:48:31 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

My main objective is to run snappy player 
(https://wiki.gnome.org/Snappy) on target machine (BeagleBone Black) so, 
I wrote a recipe for Snappy player(snappy_1.0.bb) as below


     LICENSE = "GPLv2"
     LIC_FILES_CHKSUM = 
"file://COPYING;md5=686e6cb566fd6382c9fcc7a557bf4544"
     SRCREV = "e73fabce4c397b40d490c74f6a6a0de000804f42"
     SRC_URI = "git://git.gnome.org/snappy"
     S = "${WORKDIR}/git"
     RDEPENDS_${PN} = "gtk+3 gstreamer1.0 glib-2.0 clutter-1.0 
gstreamer1.0-plugins-base libxtst clutter-gst-3.0 clutter-gtk-1.0 libx11 
cairo gdk-pixbuf"
     # inherit line
     inherit pkgconfig autotools
     FILES_${PN} += "${datadir}/*"



Added this recipe name in local.conf
     IMAGE_INSTALL_append = " snappy"


The build (bitbake core-image-sato) was successful, when I ran "snappy" 
on target(BeagleBone Black) I am getting below error response.


     sh-4.4# snappy
     libEGL warning: DRI2: failed to authenticate
     libEGL warning: DRI2: failed to authenticate
     libEGL warning: DRI2: failed to authenticate
     (snappy:763): clutter-CRITICAL **: Unable to initialize clutter: 
Unable to initialize the clutter backend: no available drivers found.


As per my Understanding in my recipe I have resolved all dependencies 
for Snappy player (such as clutter, gstreamer, gtk etc.).
I'm unable to figure out why snappy player is throwing error?

Regards,
Ravi


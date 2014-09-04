Return-Path: <tomek82221@gazeta.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2EAC5E00744; Thu,  4 Sep 2014 13:48:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (tomek82221[at]gazeta.pl)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-qg0-f53.google.com (mail-qg0-f53.google.com
	[209.85.192.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 538A5E004F5
	for <yocto@yoctoproject.org>; Thu,  4 Sep 2014 13:48:25 -0700 (PDT)
Received: by mail-qg0-f53.google.com with SMTP id z107so10493281qgd.26
	for <yocto@yoctoproject.org>; Thu, 04 Sep 2014 13:48:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=XLt7FcByO3sBStfmWhpHIS4I21nVME3AReT2qx5qM4w=;
	b=RrFkUE9BWSE1qU+swt0hLsFM4VMFDj9EIoPKVuB98KPx+6dkdDbVT9Qv9YKklE6uKE
	vn+cYafZMwmL5MNaR+y1hh5M3Aga4gLriz/rBuKM96yRflmE4gr+V725O6FbeoFx3Ta4
	S0FqbasEZ+rqmbFVlCKoIs/dMdXM6G6uO6sR4r4TAGEdpPNM8we+rYG+lcEXLjrZzVgE
	AysfutUe/YLdr23MZ0yp1BM+llOIi33QmjFU6tiHxDK/X8TSJYPM3yDzKPebDOGa1337
	GpV1qt9+BBeGxu8yc54wLYatLR52mhCTpHzCbl5K8gyaGuuhE3KbsWL9e6uxKNbIQhgi
	zYcg==
X-Gm-Message-State: ALoCoQluODCDTTHmr3/Qedt08QTLxCotrLdlamFZ6Ew5w8gXaDIaUq6itt3Z62OA9hr4WST+HMle
MIME-Version: 1.0
X-Received: by 10.224.74.67 with SMTP id t3mr11374176qaj.100.1409863701274;
	Thu, 04 Sep 2014 13:48:21 -0700 (PDT)
Received: by 10.140.16.19 with HTTP; Thu, 4 Sep 2014 13:48:21 -0700 (PDT)
Date: Thu, 4 Sep 2014 22:48:21 +0200
Message-ID: <CAKC+oqU3-ZQc34489BrPYOVr05JOke=dHUkCruPLfV+LODWDVQ@mail.gmail.com>
From: "tomek82221 Gazeta.pl" <tomek82221@gazeta.pl>
To: yocto@yoctoproject.org
Subject: yocto 1.6 - beaglebone black - cape manager
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
X-List-Received-Date: Thu, 04 Sep 2014 20:48:33 -0000
Content-Type: text/plain; charset=UTF-8

Hi
I'm build yocto 1.6, My hardware is beaglebone black I successfull
build system image. But I can't see cape manager.
I need them to use SPI - enable spidev -
http://elinux.org/BeagleBone_Black_Enable_SPIDEV .
What do i do to build yocto with a cape manager?

regards tt


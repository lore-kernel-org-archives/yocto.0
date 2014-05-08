Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC1E0E00B60; Thu,  8 May 2014 14:07:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.179 listed in list.dnswl.org]
Received: from mail-pd0-f179.google.com (mail-pd0-f179.google.com
	[209.85.192.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 289F9E00B47
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 14:07:27 -0700 (PDT)
Received: by mail-pd0-f179.google.com with SMTP id g10so2746263pdj.24
	for <yocto@yoctoproject.org>; Thu, 08 May 2014 14:07:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:content-type:content-transfer-encoding;
	bh=9LJgUg+Iy0N8yJERUMNsjyPYU9o2R9EIyjk+2WsHLNo=;
	b=jXGtTfl6DlsALcMjZgRjll1F0b0kczu7IG895CzR1bYf7lwtStrR7L/31e4dvqKj1D
	Hlrg1Qtxz3BoMUwPxTVlcNXsLeLxC1GvGqlMsgkhcAsialdyUTOUIPnS+p2GrEs1MKZa
	nGaaT282lvI0AfNnNUoUc/BE2CjQ3hxEyLzZYjQjCrF0294WKRu1XGMkFOT5DNDRTHP/
	31tbqMCWuDVApYc3Yibw15sjLcWtMszpFPTuZIEaf29C+qZsJyZPf+IvShC26sScEDqH
	WnI5ILUTux97lyVgfsuqfhg9IpKDNHoMJoMZDu4HN8llc4KeFiXHcFTVJNcyTbqHhCqc
	jL0A==
X-Gm-Message-State: ALoCoQldWUshU38lFNsDnZMxe+g6Env+hnN4uKDx+StijFzkC0wkKhYcCj6brvG3l/OFkf0p9lsi
X-Received: by 10.66.190.73 with SMTP id go9mr12207774pac.18.1399583247254;
	Thu, 08 May 2014 14:07:27 -0700 (PDT)
Received: from Akusters-laptop.local (c-98-239-95-55.hsd1.ca.comcast.net.
	[98.239.95.55])
	by mx.google.com with ESMTPSA id xk3sm3651089pbb.65.2014.05.08.14.07.26
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 08 May 2014 14:07:26 -0700 (PDT)
Message-ID: <536BF20E.6040602@mvista.com>
Date: Thu, 08 May 2014 14:07:26 -0700
From: "akuster@mvista" <akuster@mvista.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: [meta-selinux] build issue
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
X-List-Received-Date: Thu, 08 May 2014 21:07:28 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I am trying to build meta-selinux and ran into some build issues. I 
started by cloning poky and meta-selinux. I am using master on both. 
When I run "bitbake core-image-selinux", I get the following errors.

ERROR: No recipes available for:
 
/home/armin/work/yocto/poky/meta-selinux/recipes-core/util-linux/util-linux_2.23.2.bbappend
 
/home/armin/work/yocto/poky/meta-selinux/recipes-connectivity/bind/bind_9.8.1.bbappend
 
/home/armin/work/yocto/poky/meta-selinux/recipes-kernel/linux/linux-yocto_3.8.bbappend
 
/home/armin/work/yocto/poky/meta-selinux/recipes-connectivity/openssh/openssh_6.4p1.bbappend
 
/home/armin/work/yocto/poky/meta-selinux/recipes-extended/psmisc/psmisc_22.20.bbappend
 
/home/armin/work/yocto/poky/meta-selinux/recipes-extended/augeas/augeas_1.1.0.bbappend
 
/home/armin/work/yocto/poky/meta-selinux/recipes-graphics/mesa/mesa_9.2.2.bbappend


Is this a config issue or am I using the wrong sources?

regards,
Armin


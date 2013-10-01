Return-Path: <jc@vtkloud.com>
Received: from mail-wi0-f174.google.com (mail-wi0-f174.google.com
	[209.85.212.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CC99E01602
	for <yocto@yoctoproject.org>; Tue,  1 Oct 2013 15:02:15 -0700 (PDT)
Received: by mail-wi0-f174.google.com with SMTP id hj3so6346840wib.1
	for <yocto@yoctoproject.org>; Tue, 01 Oct 2013 15:02:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:content-type:content-transfer-encoding;
	bh=1E28Io6Gz9tJngNhdLmWGrXlJXWys9S74r2s2FkbkGI=;
	b=UCOZ3d/n5U2hkUCtYtwE4cIvvkt55qKtOizdqP+bMmzwWwfigJBsMbV3inwvvkmEoi
	XmW5kfxZC5jcD0WiQQM6/NJPKle7y6qv5Z1ZfYFgjOI0qShpRnz4fbpZEt2nAZ1vIXH5
	Gbi60XC70JvpT4Zcqi1hqitVq0t2TrdbYFwSkcHTiC7atszoXUxlisqKKZoVI9iccnEW
	aZ2FVlNGwaDgoreIAVPa81UgBnP370darKi67C3F9llDqt9maeIu6DBVlhCIHXM3B9P4
	mVe3TfjI/J+VStyk4+jDeBkTjkpTnWJeL6xrmrp1XpjUoDIUuobtjuQM8RpE7JNuHArK
	zXQg==
X-Gm-Message-State: ALoCoQnmGrkCOLTaWkbqKvh0DceFZpJ0TPOaGE7qgDdWCVLonU75k/O6WuUuqgEsgE9CbKJ5U8XX
X-Received: by 10.194.240.129 with SMTP id wa1mr24578048wjc.31.1380664934279; 
	Tue, 01 Oct 2013 15:02:14 -0700 (PDT)
Received: from [192.168.0.50] (aig34-1-88-167-231-94.fbx.proxad.net.
	[88.167.231.94])
	by mx.google.com with ESMTPSA id b7sm10343601wiz.8.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 01 Oct 2013 15:02:13 -0700 (PDT)
Message-ID: <524B4663.1020106@vtkloud.com>
Date: Wed, 02 Oct 2013 00:02:11 +0200
From: JC <jc@vtkloud.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: ${libdir} usage
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
X-List-Received-Date: Tue, 01 Oct 2013 22:02:16 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I'm currently putting together a bunch of recipes to install some cpan 
modules. I had some complaints by bitbake about files being installed 
but not shipped.

I figured that I need to populate FILES_{PN} but I'm not clear about 
what I should do with it: use ${libdir}, use "usr/*" ? Knowing that my 
image(s) directories mostly contain usr/lib/perl/* and sometimes usr/bin/*

What's the best practice ? That'll save me some time when I send the 
patch :)

Thanks for your help
Jay



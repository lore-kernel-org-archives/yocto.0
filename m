Return-Path: <seth.boll@gmail.com>
Received: from mail-ie0-f170.google.com (mail-ie0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6B8CE0167B
	for <yocto@yoctoproject.org>; Sun, 13 Oct 2013 08:04:43 -0700 (PDT)
Received: by mail-ie0-f170.google.com with SMTP id x13so12855178ief.15
	for <yocto@yoctoproject.org>; Sun, 13 Oct 2013 08:04:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=/wwtnw6hfBvPMLZG/K+mPfQafrOyiSvIh/sJE9tKkB0=;
	b=GkeRbh3iwjMS7TuU+RE/Wi1R8kGgRezOtNf2sm1PavELpqML945XWyinpEjprxJwA3
	QLW20WrGZ8VEeWc9nS2wcsgUYCPgxGMNfEmmlBjvWnm/BaXt5VZeecnWi6ra0IEy50q9
	zqrsRUTggYGlVdZrz3dpmoLbYSzh+/iLHtRWmFv/gyCoTow+IznHBLbaqFU9pkNwG2aa
	/okB+GCo9G51ow61wdyjzNfuIn0IfAsMqHh4BIk+UKBClx4k8g1TrjBE4+ggeIDM+Ov8
	gdTvnwPv3Yg5K5FPdNlKvTazLApw7DYT2K8cUCPFImbH1cyNcMIOsDGC7Oxdz156lF1k
	S95A==
X-Received: by 10.50.153.16 with SMTP id vc16mr9739860igb.8.1381676682246;
	Sun, 13 Oct 2013 08:04:42 -0700 (PDT)
Received: from [192.168.1.102] (c-66-41-191-40.hsd1.mn.comcast.net.
	[66.41.191.40])
	by mx.google.com with ESMTPSA id x6sm15133164igb.3.2013.10.13.08.04.40
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 13 Oct 2013 08:04:41 -0700 (PDT)
Message-ID: <525AB688.6050409@gmail.com>
Date: Sun, 13 Oct 2013 10:04:40 -0500
From: seth bollinger <seth.boll@gmail.com>
User-Agent: Postbox 3.0.8 (Macintosh/20130427)
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: DISTRO_FEATURES and shared SSTATE
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
X-List-Received-Date: Sun, 13 Oct 2013 15:04:46 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello All,

How does yocto know which package version to choose for an image if the 
package can be altered (compilation difference, or perhaps config 
alteration, etc.) by a DISTRO_FEATURE?

For instance, if I make a change to sysvinit-inittab/inittab based on a 
DISTRO_FEATURE, I can have multiple versions of sysvinit-inittab, but 
only one shipping package, right?  If I'm building two different images 
that have that DISTRO_FEATURE set differently, won't one of the builds 
have the incorrect sysvinit-inittab package installed?

I believe PAM support would be another good example.

Thanks,

Seth


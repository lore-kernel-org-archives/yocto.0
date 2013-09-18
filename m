Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vb0-f51.google.com (mail-vb0-f51.google.com
	[209.85.212.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48BF5E0150A
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2013 17:22:17 -0700 (PDT)
Received: by mail-vb0-f51.google.com with SMTP id x16so4594053vbf.24
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2013 17:22:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=qU9w4lXefkMac/ZXf8UVdNuAH8DCHpYtGAJgAzXY7Ko=;
	b=GxyUZNbbGh9K1vOyZ3GGQgdDFUdoOQfpRRJ0t6FQUFFE6393xfhLe8/nT+phgfISg8
	8jn6mJZ0Ez4h/vIOzKD32aBpJQNTNb3FdwZBhNSZJyrPS5YsEwEryIdKj1tCpm0sOx8g
	ik6MCEhi1nVHauLlB9Y6Ql4CjLxD5T1khCQJsqmP29WFQriZmf83SG4o6G4wnKNgA/J2
	ObEeDQf5irBiM8XNun46mW7c2NJwTZqCbyjRl4SXOxn2gGHKow2BH+9vTX98qS2mc4vU
	vCDZASo3ETe6fV1ahbHSuIpnp3wF6pq8lt/4uMjPMDfrnBDDQY6zhgk1UNamGabStEWb
	HzOg==
X-Gm-Message-State: ALoCoQn0zQVAabm3tANUSId07TJH0CxaoYtT0ZK0vNubaqUHgsfAbQA/ge36FF50ei23EUO4t9rJ
MIME-Version: 1.0
X-Received: by 10.220.186.202 with SMTP id ct10mr35593421vcb.14.1379463736989; 
	Tue, 17 Sep 2013 17:22:16 -0700 (PDT)
Received: by 10.52.147.201 with HTTP; Tue, 17 Sep 2013 17:22:16 -0700 (PDT)
Date: Tue, 17 Sep 2013 17:22:16 -0700
Message-ID: <CAPhnLPAs8vq5aF4+jfZZsZsMDY8RLOgKS1u4=xKhKnACu_frVw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Zhao Yi <yi.zhao@windriver.com>, Otavio Salvador <otavio@ossystems.com.br>
Subject: 1.5_M5.rc2 status
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
X-List-Received-Date: Wed, 18 Sep 2013 00:22:18 -0000
Content-Type: text/plain; charset=ISO-8859-1

All,

We attempted a spin of rc2 today and found issues that make it
necessary for an rc3 spin which will probably happen tomorrow
afternoon PST. We are going to let the build continue so that we can
identify any other issues, but so far, the main issue seems to be
libxml-parser-perl qa check complaining about a bad RPATH and
poky-tiny deploy (which I have a fix I'm testing right now)

-b

-- 
Elizabeth Flanagan
Yocto Project
Build and Release


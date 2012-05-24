Return-Path: <elizabeth.flanagan@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF38DE01206
	for <yocto@yoctoproject.org>; Wed, 23 May 2012 17:15:56 -0700 (PDT)
Received: from mail-lb0-f180.google.com ([209.85.217.180])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 23 May 2012 17:15:56 -0700
Received: by lbbgh12 with SMTP id gh12so4989895lbb.25
	for <yocto@yoctoproject.org>; Wed, 23 May 2012 17:15:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=tbZxbBy0/z11eiYFfg1OVMufwkckHpB4c9zfzdOqlYc=;
	b=Pj2vGY/ek3S2UfNHz4C3hQh4LRjOyht8uO8gYSBDJgyT1Ejhet1oY2Wqzee0oUiMjg
	O5rspe2IAEPtW8kUhmCYw5u6oZoZEwGQ7kRPGydAdK974xURc1lOipxajjQL352TIZbe
	xPguhGTe49OMi+9WIv4dOeVlFf2iRhhTvOSqQGcvNkzfLTAf1IlYjWUvX+lM6Y/q5GdY
	plmdUTDD2egwTRR8WSTZ/DwOZh4GL5IldlvP+VK4NZ3W23etzwZqrCouw6BnPQYNsuwy
	4wGeEeM7V17uEH950UBhoNx77aNqmI57jvF4a+fnq+QW4W6v+SuuwMvgMrrl1MzRWhrp
	YVKg==
MIME-Version: 1.0
Received: by 10.112.103.130 with SMTP id fw2mr12858344lbb.107.1337818554170;
	Wed, 23 May 2012 17:15:54 -0700 (PDT)
Received: by 10.112.1.227 with HTTP; Wed, 23 May 2012 17:15:54 -0700 (PDT)
Date: Wed, 23 May 2012 17:15:54 -0700
Message-ID: <CAPhnLPB0OA7fkjZEyZ_cPSwLPZk8sgTGYKJ4O-78Pd2_qtrAQA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQlIzca1UpjJLzM+WSHG1RJLT1x7g02Xz0gA3IWbj/ZU9N9k7QdvYzgClBnFHs0b3uAHbQhB
Subject: [Autobuilder] M1_w3 and 1.2.1 builds.
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
X-List-Received-Date: Thu, 24 May 2012 00:15:57 -0000
Content-Type: text/plain; charset=ISO-8859-1

As the autobuilder has been getting a bit of exercise this week I
wanted to let people know of some recent buildouts of interest to QA

The weekly build for the milestone 1, week 3 of 1.3 will be available
very shortly at :
http://autobuilder.yoctoproject.org/pub/nightly/20120523-2

An issue with sanity testing of SSTATE_DIR has been noticed and Joshua
Lock has already submitted a patch for it.

A test build of 1.2.1 was built last night. It is available at:
http://autobuilder.yoctoproject.org/pub/nightly/20120523-1

It was all green, with the exception of a known issue in the AB with
grabbing poky-contrib git archives.
It was built from:
Repo:       git://git.yoctoproject.org/poky-contrib
Branch:	sgarman/denzil-next

-- 
Elizabeth Flanagan
Yocto Project
Build and Release


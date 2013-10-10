Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-qe0-f49.google.com (mail-qe0-f49.google.com
	[209.85.128.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20FA4E01426
	for <yocto@yoctoproject.org>; Wed,  9 Oct 2013 17:01:40 -0700 (PDT)
Received: by mail-qe0-f49.google.com with SMTP id ff1so1048532qeb.8
	for <yocto@yoctoproject.org>; Wed, 09 Oct 2013 17:01:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=gmhHwGKvKYihJfsxeN9/Thzukq4tDs/Vp+Ju3k6FS44=;
	b=W6ZrJozvKgHwUPBBQUigWDvIDY2H19/MUsq0xNxDrxTeZJn72n9SRJvkaSDgTZHMjd
	XYAmSPW+CHDs/YJeZl8gS3m/Gzy/srSqNJLw9Rmo3Pv7Eu/9t71o1rzeTNBwifeywEEw
	Mr2NR0GYxXIwR2lqVyeq2rcodStfNY3fypq37zuZltKHGQA+ZekpSCatclUXVOoce5Lj
	hlCFHl5nsN191ZiaIds0tWpCMKZAwvk+QYz2JxrLOhOXw5u+/UN++noPDuDiXoTl3Irm
	NT7mWhL24GwlPDs3D07o0KI35dbN/MEoDOlNDrVXvev1lXj2yIkqYmIld70ZlqJV14xE
	inNA==
X-Gm-Message-State: ALoCoQkFptRkVm3oqET2xLk3Kzt8uP5qSdf7ze6Dh7iATeAMDiNbOoW9ERgXYfNNYsloOPO+T95D
MIME-Version: 1.0
X-Received: by 10.49.127.116 with SMTP id nf20mr507410qeb.90.1381363299802;
	Wed, 09 Oct 2013 17:01:39 -0700 (PDT)
Received: by 10.49.72.131 with HTTP; Wed, 9 Oct 2013 17:01:39 -0700 (PDT)
Date: Wed, 9 Oct 2013 17:01:39 -0700
Message-ID: <CAPhnLPAQqZ21NyubpqZVGJ+mjKngu6ks5sBY3O7piT0+0cn_+A@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Zhao Yi <yi.zhao@windriver.com>, Otavio Salvador <otavio@ossystems.com.br>
Subject: 1.5 buildout and testing.
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
X-List-Received-Date: Thu, 10 Oct 2013 00:01:43 -0000
Content-Type: text/plain; charset=ISO-8859-1

All,

During the setup of yesterdays buildout of the final rc for 1.5, I
accidentally set the location for artifacts publishing to rc6. While
we could probably sort this all out due to mtime, I would rather us
have a clean build that doesn't taint the QA process with regards to
artifacts.

Tonight, when the autobuilders come back up, I will be rebuilding 1.5.
The build should be relatively quick from sstate. Please continue
build testing, but pause on testing artifacts. I will send an email
with the location of the new artifacts later tonight.

-b

-- 
Elizabeth Flanagan
Yocto Project
Build and Release


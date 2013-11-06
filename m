Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f178.google.com (mail-vc0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6388AE017CE
	for <yocto@yoctoproject.org>; Wed,  6 Nov 2013 10:06:28 -0800 (PST)
Received: by mail-vc0-f178.google.com with SMTP id ie18so6910011vcb.37
	for <yocto@yoctoproject.org>; Wed, 06 Nov 2013 10:06:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=wb8D/9zJlLoXRwTtyRtd8AtcHAC/ZDRFXf4dTdixtwY=;
	b=kG04kHSHlW3qKXzLm6qClPwtudXrrH09a+UQvGA+bv32UpEEB+U6Izfe3pkFJrUY0C
	cAt+vXAnU2TKZBN1r7DJqEN4+7vJnKjOGpvb/vov7t3T0Ixwu9JXO3vGNSlR47lCCn75
	ito7HKmHK+B0YXOETmVzv7hzrXg4Xc3bQlyp358WIQZSH9mP6bEEUUBV9up8pUxTGf5x
	zgFwK2C76DbO4DYftLGL7kIyvvC3uyktRpY38PT0jzyvXmBEpsg7Qly4a3Y0JHleai33
	8p+5e4PhBejHz4AXePoKAO5mvsglNHgc50m1kQ2Bas2b134YBG4t/0zABK82dxK1kD+A
	OnmA==
X-Gm-Message-State: ALoCoQmxUHmYCywecxCSBcUOoJ8xtCQB9t/q5wrHlmBo7g6m9Zjkbd0RpshNsthS89Ar0YDEBoYl
MIME-Version: 1.0
X-Received: by 10.220.58.1 with SMTP id e1mr3512530vch.0.1383761187899; Wed,
	06 Nov 2013 10:06:27 -0800 (PST)
Received: by 10.52.98.2 with HTTP; Wed, 6 Nov 2013 10:06:27 -0800 (PST)
Date: Wed, 6 Nov 2013 18:06:27 +0000
Message-ID: <CAPhnLPCvpeN=VvM81DOWEAeLE-=vOb8eTtQ11JiOdoFre40t-w@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	yocto-announce@yoctoproject.org
Subject: Toaster Alpha Release for dora-10.0.0
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
X-List-Received-Date: Wed, 06 Nov 2013 18:06:33 -0000
Content-Type: text/plain; charset=ISO-8859-1

All,

We are pleased to announce the alpha release of Toaster, a web based
graphical build interface.

Thanks for everyone's hard work.

-b

---------------------------------------------------------

Name: Toaster
Type: Yocto Project feature alpha release
Version: 10.0.0 "Dora" + "Toaster"
Release Date: 6 Nov 2013

Repo: git://git.yoctoproject.org/poky.git
Branch: dora-toaster
Hash: e5cf3e598e1e36b87a6cb07829f8a5013d78f534
Tag: toaster-dora-10.0.0

$ git clone -b dora-toaster git://git.yoctoproject.org/poky.git .

Download Link: http://downloads.yoctoproject.org/releases/yocto/yocto-1.5/toaster-poky-dora-10.0.0.tar.bz2
md5sum: 0e2ddd01bbd428f09388e713c6a200a7

Release Notes:

* Summary
* API documentation and availability
* Requirements
* QA and Known Issues
* Operation

* Summary

This is a technology preview for Toaster, a web interface allowing
recording and inspecting the build process and artifacts from a
Yocto project build. The code should be treated as being an "alpha" release.

The system runs Bitbake in server-mode, a feature that was merged
in the 1.5 Dora release. The server mode accepting "observing" clients
that can listen for Bitbake events has also been developed for 1.5

A new Bitbake UI module has been developed, named "toasterui";
this UI listens for build events, retrieves information from the events,
and records the information in the database.

A web interface developed in Python/Django exposes the recorded information
in a basic HTML interface, named Simple UI; and also exposes the information
via a REST API for third party use.

The scope of the Simple UI is to allow visual data testing to verify the
quality of the backend. The Simple UI isn't an example of the final UI, nor
does it show the analysis capabilities projected for Toaster.

The final UI is still in development.

* API documentation and availability

The Toaster web interface exposes a set of REST APIs allowing third party
to retrieve and process recorded data in 3rd party applications.

The documentation for the REST API is maintained on wiki:

https://wiki.yoctoproject.org/wiki/REST_API_Contracts


* Requirements

This release adds a dependency on Django version 1.4.5

* QA and Known issues.

Toaster uses partially automated testing to measure the completness
and quality of data recorded. For this release, the data completness table
is listed below, listing missing information.

table_name                   procentage of empty fields(null or 0)
------------------------------------------------------------------
orm_build                        15.3846153846%
orm_target                       33.3333333333%
orm_task                         39.275942149%
orm_task_dependency              0.0%
orm_build_package                1.94484369386%
orm_build_package_dependency     10.2641858553%
orm_target_package               17.9319371728%
orm_target_package_dependency    23.8863863864%
orm_build_file                   0.459716208405%
orm_target_file                  100%
orm_recipe                       4.01146131805%
orm_recipe_dependency            21.0964912281%
orm_layer                        0.0%
orm_layer_version                0.0%
orm_variable                     43.2573680603%
orm_logmessage                   0.0%


No medium+ or critical bugs for this release.

Known issue with data collected for build_package,
build_package_dependency and build_file tables, this is tracked via
https://bugzilla.yoctoproject.org/show_bug.cgi?id=5269

Our tests are run on a clean build, and therefore do not pick up this
problem. For unclean build or a failed build, the data collection and
accuracy may downgrade.

There are bugs related to completness or quality of data, which are being
tracked in https://bugzilla.yoctoproject.org/. Look for Product: Web - Hob,
Component: web-hob. Web-Hob and variants is the former codename for Toaster.

* Operation

Please see the wiki on how to start the system.

https://wiki.yoctoproject.org/wiki/Toaster#To_get_it_up_and_running:

-- 
Elizabeth Flanagan
Yocto Project
Build and Release


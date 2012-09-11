Return-Path: <elizabeth.flanagan@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20E94E00344
	for <yocto@yoctoproject.org>; Mon, 10 Sep 2012 23:36:13 -0700 (PDT)
Received: from mail-gg0-f200.google.com ([209.85.161.200])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 10 Sep 2012 23:36:12 -0700
Received: by gglu4 with SMTP id u4so218344ggl.11
	for <yocto@yoctoproject.org>; Mon, 10 Sep 2012 23:36:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=+0ePwKSif0+xQDOIf1eTiswkhRwA9bXk/FMx4zv/RVw=;
	b=XfqOUS871c2ZojGNXSnp+X9m5FSCofC+5Nmc6QTgvfE0NkLeQIvp3wXZ7mObt4bwoW
	fVfXTqAc61WOcbq/PFtWybX1dVpaEyii4rDzC8+t/5Hr1ONEmJ7MzcuzQOSeW6fO0zZA
	8rdkM7LdeuSQMUbe3/xCh639IE47eYp7HrgR7m4NJkmehaSsg/M1mrp7m+HsZkDJh3YU
	0nTjt01RAQyUwQ5Mw7nSe6BgLJW2lGoBLewvV/gSZgM/ee6qvlNJrVnjpXpUaNu8MNql
	q44h/iNjSuI0/jBOVPN6pPxKnjYMF+AAJVWzLM0u5MIuQmwYCBrLGs4w6rMeuMfgwQIT
	Jc0A==
Received: by 10.224.42.78 with SMTP id r14mr17758605qae.19.1347345371624;
	Mon, 10 Sep 2012 23:36:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.224.42.78 with SMTP id r14mr17758599qae.19.1347345371356; Mon,
	10 Sep 2012 23:36:11 -0700 (PDT)
Received: by 10.229.63.1 with HTTP; Mon, 10 Sep 2012 23:36:11 -0700 (PDT)
Date: Mon, 10 Sep 2012 23:36:11 -0700
Message-ID: <CAPhnLPCmAMkMqC6xHL-btgFwjtjSWPmEyPa84FOs1SbmS9Ci1w@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQlEP6JWOw5QfnZ//4kN95CaEemOCBO2HuBSIzjWokJ+wemZLrKkU4kAyF0KqCdEaqPBwoTW2+0RcodLwY1cZw0hSihHLHFIkAh8LlO571GyTiNj1niAT3SzwUFuINZ63tG2wBc6MlB+mCqkaSguS3Rzg5EP0A==
Subject: New autobuilder adt-repo functionality and known adt-installer issues.
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
X-List-Received-Date: Tue, 11 Sep 2012 06:36:13 -0000
Content-Type: text/plain; charset=ISO-8859-1

All,

There have been a few bugs opened via QA over the inability to test
the adtrepo from autobuilder builds over the past few weeks. Last week
I started looking at this and have implemented some changes to the
autobuilder which should make it so that this won't be an issue for
much longer.

The autobuilder nightly buildset now builds out two adt-installers and
can install the resulting adtrepo of both. The production autobuilder
will now build out the vanilla adt-installer which points to the adt
repo at adtrepo.yoctoproject.org/${SDK_VERSION}. This adt-installer
will only be used for point and major releases and should only be
tested when preparing for that release.

The second adt-installer points to
adtrepo-dev.yoctoproject.org/${SDK_VERSION}-githash. This adt repo is
installed automatically from the autobuilder and is the one that
should be tested against using the adt-installer in nightly's
adt-installer-QA.

For people using the yocto-autobuilder, all of this is configurable
through the autobuilder.conf file and is turned off by default. The
code for this is currently in the production autobuilder and I'm
working on testing it out in that environment to ensure that there are
no issues.

After checking the M4.rc2 buildout tonight there is still an issue
with the adt-installer. The opkg.conf files don't update to the
correct adtrepo location. I'm working on a patch for it now, however
to get around this for testing, you'll need to manually update
./opkg/conf/opkg-sdk-*.conf
to either:

src yp-x86_64-nativesdk
http://http://adtrepo-dev.yoctoproject.org/1.2+snapshot-dd3edc9fbb674682947e8218202fdbeef8635dd5
or
src yp-i686-nativesdk
http://http://adtrepo-dev.yoctoproject.org/1.2+snapshot-dd3edc9fbb674682947e8218202fdbeef8635dd5

-- 
Elizabeth Flanagan
Yocto Project
Build and Release


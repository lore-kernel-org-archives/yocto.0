Return-Path: <jfabernathy@gmail.com>
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23DC9E01396
	for <yocto@yoctoproject.org>; Wed, 23 May 2012 04:59:43 -0700 (PDT)
Received: by qcsc21 with SMTP id c21so6098251qcs.35
	for <yocto@yoctoproject.org>; Wed, 23 May 2012 04:59:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=pj86Q9XrTInfdwHYH2BXsOCNhGfNOO0r5YoSv2mikLs=;
	b=wkTp+HN3PCQr/q+D8HSqFU+TTvRjcvhtvm0kivibg+X6qBhh9k+fm8P1OhwnuMQ/n6
	Zf5pk+gcuIGzpraSAMaPC4JBMViQhNWi5JBbcCDbMA86pX6+5/TA0sG+sTdGFhHe0xMO
	XCag4UYhvWl7MpcKuILqwgStD7obqazNKCEQzfVamCd9qVWdmXtOJhCQmtUwBmcdS2xX
	UoGcqi2o7fsjb6WVFhzud8qdz/hJgYMhtIpkSqzjD5lQGAvhjzPV/eQ3HEgBKIqtT19H
	XnTri2Dc1LWF45Q9Def64rxIvBJZBT+SLut5vwClSVxo/WTfFiYnaz6n7D3kwU2Q/R68
	GXpQ==
Received: by 10.224.117.16 with SMTP id o16mr5457378qaq.8.1337774382516;
	Wed, 23 May 2012 04:59:42 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-33-55.dhcp.embarqhsd.net. [184.4.33.55])
	by mx.google.com with ESMTPS id
	gb7sm2597967qab.12.2012.05.23.04.59.41 (version=SSLv3 cipher=OTHER);
	Wed, 23 May 2012 04:59:41 -0700 (PDT)
Message-ID: <4FBCD12E.3050407@gmail.com>
Date: Wed, 23 May 2012 07:59:42 -0400
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: bitbake failure on meta-cedartrail using master branch
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
X-List-Received-Date: Wed, 23 May 2012 11:59:43 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

FYI,

I just pulled the lasted patches into my system and ran a bitbake of 
cedartrail with the PVR driver.

I got a failure on the kernel build.  log below:
ERROR: Logfile of failure stored in: 
/build/cdv-master/tmp/work/cedartrail-poky-linux/linux-yocto-3.0.24+git1+a4ac64fe873f08ef718e2849b88914725dc99c1c_1+81fd8c307997aff37916828dc8b4ef72f5d35a94-r4/temp/log.do_patch.29202
Log data follows:
| Branch meta-temp set up to track remote branch meta from origin.
| git reset --mixed 620917de59eeb934b9f8cf35cc2d95c1ac8ed0fc
| Deleted branch meta-temp (was 620917d).
| /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/updateme: line 
434: yocto/standard/cedartrail-standard.scc: No such file or directory
| /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/updateme: line 
436: yocto/standard/cedartrail-standard.scc: No such file or directory
| /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/updateme: line 
437: yocto/standard/cedartrail-standard.scc: No such file or directory
| /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/updateme: line 
438: yocto/standard/cedartrail-standard.scc: No such file or directory
| /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/updateme: line 
441: yocto/standard/cedartrail-standard.scc: No such file or directory
| readlink: missing operand
| Try `readlink --help' for more information.
| /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
yocto/standard/cedartrail-standard: No such file or directory
| /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
yocto/standard/cedartrail-standard: No such file or directory
| /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
yocto/standard/cedartrail-standard: No such file or directory
| /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
yocto/standard/cedartrail-standard: No such file or directory
| /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
yocto/standard/cedartrail-standard: No such file or directory
| /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
yocto/standard/cedartrail-standard: No such file or directory
| /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
yocto/standard/cedartrail-standard: No such file or directory
| /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
yocto/standard/cedartrail-standard: No such file or directory
| /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
yocto/standard/cedartrail-standard: No such file or directory
| /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
yocto/standard/cedartrail-standard: No such file or directory
| /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
yocto/standard/cedartrail-standard: No such file or directory
| /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
yocto/standard/cedartrail-standard: No such file or directory
| /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
yocto/standard/cedartrail-standard: No such file or directory
| /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
yocto/standard/cedartrail-standard: No such file or directory
| /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
yocto/standard/cedartrail-standard: No such file or directory
| /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
yocto/standard/cedartrail-standard: No such file or directory
| /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
yocto/standard/cedartrail-standard: No such file or directory
| /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
yocto/standard/cedartrail-standard: No such file or directory
| /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
yocto/standard/cedartrail-standard: No such file or directory
| /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
yocto/standard/cedartrail-standard: No such file or directory
| /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
yocto/standard/cedartrail-standard: No such file or directory
| /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
yocto/standard/cedartrail-standard: No such file or directory
| /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
yocto/standard/cedartrail-standard: No such file or directory
| /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
yocto/standard/cedartrail-standard: No such file or directory
| /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
yocto/staERROR: Function failed: do_patch (see 
/build/cdv-master/tmp/work/cedartrail-poky-linux/linux-yocto-3.0.24+git1+a4ac64fe873f08ef718e2849b88914725dc99c1c_1+81fd8c307997aff37916828dc8b4ef72f5d35a94-r4/temp/log.do_patch.29202 
for further information)
| ndard/cedartrail-standard: No such file or directory
| /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
yocto/standard/cedartrail-standard: No such file or directory
| /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
yocto/standard/cedartrail-standard: No such file or directory
| /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
yocto/standard/cedartrail-standard: No such file or directory
| /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
yocto/standard/cedartrail-standard: No such file or directory
| /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
yocto/standard/cedartrail-standard: No such file or directory
| /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
yocto/standard/cedartrail-standard: No such file or directory
| /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
yocto/standard/cedartrail-standard: No such file or directory
| /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
yocto/standard/cedartrail-standard: No such file or directory
| /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
yocto/standard/cedartrail-standard: No such file or directory
| /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
yocto/standard/cedartrail-standard: No such file or directory
| /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
yocto/standard/cedartrail-standard: No such file or directory
| /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
yocto/standard/cedartrail-standard: No such file or directory
| /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
yocto/standard/cedartrail-standard: No such file or directory
| /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
yocto/standard/cedartrail-standard: No such file or directory
| /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
yocto/standard/cedartrail-standard: No such file or directory
| ERROR. Could not find an excutable target for yocto/standard/base
| ERROR. Could not locate meta series for yocto/standard/cedartrail
| ERROR. Could not modify yocto/standard/base
NOTE: package 
linux-yocto-3.0.24+git1+a4ac64fe873f08ef718e2849b88914725dc99c1c_1+81fd8c307997aff37916828dc8b4ef72f5d35a94-r4: 
task do_patch: Failed
ERROR: Task 838 
(/home/jim/poky/meta/recipes-kernel/linux/linux-yocto_3.0.bb, do_patch) 
failed with exit code '1'



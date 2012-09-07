Return-Path: <elizabeth.flanagan@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B710E01533
	for <yocto@yoctoproject.org>; Fri,  7 Sep 2012 16:41:28 -0700 (PDT)
Received: from mail-qc0-f176.google.com ([209.85.216.176])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 07 Sep 2012 16:41:27 -0700
Received: by qcsc21 with SMTP id c21so113513qcs.35
	for <yocto@yoctoproject.org>; Fri, 07 Sep 2012 16:41:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=K7L140bQlXB4ovfXZJ7kDDCXsOPzRuOhweaXIqfcTj0=;
	b=nu35bDi9isXYTukLEfgnYnU+MLaM0CBNdbzrRn/0cEMcdHNQ1q8gZIELSmzTPhrbsh
	0oCfi44eO5c8kfn4AEPoWhTc4BQa8ZW4PVcnoT9Z8mqO7+e5/F1DeMWKjoczeW/XmiSO
	Ezk1+nmqiql4cXAZgmhgVmP5UFiGZhpDWA0bl/BY2i/oi13iArjkIqjb27slnJeYgZXw
	KXj0SgTqKM5dJ8QS9rTmlf48tUtpAo0NCZid/hocC/FyD7mZ0wuEDrvg7tSq7Qe87Zxh
	krOmhVNzVY8IyNg7EMoLCVYD6vgBAKgXnPsJjMD8TQ4sXvI+AiN+rbVjR1yDllL4yB8Q
	dxKQ==
MIME-Version: 1.0
Received: by 10.224.42.82 with SMTP id r18mr9444612qae.43.1347061286027; Fri,
	07 Sep 2012 16:41:26 -0700 (PDT)
Received: by 10.229.63.1 with HTTP; Fri, 7 Sep 2012 16:41:25 -0700 (PDT)
Date: Fri, 7 Sep 2012 16:41:25 -0700
Message-ID: <CAPhnLPA-Xnvz5xtavtu7HimDQ9OGJPOpwxYgENh5gUK7zpb3RA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQns0o3IdZCrX+XlzIUjKZtwVLse40gJuYJmWnrNBnFgRmH8du6QLcZaxTUdlznFl4uYXM7E
Subject: Autobuilder Downtime
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
X-List-Received-Date: Fri, 07 Sep 2012 23:41:28 -0000
Content-Type: text/plain; charset=ISO-8859-1

All,

The autobuilder will be undergoing some unscheduled downtime this
weekend. The following items will be fixed:

1. A few emergency patches were implemented this week.
     - In order to deal with the meta-yocto-bsp layer I had to modify
how I create the bblayers.conf file. Due to our need to be backwards
compatible to prior to this change, I have a much more elegant
solution that I'm currently testing.
     - Since we now have the ability to create an adt-installer that
points to something other than the main repo, I'm now building this
out. But, again, due to backwards compatibility needs, I'm reworking
things to make sure that on builds where
       we don't have that ability, we don't do that build.

2. There has been a long standing problem with QA being unable to test
the adtrepo. I'm currently testing a change that does the following:
    - Creates an adt-installer that will point to
http://adtrepo-dev.yoctoproject.org/${SDK_VERSION}-branchname-githash/
as the ADTREPO
    - Installs the adtrepo to that point.
    - Creates a normal adt-installer for release purposes.

    This will allow QA to be able to test the ADTREPO and will ensure
that the autobuilder can in no way overwrite release artifacts.

3. Some general code cleanup (adding some of this as customizable to
autobuilder.conf)

All of this is in the middle of testing right now and the patches
should be able to go in Saturday night PDT. I'll be running builds all
day Sunday PDT and will turn of build failures for that time. The
infrastructure should be available Monday morning. Sorry for the short
notice on this all but with the churn that needed to happen this week
and with us coming into a release, this will allow us to all sleep a
little better (myself especially :) )

-- 
Elizabeth Flanagan
Yocto Project
Build and Release


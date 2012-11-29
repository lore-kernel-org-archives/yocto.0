Return-Path: <elizabeth.flanagan@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBAA5E002AB
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2012 16:25:50 -0800 (PST)
Received: from mail-gg0-f200.google.com ([209.85.161.200])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 28 Nov 2012 16:25:50 -0800
Received: by mail-gg0-f200.google.com with SMTP id k5so12888614ggd.11
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2012 16:25:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=UoZzJoneU7SiAjWOQiXPe8tR3u8uc0tNo51Y9qCRHMk=;
	b=kXYS5nmnocEHAIdJPRakfjyYtQyFWPcW7gvCO1es/VwH58XP7fOJn3lnk/pT1iqQqw
	c9cVZktxyfXxUUKz71IOSKAWSr1PBmNlakdJmZ9zCUqsG9aiqjrmfYHbusQ3MPDUx+QU
	KaY6mSBUyBOLvztFXSpaFLICyVfgt6H6Bc9EeDmzqDbLZkUqIqnDv8rrhxCTchxvu602
	/8gkLt2NisQgFhLX13Kv6pIVkzc8aYAiAtoHWkB6VNCPpEHxTrAmU+A7+itWY8U0mkcM
	B+TSKxwEM5KUozECwxug4+1V5e4OaW7EQ4W2uJ39H78F5n140Zeq21hC1MqjHy/81RJD
	hHog==
Received: by 10.224.111.78 with SMTP id r14mr23131101qap.31.1354148749456;
	Wed, 28 Nov 2012 16:25:49 -0800 (PST)
MIME-Version: 1.0
Received: by 10.224.111.78 with SMTP id r14mr23131091qap.31.1354148749385;
	Wed, 28 Nov 2012 16:25:49 -0800 (PST)
Received: by 10.49.12.136 with HTTP; Wed, 28 Nov 2012 16:25:49 -0800 (PST)
Date: Wed, 28 Nov 2012 16:25:49 -0800
Message-ID: <CAPhnLPB=qQiV1ddWZ2LE4U_h=Tc4WhEpVFqqzE+QTKbEg8bywA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQkwPmW5qMWd+zFbLTDC1BFd7x6f5Dbl0phbnoK7RrFBQFwAJ3kWg+Q/7lum7v3srlZWO3CCipid+V3lyiY3+RnGj8hdTW7nOIs3cxs6xzqBlHbAMZ2Hyn46CX6zP6r4iaLPiJmICOV1dECRbdEkAXeNSw6ycw==
Subject: 1.4_M1.rc1 ready for QA
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
X-List-Received-Date: Thu, 29 Nov 2012 00:25:50 -0000
Content-Type: text/plain; charset=ISO-8859-1

All,

We have generated the rc1 build for milestone 1. Please begin QA on
the following artifacts:

Location: http://autobuilder.yoctoproject.org/pub/nightly/20121128-1
Branch: 1.4_M1
Tag: 1.4_M1.rc1

Commits:
poky: 247b6a3754c2c50318e2a73d79981ba0e9cb560b
eclipse-poky: 7f3aa4fb528bf3e8fe858f106e7eb7a1e9e1755e
meta-qt3: eb092fe161b626ebfd9f744b6e86d9c549d7aa47

Thanks,

-b

-- 
Elizabeth Flanagan
Yocto Project
Build and Release


Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f172.google.com (mail-ve0-f172.google.com
	[209.85.128.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D85AAE0129D
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 15:50:38 -0700 (PDT)
Received: by mail-ve0-f172.google.com with SMTP id b10so2973705vea.3
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 15:50:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=GPFJU9BStolPHXQjV5k2sUajU6DWygY7pByypKkwEO4=;
	b=U+NWHHYpuQ5Y+PecyD2hvqd+lKCSuri0s4NGmkCw4qXWJiTqMRP7YeGbtfMAQ/soeG
	E/OBz/uSq4wMw2CBXncnCwYtnYYD5wDj/VUkQ1Bxk73SzE0gsqQYsBscGLIwy/5xHW0M
	7i7X5FxoJxJydVUxQLlTp+xYqcXNMDr4OnePoJZiPfOEDzAsFFoMxvVS2/ZGbwRuvG5d
	BkOXUudUqmx6q9AOt2Xwy0mT0wPy0fUKT9FTjrjb1xJXtkoxz2hGmjK8AlVpwSlUduJJ
	X3UTyVBBhxvl3TZnx39Zuw03Z8YKhl1mUrGRjVLHNtXP0FyayGdyjPMC4KgH93cMJQtQ
	D8YA==
MIME-Version: 1.0
X-Received: by 10.58.187.164 with SMTP id ft4mr6751911vec.5.1369349437508;
	Thu, 23 May 2013 15:50:37 -0700 (PDT)
Received: by 10.52.38.7 with HTTP; Thu, 23 May 2013 15:50:37 -0700 (PDT)
Date: Thu, 23 May 2013 15:50:37 -0700
Message-ID: <CAPhnLPDVtbajEjc+3ZFO+9M6yJTsd564K2TfWQJh-_pZpYmVvw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQlwucZDU2SJTwZ+vbh7CzZ2csCspt96swPT4+X+fB/FqEaNsHu6Qy5maSPhEeQ+0RSLZwL3
Subject: Improper tags for 1.3.2
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
X-List-Received-Date: Thu, 23 May 2013 22:50:39 -0000
Content-Type: text/plain; charset=ISO-8859-1

All,

This morning, in preparation for the 1.3.2 point release, I
accidentally created tags named danny-8.2.0 (instead of danny-8.0.2)
in the following repos:

eclipse-poky
poky
meta-qt3
meta-intel

I am removing these tags. If you've updated your local copy of one of
these repos within the past few hours please remove your local tag:

git tag -d danny-8.2.0

Thank you and sorry for the inconvenience.

-- 
Elizabeth Flanagan
Yocto Project
Build and Release


Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f178.google.com (mail-ve0-f178.google.com
	[209.85.128.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E43CDE009F5
	for <yocto@yoctoproject.org>; Thu,  6 Mar 2014 18:55:05 -0800 (PST)
Received: by mail-ve0-f178.google.com with SMTP id jw12so3671319veb.9
	for <yocto@yoctoproject.org>; Thu, 06 Mar 2014 18:55:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=X4RVkRSPeetOcrqMHZkUX7rLcHEIwX/hZnhknvZrOss=;
	b=KwuCbJp5h+MArJqr9OmYO2evp0LAiB3g0K4znitfbaKCHg9+zn1+VNyv4KzOlfp/yj
	0MVs80ItW0g3w+ep88F5mjJQlZdAWQYHziiKkfRaFZCZwH3o6SWNmSBVnFEeEUFEnz7Z
	RgZZDqWw2gdWOViqUOZ7xTL/+OQZyheWNqdVDhAU0BE8xyEtSXvwZ7mWM9MnDyw5thNU
	iKHPCczwFSAtTGpQe9txwKDzJRj3MS7YPlYfNYN6h5n64mjKi3t/7btuJmQhw3iWhvVi
	Mv3vFNS5x6u9ZLpHpYZ65eAz1u4eiB8dJ1L6QjGSMMAf3RhpDiH4WlvMsxmM72mX0gM+
	LRjQ==
X-Gm-Message-State: ALoCoQkjNUGSKMPIHmO99y75XaiB2ULMSjh2LRGAP51Fef/cJn8ZzUv6BjHRYA9wEGJfi27sBv1p
MIME-Version: 1.0
X-Received: by 10.58.200.229 with SMTP id jv5mr7997664vec.15.1394160905172;
	Thu, 06 Mar 2014 18:55:05 -0800 (PST)
Received: by 10.52.76.201 with HTTP; Thu, 6 Mar 2014 18:55:05 -0800 (PST)
Date: Fri, 7 Mar 2014 02:55:05 +0000
Message-ID: <CAPhnLPDEXPBSGSH3zfi41EoNVEz+qarG4pdhLtMxJK_zooPu7g@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Upcoming feature freeze
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
X-List-Received-Date: Fri, 07 Mar 2014 02:55:09 -0000
Content-Type: text/plain; charset=ISO-8859-1

Just a friendly reminder everyone. Feature freeze for 1.6 is this
Sunday. Please have pull requests in before then so we can start in
bugfixing.

-b

-- 
Elizabeth Flanagan
Yocto Project
Build and Release


Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C349E00B7B; Wed, 21 May 2014 09:22:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.177 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-vc0-f177.google.com (unknown [209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C1D9E0077C
	for <yocto@yoctoproject.org>; Wed, 21 May 2014 09:22:39 -0700 (PDT)
Received: by mail-vc0-f177.google.com with SMTP id if17so2810948vcb.36
	for <yocto@yoctoproject.org>; Wed, 21 May 2014 09:22:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=aL3DPZ1i32PWhN4rbWPvLGs0oiXLC5K97GpnZPvsJGI=;
	b=fDdMseCQHSeMjoQmWyxdCaJuohu74m0YYD7VOQ7Qf6RHsc1cO0y3rDlrrZip6QLY5+
	Dsyz3sHrUUCtouViumkO2JzXu4gyQBtkIlVq98yuXcnp8O3fd0FtWLmM6sQWHdhvtLG8
	mbvIsmROtN7TYq56+Vy5tmWxuEPLYdUWr/yWUqpylxYIOxt2weukTSsXU/H0/0mM7p8M
	qR12iQy3qbRjJlFjz9GhhcUbFRJ8zksoMj6Ywgif0ltrWpeVFj6BC+zmqozwTsmaTaBD
	BI9/w2QWpIux3+oB9hN7OtJit/LRu8zr3dx/2tD2cU+lFwJoXuwXoHcIBkAz+7CPiWgO
	io5g==
X-Gm-Message-State: ALoCoQna2jMBQo6cFJtaY8t7CP4d6/SNsf6j34VHi67mJA5ZMbHFcFAXSSOe6yFcHGX1q2uKjEyU
MIME-Version: 1.0
X-Received: by 10.52.94.47 with SMTP id cz15mr3475549vdb.0.1400689359291; Wed,
	21 May 2014 09:22:39 -0700 (PDT)
Received: by 10.52.243.73 with HTTP; Wed, 21 May 2014 09:22:39 -0700 (PDT)
Date: Wed, 21 May 2014 09:22:39 -0700
Message-ID: <CAPhnLPAoA+z4OfO_HXVNOmbVk9cXcbOEtMZOhzYZbfMqw_9g=Q@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Reducing size of the weekly build
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
X-List-Received-Date: Wed, 21 May 2014 16:22:43 -0000
Content-Type: text/plain; charset=UTF-8

Folks,

In an effort to speed up release times, I'm going to remove the deb
and rpm publishing from the weekly builds. We'll still have ipk
publishing and we will still generate debs and rpms, but as far as I
can tell, no one is actually utilizing the debs/rpms.

One thing I'm thinking of and I want some feedback here is setting the
package type on the main builds to just ipk and running a special
deb/rpm test being to ensure those package types are functional. This
should give us a bit of a speed increase for build times, without
introducing too much risk. Thoughts?

-b

-- 
Elizabeth Flanagan
Yocto Project
Build and Release


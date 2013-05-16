Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qe0-f45.google.com (mail-qe0-f45.google.com
	[209.85.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FFB9E0051D
	for <yocto@yoctoproject.org>; Thu, 16 May 2013 05:41:39 -0700 (PDT)
Received: by mail-qe0-f45.google.com with SMTP id a11so1899769qen.32
	for <yocto@yoctoproject.org>; Thu, 16 May 2013 05:41:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=Gx3LAZOD8gk3QY4vOkQZOREz1xdWG+o1xq5oqy5jO3k=;
	b=ngHxr8bcalqHvE2vSwzRdz4EXNnHYMn+kF3nVfGF9zxNuXC/EvYKO9uvsxDYdcH7Y1
	3pHm94M62gOMoZ3XzXM3IQTac+tZKHqoYjpNNy9tny8O8LgMI1pPQSZNA0r2f5h0KPCG
	1X6EcVOJoBEtiRyeQElS0qU3E5YfyA4xhfzP+w7lEJmToZh3UOpVbPDRNqINuHwJXCHN
	FQCGFFfAx8YmCMOOF/xVtc4V3FGRRw0H1rSfL2VyhDheJAeimD7z9278pCUjmyiUxrCA
	zz2WEpl0oXHGFFt8JQcqXreRO+Tjjgqq2Y3pGGHCnwg+TWyymBMvImA5DpVczGiDK4z0
	f3uw==
MIME-Version: 1.0
X-Received: by 10.224.128.9 with SMTP id i9mr32285941qas.81.1368708098541;
	Thu, 16 May 2013 05:41:38 -0700 (PDT)
Received: by 10.49.38.195 with HTTP; Thu, 16 May 2013 05:41:38 -0700 (PDT)
Date: Thu, 16 May 2013 14:41:38 +0200
Message-ID: <CAFyqS9q85RaBTtwvJxBHFbNSXENirtFt9+R6Mx6EDnHCtNxBMA@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: u-boot standalone application
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
X-List-Received-Date: Thu, 16 May 2013 12:41:39 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi. Anyone ever experimented with building a u-boot standalone
application out-of-tree?
To be able to do that u-boot must install libstubs.o and applicable
header files in the sysroot staging folder. Is there some example of
how to do this already or am I the first to try this out?

Why do it this way you may ask? Well, we do not wish to have our code
merged in the u-boot source tree, but instead compile it from an
isolated package. Sounds so simple... ;)

Hans


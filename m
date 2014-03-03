Return-Path: <mgloff@emacinc.com>
Received: from mail-we0-f169.google.com (mail-we0-f169.google.com
	[74.125.82.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F952E00962
	for <yocto@yoctoproject.org>; Sun,  2 Mar 2014 17:58:42 -0800 (PST)
Received: by mail-we0-f169.google.com with SMTP id w62so662670wes.0
	for <yocto@yoctoproject.org>; Sun, 02 Mar 2014 17:58:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=Usi9QF3/SJD3xqsm5ovapABZnvihjtwBggGVbRGNEec=;
	b=F/GzBLFWxt9Z6Z5t+sKjhsohfoicsK2dB4C8zuJ26H3NTiZUnV82zgbyDil6V7wJn4
	0yfJnPf6JTkpb50ee+uF6kmOXUQM4VnvCsSvg1QDJ2VddtTrnqniEGZFtha/iTU7+22e
	xY6ltmy/xIkDQMAwIMvIkcWlT15tElEUoXlu8fzmzRJ0yt7KdS4JP2R06rrrdYMpho/8
	/jsRIGInOjQSDw9LHtmDzjYGSDTQW9RdAA9qHT5kFFvSX2AxVMSQkj6L7S9jVA8Yzksz
	/9+MgTiMCynTi3XQEueaTQXPi12pJfv9Z5FWQm33ZeNljO2O3vSg+bGV/pmnpF4l+pwj
	ko1g==
X-Gm-Message-State: ALoCoQmnJh8UWBqldZL8Zn3zR828E/JN3hQEH8Ogz8zL4u3VtgiHVmaiFVavLGK99iyHHzsLcG4z
MIME-Version: 1.0
X-Received: by 10.194.204.229 with SMTP id lb5mr1825514wjc.67.1393811921358;
	Sun, 02 Mar 2014 17:58:41 -0800 (PST)
Received: by 10.216.163.1 with HTTP; Sun, 2 Mar 2014 17:58:41 -0800 (PST)
Date: Sun, 2 Mar 2014 19:58:41 -0600
Message-ID: <CALXw4G5VUNySyWoOoFbKHnMUWFjZfQKwQCu0T0cWtwGOAMQnow@mail.gmail.com>
From: Michael Gloff <mgloff@emacinc.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Toolchain
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
X-List-Received-Date: Mon, 03 Mar 2014 01:58:44 -0000
Content-Type: multipart/alternative; boundary=047d7bae466474f6e104f3aa20f9

--047d7bae466474f6e104f3aa20f9
Content-Type: text/plain; charset=ISO-8859-1

Is there a reason why the toolchain cannot be built with a machine name
that contains capital letters? Seems weird, everything else builds fine,
but meta-toolchain fails complaining about caps.

Thanks,

Michael Gloff

--047d7bae466474f6e104f3aa20f9
Content-Type: text/html; charset=ISO-8859-1

<div dir="ltr"><div>Is there a reason why the toolchain cannot be built with a machine name that contains capital letters? Seems weird, everything else builds fine, but meta-toolchain fails complaining about caps.<br><br></div>
<div>Thanks,<br><br></div><div>Michael Gloff<br></div></div>

--047d7bae466474f6e104f3aa20f9--

Return-Path: <mr.scada@gmail.com>
Received: from mail-pd0-f172.google.com (mail-pd0-f172.google.com
	[209.85.192.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E6E9E0043C
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2013 16:21:24 -0700 (PDT)
Received: by mail-pd0-f172.google.com with SMTP id z10so1070722pdj.31
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2013 16:21:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=6EzrF/N0IQ+fS+wrjy27hzecJwRzIXtrbY7a4j2vQIA=;
	b=K9aE1yeCOptDl94LhlYW4L7X77t7UIf8hEhccn/py+7oOI8GQiIJPiwDGyTkjf9tm1
	v+zQ67isQUGd0oZwJ9nji3GuptwDZh193JXKJa8+P99yunajUWvIUbnB0xUL9zyZSms+
	7mBJBvAuTocqctlfeevYQ6CIpAMqlrMXo98caSU3lDPOVVBNQgA9jdGdsL/MUH4XlqrE
	ERF7lq0Rvrl2WqAyett+DrzMr9+ZOYvy24pWNlMquUouz7U3q/RfR8JluQWbKvHxD7QG
	BDvPEHvWBPoL1a+E2LPLvtIFtMfUnFCWQKTXQeEg3Y2yW3V5MTOjucVAeJor5xlc7asI
	heEA==
MIME-Version: 1.0
X-Received: by 10.66.163.199 with SMTP id yk7mr2129460pab.136.1377127283002;
	Wed, 21 Aug 2013 16:21:23 -0700 (PDT)
Received: by 10.70.87.177 with HTTP; Wed, 21 Aug 2013 16:21:22 -0700 (PDT)
Date: Wed, 21 Aug 2013 16:21:22 -0700
Message-ID: <CAFrvcAredx-8f=-4V1RYr=AM9vxeiuR8=52T6+aOjuEGQhwVbQ@mail.gmail.com>
From: Barry G <mr.scada@gmail.com>
To: yocto@yoctoproject.org
Subject: Yocto Methods of Loading DB Schema
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
X-List-Received-Date: Wed, 21 Aug 2013 23:21:26 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello all,

I am working on porting some products from a proprietary
build system (native build) to Yocto (cross-compile).
In our old proprietary system the last step was running
a large script which customized the image for the flash and did
any "little tweaks" needed to make everything ready for product.

I am trying to port this to Yocto and "Yoctoize" everything.  Most
of our customization I have been able to port as a patch in the
recipe file.

The last big hurdle is how to load the database.  We are using
Yocto 1.3 and I have ported in the postgresql recipies from
gumstix-yocto.  Since I can't load the postgresql database schema
without the cross-compiled postgresql database running, I assume
this needs deferred to first device boot.  I can use pkg_postinstall
to create/populate the postgresql databases, but this seems a little
dirty since the text version of the sql would need to be on the
device image to load.

Is anyone else doing anything like this?  Is there a best known
method for performing these kind of operations?

The other negative side effect is that each unit as it boots
in manufacturing has to run a lot of complex stuff.  If it
gets unplugged too soon, etc it might be in a bad state.
It might be preferable to boot the image under emulation so
that the first load is all done by the time the "first-booted"
image is loaded on actual devices in the factory.

Any thoughts would be appreciated,

Thanks,

Barry


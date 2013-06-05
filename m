Return-Path: <jon.szymaniak@gmail.com>
Received: from mail-wi0-f179.google.com (mail-wi0-f179.google.com
	[209.85.212.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF363E0149D
	for <yocto@yoctoproject.org>; Wed,  5 Jun 2013 07:53:44 -0700 (PDT)
Received: by mail-wi0-f179.google.com with SMTP id hm9so1370389wib.6
	for <yocto@yoctoproject.org>; Wed, 05 Jun 2013 07:53:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:from:date:x-google-sender-auth:message-id
	:subject:to:content-type;
	bh=YE8EsiyYVezpYN4fRJl6rz4SgdrJpYsePqDZVu7k9aY=;
	b=SXefKxCoorTTztzAtxivvP1wkhb3MedyIeJsw+YLkEBezAxppK6+3fFUURZdX11oIO
	BExntHKRZJLJRD4oxZ8KFq+tQHWTLfkcKCptr4I8CPozJIe4CVdNGdVT87vNvtUDdw/z
	6+TrsKF0Zl8e+dV93KZyjVi66kdpehW75KaG2uTS5+b9KGQ5fqn5rtvQvQRSUrwI29th
	2PjifsHu8/5XwZC+xlkHx8+38FKsNfPPuDJ+QUdp+Y26RJmBvjoESyy5HuksK6jXG/F3
	nV4NFyU45u20qRq/HPGyFixis96dIAjKbpmQKk2hoRoODZ9eGzfNbN7BelcC5ZUL+iGU
	Wagg==
X-Received: by 10.180.93.74 with SMTP id cs10mr6959131wib.42.1370444023622;
	Wed, 05 Jun 2013 07:53:43 -0700 (PDT)
MIME-Version: 1.0
Sender: jon.szymaniak@gmail.com
Received: by 10.194.57.163 with HTTP; Wed, 5 Jun 2013 07:53:23 -0700 (PDT)
From: Jon Szymaniak <jon.szymaniak+gpg@gmail.com>
Date: Wed, 5 Jun 2013 10:53:23 -0400
X-Google-Sender-Auth: QPcwQ5PawWr9Yr_9sNQrLwAUIeQ
Message-ID: <CANge7vVxHxnAOwxRbFvhYSkuKJ3DqAMHbLRL+LQ_y__PyXL2Fw@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Correctly setting a package-specific RDEPENDS
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
X-List-Received-Date: Wed, 05 Jun 2013 14:53:45 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

I recently upgraded to the Dylan (9.0.0) release and am looking to
clean up some QA issues associated with my RDEPENDS variables not
being package-specific.

I'm a bit confused by a couple lines in the manual [1]:

"The names of the variables you list with RDEPENDS must be the names
of other packages as listed in the PACKAGES variable. You should not
list recipe names (PN)."

It makes sense to me that you'd want to set the run-time deps on a
per-package basis to avoid creating false-dependencies. However, I'm
unsure as to how can simply not write RDEPENDS_${PN} in some cases.
Furthermore, I feel like I'm not quite understanding what the
consequences of using RDEPENDS_${PN} are.

Here's an example of what I'm trying to do -- perhaps someone will
catch where I'm getting confused and offer some insight?

Let's say I have a program_a.bb and a program_b.bb. Both are simple
recipes that compile and install ${D}/usr/bin/program_a and
${D}/usr/bin/program_b.

Because program_a forks and execs program_b, but otherwise does not
depend upon it to compile, I thought I should place RDEPENDS_${PN} =
"program_b " in program_a.bb.  However, this seems to violate the
aforementioned snippet from the manual.


Thanks!


[1] http://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#var-RDEPENDS


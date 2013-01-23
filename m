Return-Path: <marc.ferland@gmail.com>
Received: from mail-ie0-f179.google.com (mail-ie0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61C33E011ED
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2013 13:44:24 -0800 (PST)
Received: by mail-ie0-f179.google.com with SMTP id k14so14563500iea.10
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2013 13:44:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:sender:from:to:subject:date:message-id:user-agent
	:mime-version:content-type;
	bh=AAwvsOa9itwxYsy/sFR0XHX+eVCY193nzCxq1RpvCY8=;
	b=ZOm9QkvqKJnY/Sfl7B5mVoDT5GurW/qLXRM2IHKZkBonl7P469qPaaXX7cSVLO+2p3
	THVYcYo75jtF9wEHDZekrJOM25c3qg/CwJaXu+p5O5F4Do8jaZ5Dq8x2bfi1+GXCagaU
	P9/B13xFXMG+pG2QBSK2HvluL+vnnV/8wvrHe1u+tI/DaFLhNegK0BnjL4/r0UN96Axe
	BB8rUB18J8iBZTprYVsyj/LItQy7A/DLq8R48eHeWmQ5UO4a4ySefwxv8CcGkaAMo8m2
	daP6XHLx524xoAHTCpFlZnR3+AhVHOVnf7RZqfWnaslpidGrgwKprMspwukRsppNJBMr
	OIVw==
X-Received: by 10.50.10.130 with SMTP id i2mr15997795igb.63.1358977463910;
	Wed, 23 Jan 2013 13:44:23 -0800 (PST)
Received: from ferlandm@sonatest.com
	(modemcable066.15-37-24.static.videotron.ca. [24.37.15.66])
	by mx.google.com with ESMTPS id x7sm15548956igk.8.2013.01.23.13.44.21
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Wed, 23 Jan 2013 13:44:23 -0800 (PST)
Sender: Marc Ferland <marc.ferland@gmail.com>
Received: by ferlandm@sonatest.com (sSMTP sendmail emulation);
	Wed, 23 Jan 2013 16:44:32 -0500
From: Marc Ferland <ferlandm@sonatest.com>
To: yocto@yoctoproject.org
Date: Wed, 23 Jan 2013 16:44:32 -0500
Message-ID: <87libjvakf.fsf@sonatest.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.1 (gnu/linux)
MIME-Version: 1.0
Subject: Samba server footprint
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
X-List-Received-Date: Wed, 23 Jan 2013 21:44:24 -0000
Content-Type: text/plain

Hi,

I'm searching for a way to install a very simple and light-weight samba
server on a mobile system.

So far I've tried with the recipe found in meta-oe but the size of the
installation is way too big (my squashfs image size grows from 196MB to
233MB).

Playing around with the configure flags I was able to reduce the size a
little bit but this is still way too big. The smbd binary alone weights
24MB (ouch!).

Any suggestions?

Regards,

Marc


Return-Path: <marc.ferland@gmail.com>
Received: from mail-gh0-f176.google.com (mail-gh0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C35BE0027F
	for <yocto@yoctoproject.org>; Fri, 17 Aug 2012 13:21:24 -0700 (PDT)
Received: by ghbz10 with SMTP id z10so5465415ghb.35
	for <yocto@yoctoproject.org>; Fri, 17 Aug 2012 13:21:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id:user-agent:mime-version
	:content-type; bh=IPlbXa9L8Mz3qOy6VVvWj5ZZ4tuKk/SIV4cGuZ0N9hw=;
	b=iHt4fmpU7CMNVgtP2i4rXQjKkRwQKWzGv3BXteKzu5Quv1kmUDQ6RF9EyqPhJCJrDs
	vFnWebZARHPB20aurZ6R9EGMbbnhIkDiA4xN0aajP8YrZamC3B0vX1P9ePuQJ6ALY9jA
	/s/LLjRGqjgGCEuNl0G7hpb73t2q+AV+dOusOxaNohUzPLCUXs9/FrZ6Erb17ln6JRY6
	GZVRVulSyMMuazU6eaDiqwLjo/U/e9jmpA2h7hbx/yoFEhEQtqzkwsjRFe4SeO51gHrG
	GcZoeqKtXmjSrqqIPAFKl9rmn4ZfPEsQhZbM6BQDFJT+X6Xhm1ju1XLOGZOLpdRW8i1X
	PkRg==
Received: by 10.50.40.234 with SMTP id a10mr3103098igl.44.1345234883202;
	Fri, 17 Aug 2012 13:21:23 -0700 (PDT)
Received: from ferlandm@sonatest.com
	(modemcable066.15-37-24.static.videotron.ca. [24.37.15.66])
	by mx.google.com with ESMTPS id df4sm4007770igc.13.2012.08.17.13.21.20
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 17 Aug 2012 13:21:22 -0700 (PDT)
Sender: Marc Ferland <marc.ferland@gmail.com>
Received: by ferlandm@sonatest.com (sSMTP sendmail emulation);
	Fri, 17 Aug 2012 16:21:28 -0400
From: Marc Ferland <ferlandm@sonatest.com>
To: yocto@yoctoproject.org
Date: Fri, 17 Aug 2012 16:21:28 -0400
Message-ID: <871uj51d87.fsf@sonatest.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.1 (gnu/linux)
MIME-Version: 1.0
Subject: linux-yocto and private topic branches
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
X-List-Received-Date: Fri, 17 Aug 2012 20:21:24 -0000
Content-Type: text/plain

Hi,

I'm maintaining a BSP based on crownbay and I would like to change my
current kernel recipe from a custom one to linux-yocto_3.2.bb.

Reading the kernel-yocto.bbclass, I see that it is possible to provide a
list of patches and configuration fragments but also (not sure about
that) to provide an "external branch".

Since we maintain several private topic branches in-house this would be
the perfect solution. I could "inherit" from crownbay (available on
linux-yocto) and just merge my topic branches to produce the final
kernel source tree.

My question:
Is this currently possible? If so, are there any examples available?
Can these changes be kept in "recipe-space"?

If not possible, am I stuck with managing patches?

Regards,

Marc


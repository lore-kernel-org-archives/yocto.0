Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4D7EE004E9
	for <yocto@yoctoproject.org>; Mon, 26 Sep 2011 09:40:20 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p8QGkYlX003561; Mon, 26 Sep 2011 17:46:35 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id qdd-MnPCWID5; Mon, 26 Sep 2011 17:46:34 +0100 (BST)
Received: from [192.168.1.40] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p8QGkTfm003520
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Mon, 26 Sep 2011 17:46:31 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: openembedded-core <openembedded-core@lists.openembedded.org>, yocto
	<yocto@yoctoproject.org>
Date: Mon, 26 Sep 2011 17:40:05 +0100
X-Mailer: Evolution 3.1.91- 
Message-ID: <1317055213.26109.59.camel@ted>
Mime-Version: 1.0
Subject: Release Status
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
X-List-Received-Date: Mon, 26 Sep 2011 16:40:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

[Cross posted as I think there are two interested parties in this
information]

Things have been a little chaotic recently and I wish they could have
been different. We've just had to make the best of them however and I do
think things are coming together. Things were not helped by the fact I
was travelling last week and distracted by the commitments that
involved.

We have branched both OE-Core and Yocto and master is now open for
normal business again. I'm trying to catch up on the patch backlog,
anyone creating pull requests of sets of outstanding changes would help
me a lot there but failing that I'll continue to work through things as
quickly as I can. I've tried to pick up the simpler and more obvious
patches to keep the queue under control.

We're at -rc3 with the rc3 builds having just completed. The builds
themselves were mostly successful (greenest build yet certainly) and I
think the failed tasks are autobuilder issues rather than metadata/build
system ones but we'll be working to confirm that. The QA team will be
testing the result of that build this week.

Feature wise, testing is showing there are issues in some of the
stranger multilib combinations but that standard ones do work. Hob is
showing some issues but many of the bugs we originally found have been
fixed. There are also still a strong stream of general bug fixes coming
in.

We are likely going to run a -rc4 build in two weeks, the week delay
being due to the holiday in China where the Yocto QA team is based. This
means we do slip from the release date we had in mind but this gives us
a little more runway to fix any remaining key issues.

At this point given the problems we've had getting all the combinations
we build to work, I'm reluctant to take more than the bare essential
fixes for -rc4 but we'll see how things look on the rc3 QA report.

I'd urge people to continue fixing bugs. We're seeing the "quality" of
master improving a lot with removal of a ton of QA warnings, unpackaged
files and so forth with bugs being dug into, debugged and resolved and
many good things happening. If there are a load of changes which don't
make the release, its possible we may end up taking those into a point
release. At present the Yocto bug trends are not looking very positive
but I'm optimistic that even if issues are reported, if we do debug them
and have known fixes that is a better position to be in than not having
them available.

I was feeling quite nervous about things but I'm feeling things are more
under control now. Lets hope this is true as we await the -rc3 test
reports! :)

Cheers,

Richard







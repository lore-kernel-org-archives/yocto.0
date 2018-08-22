Return-Path: <seebs@seebs.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A880E00474; Wed, 22 Aug 2018 09:47:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 361 seconds by postgrey-1.32 at yocto-www;
	Wed, 22 Aug 2018 09:47:35 PDT
Received: from mail.seebs.net (mail.seebs.net [162.213.38.76])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6E2FE003D7
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2018 09:47:35 -0700 (PDT)
Received: from seebsdell (unknown [24.196.59.174])
	by mail.seebs.net (Postfix) with ESMTPSA id 7DB642E8956;
	Wed, 22 Aug 2018 11:41:33 -0500 (CDT)
Date: Wed, 22 Aug 2018 11:41:31 -0500
From: Seebs <seebs@seebs.net>
To: <Jack.Fewx@dell.com>
Message-ID: <20180822114131.0e67fee5@seebsdell>
In-Reply-To: <0c3dff3db46a4a83a73a4ffe1c83535d@AUSX13MPC104.AMER.DELL.COM>
References: <6a084eda5fcb4423a647bb998471e26d@AUSX13MPC104.AMER.DELL.COM>
	<CANNYZj8A22yL9VU0Wp3OOXwZU6yR=fQXqeWSfKykDp_kkL6ZGQ@mail.gmail.com>
	<6bdfdff49ca04924979eba1da729d7e1@AUSX13MPC104.AMER.DELL.COM>
	<ca06666cf0377fda72a45581f14a2ba48591dc9b.camel@gmail.com>
	<0c3dff3db46a4a83a73a4ffe1c83535d@AUSX13MPC104.AMER.DELL.COM>
X-Mailer: Claws Mail 3.15.1-dirty (GTK+ 2.24.30; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [pseudo] Pseudo 1.8+ xattr sqlite corruption
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
X-List-Received-Date: Wed, 22 Aug 2018 16:47:36 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Wed, 22 Aug 2018 14:54:02 +0000
<Jack.Fewx@dell.com> wrote:

> So failure mode is the target filesystem is devoid of SELinux file
> contexts, all files are unlabeled_t, which pretty much breaks
> everything in enforcing mode.  So whatever the corruption
> cause/effect in the Psuedo database, the end result is when
> Mksquashfs runs it can't get labels for the files.

Ugh. Sorry, this is a known issue, I think we have an open bug for it,
and so far as I could tell the last time I looked at it, it was
theoretically-impossible to fix it sanely.

See:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=6580

The basic problem is: SELinux is extended attributes, and if we are
allowing *any* use of extended attributes, there is no way for pseudo
to distinguish between "host environment is trying to set a host
environment extended attribute" and "build system is trying to set a
target environment extended attribute".

And we can partially address this by turning off xattr support, so all
extended attribute use gets ENOSYS or whatever, but then I think the
host system stuff will also fail.

I am open to suggestions on ways this could be addressed sanely, but I
haven't come up with anything good yet.

(FWIW, I'm more present on the oe-core list, which I still scan for
messages with "pseudo" in the subject line.)

-s


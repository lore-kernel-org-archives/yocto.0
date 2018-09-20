Return-Path: <seebs@seebs.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D85EE006AF; Thu, 20 Sep 2018 13:46:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.seebs.net (mail.seebs.net [162.213.38.76])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD09BE00519
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2018 13:46:57 -0700 (PDT)
Received: from seebsdell (unknown [38.32.44.26])
	by mail.seebs.net (Postfix) with ESMTPSA id 542F72E8925;
	Thu, 20 Sep 2018 15:46:57 -0500 (CDT)
Date: Thu, 20 Sep 2018 15:46:56 -0500
From: Seebs <seebs@seebs.net>
To: <Jack.Fewx@dell.com>
Message-ID: <20180920154656.6dc19bc3@seebsdell>
In-Reply-To: <7fa6c890755b4712828365593fcfe088@AUSX13MPC104.AMER.DELL.COM>
References: <6a084eda5fcb4423a647bb998471e26d@AUSX13MPC104.AMER.DELL.COM>
	<CANNYZj8A22yL9VU0Wp3OOXwZU6yR=fQXqeWSfKykDp_kkL6ZGQ@mail.gmail.com>
	<6bdfdff49ca04924979eba1da729d7e1@AUSX13MPC104.AMER.DELL.COM>
	<ca06666cf0377fda72a45581f14a2ba48591dc9b.camel@gmail.com>
	<0c3dff3db46a4a83a73a4ffe1c83535d@AUSX13MPC104.AMER.DELL.COM>
	<340e2fcca899a6691605df89eb89f0e7e7802916.camel@linuxfoundation.org>
	<767f0527074648f48702fedcdb928152@AUSX13MPC104.AMER.DELL.COM>
	<20180918160944.43679aec@seebsdell>
	<CAJdd5Gb64JqHY3gv=r+_ZnKpDzO63CLpOF0fP8MQy_Dd_bshQQ@mail.gmail.com>
	<20180918162048.35454f8d@seebsdell>
	<CAJTo0LZ1qDr2DAFWJcHBrzWWwERYh-6eSiXNO5gcJwT=HXMb-w@mail.gmail.com>
	<20180920141600.1e7fae12@seebsdell>
	<7fa6c890755b4712828365593fcfe088@AUSX13MPC104.AMER.DELL.COM>
X-Mailer: Claws Mail 3.16.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
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
X-List-Received-Date: Thu, 20 Sep 2018 20:46:58 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 20 Sep 2018 20:41:02 +0000
<Jack.Fewx@dell.com> wrote:

> Okay, so I found the problem, and I have a patch for it.  Throughout
> the pseudo_db.c code, the handling of the msg->ino objects is not
> consistent.  Many get passed to the sqlite3_bind_int64 function, but
> NOT ALL.  9 instances in the code, including all of them in the xattr
> code use only sqlite3_bind_int which truncates the integers to signed
> 32-bits.

D'oh. I should have noticed that since I was looking at the code.

Thanks, that's a very good fix.

-s


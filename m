Return-Path: <seebs@seebs.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CDA01E0095C; Tue, 18 Sep 2018 14:09:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.seebs.net (mail.seebs.net [162.213.38.76])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E88CE0090A
	for <yocto@yoctoproject.org>; Tue, 18 Sep 2018 14:09:46 -0700 (PDT)
Received: from seebsdell (unknown [38.32.44.26])
	by mail.seebs.net (Postfix) with ESMTPSA id 8FC872E8925;
	Tue, 18 Sep 2018 16:09:45 -0500 (CDT)
Date: Tue, 18 Sep 2018 16:09:44 -0500
From: Seebs <seebs@seebs.net>
To: <Jack.Fewx@dell.com>
Message-ID: <20180918160944.43679aec@seebsdell>
In-Reply-To: <767f0527074648f48702fedcdb928152@AUSX13MPC104.AMER.DELL.COM>
References: <6a084eda5fcb4423a647bb998471e26d@AUSX13MPC104.AMER.DELL.COM>
	<CANNYZj8A22yL9VU0Wp3OOXwZU6yR=fQXqeWSfKykDp_kkL6ZGQ@mail.gmail.com>
	<6bdfdff49ca04924979eba1da729d7e1@AUSX13MPC104.AMER.DELL.COM>
	<ca06666cf0377fda72a45581f14a2ba48591dc9b.camel@gmail.com>
	<0c3dff3db46a4a83a73a4ffe1c83535d@AUSX13MPC104.AMER.DELL.COM>
	<340e2fcca899a6691605df89eb89f0e7e7802916.camel@linuxfoundation.org>
	<767f0527074648f48702fedcdb928152@AUSX13MPC104.AMER.DELL.COM>
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
X-List-Received-Date: Tue, 18 Sep 2018 21:09:46 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Tue, 18 Sep 2018 20:26:59 +0000
<Jack.Fewx@dell.com> wrote:

> SO... any suggestions how to make the inodes in the database an
> UNSIGNED value?

We probably *can't* -- sqlite doesn't support that! They cap out at 8
byte integer values, and are always signed. I don't know of a way to
fix this. We might be able to trick it by coercing them into the signed
range, and reversing the conversion later. And this is outside the
range that's accurately representable in float, too. Whee!

-s


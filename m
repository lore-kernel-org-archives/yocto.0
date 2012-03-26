Return-Path: <Peter.Seebach@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9534E013A8
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2012 00:43:40 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q2Q7hRBx022548
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 26 Mar 2012 00:43:27 -0700 (PDT)
Received: from wrlaptop (172.25.40.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Mon, 26 Mar 2012 00:43:28 -0700
Date: Mon, 26 Mar 2012 02:43:25 -0500
From: Peter Seebach <peter.seebach@windriver.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-ID: <20120326024325.2dfd0f59@wrlaptop>
In-Reply-To: <1332609315.28414.19.camel@ted>
References: <2046170.9fCjTlmZqN@helios> <1332472886.1765.1.camel@dongxiao-osel>
	<20120323021635.5b4fc048@wrlaptop> <1537192.Q99X1xdoal@helios>
	<20120323174506.5634af61@wrlaptop> <1332609315.28414.19.camel@ted>
X-Mailer: Claws Mail 3.7.8 (GTK+ 2.24.4; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: pseudo interaction issue
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
X-List-Received-Date: Mon, 26 Mar 2012 07:43:41 -0000
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit

On Sat, 24 Mar 2012 17:15:15 +0000
Richard Purdie <richard.purdie@linuxfoundation.org> wrote:

> This implies that once we enable pseudo for a child, there is some
> change in the parent which persists.

Hmm.

Is the parent running with pseudo loaded?  If it were, then I would
expect this -- pseudo does some environment magic that can affect the
parent, and also cause it to stash values for later restoration.

Otherwise, I'm less sure, because the parent process should be able to
mess with its environment all it wants.  Pseudo has some hackery for
restoring missing values, to let things like "env -i ..." work.

-s
-- 
Listen, get this.  Nobody with a good compiler needs to be justified.


Return-Path: <Peter.Seebach@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46DBAE0059A
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2012 10:18:24 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q2QHIJdk014221
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 26 Mar 2012 10:18:19 -0700 (PDT)
Received: from wrlaptop (172.25.40.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Mon, 26 Mar 2012 10:18:19 -0700
Date: Mon, 26 Mar 2012 12:18:16 -0500
From: Peter Seebach <peter.seebach@windriver.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-ID: <20120326121816.343a5f01@wrlaptop>
In-Reply-To: <1332780449.28414.122.camel@ted>
References: <2046170.9fCjTlmZqN@helios> <1332472886.1765.1.camel@dongxiao-osel>
	<20120323021635.5b4fc048@wrlaptop> <1537192.Q99X1xdoal@helios>
	<20120323174506.5634af61@wrlaptop> <1332609315.28414.19.camel@ted>
	<1332610903.28414.24.camel@ted> <20120326114405.59b3eacc@wrlaptop>
	<1332780449.28414.122.camel@ted>
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
X-List-Received-Date: Mon, 26 Mar 2012 17:18:24 -0000
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit

On Mon, 26 Mar 2012 17:47:29 +0100
Richard Purdie <richard.purdie@linuxfoundation.org> wrote:

> This is pretty much what we do at the moment, it gets unset after we
> load. Pseudo is of course disabled at this point.
> 
> I guess we just got lucky to this point and avoided "Bad Things"?

I suspect so.  What's weird to me is that PSEUDO_PREFIX wasn't in the
environment before, either.  So I still don't quite get this.  I am
still missing something which will make this all make sense.

... at this point, I am leaning towards viewing this as a bug where it
is not enough to simply correct the behavior, I will not feel confident
in it until I have understood how it could have happened, but worked in
many other cases.

-s
-- 
Listen, get this.  Nobody with a good compiler needs to be justified.


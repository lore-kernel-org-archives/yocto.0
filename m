Return-Path: <Peter.Seebach@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C287E01374
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2012 09:44:14 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q2QGi9aR013712
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 26 Mar 2012 09:44:09 -0700 (PDT)
Received: from wrlaptop (172.25.40.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Mon, 26 Mar 2012 09:44:09 -0700
Date: Mon, 26 Mar 2012 11:44:05 -0500
From: Peter Seebach <peter.seebach@windriver.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-ID: <20120326114405.59b3eacc@wrlaptop>
In-Reply-To: <1332610903.28414.24.camel@ted>
References: <2046170.9fCjTlmZqN@helios> <1332472886.1765.1.camel@dongxiao-osel>
	<20120323021635.5b4fc048@wrlaptop> <1537192.Q99X1xdoal@helios>
	<20120323174506.5634af61@wrlaptop> <1332609315.28414.19.camel@ted>
	<1332610903.28414.24.camel@ted>
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
X-List-Received-Date: Mon, 26 Mar 2012 16:44:14 -0000
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit

On Sat, 24 Mar 2012 17:41:43 +0000
Richard Purdie <richard.purdie@linuxfoundation.org> wrote:

> One or the other of the above on their own doesn't do this. Funky.

That's very strange.  I wouldn't have expected LOCALSTATEDIR to have
any effect either way; it might change how pseudo runs, but it shouldn't
affect whether it's being enabled.

If we are starting with pseudo loaded, I'm pretty sure it's unsafe to
unset PSEUDO_PREFIX ever.  After a fork(), pseudo will still be in
memory, and if PSEUDO_PREFIX is unset, Bad Things Happen.

-s
-- 
Listen, get this.  Nobody with a good compiler needs to be justified.


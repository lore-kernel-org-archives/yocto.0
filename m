Return-Path: <Peter.Seebach@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13EAFE0070C
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2012 07:26:48 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q2REQkBl028596
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 27 Mar 2012 07:26:46 -0700 (PDT)
Received: from wrlaptop (172.25.40.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 27 Mar 2012 07:26:47 -0700
Date: Tue, 27 Mar 2012 09:26:43 -0500
From: Peter Seebach <peter.seebach@windriver.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-ID: <20120327092643.78517bc5@wrlaptop>
In-Reply-To: <1332798316.28414.138.camel@ted>
References: <2046170.9fCjTlmZqN@helios> <1332472886.1765.1.camel@dongxiao-osel>
	<20120323021635.5b4fc048@wrlaptop> <1537192.Q99X1xdoal@helios>
	<20120323174506.5634af61@wrlaptop> <1332609315.28414.19.camel@ted>
	<1332610903.28414.24.camel@ted> <20120326114405.59b3eacc@wrlaptop>
	<1332780449.28414.122.camel@ted> <20120326121816.343a5f01@wrlaptop>
	<1332798316.28414.138.camel@ted>
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
X-List-Received-Date: Tue, 27 Mar 2012 14:26:49 -0000
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit

On Mon, 26 Mar 2012 22:45:16 +0100
Richard Purdie <richard.purdie@linuxfoundation.org> wrote:

> I'm still a little surprised we don't make any system() calls though.
> I just tried putting a os.system("true") call into the "breakit"
> class and it doesn't trigger the warnings. Could that be down to the
> lack of a popen wrapper?

Conclusion:  Yes, it could.  Once I understood why the popen wrapper
wasn't working, it got better; using the popen wrapper fixes things for
the breakit class, and probably for hob also.

However, the popen() wrapper is not really restoring the environment
after it runs.  (In fact, I just looked at system(), and it does a
setupenv() but not a dropenv(), so it will, I think, be running
anything it runs with pseudo loaded but disabled, I think.)

I still think it might be wiser for us to move PSEUDO_PREFIX into the
list of things that are always set.  I'm not sure; if we don't, we have
a good chance of finding weird problems faster, I guess!

-s
-- 
Listen, get this.  Nobody with a good compiler needs to be justified.


Return-Path: <Peter.Seebach@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47BDBE0044D
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2012 13:06:25 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q2NK6O6I001999
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 23 Mar 2012 13:06:24 -0700 (PDT)
Received: from wrlaptop (172.25.40.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 23 Mar 2012 13:06:25 -0700
Date: Fri, 23 Mar 2012 15:06:23 -0500
From: Peter Seebach <peter.seebach@windriver.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Message-ID: <20120323150623.521a6d21@wrlaptop>
In-Reply-To: <1537192.Q99X1xdoal@helios>
References: <2046170.9fCjTlmZqN@helios> <1332472886.1765.1.camel@dongxiao-osel>
	<20120323021635.5b4fc048@wrlaptop> <1537192.Q99X1xdoal@helios>
X-Mailer: Claws Mail 3.7.8 (GTK+ 2.24.4; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Fri, 23 Mar 2012 20:06:25 -0000
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit

On Fri, 23 Mar 2012 12:20:08 +0000
Paul Eggleton <paul.eggleton@linux.intel.com> wrote:

> On Friday 23 March 2012 02:16:35 Peter Seebach wrote:
> > Still really weird to me that I can't reproduce this outside of hob.
> > I am pretty sure there exists a series of forks and execs and
> > environment changes such that this will end up happening.
> 
> I now have a fairly simple test case outside of hob. Put the attached
> file in meta/classes/ and then add the following to your local.conf:
> 
> INHERIT += "breakit"

Confirmed, this produces the problem for me, reducing the reproduction
window from something over an hour to about 7 seconds.  THANK YOU!

-s
-- 
Listen, get this.  Nobody with a good compiler needs to be justified.


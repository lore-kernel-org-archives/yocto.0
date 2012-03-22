Return-Path: <Peter.Seebach@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C191E013A3
	for <yocto@yoctoproject.org>; Thu, 22 Mar 2012 09:18:12 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q2MGIA3G005659
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 22 Mar 2012 09:18:10 -0700 (PDT)
Received: from wrlaptop (172.25.40.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 22 Mar 2012 09:18:10 -0700
Date: Thu, 22 Mar 2012 11:18:05 -0500
From: Peter Seebach <peter.seebach@windriver.com>
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>
Message-ID: <20120322111805.6da9cd91@wrlaptop>
In-Reply-To: <1332380981.1849.18.camel@dongxiao-osel>
References: <2046170.9fCjTlmZqN@helios> <4F3EA17B.7010906@windriver.com>
	<1331715724.25861.16.camel@dongxiao-osel>
	<1332380981.1849.18.camel@dongxiao-osel>
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
X-List-Received-Date: Thu, 22 Mar 2012 16:18:12 -0000
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit

On Thu, 22 Mar 2012 09:49:41 +0800
"Xu, Dongxiao" <dongxiao.xu@intel.com> wrote:

> Hi Mark,
> 
> Any update on this one? I think we may need to track it in bugzilla.

I have been looking into this.  I've convinced myself that popen() is
broken under pseudo, but that's not enough to explain this:

* I have a fixed pseudo where popen works.  It still fails sometimes
  under hob.
* When it fails, the popen() wrapper isn't even getting called.
* Still looking into this.

Interestingly, I can't get this failure to occur at all outside of hob.

-s
-- 
Listen, get this.  Nobody with a good compiler needs to be justified.


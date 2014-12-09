Return-Path: <olof.johansson@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E9E6E0086F; Tue,  9 Dec 2014 07:39:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bes.se.axis.com (bes.se.axis.com [195.60.68.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7753EE0082F
	for <yocto@yoctoproject.org>; Tue,  9 Dec 2014 07:39:19 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by bes.se.axis.com (Postfix) with ESMTP id A10762E2BA;
	Tue,  9 Dec 2014 16:39:17 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at bes.se.axis.com
Received: from bes.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bes.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024)
	with LMTP id HmTuk1xMOu0k; Tue,  9 Dec 2014 16:39:12 +0100 (CET)
Received: from boulder.se.axis.com (boulder.se.axis.com [10.0.2.104])
	by bes.se.axis.com (Postfix) with ESMTP id 80E172E2B3;
	Tue,  9 Dec 2014 16:39:12 +0100 (CET)
Received: from boulder.se.axis.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id 6A38ACC3;
	Tue,  9 Dec 2014 16:39:12 +0100 (CET)
Received: from seth.se.axis.com (seth.se.axis.com [10.0.2.172])
	by boulder.se.axis.com (Postfix) with ESMTP id 5F1DEB47;
	Tue,  9 Dec 2014 16:39:12 +0100 (CET)
Received: from xmail2.se.axis.com (xmail2.se.axis.com [10.0.5.74])
	by seth.se.axis.com (Postfix) with ESMTP id 5D16D3E28B;
	Tue,  9 Dec 2014 16:39:12 +0100 (CET)
Received: from lnxolofjn.se.axis.com (10.92.17.1) by xmail2.se.axis.com
	(10.0.5.74) with Microsoft SMTP Server id 8.3.342.0;
	Tue, 9 Dec 2014 16:39:12 +0100
Received: by lnxolofjn.se.axis.com (Postfix, from userid 20466)	id 1689A9C9F2; 
	Tue,  9 Dec 2014 16:39:11 +0100 (CET)
Date: Tue, 9 Dec 2014 16:39:11 +0100
From: Olof Johansson <olof.johansson@axis.com>
To: Otavio Salvador <otavio@ossystems.com.br>
Message-ID: <20141209153911.GC18757@axis.com>
References: <1418135572-5521-1-git-send-email-otavio@ossystems.com.br>
	<20141209152907.GB18757@axis.com>
	<CAP9ODKqOJs0yh4q0FrKkYKsYQGMhM-X+LU5y=k+0-itumS=jZQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAP9ODKqOJs0yh4q0FrKkYKsYQGMhM-X+LU5y=k+0-itumS=jZQ@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: Yocto Project Mailing List <yocto@yoctoproject.org>
Subject: Re: [PATCH v2] distro/poky: Add Debian 8 (Jessie) as sanity tested
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
X-List-Received-Date: Tue, 09 Dec 2014 15:39:23 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

On 14-12-09 16:32 +0100, Otavio Salvador wrote:
> On Tue, Dec 9, 2014 at 1:29 PM, Olof Johansson <olof.johansson@axis.com> wrote:
> > I would propose
> >
> >    Debian-8.* \n
...
> 
> This was my first patch and failed on me.
>
> Ahhhh we need lsb-release for it to work.

Ah, I didn't notice the v2 tag in the subject :).

-- 
olofjn


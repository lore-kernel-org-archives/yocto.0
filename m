Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 673C1E00C3B; Tue, 20 Nov 2018 15:05:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 600DBE00950
	for <yocto@yoctoproject.org>; Tue, 20 Nov 2018 15:05:27 -0800 (PST)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-10) with ESMTPSA id
	wAKN5LVA019686
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Tue, 20 Nov 2018 23:05:23 GMT
Message-ID: <9139d99908dae9aa03be1ae5cf07720206c9755c.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Date: Tue, 20 Nov 2018 23:05:21 +0000
In-Reply-To: <41694628.BEkiBNE3Gc@localhost.localdomain>
References: <545a7e8a-5ccd-c8b8-6b88-0b6f1723f794@gmail.com>
	<1542539495.3707.2.camel@gmail.com>
	<41694628.BEkiBNE3Gc@localhost.localdomain>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.100.2 at dan
X-Virus-Status: Clean
Subject: Re: Yocto layers missing thud branches
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
X-List-Received-Date: Tue, 20 Nov 2018 23:05:28 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2018-11-19 at 09:47 +1300, Paul Eggleton wrote:
> On Monday, 19 November 2018 12:11:35 AM NZDT Max Krummenacher wrote:
> > Am Samstag, den 17.11.2018, 15:50 -0800 schrieb akuster808:
> > > Can the maintainers of meta-qt3, meta-qt4, meta-selinux, and
> > > meta-cgl
> > > please add a "Thud" branch
> > > 
> > 
> > While at it, the following patches declaring thud compatibility are
> > not
> > yet applied:
> > 
https://lists.yoctoproject.org/pipermail/yocto/2018-October/042780.html
> > 
https://lists.yoctoproject.org/pipermail/yocto/2018-October/042922.html
> > 
https://lists.yoctoproject.org/pipermail/yocto/2018-October/042923.html
> 
> I have just taken care of meta-qt3 and meta-qt4, FWIW.

Given we don't test those any more, should we be pushing these new
branches?

Cheers,

Richard



Return-Path: <clemens.lang@bmw-carit.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17014E0096A; Sun,  5 Jul 2015 22:23:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [62.245.222.98 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 179 seconds by postgrey-1.32 at yocto-www;
	Sun, 05 Jul 2015 22:23:00 PDT
Received: from mail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2720E006C6
	for <yocto@yoctoproject.org>; Sun,  5 Jul 2015 22:23:00 -0700 (PDT)
Received: from exchange2010.bmw-carit.intra ([192.168.100.28]:8419
	helo=mail.bmw-carit.de)
	by mail.bmw-carit.de with esmtps (TLSv1:AES128-SHA:128)
	(Exim 4.82_1-5b7a7c0-XX) (envelope-from <Clemens.Lang@bmw-carit.de>)
	id 1ZByot-0007kD-24; Mon, 06 Jul 2015 07:19:55 +0200
Received: from localhost (172.20.20.163) by Exchange2010.bmw-carit.intra
	(192.168.100.28) with Microsoft SMTP Server (TLS) id 14.1.218.12;
	Mon, 6 Jul 2015 07:19:55 +0200
X-CTCH-RefID: str=0001.0A0C0205.559A0FFB.018C, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0
Date: Mon, 6 Jul 2015 07:19:54 +0200
From: Clemens Lang <clemens.lang@bmw-carit.de>
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <20150706051954.GF6806@ulm-bmuc496424.bmw-carit.de>
References: <1435292188-29514-1-git-send-email-jon.szymaniak@gmail.com>
	<CAJTo0LaKZsvvC4hKZrJiX6r2=Q+JL48+i3fBVQauDDYNtPn+og@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJTo0LaKZsvvC4hKZrJiX6r2=Q+JL48+i3fBVQauDDYNtPn+og@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Originating-IP: [172.20.20.163]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Jon Szymaniak <jon.szymaniak@gmail.com>
Subject: Re: [meta-raspberrypi][PATCH] firmware.inc: Fetch a zip instead of cloning a git repo
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
X-List-Received-Date: Mon, 06 Jul 2015 05:23:05 -0000
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hello,

On Fri, Jun 26, 2015 at 09:31:14AM +0100, Burton, Ross wrote:
> Github also can and will regenerate these tarballs whenever it feels
> like it, so you'll need to periodically update the checksums.
> Obviously as existing developers will tend to have the tarballs cached
> locally, it can be a while before this failure is reported back.

While that does happen from time to time it's pretty rare. I see maybe
one case of this every couple of months in MacPorts. Additionally, after
a while the checksums generally change back again in almost all cases.

So, yes, this brings its own set of problems, but is still a worthwhile
improvement over the current situation IMO.


Best regards,
Clemens
-- 
Clemens Lang • Development Specialist
BMW Car IT GmbH • Lise-Meitner-Str. 14 • 89081 Ulm • http://bmw-carit.com
-------------------------------------------------------------------------
BMW Car IT GmbH
Geschäftsführer: Michael Würtenberger und Reinhard Stolle
Sitz und Registergericht: München HRB 134810
-------------------------------------------------------------------------


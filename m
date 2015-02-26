Return-Path: <clemens.lang@bmw-carit.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0FCDE006EF; Thu, 26 Feb 2015 06:42:44 -0800 (PST)
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
Received: from mail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 501C1E00546
	for <yocto@yoctoproject.org>; Thu, 26 Feb 2015 06:42:41 -0800 (PST)
Received: from exchange2010.bmw-carit.intra ([192.168.100.28]:61497
	helo=mail.bmw-carit.de)
	by mail.bmw-carit.de with esmtps (TLSv1:AES128-SHA:128)
	(Exim 4.82_1-5b7a7c0-XX) (envelope-from <Clemens.Lang@bmw-carit.de>)
	id 1YQze9-0005tG-30
	for yocto@yoctoproject.org; Thu, 26 Feb 2015 15:42:37 +0100
Received: from localhost (10.242.6.110) by Exchange2010.bmw-carit.intra
	(192.168.100.28) with Microsoft SMTP Server (TLS) id 14.1.218.12;
	Thu, 26 Feb 2015 15:42:37 +0100
Date: Thu, 26 Feb 2015 15:42:37 +0100
From: Clemens Lang <clemens.lang@bmw-carit.de>
To: <yocto@yoctoproject.org>
Message-ID: <20150226144237.GP11425@ulm-bmuc496424.bmw-carit.de>
References: <20150223142243.GB11425@ulm-bmuc496424.bmw-carit.de>
MIME-Version: 1.0
In-Reply-To: <20150223142243.GB11425@ulm-bmuc496424.bmw-carit.de>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Originating-IP: [10.242.6.110]
Subject: Re: [PATCH] bitbake: fetch2: Revalidate checksums, YOCTO #5571
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
X-List-Received-Date: Thu, 26 Feb 2015 14:42:44 -0000
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi,

On Mon, Feb 23, 2015 at 03:22:43PM +0100, Clemens Lang wrote:
> [YOCTO #5571] -- https://bugzilla.yoctoproject.org/show_bug.cgi?id=5571

Can somebody review this? Is there anything I need to do to get this
considered for merging?

-- 
Clemens Lang • Development Specialist
BMW Car IT GmbH • Lise-Meitner-Str. 14 • 89081 Ulm • http://bmw-carit.com
-------------------------------------------------------------------------
BMW Car IT GmbH
Geschäftsführer: Michael Würtenberger und Reinhard Stolle
Sitz und Registergericht: München HRB 134810
-------------------------------------------------------------------------


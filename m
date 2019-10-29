Return-Path: <robert.joslyn@redrectangle.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA1DFE00D68; Mon, 28 Oct 2019 21:41:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [217.70.183.193 listed in list.dnswl.org]
X-Greylist: delayed 44164 seconds by postgrey-1.32 at yocto-www;
	Mon, 28 Oct 2019 21:41:39 PDT
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net
	[217.70.183.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71669E00B7A
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2019 21:41:38 -0700 (PDT)
X-Originating-IP: 173.197.191.182
Received: from xps13.localdomain (rrcs-173-197-191-182.west.biz.rr.com
	[173.197.191.182])
	(Authenticated sender: robert.joslyn@redrectangle.org)
	by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id E989A240005;
	Tue, 29 Oct 2019 04:41:36 +0000 (UTC)
Message-ID: <d88b9f08c99863d5479e5c9c98a83c991da22d12.camel@redrectangle.org>
From: Robert Joslyn <robert.joslyn@redrectangle.org>
To: Ross Burton <ross.burton@intel.com>, yocto@yoctoproject.org
Date: Mon, 28 Oct 2019 21:41:32 -0700
In-Reply-To: <acd179f3-b31e-905d-81e6-bb9f8f4a58c3@intel.com>
References: <5ed5-5db71680-7f-1be36200@40858189>
	<acd179f3-b31e-905d-81e6-bb9f8f4a58c3@intel.com>
User-Agent: Evolution 3.30.5 
MIME-Version: 1.0
Subject: Re: systemd Version Going Backwards on Warrior
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
X-List-Received-Date: Tue, 29 Oct 2019 04:41:42 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2019-10-28 at 19:06 +0000, Ross Burton wrote:
> On 28/10/2019 16:25, robert.joslyn@redrectangle.org wrote:
> > I'm using buildhistory in one of my builds that creates a package
> > feed, and a recent update to systemd on warrior triggered version-
> > going-backwards errors:
> > 
> > ERROR: systemd-conf-241+AUTOINC+511646b8ac-r0 do_packagedata: QA
> > Issue: Package version for package systemd-conf-src went backwards
> > which would break package feeds from (0:241+0+c1f8ff8d0d-r0 to
> > 0:241+0+511646b8ac-r0) [version-going-backwards]
> > 
> > Should PE have been updated at the same time due to the hash making
> > the version number go backwards? I can send a patch if that's all
> > that's missing. Or is a PR server enough to prevent this? My debug
> > builds do not use a PR server, but my production builds do use a PR
> > server.
> 
> If you're using feeds, you need to use a PR server.  This is *exactly* 
> what they are for.
> 
> Ross

The part I wasn't sure about was if the PR server helped in the case where
PV went backwards. I know it works when PV stays the same but the package
was rebuilt. But if it keeps the versions going forward no matter how PV
changes, then I should be good. I should probably setup a separate PR
server on my debug builds to avoid this kind of error.

Thanks,
Robert



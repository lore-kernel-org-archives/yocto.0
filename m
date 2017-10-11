Return-Path: <fabien.lahoudere@collabora.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D51F3E00C78; Wed, 11 Oct 2017 10:17:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.235.227.227 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 420F5E00C65
	for <yocto@yoctoproject.org>; Wed, 11 Oct 2017 10:17:50 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aragua) with ESMTPSA id E51EA26D1D9
Message-ID: <1507742266.9509.33.camel@collabora.co.uk>
From: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
To: "Maxin B. John" <maxin.john@intel.com>
Date: Wed, 11 Oct 2017 19:17:46 +0200
In-Reply-To: <20171011113731.GA35471@mbabyjoh-desk.ger.corp.intel.com>
References: <1507671003.9509.21.camel@collabora.co.uk>
	<OF5390C64E.C78BBBE2-ON882581B5.007B79AE-882581B5.007BBDD4@selinc.com>
	<1507704333.9509.23.camel@collabora.co.uk>
	<CAJTo0La5mPdRzFOv-ofnHwuyG3fNPEf_be=V9d_TZAHLJxt_kA@mail.gmail.com>
	<1507713002.9509.25.camel@collabora.co.uk>
	<1507713360.9509.27.camel@collabora.co.uk>
	<CAOgGgETUawMZ8wAJW-n-UiEW8NOR8sO19gUhkEjJqbDCDa81RQ@mail.gmail.com>
	<1507717126.9509.29.camel@collabora.co.uk>
	<20171011113731.GA35471@mbabyjoh-desk.ger.corp.intel.com>
X-Mailer: Evolution 3.22.6-1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How to use same user in two recipes?
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
X-List-Received-Date: Wed, 11 Oct 2017 17:17:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Thanks a lot Maxin

Your patch fix the issue.

\o/

On Wed, 2017-10-11 at 14:37 +0300, Maxin B. John wrote:
> Hi Fabien,
> 
> On Wed, 2017-10-11 at 13:06 +0300, Henrik Lindblom wrote:
> > > I think you'll want RDEPENDS instead of DEPENDS in your recipe. DEPENDS implies build time
> > > dependencies (e.g. libraries) while RDEPENDS actually gets the component installed as a
> > > runtime
> > > dependency.
> > > 
> > Thanks Henrik
> > I tried to add RDEPENDS too without success. The problem is that users and groups are not
> > installed
> > IIUC.
> 
> Could you apply this patch and see if it helps here ?
> 
> Best Regards,
> Maxin
-- 
Fabien


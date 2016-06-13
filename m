Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7421E00E63; Mon, 13 Jun 2016 01:29:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC4BCE00CD2
	for <yocto@yoctoproject.org>; Mon, 13 Jun 2016 01:29:28 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP; 13 Jun 2016 01:29:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,466,1459839600"; 
	d="scan'208,217";a="826858940"
Received: from jlock-mobl2.ger.corp.intel.com ([10.252.25.178])
	by orsmga003.jf.intel.com with ESMTP; 13 Jun 2016 01:29:26 -0700
Message-ID: <1465806565.2923.2.camel@linux.intel.com>
From: Joshua G Lock <joshua.g.lock@linux.intel.com>
To: "Burton, Ross" <ross.burton@intel.com>, Michael Hu <pxmyhdev@gmail.com>
Date: Mon, 13 Jun 2016 09:29:25 +0100
In-Reply-To: <CAJTo0LYhW6XdK=T2F5B+Y4OX-O-ZSYHVUzFp5CqH_LZiV5RHmg@mail.gmail.com>
References: <CAPYQ8X7beSjV7JhuMBsamZXt_SDV7xNnpka7tzRQDSTg76vAag@mail.gmail.com>
	<CAJTo0LYhW6XdK=T2F5B+Y4OX-O-ZSYHVUzFp5CqH_LZiV5RHmg@mail.gmail.com>
X-Mailer: Evolution 3.20.2 (3.20.2-1.fc24) 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: do_patch through Yocto fails while "git am" succeed
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
X-List-Received-Date: Mon, 13 Jun 2016 08:29:32 -0000
Content-Type: multipart/alternative; boundary="=-GzUyPZi9Jy9w9KIMbXzg"

--=-GzUyPZi9Jy9w9KIMbXzg
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2016-06-10 at 20:32 +0100, Burton, Ross wrote:
> 
> On 10 June 2016 at 19:12, Michael Hu <pxmyhdev@gmail.com> wrote:
> > What could be the difference?
> > 
> > 
> 
> bitbake uses quilt to apply patches, not git am, so if the patch
> isn't exactly right then they'll behave differently.  Stripping the
> trailing CRs would be a start.
> 
It's worth pointing out that you can tell the system to use a different
tool to apply your patch by setting the PATCHTOOL variable in your
recipe:
http://www.yoctoproject.org/docs/2.1/ref-manual/ref-manual.html#var-PAT
CHTOOL
i.e.
PATCHTOOL = "git"
Regards,
Joshua

--=-GzUyPZi9Jy9w9KIMbXzg
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 7bit

<html><head></head><body><div>On Fri, 2016-06-10 at 20:32 +0100, Burton, Ross wrote:</div><blockquote type="cite"><div dir="ltr"><div><br><div class="gmail_quote">On 10 June 2016 at 19:12, Michael Hu <span dir="ltr">&lt;<a href="mailto:pxmyhdev@gmail.com" target="_blank">pxmyhdev@gmail.com</a>&gt;</span> wrote:<br><blockquote type="cite"><div>What could be the difference?</div><div></div><br></blockquote></div><br>bitbake uses quilt to apply patches, not git am, so if the patch isn't exactly right then they'll behave differently.&nbsp; Stripping the trailing CRs would be a start.</div></div>
</blockquote><div><br></div><div>It's worth pointing out that you can tell the system to use a different tool to apply your patch by setting the PATCHTOOL variable in your recipe:</div><div><br></div><div><a href="http://www.yoctoproject.org/docs/2.1/ref-manual/ref-manual.html#var-PATCHTOOL">http://www.yoctoproject.org/docs/2.1/ref-manual/ref-manual.html#var-PATCHTOOL</a></div><div><br></div><div>i.e.</div><div><br></div><div>PATCHTOOL = "git"</div><div><br></div><div>Regards,</div><div><br></div><div>Joshua</div></body></html>

--=-GzUyPZi9Jy9w9KIMbXzg--

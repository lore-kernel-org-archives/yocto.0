Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 800E2E0050B; Wed, 11 Jan 2017 04:12:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36A35E00443
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2017 04:12:33 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 11 Jan 2017 04:12:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,345,1477983600"; 
	d="scan'208,217";a="1081739164"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.24.115])
	by orsmga001.jf.intel.com with ESMTP; 11 Jan 2017 04:12:31 -0800
Message-ID: <1484136750.3219.0.camel@linux.intel.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
To: "Burton, Ross" <ross.burton@intel.com>, "Robert P. J. Day"
	<rpjday@crashcourse.ca>
Date: Wed, 11 Jan 2017 12:12:30 +0000
In-Reply-To: <CAJTo0La68P53BmWUOe-SDXP2850SdPKse+eS543-GuE2q6mr0w@mail.gmail.com>
References: <alpine.LFD.2.20.1701061728340.8194@localhost.localdomain>
	<CAJTo0La68P53BmWUOe-SDXP2850SdPKse+eS543-GuE2q6mr0w@mail.gmail.com>
X-Mailer: Evolution 3.22.3 (3.22.3-1.fc25) 
Mime-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: has support for MPC8315E-RDB been dropped?
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
X-List-Received-Date: Wed, 11 Jan 2017 12:12:37 -0000
Content-Type: multipart/alternative; boundary="=-HzuIXQL6MtxIxkelk40T"

--=-HzuIXQL6MtxIxkelk40T
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2017-01-09 at 10:17 +0000, Burton, Ross wrote:
> Nope, we're missing a tarball somewhere.  Can you file a bug?

Filed https://bugzilla.yoctoproject.org/show_bug.cgi?id=10911
Joshua
> Ross
> On 6 January 2017 at 22:30, Robert P. J. Day <rpjday@crashcourse.ca>
> wrote:
> >   i notice that if you search for the powerpc BSP in the latest
> > 
> > release here:
> > 
> > 
> > 
> > https://www.yoctoproject.org/downloads/bsps?release=98&processer%5B
> > %5D=22&title=
> > 
> > 
> > 
> > you get no match. i haven't been paying attention -- has yocto
> > dropped
> > 
> > that board as its powerpc reference board? is it being replaced by
> > a
> > 
> > newer powerpc system?
> > 
> > 
> > 
> > rday
> > 
> > 
> > 
> > --
> > 
> > 
> > 
> > ===================================================================
> > =====
> > 
> > Robert P. J. Day                                 Ottawa, Ontario,
> > CANADA
> > 
> >                         http://crashcourse.ca
> > 
> > 
> > 
> > Twitter:                                       http://twitter.com/r
> > pjday
> > 
> > LinkedIn:                               http://ca.linkedin.com/in/r
> > pjday
> > 
> > ===================================================================
> > =====
> > 
> > 
> > 
> > --
> > 
> > _______________________________________________
> > 
> > yocto mailing list
> > 
> > yocto@yoctoproject.org
> > 
> > https://lists.yoctoproject.org/listinfo/yocto
> > 
> > 

--=-HzuIXQL6MtxIxkelk40T
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 7bit

<html><head></head><body><div>On Mon, 2017-01-09 at 10:17 +0000, Burton, Ross wrote:</div><blockquote type="cite"><div dir="ltr">Nope, we're missing a tarball somewhere.&nbsp; Can you file a bug?</div></blockquote><div><br></div><div>Filed <a href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=10911">https://bugzilla.yoctoproject.org/show_bug.cgi?id=10911</a></div><div><br></div><div>Joshua</div><div><br></div><blockquote type="cite"><div dir="ltr"><div>Ross</div></div><div class="gmail_extra"><br><div class="gmail_quote">On 6 January 2017 at 22:30, Robert P. J. Day <span dir="ltr">&lt;<a href="mailto:rpjday@crashcourse.ca" target="_blank">rpjday@crashcourse.ca</a>&gt;</span> wrote:<br><blockquote type="cite"><br>
&nbsp; i notice that if you search for the powerpc BSP in the latest<br>
release here:<br>
<br>
<a href="https://www.yoctoproject.org/downloads/bsps?release=98&amp;processer%5B%5D=22&amp;title=" rel="noreferrer" target="_blank">https://www.yoctoproject.org/<wbr>downloads/bsps?release=98&amp;<wbr>processer%5B%5D=22&amp;title=</a><br>
<br>
you get no match. i haven't been paying attention -- has yocto dropped<br>
that board as its powerpc reference board? is it being replaced by a<br>
newer powerpc system?<br>
<br>
rday<br>
<span class="HOEnZb"><font color="#888888"><br>
--<br>
<br>
==============================<wbr>==============================<wbr>============<br>
Robert P. J. Day&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Ottawa, Ontario, CANADA<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <a href="http://crashcourse.ca" rel="noreferrer" target="_blank">http://crashcourse.ca</a><br>
<br>
Twitter:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a href="http://twitter.com/rpjday" rel="noreferrer" target="_blank">http://twitter.com/rpjday</a><br>
LinkedIn:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a href="http://ca.linkedin.com/in/rpjday" rel="noreferrer" target="_blank">http://ca.linkedin.com/in/<wbr>rpjday</a><br>
==============================<wbr>==============================<wbr>============<br>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href="https://lists.yoctoproject.org/listinfo/yocto" rel="noreferrer" target="_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><br>
</font></span><br></blockquote></div><br></div>
</blockquote></body></html>

--=-HzuIXQL6MtxIxkelk40T--

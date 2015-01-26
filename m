Return-Path: <denis@denix.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90125E00836; Mon, 26 Jan 2015 10:09:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	T_HDRS_LCASE,T_MANY_HDRS_LCASE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [206.46.173.19 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 T_HDRS_LCASE Odd capitalization of message header
	* 0.0 T_MANY_HDRS_LCASE Odd capitalization of multiple message headers
X-Greylist: delayed 3615 seconds by postgrey-1.32 at yocto-www;
	Mon, 26 Jan 2015 10:09:31 PST
Received: from vms173019pub.verizon.net (vms173019pub.verizon.net
	[206.46.173.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09592E006AF
	for <yocto@yoctoproject.org>; Mon, 26 Jan 2015 10:09:31 -0800 (PST)
Received: from gandalf.denix.org ([108.18.33.160]) by vms173019.mailsrvcs.net
	(Oracle Communications Messaging Server 7.0.5.32.0 64bit (built Jul
	16 2014))
	with ESMTPSA id <0NIS002IANMKYG90@vms173019.mailsrvcs.net> for
	yocto@yoctoproject.org; Mon, 26 Jan 2015 11:08:54 -0600 (CST)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.1 cv=LrklEcZZ c=1 sm=1 tr=0	a=A8KAnipHuDHkz1LiHkTZyg==:117
	a=jLWw55sr_RoA:10 a=8nJEP1OIZ-IA:10	a=0gcC27t9AAAA:8 a=oR5dmqMzAAAA:8
	a=-9mUelKeXuEA:10 a=YNv0rlydsVwA:10	a=zzG1iDRrcNaWoY4zS-UA:9
	a=wPNLvfGTeEIA:10
Received: by gandalf.denix.org (Postfix, from userid 1000)	id D0733202A1; Mon,
	26 Jan 2015 12:08:43 -0500 (EST)
Date: Mon, 26 Jan 2015 12:08:43 -0500
From: Denys Dmytriyenko <denis@denix.org>
To: Otavio Salvador <otavio@ossystems.com.br>
Message-id: <20150126170843.GD28747@denix.org>
References: <CAENGNhcVmxW2xD4d4TDjTtLu2zCvCJ6sEOF8ek80hWz4kxKf6A@mail.gmail.com>
	<5100308.QAtzWr7jXK@peggleto-mobl5.ger.corp.intel.com>
	<CAENGNhff5-CZRSJaD1t1ppPOOQNrWipF01hAdatWqSkjGVmnVA@mail.gmail.com>
	<2632438.D1xOHJKf9V@peggleto-mobl5.ger.corp.intel.com>
	<CAENGNhe7Uv1PQv=J3QYhPAX3dj9p0pakAg5x9oGQ0V3pxfbHUw@mail.gmail.com>
	<CAP9ODKq85m2Cb_DoVgh9+Wi=zjAJc-MmrGAo58h347zd+UUOgQ@mail.gmail.com>
	<54C17A37.9040104@gmx.de>
	<CAP9ODKr7+TXUaimhEv0kPRFh7CwkuXk5OaD+s6iZCF9VzOBS0g@mail.gmail.com>
MIME-version: 1.0
In-reply-to: <CAP9ODKr7+TXUaimhEv0kPRFh7CwkuXk5OaD+s6iZCF9VzOBS0g@mail.gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	yocto <yocto@yoctoproject.org>, Denys Dmytriyenko <denys@ti.com>
Subject: Re: Difference between target, cross, native and nativesdk.
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
X-List-Received-Date: Mon, 26 Jan 2015 18:09:34 -0000
Content-type: text/plain; charset=iso-8859-1
Content-disposition: inline
Content-transfer-encoding: 8bit

On Fri, Jan 23, 2015 at 10:54:39AM -0200, Otavio Salvador wrote:
> On Thu, Jan 22, 2015 at 8:31 PM, Dominic Sacré <dominic.sacre@gmx.de> wrote:
> > On 2015-01-21 14:37, Otavio Salvador wrote:
> >> The fw tools inside of U-Boot qualifies for both target and cross use
> >> cases. When used in cross or crosssdk, it can be used to change things
> >> in the generated image (sdcard for example) while in the target case
> >> it can be used in the runtime system.
> >
> > I've been wondering about the "u-boot-fw-utils-cross" recipe myself.
> > When I build the recipe I get what appear to be the correct binaries for
> > the host architecture, located in the target-specific work directory
> > (e.g. tmp/work/imx6qsabresd-poky-linux-gnueabi/u-boot-fw-utils-cross).
> > However, these binaries don't get installed anywhere other recipes (like
> > my sdcard image) would be able to find them.
> >
> > My workaround so far has been to build a native package instead (by
> > simply adding BBCLASSEXTEND = "native" to the regular "u-boot-fw-utils"
> > recipe).
> > This way the binaries get installed to the host's sysroot and are found
> > just fine, but I feel like I'm missing something about how the cross
> > recipe should be used properly for this purpose.
> >
> > Can anyone shed some light on this?
> 
> I sent a patch and seems to do the right thing. Can you test it?

Well, again, you didn't really answer the question...

The question wasn't about the breakage, but rather about the process. How do 
you mean to use the u-boot-fw-utils-cross "package"?

In other words, SYSROOT_PREPROCESS_FUNCS doesn't seem to work, as no binaries 
are being deployed or staged in sysroots. Moreover, if you use rm_work class, 
the only binary in the tmp/work directory gets deleted right away and you 
can't use the output of this recipe in any way.

-- 
Denys


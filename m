Return-Path: <denis@denix.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DEAC4E008A7; Wed, 21 Jan 2015 12:28:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	T_HDRS_LCASE,T_MANY_HDRS_LCASE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [206.46.173.17 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 T_HDRS_LCASE Odd capitalization of message header
	* 0.0 T_MANY_HDRS_LCASE Odd capitalization of multiple message headers
X-Greylist: delayed 3611 seconds by postgrey-1.32 at yocto-www;
	Wed, 21 Jan 2015 12:27:57 PST
Received: from vms173017pub.verizon.net (vms173017pub.verizon.net
	[206.46.173.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C3D7E0084E
	for <yocto@yoctoproject.org>; Wed, 21 Jan 2015 12:27:57 -0800 (PST)
Received: from gandalf.denix.org ([108.18.33.160]) by vms173017.mailsrvcs.net
	(Oracle Communications Messaging Server 7.0.5.32.0 64bit (built Jul
	16 2014))
	with ESMTPSA id <0NIJ00DX0KPQAVR0@vms173017.mailsrvcs.net> for
	yocto@yoctoproject.org; Wed, 21 Jan 2015 13:27:46 -0600 (CST)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.1 cv=Kc1larcG c=1 sm=1 tr=0	a=A8KAnipHuDHkz1LiHkTZyg==:117
	a=jLWw55sr_RoA:10 a=kj9zAlcOel0A:10	a=0gcC27t9AAAA:8 a=oR5dmqMzAAAA:8
	a=-9mUelKeXuEA:10 a=YNv0rlydsVwA:10	a=QyXUC8HyAAAA:8 a=iGHA9ds3AAAA:8
	a=9mdkv5B5OdtFhJmuCuQA:9	a=CjuIK1q_8ugA:10
Received: by gandalf.denix.org (Postfix, from userid 1000)	id BDE332018E; Wed,
	21 Jan 2015 14:27:26 -0500 (EST)
Date: Wed, 21 Jan 2015 14:27:26 -0500
From: Denys Dmytriyenko <denis@denix.org>
To: Raphael Philipe <rapphil@gmail.com>
Message-id: <20150121192726.GJ20639@denix.org>
References: <CAENGNhcVmxW2xD4d4TDjTtLu2zCvCJ6sEOF8ek80hWz4kxKf6A@mail.gmail.com>
	<5100308.QAtzWr7jXK@peggleto-mobl5.ger.corp.intel.com>
	<CAENGNhff5-CZRSJaD1t1ppPOOQNrWipF01hAdatWqSkjGVmnVA@mail.gmail.com>
	<2632438.D1xOHJKf9V@peggleto-mobl5.ger.corp.intel.com>
	<CAENGNhe7Uv1PQv=J3QYhPAX3dj9p0pakAg5x9oGQ0V3pxfbHUw@mail.gmail.com>
MIME-version: 1.0
In-reply-to: <CAENGNhe7Uv1PQv=J3QYhPAX3dj9p0pakAg5x9oGQ0V3pxfbHUw@mail.gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Denys Dmytriyenko <denys@ti.com>,
	Otavio Salvador <otavio@ossystems.com.br>, yocto@yoctoproject.org
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
X-List-Received-Date: Wed, 21 Jan 2015 20:28:07 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Wed, Jan 21, 2015 at 11:23:38AM -0200, Raphael Philipe wrote:
> I was explained about the difference in a different way.
> 
> cross generates binary for the host architecture. But the way this
> binary is generated depends of the target architecture. Native
> generated binaries that do not depend of the target architecture.

Pretty much.

But another big difference is that -native packages do not generate IPK, RPM 
or DEB, while -nativesdk, -cross, -crosssdk and -cross-canadian do.

-- 
Denys


> On Tue, Jan 20, 2015 at 12:44 PM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
> > On Tuesday 20 January 2015 12:39:16 Raphael Philipe wrote:
> >> On Tue, Jan 20, 2015 at 10:23 AM, Paul Eggleton
> >> <paul.eggleton@linux.intel.com> wrote:
> >> > On Tuesday 20 January 2015 09:17:49 Raphael Philipe wrote:
> >> >> I'm working on a set of recipes that must be configurable to be baked
> >> >> in native, nativesdk, cross and target.
> >> >>
> >> >> I have a bunch of questions concerning this terms. I searched the
> >> >> documentation and wasn't able to find a definitive explanation for
> >> >> these terms.
> >> >>
> >> >> I will write some statements bellow about my understanding on these
> >> >> terms, and I will ask you to please correct me if I'm wrong or add any
> >> >> additional information:
> >> >>
> >> >> - By default, recipes bake binaries for the target architecture that
> >> >> is described in the MACHINE variable in the local.conf
> >> >
> >> > Correct.
> >> >
> >> >> - One can use BBCLASSEXTEND = "native nativesdk" to bake binaries for
> >> >> the host architecture (native) and for target sdk architecture. The
> >> >> target sdk architecture is described in the SDKMACHINE variable and
> >> >> the host architecture is the architecture of the machine executing
> >> >> bitbake. BBCLASSEXTEND = "native nativesdk" will alow you to bake
> >> >> recipes that are "virtual" using the suffix native ( so ${PN}-native)
> >> >> and the prefix nativesdk (so nativesdk-${PN}).
> >> >
> >> > Correct. FYI alternatively you can also "inherit native" or "inherit
> >> > nativesdk" to make a recipe specific to either of those classes (in which
> >> > case the recipe itself should be named <something>-native or nativesdk-
> >> > <something>), however BBCLASSEXTEND is preferred these days.
> >> >
> >> >> - Recipes that are cross need to inherit cross.bbclass. They are used for
> >> >> ????
> >> >
> >> > Cross tools, i.e. tools that need to run in the native context and produce
> >> > some binary output for the target.
> >>
> >> For u-boot-fw-utils-cross, the binary that you refer is the enviroment
> >> variables file of u-boot? In this case, the difference between cross
> >> and native is not clear for me.
> >
> > I'm not sure of the details for this recipe specifically. Perhaps one of the
> > people on CC can answer.
> >
> > Cheers,
> > Paul
> >
> > --
> >
> > Paul Eggleton
> > Intel Open Source Technology Centre
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


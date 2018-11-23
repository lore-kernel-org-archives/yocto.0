Return-Path: <mtownsend1973@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0C6AE00CA4; Fri, 23 Nov 2018 03:08:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (mtownsend1973[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f195.google.com (mail-it1-f195.google.com
	[209.85.166.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C106AE00C28
	for <yocto@yoctoproject.org>; Fri, 23 Nov 2018 03:08:03 -0800 (PST)
Received: by mail-it1-f195.google.com with SMTP id z7so318881iti.0
	for <yocto@yoctoproject.org>; Fri, 23 Nov 2018 03:08:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=SR/riUlfbuWy0uVq+Ij5dwtShZXECJ8x0vtGAgCN8zM=;
	b=JZWKaa4Pfiboo6/sioB9dH2jqnPC+n476A4BjC1u8ZM+Q9QcNR8djuSE1OQP6MLBos
	iZ9nEOq3vmlXdvh9cWf+AYVMe/b5NBVsuU6LiJ2Yzm9auGua8E6wgNNDQUf8lQmtM6Ku
	iffHL9jmMfJSqyA8tigQvEr91Ni3hzltGSxiF5t+AGoCR+R6CRtOVL7NgzJD1sIWgkJa
	4Kyed6Pg20RXx5jr+drhk5CTCbUfEOKZDiC7g9PWxR8fv39Q24KOqwavXYpYs2A50YmF
	u7bTd/xs4qUr9DM77n816xgQK2nTCb45T4SuaTevk6zyXyXpFNuBn0/S4/Y6GZMKerU4
	ZYKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=SR/riUlfbuWy0uVq+Ij5dwtShZXECJ8x0vtGAgCN8zM=;
	b=Z5wCWGHVbwUy3xiBwr9LKMmIjOoloCXarXJzjoCOD3U8/5mWVAObOx/wbZDV+sQ1mC
	d77QGmzp85YiFkQj7UYjbFEY+42/Fx0dvJ3JIB7X/3UuBVae4ro1UvQj9yKSvu4eoMQD
	6S//Lx7/uWKUlNmmTTVVj+Bt1wEmsE3Ls7hpyr5S+wQTADJvwqnT7zYkkA36a3IrtGyP
	HuNm0g/p+PYUQso4VdcnE0ETDX8BmoTrJ1+KUn9Qo7fPyx45IIG4E3WuLOlxYh1NJpKY
	qOnHwsqlDRRv5ZupR56OPO4qmjtk7SWz+gqUkzoBlQbl5MwAIt6yyOBzyWc/DGM3VRRs
	Fctg==
X-Gm-Message-State: AGRZ1gJZ1kxXhQJ87f6o/D3yRPyxv6lOl7KVATrFN5ERfeYLMn5b972a
	dxpcZDKAHmB43lWgRKXtsgaQrFusPcR0DOgtdJ4=
X-Google-Smtp-Source: AFSGD/VjeCUf+LeA8TreuQKVq5FYeOHsppsRtCY1tplZL+A2+vy6ZrAgTlZ1SHkK+yHk6CG82wFFDZn+vjbddGqtoF8=
X-Received: by 2002:a24:5284:: with SMTP id d126mr12614670itb.91.1542971283381;
	Fri, 23 Nov 2018 03:08:03 -0800 (PST)
MIME-Version: 1.0
References: <CABatt_xbvyTXSAuExyo+oA4UDqfm3pA9nh4cyga6Yoi9BDnahQ@mail.gmail.com>
	<aa68bde4-1427-860d-1cff-c8bd84b2b3eb@gmail.com>
	<CABatt_yJj5n899GkPVM-UKrTvVfWge=HS1LfA3AqGnr4jQbALQ@mail.gmail.com>
	<68c0f64c-6b5b-79d1-2fca-c38d30c23046@gmail.com>
In-Reply-To: <68c0f64c-6b5b-79d1-2fca-c38d30c23046@gmail.com>
From: Martin Townsend <mtownsend1973@gmail.com>
Date: Fri, 23 Nov 2018 11:07:51 +0000
Message-ID: <CABatt_wEBf38hB8cmS36J-d3LHPhiZ7eOUJ9jpvWQFHOFYaN9A@mail.gmail.com>
To: ajlennon@gmail.com
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: meta-mono: QA Error building mono-5.12.0.226
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
X-List-Received-Date: Fri, 23 Nov 2018 11:08:05 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Nov 23, 2018 at 10:45 AM Alex Lennon <ajlennon@gmail.com> wrote:
>
>
>
> On 23/11/2018 08:55, Martin Townsend wrote:
> > Hi Alex,
> > On Thu, Nov 22, 2018 at 3:49 PM Alex J Lennon <ajlennon@gmail.com> wrote:
> >>
> >> On 22/11/2018 15:46, Martin Townsend wrote:
> >>> Hi,
> >>>
> >>> This one is probably for the meta-mono maintainer
> >>>
> >>> I was getting quite a few file-rdeps QA errors.
> >>> I managed to get rid of them all except 1 using
> >>> RDEPENDS_${PN}-libs-2.0 += "mono"
> >>> RDEPENDS_${PN}-libs-3.5 += "mono"
> >>> RDEPENDS_${PN}-libs-4.0 += "mono"
> >>> RDEPENDS_${PN}-libs-4.5 += "mono"
> >>> RDEPENDS_${PN}-gac += "mono"
> >>> RDEPENDS_${PN}-configuration-crypto += "mono"
> >>> RDEPENDS_${PN}-xbuild += "mono"
> >>> RDEPENDS_${PN}-api-4.5.1 += "mono"
> >>> RDEPENDS_${PN}-api-4.5.2 += "mono"
> >>> RDEPENDS_${PN}-api-4.6 += "mono"
> >>> RDEPENDS_${PN}-api-4.6.1 += "mono"
> >>> RDEPENDS_${PN}-api-4.6.2 += "mono"
> >>> RDEPENDS_${PN}-api-4.7 += "mono"
> >>>
> >>> The one remaining is
> >>>
> >>> ERROR: mono-5.12.0.226-r0 do_package_qa: QA Issue:
> >>> /usr/lib/mono/4.5/Microsoft.CodeAnalysis.Scripting.dll contained in
> >>> package mono-libs-4.5 requires mono(System.Runtime.Loader), but no
> >>> providers found in RDEPENDS_mono-libs-4.5? [file-rdeps]
> >>> ERROR: mono-5.12.0.226-r0 do_package_qa: QA run found fatal errors.
> >>> Please consider fixing them.
> >>> ERROR: mono-5.12.0.226-r0 do_package_qa: Function failed: do_package_qa
> >>> ERROR: Logfile of failure stored in:
> >>> /ws/rufilla/oina/tools-oina-build-local/build_oxinst/tmp/work/armv7ahf-neon-poky-linux-gnueabi/mono/5.12.0.226-r0/temp/log.do_package_qa.15001
> >>> ERROR: Task (/ws/rufilla/oina/tools-oina-build-local/build_oxinst/../meta-mono/recipes-mono/mono/mono_5.12.0.226.bb:do_package_qa)
> >>> failed with exit code '1'
> >>>
> >>> It looks like the 4.5 lib package requires the System.Runtime.Loader
> >>> library but I'm not sure how to get it to build this or I see there is
> >>> an external directory which looks like it contains all the 4.5 libs so
> >>> maybe it hasn't been included in here?
> >>>
> >>> Any Help appreciated,
> >>> Martin.
> >> Hi Martin,
> >>
> >> I've been doing some recent work here which might help
> >>
> >> https://github.com/dynamicdevices/meta-mono/tree/master
> >>
> >> Cheers,
> >>
> >> Alex
> >>
> >>
> > Thanks for the reply Alex.
> >
> > I tried this meta-mono layer too but it failed to compile/link
> > | ../../external/corefx/src/Native/Unix/System.Native/.libs/libmono_system_native_la-pal_errno.o:
> > file not recognized: File format not recognized
> > | collect2: error: ld returned 1 exit status
> > | Makefile:1355: recipe for target 'libmono-system-native.la' failed
> >
> >
> > I managed to get the recipe in the normal meta-mono to compile by
> > installing System.Runtime.Loader.dll into the image but as soon as it
> > tried to create the rootfs I get the following error
> > Total size: 75 M
> > Installed size: 301 M
> > Downloading Packages:
> > Running transaction check
> > Error: transaction check vs depsolve:
> > mono(System.Collections.Immutable) = 1.2.0.0 is needed by
> > mono-libs-4.5-5.12.0.226-r0.13.armv7ahf_neon
> > mono(System.Diagnostics.StackTrace) = 4.0.2.0 is needed by
> > mono-libs-4.5-5.12.0.226-r0.13.armv7ahf_neon
> > mono(System.IO) = 4.0.10.0 is needed by
> > mono-libs-4.5-5.12.0.226-r0.13.armv7ahf_neon
> > mono(System.IO.Compression) = 4.1.1.0 is needed by
> > mono-libs-4.5-5.12.0.226-r0.13.armv7ahf_neon
> > mono(System.Linq.Expressions) = 4.0.10.0 is needed by
> > mono-libs-4.5-5.12.0.226-r0.13.armv7ahf_neon
> > mono(System.Reflection) = 4.0.10.0 is needed by
> > mono-libs-4.5-5.12.0.226-r0.13.armv7ahf_neon
> > mono(System.Runtime) = 4.0.20.0 is needed by
> > mono-libs-4.5-5.12.0.226-r0.13.armv7ahf_neon
> > mono(System.Runtime.Extensions) = 4.0.10.0 is needed by
> > mono-libs-4.5-5.12.0.226-r0.13.armv7ahf_neon
> > mono(System.Runtime.InteropServices) = 4.0.20.0 is needed by
> > mono-libs-4.5-5.12.0.226-r0.13.armv7ahf_neon
> > mono(System.Security.Cryptography.Algorithms) = 4.0.0.0 is needed by
> > mono-libs-4.5-5.12.0.226-r0.13.armv7ahf_neon
> > mono(System.Text.Encoding.CodePages) = 4.0.2.0 is needed by
> > mono-libs-4.5-5.12.0.226-r0.13.armv7ahf_neon
> > mono(System.ValueTuple) = 4.0.1.0 is needed by
> > mono-libs-4.5-5.12.0.226-r0.13.armv7ahf_neon
> > mono(System.Xml.XPath.XDocument) = 4.0.1.0 is needed by
> > mono-libs-4.5-5.12.0.226-r0.13.armv7ahf_neon
> > To diagnose the problem, try running: 'rpm -Va --nofiles --nodigest'.
> > You probably have corrupted RPMDB, running 'rpm --rebuilddb' might fix
> > the issue.
> >
> > I think I need to understand more about the mono packaging, any
> > pointers would be greatly appreciated.
> >
> >
>
> Hi Martin,
>
> I've been setting up an auto-builder using Jenkins pulling from that git
> repo, to make my life easier, and it builds successfully...
>
> @see: http://build.dynamicdevices.co.uk:8080/job/meta-mono/40/console
>
> I could be misunderstanding. Are you doing something custom or does the
> vanilla qemux86-64 build fail for you?
>
> Cheers!
>
> Alex
>

I was using master-next which is probably why I was getting the
compilation errors.  I tried master and it compiles but I get the same
QA Errors that I was originally seeing.  I'm building for an arm
cortex A-9 which may be the reason for these problems.  If you want me
to try anything I'll keep the build on my laptop.

I've managed to get the meta-mono from the Yocto project working now
by hacking pkgdata so it doesn't fail do_rootfs and adding
System.Runtime.Loader.dll to the package.

Cheers,
Martin.


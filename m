Return-Path: <sean.liming@annabooks.com>
Received: from mail12c40.carrierzone.com (mail75c40.carrierzone.com
	[209.235.156.215])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4826E01517
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 08:39:01 -0700 (PDT)
X-Authenticated-User: sean.liming.annabooks.com
Received: from Sean7 (cpe-76-95-171-22.socal.res.rr.com [76.95.171.22])
	(authenticated bits=0)
	by mail12c40.carrierzone.com (8.13.6/8.13.1) with ESMTP id
	r5PFcvwi029440; Tue, 25 Jun 2013 15:38:58 +0000
From: "Sean Liming" <sean.liming@annabooks.com>
To: "'Paul D. DeRocco'" <pderocco@ix.netcom.com>, <yocto@yoctoproject.org>
References: <07EC680C643544CEB3DB605D0478EB01@PAULD>
In-Reply-To: <07EC680C643544CEB3DB605D0478EB01@PAULD>
Date: Tue, 25 Jun 2013 08:38:54 -0700
Message-ID: <001801ce71ba$1ae87220$50b95660$@annabooks.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AQKNv16dm98dCcayp5xp/leCeXzrx5fH8znA
X-CSC: 0
X-CHA: v=2.0 cv=bbDcppzB c=1 sm=1 a=RqNIojzclRO/fVsPhA7IgQ==:17
	a=D62qybIL4ngA:10 a=_DgR7O7FQkkA:10 a=kj9zAlcOel0A:10 a=IjdlZ_XXAAAA:8
	a=-sbK2jI_RQ4A:10 a=iGHA9ds3AAAA:8 a=QrVWhbZvAAAA:8
	a=bNCOzp0r2yNfMMgqsvkA:9 a=CjuIK1q_8ugA:10 a=FCaQVidmf_IA:10
	a=nHK3ipOpxeAA:10 a=XDKM753qmDAA:10 a=RqNIojzclRO/fVsPhA7IgQ==:117
X-CTCH-RefID: str=0001.0A020202.51C9B993.01F5, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0
X-CTCH-VOD: Unknown
X-CTCH-Spam: Unknown
X-CTCH-Score: 0.000
X-CTCH-Rules: 
X-CTCH-Flags: 0
X-CTCH-ScoreCust: 0.000
Subject: Re: The simplest possible recipe
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
X-List-Received-Date: Tue, 25 Jun 2013 15:39:04 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-us

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Paul D. DeRocco
> Sent: Monday, June 24, 2013 5:18 PM
> To: yocto@yoctoproject.org
> Subject: [yocto] The simplest possible recipe
> 
> That would be to copy a single file, provided in the files subdirectory of
the
> recipe, into a particular place in the target tree. Is there any bbclass
that
> automates this? Or do I just write a recipe with a do_install function
that
> executes the "install" command?
> 
> My only guide is 5.3.1 in the Development Manual, which performs a simple
> compilation, but I'm very hazy about how recipes are interpreted, so I'd
like it
> if someone can tell me if I've gotten the following stuff right or not.
> 
> SRC_URI tells bitbake what files must be gotten from somewhere and copied
> somewhere else in order to carry out the build process. And according to
the
> Ref Manual, the "file://" prefix tells it to fetch a local file by
searching some
> directories including the "files" subdirectory next to the .bb file.
> And apparently, there is a "subdir" option (whose syntax is unexplained)
> which may be used to tell bitbake to put it somewhere specific relative to
> ${WORKDIR}.
> 
> Is the default value of the "subdir" option the S variable? Is that the
purpose
> of S, to tell bitbake where to put things that it fetches? The Ref Manual
says
> that S defaults to ${WORKDIR}/${PN}/${PV}, but then the sample compile
> recipe sets S to ${WORKDIR}. Is that what one does when one doesn't need
> to have a bunch of versioned subdirectories under ${WORKDIR}? (I'm not
> sure why one would ever want that, or why that would be the default.)
> 
> So if I want to install a file somewhere, do I even need a do_install
task, or
> can I just set S equal to the desired target location, like
"${etcdir}/foo" and be
> done with it? Or is that a no-no, and should I always use do_install?
> 
> --
> 
> Ciao,               Paul D. DeRocco
> Paul                mailto:pderocco@ix.netcom.com
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


From my book, I demonstrated two ways to create a receipt with and without
Autotools. Without Autotools:

DESCRIPTION = "Hello World C file recipe"
SECTION = "base"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = 
    file://${WORKDIR}/COPYRIGHT;md5=349c872e0066155e1818b786938876a4"
PR = "r0"

SRC_URI = "file://helloyp.c \
          file://COPYRIGHT \ "

do_compile () {
         ${CC} ${WORKDIR}/helloyp.c -o ${WORKDIR}/helloyp
}

do_install () {

       install -d ${D}${bindir}
       install -m 0755 ${WORKDIR}/helloyp ${D}${bindir}/
}


The following is the recipe is with autotools:


DESCRIPTION = "Hello World Application with Autotools"
SECTION = "examples"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM =
"file://${WORKDIR}/COPYING;md5=92bf9743cf0f1e6d9306478e118e432f"

PR = "r0"

SRC_URI = "file:///home/sean/workspace/helloyp-${PV}.tar.gz"
inherit autotools gettext

SRC_URI[md5sum] = "934bd36a4a3b1e7912fdff3ae764c7b6"
SRC_URI[sha256sum] =
"09810190e0cf9ebf141ad780b994fce8198098fbeca418ec51df59eb51747182"


The application was placed in the /usr/bin folder. From there it could be
moved or link to someplace else.


Regards,

Sean Liming
Owner

Tel: 714-970-7523 / Cell: 858-774-3176




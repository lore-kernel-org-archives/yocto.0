Return-Path: <sean.liming@annabooks.com>
Received: from mail30c40.carrierzone.com (mail30c40.carrierzone.com
	[209.235.156.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D12FE003D6
	for <yocto@yoctoproject.org>; Fri,  7 Dec 2012 19:28:14 -0800 (PST)
X-Authenticated-User: sean.liming.annabooks.com
Received: from Sean7 (cpe-76-95-171-22.socal.res.rr.com [76.95.171.22])
	(authenticated bits=0)
	by mail30c40.carrierzone.com (8.13.6/8.13.1) with ESMTP id
	qB83S8x2024788; Sat, 8 Dec 2012 03:28:11 +0000
From: "Sean Liming" <sean.liming@annabooks.com>
To: "'Jon Szymaniak'" <jon.szymaniak@gmail.com>
References: <CANge7vUOfMWzkokgvDQ3imc8xQTBMLBkfonvQyJyDyJfqE4udg@mail.gmail.com>
In-Reply-To: <CANge7vUOfMWzkokgvDQ3imc8xQTBMLBkfonvQyJyDyJfqE4udg@mail.gmail.com>
Date: Fri, 7 Dec 2012 19:27:50 -0800
Message-ID: <000001cdd4f4$024e7f60$06eb7e20$@annabooks.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AQFtWxaAWYthnn+Dw9MBT9IlXuYpKpjPL9lw
X-CSC: 0
X-CHA: v=2.0 cv=OYkv+GvY c=1 sm=1 a=RqNIojzclRO/fVsPhA7IgQ==:17
	a=XOWhGNYKZXsA:10 a=_DgR7O7FQkkA:10 a=kj9zAlcOel0A:10 a=IjdlZ_XXAAAA:8
	a=esmHc91EQXkA:10 a=pGLkceISAAAA:8 a=iGHA9ds3AAAA:8
	a=XTvWsD_j-M-W1WHkRU4A:9 a=CjuIK1q_8ugA:10 a=nHK3ipOpxeAA:10
	a=FCaQVidmf_IA:10 a=MSl-tDqOz04A:10 a=PAfwrr6pMpkA:10 a=XDKM753qmDAA:10
	a=RqNIojzclRO/fVsPhA7IgQ==:117
X-CTCH-RefID: str=0001.0A020209.50C2B3CC.0006, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0
X-CTCH-VOD: Unknown
X-CTCH-Spam: Unknown
X-CTCH-Score: 0.000
X-CTCH-Rules: 
X-CTCH-Flags: 0
X-CTCH-ScoreCust: 0.000
Cc: yocto@yoctoproject.org
Subject: Re: QA issue with custom recipe
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 08 Dec 2012 03:28:14 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-us


> -----Original Message-----
> From: Jon Szymaniak [mailto:jon.szymaniak@gmail.com]
> Sent: Friday, December 07, 2012 1:36 PM
> To: sean.liming@annabooks.com
> Cc: yocto@yoctoproject.org
> Subject: Re: QA issue with custom recipe
> 
> > I am trying to create a simple hello world recipe for a helloworld.c
> > file. The recipe almost works except it hits a QA issue: WARNING: QA
> > Issue: hello: Files/directories were installed but not shipped
> >
> > The warning leads to a failure in the do_rootfs.
> >
> > WARNING: QA Issue: hello: Files/directories were installed but not
shipped
> >    /usr
> >    /usr/bin
> > ERROR: Function failed: do_rootfs
> > --------------------------
> >
> >
> > What am I missing in the recipe?
> >
> > --
> > Regards,
> >
> > Sean D. Liming
> > Owner
> > Annabooks
> > Cell: 858-774-3176
> >
> >
> > -------------- next part -------------- DESCRIPTION = "Hello World
> > Application"
> > LICENSE = "GPL-2"
> > LIC_FILES_CHKSUM =
> > "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58"
> >
> > SECTION = "apps"
> >
> > SRC_URI = "file:///home/sean/workspace/Hello/HelloYocto.c"
> > SRC_URI[md5sum] = "4f5c57b446cc08a7299d4dca58c49cda"
> > SRC_URI[sha256sum] =
> >
> "f357d9214f9c585d8b3997c6a3038eb28b218de264a8bb39ae8474949ad2b98d"
> >
> > S = "${WORKDIR}"
> >
> > do_compile() {
> >  ${CC} ${CFLAGS} ${LDFLAGS} /home/sean/workspace/Hello/HelloYocto.c -
> o
> > helloyocto }
> >
> > do_install() {
> >  install -d ${D}${bindir}
> >  install -m 0755 helloyocto ${D}{bindir} }
> >
> >
> 
> Sean,
> 
> I think you need to note which files are installed by the packages
> associated with this recipe, via:
> 
> FILES_${PN} = "${bindir}"
> 
> For more info on these, Check out the FILES and CONFFILES
> variables in the Poky Reference Manual. I also found it helpful
> to grep around some of the bigger recipes to see how they use
> these. (I got a bit tripped up with some libraries with the sonames set!)
> 
> 
> Regards,
> Jon



John,

Thank you. The Q/A Warning is gone. That is one step closer, but the package
is still not resolved.

-------------------------------------
Processing HelloYocto...

Unable to resolve package HelloYocto

ERROR: some packages were missing

ERROR: Function failed: do_rootfs (see
/home/sean/Yocto1.3/n2800/tmp/work/cedartrail-poky-linux/core-image-minimal-
1.0-r0/temp/log.do_rootfs.24265 for further information)

----------------------



Regards,

Sean Liming
Owner
Annabooks
Tel: 714-970-7523 / Cell: 858-774-3176



Return-Path: <sean.liming@annabooks.com>
Received: from mail42c40.carrierzone.com (mail42c40.carrierzone.com
	[209.235.156.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4410CE006C6
	for <yocto@yoctoproject.org>; Sat,  8 Dec 2012 21:03:46 -0800 (PST)
X-Authenticated-User: sean.liming.annabooks.com
Received: from Sean7 (cpe-76-95-171-22.socal.res.rr.com [76.95.171.22])
	(authenticated bits=0)
	by mail42c40.carrierzone.com (8.13.6/8.13.1) with ESMTP id
	qB953ctW008120; Sun, 9 Dec 2012 05:03:41 +0000
From: "Sean Liming" <sean.liming@annabooks.com>
To: "'Jon Szymaniak'" <jon.szymaniak@gmail.com>
References: <CANge7vUOfMWzkokgvDQ3imc8xQTBMLBkfonvQyJyDyJfqE4udg@mail.gmail.com>	<000001cdd4f4$024e7f60$06eb7e20$@annabooks.com>	<CANge7vVpMeEHgAK8M_tNXHBGexowv7dCDHgLqmcA6k-4ogwkTw@mail.gmail.com>
	<001401cdd568$7ccae840$7660b8c0$@annabooks.com>
In-Reply-To: <001401cdd568$7ccae840$7660b8c0$@annabooks.com>
Date: Sat, 8 Dec 2012 21:03:19 -0800
Message-ID: <000b01cdd5ca$850cefa0$8f26cee0$@annabooks.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AQFtWxaAWYthnn+Dw9MBT9IlXuYpKgKVM1YcAo7WcvIB3TMX7JiY1Jmg
X-CSC: 0
X-CHA: v=2.0 cv=J44dGnbS c=1 sm=1 a=RqNIojzclRO/fVsPhA7IgQ==:17
	a=ktSfJsUCs3wA:10 a=_DgR7O7FQkkA:10 a=kj9zAlcOel0A:10 a=IjdlZ_XXAAAA:8
	a=UCb7yobyFwwA:10 a=iGHA9ds3AAAA:8 a=pGLkceISAAAA:8
	a=Rza09LPHWKrvZ3EK3mwA:9 a=CjuIK1q_8ugA:10 a=nHK3ipOpxeAA:10
	a=FCaQVidmf_IA:10 a=XDKM753qmDAA:10 a=MSl-tDqOz04A:10
	a=jkhDWq6NqUMP1Zf1:21
	a=kRUTI1Z_UnTvcpKV:21 a=RqNIojzclRO/fVsPhA7IgQ==:117
X-CTCH-RefID: str=0001.0A020205.50C41BB0.003B, ss=1, re=0.000, recu=0.000,
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
X-List-Received-Date: Sun, 09 Dec 2012 05:03:46 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-us


> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Sean Liming
> Sent: Saturday, December 08, 2012 9:22 AM
> To: 'Jon Szymaniak'
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] QA issue with custom recipe
> 
> 
> > -----Original Message-----
> > From: Jon Szymaniak [mailto:jon.szymaniak@gmail.com]
> > Sent: Saturday, December 08, 2012 7:05 AM
> > To: Sean Liming
> > Cc: yocto@yoctoproject.org
> > Subject: Re: QA issue with custom recipe
> >
> > > > > I am trying to create a simple hello world recipe for a
> > > > > helloworld.c file. The recipe almost works except it hits a QA
> > > > > issue: WARNING: QA
> > > > > Issue: hello: Files/directories were installed but not shipped
> > > > >
> > > > > The warning leads to a failure in the do_rootfs.
> > > > >
> > > > > WARNING: QA Issue: hello: Files/directories were installed but
> > > > > not
> > > shipped
> > > > >    /usr
> > > > >    /usr/bin
> > > > > ERROR: Function failed: do_rootfs
> > > > > --------------------------
> > > > >
> > > > >
> > > > > What am I missing in the recipe?
> > > > >
> > > > > --
> > > > > Regards,
> > > > >
> > > > > Sean D. Liming
> > > > > Owner
> > > > > Annabooks
> > > > > Cell: 858-774-3176
> > > > >
> > > > >
> > > > > -------------- next part -------------- DESCRIPTION = "Hello
> > > > > World Application"
> > > > > LICENSE = "GPL-2"
> > > > > LIC_FILES_CHKSUM =
> > > > >
> > "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58"
> > > > >
> > > > > SECTION = "apps"
> > > > >
> > > > > SRC_URI = "file:///home/sean/workspace/Hello/HelloYocto.c"
> > > > > SRC_URI[md5sum] = "4f5c57b446cc08a7299d4dca58c49cda"
> > > > > SRC_URI[sha256sum] =
> > > > >
> > > >
> >
> "f357d9214f9c585d8b3997c6a3038eb28b218de264a8bb39ae8474949ad2b98d"
> > > > >
> > > > > S = "${WORKDIR}"
> > > > >
> > > > > do_compile() {
> > > > >  ${CC} ${CFLAGS} ${LDFLAGS}
> > > > > /home/sean/workspace/Hello/HelloYocto.c -
> > > > o
> > > > > helloyocto }
> > > > >
> > > > > do_install() {
> > > > >  install -d ${D}${bindir}
> > > > >  install -m 0755 helloyocto ${D}{bindir} }
> > > > >
> > > > >
> > > >
> > > > Sean,
> > > >
> > > > I think you need to note which files are installed by the packages
> > > > associated with this recipe, via:
> > > >
> > > > FILES_${PN} = "${bindir}"
> > > >
> > > > For more info on these, Check out the FILES and CONFFILES
> > > > variables in the Poky Reference Manual. I also found it helpful to
> > > > grep around some of the bigger recipes to see how they use these.
> > > > (I got a bit tripped up with some libraries with the sonames
> > > > set!)
> > > >
> > > >
> > > > Regards,
> > > > Jon
> > >
> > >
> > >
> > > John,
> > >
> > > Thank you. The Q/A Warning is gone. That is one step closer, but the
> > > package is still not resolved.
> > >
> > > -------------------------------------
> > > Processing HelloYocto...
> > >
> > > Unable to resolve package HelloYocto
> > >
> > > ERROR: some packages were missing
> > >
> > > ERROR: Function failed: do_rootfs (see
> > >
> > > /home/sean/Yocto1.3/n2800/tmp/work/cedartrail-poky-linux/core-
> image-
> > mi
> > > nimal-
> > > 1.0-r0/temp/log.do_rootfs.24265 for further information)
> > >
> > > ----------------------
> > >
> > >
> > >
> > > Regards,
> > >
> > > Sean Liming
> > > Owner
> > > Annabooks
> > > Tel: 714-970-7523 / Cell: 858-774-3176
> > >
> >
> > Hi Sean,
> >
> > What's the name of your hello world recipe? Try naming it
> > hello-world.bb
> or
> > hello-world_0.1.0.bb (for a version 0.1.0) and appending hello-world
> > to
> your
> > IMAGE_INSTALL.
> >
> > I believe recipe names must be lower case and use '-' as a separator.
> > An underscore is used to separate the package name and the version
> > number, as I've shown above.
> >
> > It looks like someone posted a great hello world example on the wiki,
> > so
> be
> > sure to check that out:
> >
> >
> https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_do_I_put_my_recip
> > e_into_Yocto.3F
> >
> > Take a look at meta-skeleton as well. I found that to provide a few
> > very helpful examples as well. :)
> >
> > Cheers!
> > Jon
> 
> Jon,
> 
> Good ideas. I tried the wiki how-to again, this time it worked with some
> modifications, and  I will tweak it to match the title rules. Now, I need
to get
> my own project working.
> 
> Thanks for the help.
> 
> Regards,
> 
> Sean Liming
> Owner
> Annabooks
> Tel: 714-970-7523 / Cell: 858-774-3176
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


Jon,

Thanks for your help. It was a path problem with the install call. Digging
into the working directory the copy from path needs to be specified.

Regards,

Sean Liming
Owner
Annabooks
Tel: 714-970-7523 / Cell: 858-774-3176



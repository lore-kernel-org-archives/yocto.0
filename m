Return-Path: <fabien.lahoudere@collabora.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B70BE00970; Thu, 30 Mar 2017 02:11:00 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC389E00839
	for <yocto@yoctoproject.org>; Thu, 30 Mar 2017 02:10:57 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aragua) with ESMTPSA id 4AF01260F91
Message-ID: <1490865053.11772.20.camel@collabora.co.uk>
From: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
To: yocto@yoctoproject.org
Date: Thu, 30 Mar 2017 11:10:53 +0200
In-Reply-To: <13bc9cc1-e108-db9c-c78a-58b08023acdd@iseg-hv.de>
References: <766b24f4-b6e1-3260-8a4e-611853698497@iseg-hv.de>
	<CAJTo0La_b8=kBTKCQSe3LGFY=9EwSiqbzzEJQqdegt9RJ8bqzw@mail.gmail.com>
	<13bc9cc1-e108-db9c-c78a-58b08023acdd@iseg-hv.de>
X-Mailer: Evolution 3.22.5-1 
Mime-Version: 1.0
Subject: Re: Parse error: unable to parse line
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
X-List-Received-Date: Thu, 30 Mar 2017 09:11:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

The line is parsed here.
Did you copy paste the quote from a tutorial on internet?
Sometime encoding lead to such issues.

On Thu, 2017-03-30 at 11:00 +0200, Yuvarajesh Valleru wrote:
> No,
> Sorry. I haven't left it. The please find the file below:
> SUMMARY = "hello world program"
> HOMEPAGE = "http://www.yoctoproject.org/"
> SECTION = "network"
> LICENSE = "CLOSED"
> inherit qt4e
> 
> SRC_URI = " \
>     file://helloworld.pro \
>     file://helloworld.cpp \
>     "
> 
> S = "${WORKDIR}"
> 
> QMAKE_PROFILES = "${WORKDIR}/helloworld.pro \
>     "
> 
> do_compile() {
>         ${CC} helloworld.cpp -o helloworld
> }
> 
> do_install() {
>         install -d ${D}${bindir} ${D}${docdir}/helloworld
>         install -m 0644 helloworld ${D}${bindir}
> }
> 
> Am 30.03.2017 um 10:56 schrieb Burton, Ross:
> > On 30 March 2017 at 09:14, Yuvarajesh Valleru <yv@iseg-hv.de> wrote:
> > > SUMMARY = "hello world program"
> > > HOMEPAGE = "http://www.yoctoproject.org/"
> > > SECTION = "network"
> > > LICENSE = "CLOSED"
> > > inherit qt4e
> > > 
> > > SRC_URI = " \
> > >     file://helloworld.pro \
> > >     file://helloworld.cpp \
> > >     "
> > > 
> > > S = "${WORKDIR}"
> > > 
> > > QMAKE_PROFILES = "${WORKDIR}/helloworld.pro \
> > >     "
> > > 
> > > do_compile() {
> > >         ${CC} helloworld.cpp -o helloworld
> > > }
> > > 
> > > do_install() {
> > >         install -d ${D}${bindir} ${D}${docdir}/helloworld
> > >         install -m 0644 helloworld
> > > 
> > 
> > Did you leave out the trailing } here in the real file?
> > 
> > Ross
>  


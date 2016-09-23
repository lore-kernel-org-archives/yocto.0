Return-Path: <lsorense@csclub.uwaterloo.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33890E00CBC; Fri, 23 Sep 2016 09:17:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from caffeine.csclub.uwaterloo.ca (caffeine.csclub.uwaterloo.ca
	[129.97.134.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEDD8E0074B
	for <yocto@yoctoproject.org>; Fri, 23 Sep 2016 09:16:59 -0700 (PDT)
Received: by caffeine.csclub.uwaterloo.ca (Postfix, from userid 20367)
	id BDD18C025D; Fri, 23 Sep 2016 12:16:58 -0400 (EDT)
Date: Fri, 23 Sep 2016 12:16:58 -0400
To: yocto@yoctoproject.org
Message-ID: <20160923161658.GD14313@csclub.uwaterloo.ca>
References: <20160916082406.GB27958@graute-opti>
	<CAJ86T=WaKHQFXfSuvAm4wQUfa=xr_CBmK8-ZovaystYGM=9ukA@mail.gmail.com>
	<20160919115820.GC27958@graute-opti>
	<20160922071643.GE27958@graute-opti>
	<CAMKF1sqRxXEY-z2Jz5=SADE9hxai1_TnDUUMbS+9tcc1Ok5uKg@mail.gmail.com>
	<20160923121920.GA13394@graute-opti>
MIME-Version: 1.0
In-Reply-To: <20160923121920.GA13394@graute-opti>
User-Agent: Mutt/1.5.23 (2014-03-12)
From: lsorense@csclub.uwaterloo.ca (Lennart Sorensen)
Subject: Re: build ntp with openssl support
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
X-List-Received-Date: Fri, 23 Sep 2016 16:17:04 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Sep 23, 2016 at 02:19:20PM +0200, Oliver Graute wrote:
> On 22/09/16, Khem Raj wrote:
> > On Thu, Sep 22, 2016 at 12:16 AM, Oliver Graute <oliver.graute@gmail.com> wrote:
> > > On 19/09/16, Oliver Graute wrote:
> > >> On 16/09/16, Andre McCurdy wrote:
> > >> > On Fri, Sep 16, 2016 at 1:24 AM, Oliver Graute <oliver.graute@gmail.com> wrote:
> > >> > > Hello,
> > >> > >
> > >> > > how can I build ntp with openssl support?
> > >> > >
> > >> > > I already created a ntp_%.bbappend file to extend the recipe ntp_4.2.8p4.bb.
> > >> > >
> > >> > > FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
> > >> >
> > >> > You don't really need this line unless you are adding a file to
> > >> > SRC_URI or replacing a file already in SRC_URI with your own version.
> > >> >
> > >> > > PACKAGECONFIG += "openssl"
> > >> >
> > >> > This will enable openssl, but it will also disable all the default
> > >> > PACKAGECONFIG options (cap, debug and refclocks) which is probably not
> > >> > what you want. Try this instead:
> > >> >
> > >> >   PACKAGECONFIG_append = " openssl"
> > >> >
> > >> > Note the space between " and openssl. It's required.
> > >>
> > >> ok now I see the right configure script options during the configuration
> > >> of the ntp build.
> > >>
> > >> --with-openssl-libdir=/home/graute/5411_IBIS/yocto/build-imx6ulevk-nand/tmp/sysroots/imx6ulevk/usr/lib
> > >> --with-openssl-incdir=/home/graute/5411_IBIS/yocto/build-imx6ulevk-nand/tmp/sysroots/imx6ulevk/usr/include
> > >> --with-crypto
> > >>
> > >> But ntp is still build without openssl support. The configure scripts
> > >> can't find the relevant openssl stuff.
> > >>
> > >> configure:34762: checking for openssl library directory
> > >> configure:34802: result: no
> > >> configure:34807: WARNING: libcrypto and libssl not found in any of /home/graute/5411_IBIS/yocto/build-imx6ulevk-nand/tmp/sysroots/imx6ulevk/usr/lib
> > >> configure:34811: checking for openssl include directory
> > >> configure:34833: result: /home/graute/5411_IBIS/yocto/build-imx6ulevk-nand/tmp/sysroots/imx6ulevk/usr/include
> > >> configure:34877: checking if we will use crypto
> > >> configure:34879: result: no
> > >> configure:35109: checking if we want to use OpenSSL's crypto random (if available)
> > >> configure:35119: result: yes
> > >>
> > >> some clue whats wrong here?
> > >
> > > in my sysroots/imx6ulevk/usr/lib I have
> > >
> > > ls -la libssl*
> > >
> > > libssl3.so
> > > libssl.a
> > > libssl.so -> libssl.so.1.0.0
> > > libssl.so.1.0.0
> > >
> > > ls -la libcrypt*
> > >
> > > libcrypt.a
> > > libcrypt_pic.a
> > > libcrypt_pic.map
> > > libcrypt.so -> ../../lib/libcrypt.so.1
> > >
> > >
> > > but no libcrypto.so. I guess thats the reason why my ntp configure
> > > script is complaining.
> > >
> > > Some ideas how to get libcrypto.so in my /usr/lib folder in the yocto
> > > sysroot?
> > >
> > 
> > It seems your openssl is not being compiled correctly. Can you go into
> > builddir or openssl
> > and see if libcrypto.so.1.0.0 is built ? if not then you have to do
> > some digging why its not
> > configuring to build libcrypto
> 
> libcrypto is build by openssl
> 
> openssl/1.0.2d-r0/openssl-1.0.2d$ ls -la  libcrypt*
> libcrypto.a
> libcrypto.pc
> libcrypto.so -> libcrypto.so.1.0.0
> libcrypto.so.1.0.0
> 
> but in my sysroot libcrypto is located in lib NOT in usr/lib
> 
> the ntp recipe in meta-openembedded/meta-networking/recipes-support/ntp/ntp_4.2.8p4.bb
> defines:
> 
>  --with-openssl-libdir=${STAGING_LIBDIR}
> 
> I assume I need ${STAGING_BASELIBDIR} here instead. But currently I fail
> with overwriting this in my bbappend file.
> 
> If I use EXTRA_OECONF to overwrite it in my bbappend I see two --with-openssl-libdir
> statements while configuring. The first with /lib the second one with /usr/lib. 
> 
> EXTRA_OECONF  += "\
> 		--with-openssl \
> 		--with-openssl-libdir=${STAGING_BASELIBDIR} \
> 		--with-openssl-incdir=${STAGING_INCDIR} \
> 		--with-crypto \
> "

I have a .bbappend file containing:

# This is wrong in the upstream .bb file and doesn't work so override it
PACKAGECONFIG[openssl] = "--with-crypto, \
                          --without-crypto, \
                          openssl"
PACKAGECONFIG_append = " openssl"

By NOT specifying the directories, it uses pkg-config, which of course
returns both directories correctly.  The ntp configure script can't
imagine that the openssl libraries are in two different directories at
the same time and hence fails to find them even though it searches both
of them, but only trying one at a time.

-- 
Len Sorensen


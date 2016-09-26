Return-Path: <oliver.graute@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 968E3E00D64; Mon, 26 Sep 2016 00:15:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (oliver.graute[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CB2FE00C17
	for <yocto@yoctoproject.org>; Mon, 26 Sep 2016 00:15:31 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id w84so12592883wmg.0
	for <yocto@yoctoproject.org>; Mon, 26 Sep 2016 00:15:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=cmTq0ZOlww53R2UuxElbEvMWCabrxcJsfVzpJ8uSx7A=;
	b=dBJ7yfA1bcqnYQz795gez+p1IAh9pHGx2XzC+GxiBOGXThBz4YJsCJD0gvZ1TPdqLv
	shNCNOQxUEvtM5COoorjLkqBxezgabl1ErmtwCmu5gH3X181vCwbKT1NmQz0dCv+aOj9
	zqsqWDkeBQy3hNwV8MkBVHmTssxscjj7jkBKrWT0XlU16VnS7KzJcyLMMTKBrEtLjr+v
	zILrVYR4Yff+PFhTLzcFCOTTpalW/arU0Uox79jkChB/EC4ZPSTu2bfDAucG/o5iw7ss
	p/nOCJC/GHWlJDkxksJHZZD7oJf/HlcN33AwkQs0+JeicwZTkQO57ZJnzmVqXA5MFZLJ
	tC1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
	:references:mime-version:content-disposition:in-reply-to:user-agent;
	bh=cmTq0ZOlww53R2UuxElbEvMWCabrxcJsfVzpJ8uSx7A=;
	b=ZNjTqsoeoick+r9DFJF7i3A8wZ/1CPSoJ5XdU2spwngukW/DjtKzI1UdH7hUlO6BgP
	R0RXHGRzYuKgeAr+KFeOHTQ0H4WLHOMadA13qu9oOK5PthphbLFT+UKmRoecA7BuDFOJ
	w1HOsN3sVy+Dr253bSAKpEsnY0iVs7zloM4HE5p5dqDd6nW8ZBLUQMW7VxRP2EjeC11F
	Uq6Z2PH/n8ePSFUw+jUD/DsdvVCaKX4hJDiWM8xR1s2hchusu3XBf9D5niyA00ImDiY6
	3HIk1247N+38CrmWOFRSdS7ultOUDkVeGLd4J9wWv8hn5XgNZ1eYCDd4iLG5x+zp4xCn
	8Pcg==
X-Gm-Message-State: AA6/9RkZWXGFAOcbK9QMPI8EFEkgBN0M+v7vQk9z8q4Onx0E8x6EKdMH3pXlbiHJ7EeFRw==
X-Received: by 10.28.54.196 with SMTP id y65mr12054840wmh.73.1474874129956;
	Mon, 26 Sep 2016 00:15:29 -0700 (PDT)
Received: from localhost (x55b1e120.dyn.telefonica.de. [85.177.225.32])
	by smtp.gmail.com with ESMTPSA id
	z12sm9614593wmz.11.2016.09.26.00.15.28 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=AES128-SHA bits=128/128);
	Mon, 26 Sep 2016 00:15:29 -0700 (PDT)
Date: Mon, 26 Sep 2016 09:14:56 +0200
From: Oliver Graute <oliver.graute@gmail.com>
To: yocto@yoctoproject.org
Message-ID: <20160926071456.GB13394@graute-opti>
Mail-Followup-To: yocto@yoctoproject.org
References: <20160916082406.GB27958@graute-opti>
	<CAJ86T=WaKHQFXfSuvAm4wQUfa=xr_CBmK8-ZovaystYGM=9ukA@mail.gmail.com>
	<20160919115820.GC27958@graute-opti>
	<20160922071643.GE27958@graute-opti>
	<CAMKF1sqRxXEY-z2Jz5=SADE9hxai1_TnDUUMbS+9tcc1Ok5uKg@mail.gmail.com>
	<20160923121920.GA13394@graute-opti>
	<20160923161658.GD14313@csclub.uwaterloo.ca>
MIME-Version: 1.0
In-Reply-To: <20160923161658.GD14313@csclub.uwaterloo.ca>
User-Agent: Mutt/1.5.21 (2010-09-15)
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
X-List-Received-Date: Mon, 26 Sep 2016 07:15:36 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 23/09/16, Lennart Sorensen wrote:
> On Fri, Sep 23, 2016 at 02:19:20PM +0200, Oliver Graute wrote:
> > On 22/09/16, Khem Raj wrote:
> > > On Thu, Sep 22, 2016 at 12:16 AM, Oliver Graute <oliver.graute@gmail.com> wrote:
> > > > On 19/09/16, Oliver Graute wrote:
> > > >> On 16/09/16, Andre McCurdy wrote:
> > > >> > On Fri, Sep 16, 2016 at 1:24 AM, Oliver Graute <oliver.graute@gmail.com> wrote:
> > > >> > > Hello,
> > > >> > >
> > > >> > > how can I build ntp with openssl support?
> > > >> > >
> > > >> > > I already created a ntp_%.bbappend file to extend the recipe ntp_4.2.8p4.bb.
> > > >> > >
> > > >> > > FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
> > > >> >
> > > >> > You don't really need this line unless you are adding a file to
> > > >> > SRC_URI or replacing a file already in SRC_URI with your own version.
> > > >> >
> > > >> > > PACKAGECONFIG += "openssl"
> > > >> >
> > > >> > This will enable openssl, but it will also disable all the default
> > > >> > PACKAGECONFIG options (cap, debug and refclocks) which is probably not
> > > >> > what you want. Try this instead:
> > > >> >
> > > >> >   PACKAGECONFIG_append = " openssl"
> > > >> >
> > > >> > Note the space between " and openssl. It's required.
> > > >>
> > > >> ok now I see the right configure script options during the configuration
> > > >> of the ntp build.
> > > >>
> > > >> --with-openssl-libdir=/home/graute/5411_IBIS/yocto/build-imx6ulevk-nand/tmp/sysroots/imx6ulevk/usr/lib
> > > >> --with-openssl-incdir=/home/graute/5411_IBIS/yocto/build-imx6ulevk-nand/tmp/sysroots/imx6ulevk/usr/include
> > > >> --with-crypto
> > > >>
> > > >> But ntp is still build without openssl support. The configure scripts
> > > >> can't find the relevant openssl stuff.
> > > >>
> > > >> configure:34762: checking for openssl library directory
> > > >> configure:34802: result: no
> > > >> configure:34807: WARNING: libcrypto and libssl not found in any of /home/graute/5411_IBIS/yocto/build-imx6ulevk-nand/tmp/sysroots/imx6ulevk/usr/lib
> > > >> configure:34811: checking for openssl include directory
> > > >> configure:34833: result: /home/graute/5411_IBIS/yocto/build-imx6ulevk-nand/tmp/sysroots/imx6ulevk/usr/include
> > > >> configure:34877: checking if we will use crypto
> > > >> configure:34879: result: no
> > > >> configure:35109: checking if we want to use OpenSSL's crypto random (if available)
> > > >> configure:35119: result: yes
> > > >>
> > > >> some clue whats wrong here?
> > > >
> > > > in my sysroots/imx6ulevk/usr/lib I have
> > > >
> > > > ls -la libssl*
> > > >
> > > > libssl3.so
> > > > libssl.a
> > > > libssl.so -> libssl.so.1.0.0
> > > > libssl.so.1.0.0
> > > >
> > > > ls -la libcrypt*
> > > >
> > > > libcrypt.a
> > > > libcrypt_pic.a
> > > > libcrypt_pic.map
> > > > libcrypt.so -> ../../lib/libcrypt.so.1
> > > >
> > > >
> > > > but no libcrypto.so. I guess thats the reason why my ntp configure
> > > > script is complaining.
> > > >
> > > > Some ideas how to get libcrypto.so in my /usr/lib folder in the yocto
> > > > sysroot?
> > > >
> > > 
> > > It seems your openssl is not being compiled correctly. Can you go into
> > > builddir or openssl
> > > and see if libcrypto.so.1.0.0 is built ? if not then you have to do
> > > some digging why its not
> > > configuring to build libcrypto
> > 
> > libcrypto is build by openssl
> > 
> > openssl/1.0.2d-r0/openssl-1.0.2d$ ls -la  libcrypt*
> > libcrypto.a
> > libcrypto.pc
> > libcrypto.so -> libcrypto.so.1.0.0
> > libcrypto.so.1.0.0
> > 
> > but in my sysroot libcrypto is located in lib NOT in usr/lib
> > 
> > the ntp recipe in meta-openembedded/meta-networking/recipes-support/ntp/ntp_4.2.8p4.bb
> > defines:
> > 
> >  --with-openssl-libdir=${STAGING_LIBDIR}
> > 
> > I assume I need ${STAGING_BASELIBDIR} here instead. But currently I fail
> > with overwriting this in my bbappend file.
> > 
> > If I use EXTRA_OECONF to overwrite it in my bbappend I see two --with-openssl-libdir
> > statements while configuring. The first with /lib the second one with /usr/lib. 
> > 
> > EXTRA_OECONF  += "\
> > 		--with-openssl \
> > 		--with-openssl-libdir=${STAGING_BASELIBDIR} \
> > 		--with-openssl-incdir=${STAGING_INCDIR} \
> > 		--with-crypto \
> > "
> 
> I have a .bbappend file containing:
> 
> # This is wrong in the upstream .bb file and doesn't work so override it
> PACKAGECONFIG[openssl] = "--with-crypto, \
>                           --without-crypto, \
>                           openssl"
> PACKAGECONFIG_append = " openssl"
> 
> By NOT specifying the directories, it uses pkg-config, which of course
> returns both directories correctly.  The ntp configure script can't
> imagine that the openssl libraries are in two different directories at
> the same time and hence fails to find them even though it searches both
> of them, but only trying one at a time.

Thank you this is working for me.

Best Regards,

Oliver


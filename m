Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 910B0E00825; Mon,  9 Feb 2015 06:13:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.181 listed in list.dnswl.org]
Received: from mail-lb0-f181.google.com (mail-lb0-f181.google.com
	[209.85.217.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A02C4E00342
	for <yocto@yoctoproject.org>; Mon,  9 Feb 2015 06:13:39 -0800 (PST)
Received: by mail-lb0-f181.google.com with SMTP id b6so7363385lbj.12
	for <yocto@yoctoproject.org>; Mon, 09 Feb 2015 06:13:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id
	:mail-followup-to:references:mime-version:content-type
	:content-disposition:content-transfer-encoding:in-reply-to
	:organization:user-agent;
	bh=qPxpq63L/2IUXbA7h2Fe2iPVu4uVcOjk4tfZxzjm71M=;
	b=LuuFC0HiCzA8wQ39Fci16falyWHlCZsAUUgceG019bSqvA68sGrQ5MR/2vd96pX3LF
	NSeopRbEwshbd8jXk4cKPkc3CAqCd3EpDbod7tJ5xUngwqOP4uqZc14eMGicyCnScwo5
	CAUWXrZuKHEbfLnv/RBjgEKHE3GFq5O4EK4yldjAI8OlK3dMpiU3VAIvV9pUOZXAkib9
	60kS2Fj3ptlQhRG6TWo3box/CEE54EvYhaW2X3HW0BGLzdzgtj9nzeystJB55vL+Qp9K
	Ma059PTEocYPmLubR8EjeYUr5inf0yqhIr8I+Zby+jWvyIt9azuObUAV4T9J+BBuEafK
	9ggQ==
X-Gm-Message-State: ALoCoQmrzlv/FGyMTdVraZSssxg4qf+6KDdLQQPQPm3TFPW1uP/Pkdr+3f9vsZh21qSn+wWlLZWO
X-Received: by 10.152.205.74 with SMTP id le10mr17031922lac.39.1423491218111; 
	Mon, 09 Feb 2015 06:13:38 -0800 (PST)
Received: from ad.chargestorm.se (213-64-219-84-no126.business.telia.com.
	[213.64.219.84])
	by mx.google.com with ESMTPSA id s6sm2130342lae.13.2015.02.09.06.13.37
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 09 Feb 2015 06:13:37 -0800 (PST)
Date: Mon, 9 Feb 2015 15:13:35 +0100
From: Anders Darander <anders@chargestorm.se>
To: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
Message-ID: <20150209141335.GC12554@ad.chargestorm.se>
Mail-Followup-To: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>,
	Victor Rodriguez <vm.rod25@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <F38A866CD026F746A3BF0928A84397BE3A34C510@AZ-FFEXMB01.global.avaya.com>
	<CAK5mtew20WE6O2rAuNNTqMpFU2jydOBoHYVnqzRxODD5EAGvAw@mail.gmail.com>
	<F38A866CD026F746A3BF0928A84397BE3A34C5C7@AZ-FFEXMB01.global.avaya.com>
MIME-Version: 1.0
In-Reply-To: <F38A866CD026F746A3BF0928A84397BE3A34C5C7@AZ-FFEXMB01.global.avaya.com>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Multiple packages from single recipe file
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
X-List-Received-Date: Mon, 09 Feb 2015 14:13:45 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

* Bipnesh, Abhinav (Abhinav) <abhinavbipnesh@avaya.com> [150209 14:26]:
> In case of writing the spec file for RPM we need to create first the
> directory layout and then putting the files using cp or other commands
> and then perform %file etc. stuff. But when I take a look to some of
> the recipe file present under poky sometime I see FILES_${PN} and it
> didn=E2=80=99t specify from where to pick the files.

> May be the case is that these project use Auto tools for building. But
> in our case we have plain Makefile for building and then collecting
> files from different location and putting in package.  So I was
> thinking can be use such shortcut method for such job.

In your case, add a do_install() function and make install all your
files into ${D}. See e.g. the setserial recipe:
http://git.openembedded.org/openembedded-core/tree/meta/recipes-bsp/setseri=
al/setserial_2.17.bb

Cheers,
Anders


> -----Original Message-----
> From: Victor Rodriguez [mailto:vm.rod25@gmail.com]=20
> Sent: Monday, February 09, 2015 18:46
> To: Bipnesh, Abhinav (Abhinav)
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Multiple packages from single recipe file

> On Mon, Feb 9, 2015 at 4:51 AM, Bipnesh, Abhinav (Abhinav) <abhinavbipnes=
h@avaya.com> wrote:
> > Hi,



> > I was looking further into the document to find a way to define=20
> > multiple packages from a single recipe file. As in current recipe I=20
> > have written a
> > do_install() function for putting files in particular directories. So=
=20
> > it copies files from ${S} to ${D}.

> > But some of the documents talk about multiple package something as=20
> > below



> > FILES_${PN} =3D "\

> >     ${bindir}/* \

> >     ${sbindir}/* \

> >     ${libexecdir}/* \

> >     ${libdir}/lib*.so.* \

> >     ${sysconfdir} \

> >     ${sharedstatedir} \

> >     ${localstatedir} \

> >     /bin/* \

> >     /sbin/* \

> >     /lib/*.so* \

> >     ${datadir}/${PN} \

> >     ${libdir}/${PN}/* \

> >     ${datadir}/pixmaps \

> >     ${datadir}/applications \

> >     ${datadir}/idl \

> >     ${datadir}/omf \

> >     ${datadir}/sounds \

> >     ${libdir}/bonobo/servers"



> > FILES_${PN}-dbg =3D "\

> >     ${bindir}/.debug \

> >     ${sbindir}/.debug \

> >     ${libexecdir}/.debug \

> >     ${libdir}/.debug \

> >     /bin/.debug \

> >     /sbin/.debug \

> >     /lib/.debug \

> >     ${libdir}/${PN}/.debug"



> > But I am not getting how the source for such file will be determine as=
=20
> > in our project files will be present in different directories and need=
=20
> > to be placed in some predefined paths.



> > So how we can achieve the same.



> > Thanks,

> > Abhinav
--=20
Anders Darander
ChargeStorm AB / eStorm AB


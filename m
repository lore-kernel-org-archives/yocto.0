Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 198B9E0070F; Wed,  2 Dec 2015 05:13:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f53.google.com (mail-lf0-f53.google.com
	[209.85.215.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89F0BE0048C
	for <yocto@yoctoproject.org>; Wed,  2 Dec 2015 05:13:31 -0800 (PST)
Received: by lffu14 with SMTP id u14so49791314lff.1
	for <yocto@yoctoproject.org>; Wed, 02 Dec 2015 05:13:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=chargestorm-se.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:organization:user-agent;
	bh=f6IVbHHul3ncgvBX7NLQFxczQAOzo2Ph9sU+PmscZyE=;
	b=TvmfhEAwuGjRTtngTXwfZCFCguuxKw/dlmRXzbYWkDnxCRCZFJ/8Fx9fFafy9iweDl
	TwY39nz1V9A0AXnaRtCwnOkkHmyqvWlFhBqxtX38hOuAu0UfHJCW1ebaqSzBJBDXNP+B
	alpfRIiKyfTZ8JW0PWLht4rK//7rJQg5StPE0R6e9tbMAD9ZaqblhKuDTn10FCK1YMbv
	qhH9Aae6FKxFlMHCvZWC5pZ4MjRqNvr36hctJ0q3r22aAmQVnNm/9z4vN1HyN+DB1ZUO
	dx4MJLNncZ1LAQXI6qjUc4etgkqIPLIoR11Vl4RoGCTWU2gHlGLgGIwa3Jw7qGEj6TT+
	7nyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
	:references:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:organization:user-agent;
	bh=f6IVbHHul3ncgvBX7NLQFxczQAOzo2Ph9sU+PmscZyE=;
	b=d8TqUmX51tyr4iLIFE0SAOEsGusDgIUGKWPxhVFxpIJqq2WQXP0vinDrFgCFdN6Fla
	K2fnDyNden7yrfNnAr3dVoN0jXMeCSVk1yuE+XRIICJqlYqCig67H+TIB5mFzSah46SI
	ouK7I89LNgKDAs7mYDOrDOwKpZpiDoMIZeMPOVPuv2LqHdsACcsBpPruVourdKPW0bES
	68NvrNGlW8iCDWU4hlS3YmnJlDQ19XuY64xWSXat2LqabOwCnhFfBIZxWGA1qY8zSqmA
	tPwL0SYMi2cRRcLXbYtw1ulMtMHPGL5TEAvhnjkyeLrztpt4p1MStWPf1rQLUUK/7TCw
	PkTQ==
X-Gm-Message-State: ALoCoQkss+Hn/4Z4qVPFgeq4l4dttnBSxn5YyFVLGrOX+AFllHN+3BTpkY8Ir4645kLVSYrdeJ6A
X-Received: by 10.25.83.146 with SMTP id h140mr2636119lfb.52.1449062010432;
	Wed, 02 Dec 2015 05:13:30 -0800 (PST)
Received: from ad.chargestorm.se (213-64-219-84-no126.business.telia.com.
	[213.64.219.84])
	by smtp.gmail.com with ESMTPSA id c77sm493584lfb.41.2015.12.02.05.13.29
	for <yocto@yoctoproject.org> (version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 02 Dec 2015 05:13:29 -0800 (PST)
Date: Wed, 2 Dec 2015 14:13:27 +0100
From: Anders Darander <anders@chargestorm.se>
To: yocto@yoctoproject.org
Message-ID: <20151202131327.GB28838@ad.chargestorm.se>
Mail-Followup-To: yocto@yoctoproject.org
References: <6AC2D51E0855E34EBDB192F9BA81BFB3A743EBA2@PTW-EX-37.PEGA.CORP.PEGATRON>
MIME-Version: 1.0
In-Reply-To: <6AC2D51E0855E34EBDB192F9BA81BFB3A743EBA2@PTW-EX-37.PEGA.CORP.PEGATRON>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: Header files in /usr/include of rootfs
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
X-List-Received-Date: Wed, 02 Dec 2015 13:13:37 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

* Andy Hung(=E6=B4=AA=E7=BF=8A=E6=A1=93_Pegatron) <Andy_Hung@pegatroncorp.c=
om> [151202 10:49]:

> Hi Anders,
> Thanks for your help, pls see updates below,

> > Message: 2
> > Date: Tue, 24 Nov 2015 14:25:14 +0100
> > From: Anders Darander <anders@chargestorm.se>
> > To: yocto@yoctoproject.org
> > Subject: Re: [yocto] Header files in /usr/include of rootfs
> > Message-ID: <20151124132514.GB2165@ad.chargestorm.se>
> > Content-Type: text/plain; charset=3Dutf-8

> > * Andy Hung(???_Pegatron) <Andy_Hung@pegatroncorp.com> [151124 11:35]:
> >	Those sub-folders contains files such as executable binaries, config fi=
les, kernel modules, .so files ...
> >	All these files are actually built from the source code of a specific W=
iFi driver,
> >	what I want to do is installing all pre-built binaries/files into corre=
sponding locations in rootfs.

> >There's no way to build this using OE?...

> >Though, sure, it's should work as long as the binaries and kernel module=
s actually loads and runs.

> > > FILES_${PN} =3D ?/*?

> The kernel headers wouldn't get installed if I removed my package.

Ok, then they get pulled in if your -dev package is installed. (And if
you have kernel modules in your package, that doesn't sound too
suprising).

> I looked at the packages-split folder again and I found besides the
> -dbg folder, .so libraries are in <package-name>-dev folder, I
> searched on the Yocto site and learned that packages are split by the
> variable PACKAGES defined in bitbake.conf and it turns out ${PN}-dbg ,
> ${PN}-dev are processed before ${PN}, so I modified my bb file by
> adding FILE_${PN}-dev =3D "" I rebuild the rootfs and I found the kernel
> headers are not installed then.

Ok. So something needs those .so-files, and if they're pacakged in your
-dev package, it'll be pulled in.

Normally, libraries are assumed to be versioned, i.e. library.so.X.Y,
with the library.so file being a symbolic link pointing to the versioned
ones. The link is packaged in -dev and the real libraries in the main
package.

If you have non-versioned libraries, then you need to ensure that those
are installed in you main package; just as you did.

> Here are the extra packages get installed before I add FILE_${PN}-dev
> =3D "" to the recipe,

> eglibc-extra-nss
> libc6-dev
> libthread-db1
> linux-libc-headers-dev
> merge-files-dev

> (merge-files is the name of my package)

> I think maybe I don't understand Yocto quite well,
> What is the rule for OE to install those dev packages?
> How do I decide which packages ( dbg, dev, doc, locale...) to get install=
ed?

What get's installed is the packages that you specify, and all of their
runtime dependencies.

Cheers,
Anders

--=20
Anders Darander, Senior System Architect
ChargeStorm AB / eStorm AB


Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D836E00A16; Sat, 20 Oct 2018 07:08:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
	[209.85.160.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BCC7E008DB
	for <yocto@yoctoproject.org>; Sat, 20 Oct 2018 07:08:21 -0700 (PDT)
Received: by mail-qt1-f193.google.com with SMTP id j46-v6so41525808qtc.9
	for <yocto@yoctoproject.org>; Sat, 20 Oct 2018 07:08:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=ecQQGBIvdgCz+gvI+Yqxcj5IFYzolsriNOu9l1JwTdA=;
	b=NGrrO0m/Y6UsR4oc/3p7Gzgnhp43uZD87N48JxKHph6Px9KjPXuA8KM9otlS4OcVhK
	0ONScI7MOIcobGARYBsV2UXGJ3E/tFb72Ev7i4VuWDjrv5CAYj2+cxiNIumeLbDBtKrG
	P6055NAu4ZqexwYOLfsyIGCKJ4V8TpID5XgjNiANlEDhWVTNiZvJ1OcVCWTev8IzVRHz
	Yt6SX3hJ1VLiTUI1b7G5oeP3oLCuQ4QvbbZGNe8wm/gRXhcVEITpjDAEdh5p/aU49I/6
	iOLrFGyyNJ0uSOCSsXPnINT+hhGN4HnHSmKxyWx2NjoY88vP8fUXOPecXqtdQhtxqatt
	Vf6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=ecQQGBIvdgCz+gvI+Yqxcj5IFYzolsriNOu9l1JwTdA=;
	b=UPU/ntyNsUFddAIA3uYhmyjX4pZavpVxu/4gbHz3g2dFSM4Yw4iYkC1t1fNkwqy1lR
	J5tQt7EuEeYTiUtkSq0rqPXx8iDHAkoeZGhxvkLh4mD59uOdYSc759xl444ggom4wHj1
	e+L395CGzZa8xEHxVMmwc7HmwKWQe4DperUhIQbAKz9oStI6i7QqkCm42mCqtwMfLtUc
	N5kwcelmKlU5Re832mlPiY+P+IpjrWvBA93HcU/hyRdzS++3l1W5VdGOJyx08B0V5ipq
	gFICdYBDe4hcQzRHtGtuX79zbnq/R4tv0iQuWBhPCfuwj6q84ajdtxHtxHoLoK03QDDW
	/aag==
X-Gm-Message-State: ABuFfogPcHoTAhmOjTaxzAZI4PmQr6svul9jDWpbunmTRIdjo+D1Ndwu
	SjmsM8T7qUcsUP9ui5JpPTBnqilFTow8A0UjyEc=
X-Google-Smtp-Source: ACcGV62cTMG2t+CZhawDbR801JecOcDiHhp7Vs9OnJAaGqgul7as0+coLXuYvrfh0N1Gr3UQ8V39CQB41vsap8BpRk4=
X-Received: by 2002:ad4:41cc:: with SMTP id a12mr38263372qvq.55.1540044500438; 
	Sat, 20 Oct 2018 07:08:20 -0700 (PDT)
MIME-Version: 1.0
References: <20181019153821.21177-1-stefan@agner.ch>
	<a1d9ca7b7bfa913983b356b854e0170967a55b57.camel@linuxfoundation.org>
In-Reply-To: <a1d9ca7b7bfa913983b356b854e0170967a55b57.camel@linuxfoundation.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 20 Oct 2018 15:07:53 +0100
Message-ID: <CAMKF1sp_KNg4yh6BqY4J5OmKbT5THy_vxExGvP2AE3NThQOmVw@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: opkg-devel@googlegroups.com, stefan.agner@toradex.com,
	Yocto Project <yocto@yoctoproject.org>, Stefan Agner <stefan@agner.ch>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>, ricardo@foundries.io
Subject: Re: [opkg-utils PATCH] opkg-make-index: use ctime instead of mtime
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
X-List-Received-Date: Sat, 20 Oct 2018 14:08:22 -0000
Content-Type: text/plain; charset="UTF-8"

On Sat, Oct 20, 2018 at 10:16 AM <richard.purdie@linuxfoundation.org> wrote:
>
> On Fri, 2018-10-19 at 17:38 +0200, Stefan Agner wrote:
> > From: Stefan Agner <stefan.agner@toradex.com>
> >
> > When using sstate, two parallel builds can produce two packages
> > with the same mtime but different checksums. When later one of
> > those two builds fetches the others ipk, the package index does
> > not get udpated properly (since mtime matches). This ends up with
> > messages such as:
> >   Downloading file:/../tmp/work/../image/...ipk.
> >   Removing corrupt package file
> > /../sysroot/../var/cache/opkg/volatile/...ipk
> >
> > However, in that case, ctime is different. Use ctime instead of
> > mtime to prevent failures like this.
> >
> > Suggested-by: Khem Raj <raj.khem@gmail.com>
> > Signed-off-by: Stefan Agner <stefan.agner@toradex.com>
>
> Acked-by: Richard Purdie <richard.purdie@linuxfoundation.org>
>

Yep, thats for following up with implementing it.

Acked-by: Khem Raj <raj.khem@gmail.com>

> (I've been following this problem and this makes sense to me)
>
> > ---
> > This addresses the issue discussed here:
> >
> http://lists.openembedded.org/pipermail/openembedded-core/2018-October/156348.html
> >
> >  opkg-make-index | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/opkg-make-index b/opkg-make-index
> > index 3227fc0..db7bf64 100755
> > --- a/opkg-make-index
> > +++ b/opkg-make-index
> > @@ -115,12 +115,12 @@ for abspath in files:
> >       pkg = None
> >       fnameStat = os.stat(abspath)
> >       if filename in old_pkg_hash:
> > -          if filename in pkgsStamps and int(fnameStat.st_mtime) ==
> > pkgsStamps[filename]:
> > +          if filename in pkgsStamps and int(fnameStat.st_ctime) ==
> > pkgsStamps[filename]:
> >              if (verbose):
> >                 sys.stderr.write("Found %s in Packages\n" %
> > (filename,))
> >              pkg = old_pkg_hash[filename]
> >            else:
> > -               sys.stderr.write("Found %s in Packages, but mtime
> > differs - re-reading\n" % (filename,))
> > +               sys.stderr.write("Found %s in Packages, but ctime
> > differs - re-reading\n" % (filename,))
> >
> >       if not pkg:
> >            if (verbose):
> > @@ -137,7 +137,7 @@ for abspath in files:
> >       else:
> >            old_filename = ""
> >       s = packages.add_package(pkg, opt_a)
> > -     pkgsStamps[filename] = fnameStat.st_mtime
> > +     pkgsStamps[filename] = fnameStat.st_ctime
> >       if s == 0:
> >            if old_filename:
> >                 # old package was displaced by newer
>


Return-Path: <raj.khem@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DAAFE0030B
	for <yocto@yoctoproject.org>; Thu,  8 Mar 2012 22:46:19 -0800 (PST)
Received: by iagw33 with SMTP id w33so2331645iag.35
	for <yocto@yoctoproject.org>; Thu, 08 Mar 2012 22:46:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=Ejz2wdzIgZjjT0sE1QCEFXhIYQbCSoYHV9DB//JLw+0=;
	b=bMmB8I/LSMmpU1jYiyUW1OvO17G+U5VD/RxC0krOHCr4yMyjr67w+OYsUyfmKUHsx6
	GgE5umkW1JWDZq06R4zP0tCGNevciAS9FCekvbHPKmMPQUAXQMKVrzT7eytc5eLRJsuL
	RFWMB1oNfqTBq6E9SgZmz4bf6PHtODP+nePyqVGeFGIt0wSPtbNQkFkC99xQmtNCWt3C
	w6mAJ09+kvJE4iJ4jjRBoc7eTRJS0oXMvqsay96fn3PDCMQKoJIhUmLjKMSY9inoqcTy
	kt2QLAehqRBZpvYlBvPkkiV9xvN1AewY2ee2pTuzo78De6jJcuVm21L3n51mjjsrOvj8
	m+0Q==
Received: by 10.42.18.195 with SMTP id y3mr1396702ica.13.1331275578771;
	Thu, 08 Mar 2012 22:46:18 -0800 (PST)
Received: from sakrah.homelinux.org
	(99-57-140-209.lightspeed.sntcca.sbcglobal.net. [99.57.140.209])
	by mx.google.com with ESMTPS id mi10sm1024801igc.8.2012.03.08.22.46.15
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 08 Mar 2012 22:46:17 -0800 (PST)
Date: Thu, 8 Mar 2012 22:48:32 -0800
From: Khem Raj <raj.khem@gmail.com>
To: jfabernathy <jfabernathy@gmail.com>
Message-ID: <20120309064832.GB10899@sakrah.homelinux.org>
Mail-Followup-To: jfabernathy <jfabernathy@gmail.com>,
	Gary Thomas <gary@mlbassoc.com>, yocto@yoctoproject.org
References: <4F58D16C.8030309@gmail.com>
	<CADzUK1K0BTWTm8kfto2SZGpv7Q6sSGcCKggCHXeaconFKR9xcg@mail.gmail.com>
	<4F591A23.3050908@gmail.com>
	<CA+gsK-qzbm6j9Vj7jmDc7E2g=LfrUpwZENsXsPLaVT7cbpWg1Q@mail.gmail.com>
	<4F59280A.9010603@gmail.com>
	<CADzUK1J+EdCkjRsFRdTYZY3HiLwmWxnEd1s3tNDVFDaHKuSnmQ@mail.gmail.com>
	<4F593209.6040309@gmail.com> <4F593365.4060904@mlbassoc.com>
	<4F593439.7050805@gmail.com>
MIME-Version: 1.0
In-Reply-To: <4F593439.7050805@gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: yocto@yoctoproject.org
Subject: Re: Adding test files to an image
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
X-List-Received-Date: Fri, 09 Mar 2012 06:46:19 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

> >Set S to be what you need in the recipe, e.g.
> >  S = "${WORKDIR}/jfabernathy-${PV}"
> >or whatever it is you need
> >
> Thanks,  I know I can change S, but I need to change where do_unpack
> puts the files.  with them in WORKDIR, I can't just say WORKDIR/*
> because there are a lot of other files and directories at that
> level.
> 
> I need do_unpack to put the files from tar.gz into S for example.

you can do something like

do_unpack_append() {
        bb.build.exec_func('do_move_src', d)
}

do_move_src() {
        mv ${WORKDIR}/<yoursources> ${S}/
}

but if you can repackage that tar file to untar into
some dir that would simplify things
and you just need to reset S


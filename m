Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCF0DE0137A
	for <yocto@yoctoproject.org>; Tue,  8 May 2012 01:43:56 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so10233763pbb.35
	for <yocto@yoctoproject.org>; Tue, 08 May 2012 01:43:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=HW4cnzoMY7jh+1d1x3QYxhVpIPS3TvJ6zXE4kOM+Wk4=;
	b=DlsYESn2cjfOZN53k4oN4p0sgUkvABrdmSSYlOp5odRnziypdcuSO6pOA7mAJDsMle
	L/9+BMbgfkLmiF4YFT/aCnNi2w0z5eZc9/fsToGGxUNll+3PYg1/FMs26qjQd0Sw70w0
	5XndEOKAIjUhDGb5+Cm2ofa7Q+zB6IY1LJi+3CyA/4sDBK4ji6fFCK+G5nsjNXOYSnL/
	+0kTisTWFnEUF5ra3aNvxgVE3Z/LA9Gs1Wpgod8lm392WR5cCBn2STlAUJB4pXIBPGJo
	HOlo3poDg8jh15mKNHkQamzrwrihSNKYS03u6wlcdkphbZJuGy5I218BApX5GzMiD6sK
	dzLA==
MIME-Version: 1.0
Received: by 10.68.202.130 with SMTP id ki2mr54743967pbc.52.1336466636502;
	Tue, 08 May 2012 01:43:56 -0700 (PDT)
Received: by 10.68.48.164 with HTTP; Tue, 8 May 2012 01:43:56 -0700 (PDT)
In-Reply-To: <CACW_hTaV80O+vVw+hweKZxDWgNFOjgDU4mHemivEFudiA9PLvg@mail.gmail.com>
References: <CACW_hTaV80O+vVw+hweKZxDWgNFOjgDU4mHemivEFudiA9PLvg@mail.gmail.com>
Date: Tue, 8 May 2012 10:43:56 +0200
Message-ID: <CACW_hTaroQeLuPDF5LbhfLCuB=-qpLFPFLP1eDAGZmWAqdkHJg@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: yocto@yoctoproject.org, "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
Subject: Re: [denzil] Licenses, source distribution etc
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
X-List-Received-Date: Tue, 08 May 2012 08:43:57 -0000
Content-Type: text/plain; charset=ISO-8859-1

2012/5/8 Frans Meulenbroeks <fransmeulenbroeks@gmail.com>:
> Dear all,
>
> A next question/issue wrt my denzil experiment:
>
> I wanted to know what licenses are used in my image.
> I found tmp/deploy/licenses but this is package oriented and does not
> really give a quick overview.
>
> The manual gave me this section:
> http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.html#ref-classes-src-distribute
>
> I tried to inherit src_distribute and src_distribute_local, but to no avail
> Running a find on the source tree did not reveal these classes:
>
> frans@frans-desktop:~/poky-denzil-7.0$ find | grep distribute
> ./meta/classes/pkg_distribute.bbclass
> frans@frans-desktop:~/poky-denzil-7.0$
>
> Something missing?
> And what is the best way to find out what licenses are used?
>
> Thanks, (and keep up the good work!)
> Frans.

Googled a little bit further.
Guess this is a documentation issue as the classes have been
deliberatly removed.
See http://patches.openembedded.org/patch/23171/

Frans


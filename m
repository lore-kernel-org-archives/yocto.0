Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0FABBE00D6B; Tue, 16 Jul 2019 17:49:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.49 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com
	[209.85.208.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43C75E00D63;
	Tue, 16 Jul 2019 17:49:37 -0700 (PDT)
Received: by mail-ed1-f49.google.com with SMTP id k21so22789758edq.3;
	Tue, 16 Jul 2019 17:49:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=3SCo9v7aO0XLyirDT3UXKvAmrE5V7YQyiY8SADnVRD4=;
	b=aoe7o6Zu0RrNA0vhv0JnRqdnGfhMq/US95iyt3GJomzrtRRH36P6nwL3Kp2QgHPsYA
	NUzw7UwhCjF8FtOm7z9htilOb4lbU5eRts3F6dlbzqCafwjPyqWxcNAKxjRG6JBE7LAd
	CwBLhggAk0ES753MaifCuAhLWf40iwUTHGAV0ObdhczRYQUW1OC81FFfstiJxx9sbrMT
	WiSbNvtwwMLo2DgH1N8zrwAMNF7+Ej+SPNJs4lrNVWFg2ifsncsyIUL1roNH99/96aYx
	pSJRNZ789pLrn7dZrruYPggSZnjXiJZfVK4BO+wQo4hA2N4bOGHi48oFbYDHCWVojgcM
	xrlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=3SCo9v7aO0XLyirDT3UXKvAmrE5V7YQyiY8SADnVRD4=;
	b=hRT4aVCza11UkhsqyK2OcuKw25dtqtMhDdBtk5LauOWYudO3rFPyTersTWsqXm3qQs
	5FUZz6MGn0LYAwf4Aw3KihkEWEU+EDcKx2+c38d88QW+IgrGxmlwKdPWc56EXWZD/ZDW
	qrYg/pMnooRojwrkzQ441usuSHh0bsS/DGq8TDKg5NQcD2wCWLnFnc/2yDd6XvfIFUBU
	YjBSgwURBYg8xWLN+3WHYN2g7QY8wRDf49k2WQw0ugqS69HLbiBaOljWdnxBUH1UMjIb
	Vh4LQnaf+4wgEOkd42VMDImvA/kU7BtvYP7wgZwpNoVCmySCWIQMPD4kT8XZDQfKRxxE
	vjbg==
X-Gm-Message-State: APjAAAUzN50SrT+navQvbM0ua5xmHbjJWCOoYfrHEyrDA350jgh34PBi
	8l79RNGdP0zhXyJuSUKwHdlLGjmLKy5LyRRYl4EYGyNo
X-Google-Smtp-Source: APXvYqxstU9MAhR5ckheokECELtO8RUBn82F2YjLuonUW2fgao3b9GU+RYnALO6fPc7x+n+X0qeYiXIXHyiO/3W2ouU=
X-Received: by 2002:a17:906:4b13:: with SMTP id
	y19mr28313325eju.145.1563324576310; 
	Tue, 16 Jul 2019 17:49:36 -0700 (PDT)
MIME-Version: 1.0
References: <363DC7214F94884BBF80916755E7D65520712376@ORSMSX107.amr.corp.intel.com>
In-Reply-To: <363DC7214F94884BBF80916755E7D65520712376@ORSMSX107.amr.corp.intel.com>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Tue, 16 Jul 2019 17:49:24 -0700
Message-ID: <CAFNP8OueQbGgL1A_TErAs-OuGzTRQ3z=XNxv=LRG1Y6qUwGbAw@mail.gmail.com>
To: "Tummalapalli, Vineela" <vineela.tummalapalli@intel.com>
Cc: "yocto-announce@yoctoproject.org" <yocto-announce@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto-announce] [ANNOUNCEMENT] Yocto Project 2.7.1 (Warrior 21.0.1) Released
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
X-List-Received-Date: Wed, 17 Jul 2019 00:49:38 -0000
Content-Type: multipart/alternative; boundary="0000000000000a2b63058dd5de88"

--0000000000000a2b63058dd5de88
Content-Type: text/plain; charset="UTF-8"

Hi,

"Current" docs symlink now pointing to 2.7.1 release (i.e.
https://yoctoproject.org/docs/current/ref-manual/ref-manual.html).

Thanks,
Scott

On Tue, Jul 16, 2019 at 5:26 PM Tummalapalli, Vineela <
vineela.tummalapalli@intel.com> wrote:

> Hello,
>
> We are pleased to announce the Yocto Project 2.7.1 (warrior-21.0.1)
> Release is now available for download.
>
>
> http://downloads.yoctoproject.org/releases/yocto/yocto-2.7.1/poky-warrior-21.0.1.tar.bz2
>
> http://mirrors.kernel.org/yocto/yocto/yocto-2.7.1/poky-warrior-21.0.1.tar.bz2
>
> A gpg signed version of these release notes is available at:
>
> http://downloads.yoctoproject.org/releases/yocto/yocto-2.7.1/RELEASENOTES
>
> Full Test Report:
>
> http://downloads.yoctoproject.org/releases/yocto/yocto-2.7.1/testreport.txt
>
> Thank you for everyone's contributions to this release.
>
> Vineela Tummalapalli
> Yocto Project Build and Release
> Vineela Tummalapalli <vineela.tummalapalli@intel.com>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000000a2b63058dd5de88
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi, <br></div><div><br></div><div>&quot;Current&quot;=
 docs symlink now pointing to 2.7.1 release (i.e. <a href=3D"https://yoctop=
roject.org/docs/current/ref-manual/ref-manual.html">https://yoctoproject.or=
g/docs/current/ref-manual/ref-manual.html</a>).</div><div><br></div><div>Th=
anks, <br></div><div>Scott<br></div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Tue, Jul 16, 2019 at 5:26 PM Tummala=
palli, Vineela &lt;<a href=3D"mailto:vineela.tummalapalli@intel.com">vineel=
a.tummalapalli@intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">Hello,<br>
<br>
We are pleased to announce the Yocto Project 2.7.1 (warrior-21.0.1) Release=
 is now available for download.<br>
<br>
<a href=3D"http://downloads.yoctoproject.org/releases/yocto/yocto-2.7.1/pok=
y-warrior-21.0.1.tar.bz2" rel=3D"noreferrer" target=3D"_blank">http://downl=
oads.yoctoproject.org/releases/yocto/yocto-2.7.1/poky-warrior-21.0.1.tar.bz=
2</a> <br>
<a href=3D"http://mirrors.kernel.org/yocto/yocto/yocto-2.7.1/poky-warrior-2=
1.0.1.tar.bz2" rel=3D"noreferrer" target=3D"_blank">http://mirrors.kernel.o=
rg/yocto/yocto/yocto-2.7.1/poky-warrior-21.0.1.tar.bz2</a> <br>
<br>
A gpg signed version of these release notes is available at:<br>
<br>
<a href=3D"http://downloads.yoctoproject.org/releases/yocto/yocto-2.7.1/REL=
EASENOTES" rel=3D"noreferrer" target=3D"_blank">http://downloads.yoctoproje=
ct.org/releases/yocto/yocto-2.7.1/RELEASENOTES</a> <br>
<br>
Full Test Report:<br>
<br>
<a href=3D"http://downloads.yoctoproject.org/releases/yocto/yocto-2.7.1/tes=
treport.txt" rel=3D"noreferrer" target=3D"_blank">http://downloads.yoctopro=
ject.org/releases/yocto/yocto-2.7.1/testreport.txt</a> <br>
<br>
Thank you for everyone&#39;s contributions to this release.<br>
<br>
Vineela Tummalapalli<br>
Yocto Project Build and Release<br>
Vineela Tummalapalli &lt;<a href=3D"mailto:vineela.tummalapalli@intel.com" =
target=3D"_blank">vineela.tummalapalli@intel.com</a>&gt;<br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--0000000000000a2b63058dd5de88--

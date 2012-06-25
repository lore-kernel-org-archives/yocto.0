Return-Path: <elizabeth.flanagan@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A04CBE006D9
	for <yocto@yoctoproject.org>; Mon, 25 Jun 2012 08:17:23 -0700 (PDT)
Received: from mail-ee0-f52.google.com ([74.125.83.52])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 25 Jun 2012 08:17:22 -0700
Received: by eeke53 with SMTP id e53so1116294eek.25
	for <yocto@yoctoproject.org>; Mon, 25 Jun 2012 08:17:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=o3JDcSRW4/8Tv47fvVngVkrQltQdmlE09CgnYbeOFvY=;
	b=g6CclE7e4Ev+mCYkkRvPuLPMpEgao+LS6dlDyIrjDjmcDneq/129WeX/cL5MbFPmwH
	1BFTkslzYv2v/336eFS2HFjSnP+5c07IScuiOpR9JXh0ZN4GhjQ4X+c5VuB9YIFniRN7
	QAvxNrFkSdNKg5ZhcNbClnMM3JJ2tz8zh5zH2UxDtdhkwwjwtL2rgxJD6j7v37Vj7quB
	69UO5FRZDYLUEHWGe6f0lASo0XiOuIkH4rPOqocHBhGeYEyj/WZW/WmlJrSVbzqUfkbk
	mlgVHcuW4H2YJadkCkzxK0hZXHML2SE1oKwrXkshHsfFNYkQ7YWHKvIancPl5MzqC0qG
	wVyg==
MIME-Version: 1.0
Received: by 10.152.135.200 with SMTP id pu8mr12464365lab.8.1340637440779;
	Mon, 25 Jun 2012 08:17:20 -0700 (PDT)
Received: by 10.112.1.227 with HTTP; Mon, 25 Jun 2012 08:17:20 -0700 (PDT)
In-Reply-To: <36ED13F3654AE54CA763E6821D93A5711045A318@szxeml534-mbx.china.huawei.com>
References: <OFDE9D2D78.BF935E29-ON65257A25.00448DED-65257A25.0046DCF2@notesmail.huawei.com.cn>
	<36ED13F3654AE54CA763E6821D93A5711045A318@szxeml534-mbx.china.huawei.com>
Date: Mon, 25 Jun 2012 08:17:20 -0700
Message-ID: <CAPhnLPBHnanMmyfYRRYpa+yvVy-rfXYo_Q6TMpvDnkuqGNNPmQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Venkata ramana gollamudi <ramana.gollamudi@huawei.com>
X-Gm-Message-State: ALoCoQmg7dPA4Q0+vFW68j8phnKvQgZv/hBk8WyWlulhOgMpsWw4XCVn+WRYyLdgO9DWWjC8MgPv
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Sanil kumar <sanil.kumar@huawei.com>
Subject: Re: Problem in downloading linux-yocto source behind proxy
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
X-List-Received-Date: Mon, 25 Jun 2012 15:17:23 -0000
Content-Type: multipart/alternative; boundary=f46d043745476e256804c34d7a2b

--f46d043745476e256804c34d7a2b
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Jun 22, 2012 at 6:03 AM, Venkata ramana gollamudi <
ramana.gollamudi@huawei.com> wrote:

>  Hi,
>
>         We tried to build yocto release downloaded from autobuilder
>
> http://autobuilder.yoctoproject.org/pub/nightly/20120621-3/yocto.tar.bz2
>
>         We work behind a http proxy and firewall setup from office network.
>
>         Previously we used to build by setting PREMIRRORS to
>                 git://.*/.*
> http://downloads.yoctoproject.org/mirror/sources/ \n \
>         as all the source is available in the above mentioned mirror path
> for every RC release.
>
>         1) But now we couldnot find linux-yocto source at (for 1.3M1RC1 or
> RC2 release)
>                 i.e
> http://downloads.yoctoproject.org/mirror/sources/git2_git.yoctoproject.org.linux-yocto-3.4.git.tar.gz
>
> This should be correct now. Please let me know if you have any further
issues.



>         2) I remember that there was a discussion to enable readonly way
> of accessing git through http.
>                 Is it currently available?
>
>         Please suggest some alternative mechanism.
>
> Regards,
> Ramana
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


-- 
Elizabeth Flanagan
Yocto Project
Build and Release

--f46d043745476e256804c34d7a2b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">On Fri, Jun 22, 2012 at 6:03 AM, Venkata=
 ramana gollamudi <span dir=3D"ltr">&lt;<a href=3D"mailto:ramana.gollamudi@=
huawei.com" target=3D"_blank">ramana.gollamudi@huawei.com</a>&gt;</span> wr=
ote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">




<div>
<div style=3D"direction:ltr;font-size:10pt;font-family:Tahoma">
<p><font face=3D"sans-serif">Hi,</font> <br>
<br>
<font face=3D"sans-serif">=A0 =A0 =A0 =A0 We tried to build yocto release d=
ownloaded from autobuilder
</font><br>
<font face=3D"sans-serif">=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 <a href=3D"http:/=
/autobuilder.yoctoproject.org/pub/nightly/20120621-3/yocto.tar.bz2" target=
=3D"_blank">http://autobuilder.yoctoproject.org/pub/nightly/20120621-3/yoct=
o.tar.bz2</a></font>
<br>
<br>
<font face=3D"sans-serif">=A0 =A0 =A0 =A0 We work behind a http proxy and f=
irewall setup from office network.</font>
<br>
<br>
<font face=3D"sans-serif">=A0 =A0 =A0 =A0 Previously we used to build by se=
tting PREMIRRORS to
</font><br>
<font face=3D"sans-serif">=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 git://.*/.* =A0 <=
a href=3D"http://downloads.yoctoproject.org/mirror/sources/" target=3D"_bla=
nk">http://downloads.yoctoproject.org/mirror/sources/</a> \n \</font>
<br>
<font face=3D"sans-serif">=A0 =A0 =A0 =A0 as all the source is available in=
 the above mentioned mirror path for every RC release.</font>
<br>
<br>
<font face=3D"sans-serif">=A0 =A0 =A0 =A0 1) But now we couldnot find linux=
-yocto source at (for 1.3M1RC1 or RC2 release)</font>
<br>
<font face=3D"sans-serif">=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 i.e <a href=3D"ht=
tp://downloads.yoctoproject.org/mirror/sources/git2_git.yoctoproject.org.li=
nux-yocto-3.4.git.tar.gz" target=3D"_blank">http://downloads.yoctoproject.o=
rg/mirror/sources/git2_git.yoctoproject.org.linux-yocto-3.4.git.tar.gz</a> =
=A0 =A0 =A0 =A0</font>
<br>
<br></p></div></div></blockquote><div>This should be correct now. Please le=
t me know if you have any further issues.<br><br>=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0pt 0pt 0pt 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
<div><div style=3D"direction:ltr;font-size:10pt;font-family:Tahoma"><p>
<font face=3D"sans-serif">=A0 =A0 =A0 =A0 2) I remember that there was a di=
scussion to enable readonly way of accessing git through http. =A0 =A0 =A0 =
=A0</font>
<br>
<font face=3D"sans-serif">=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 Is it currently a=
vailable? =A0 =A0 =A0 =A0</font>
<br>
<br>
<font face=3D"sans-serif">=A0 =A0 =A0 =A0 Please suggest some alternative m=
echanism. =A0 =A0 =A0 =A0</font>
<br>
<br>
<font face=3D"sans-serif">Regards,</font> <br>
<font face=3D"sans-serif">Ramana</font> <br>
<br>
</p>
</div>
</div>

<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><br>-- <br>Elizabeth Flanagan<=
br>Yocto Project<br>Build and Release<br>

--f46d043745476e256804c34d7a2b--

Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1091BE00306
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2012 10:10:04 -0800 (PST)
Received: by vbbfn1 with SMTP id fn1so4117775vbb.35
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2012 10:10:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=+tbK5XdwoJUtaHNcJmq1WaR6FwffzE7VleDbDRNPMW0=;
	b=cv6z8ufvPm27DVzLU4eoGrLFIuqgHluJUFE0spu9yBZWyMHP3j1knItsw5YgvjgWet
	DFn92SqyRznVrRBg/BDsjlsIkRKAUqjtx2uB7TZUGn52lZfmZbLQoPMaZqkdj4vbukKC
	vYw6da1iz1tXY1cetrmeS9JoMtZnmSwMF7BGg=
MIME-Version: 1.0
Received: by 10.52.26.199 with SMTP id n7mr9617632vdg.17.1327947004208; Mon,
	30 Jan 2012 10:10:04 -0800 (PST)
Received: by 10.52.67.171 with HTTP; Mon, 30 Jan 2012 10:10:04 -0800 (PST)
In-Reply-To: <OF07B6379D.FDCBA64F-ON88257995.0059F0C8-88257995.005B0477@selinc.com>
References: <OF07B6379D.FDCBA64F-ON88257995.0059F0C8-88257995.005B0477@selinc.com>
Date: Mon, 30 Jan 2012 19:10:04 +0100
Message-ID: <CACW_hTayquYQ5Am0N-LX4ENNiHrPPU8ZwrcysO_x6-vw2wJnDg@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: paul_nathan@selinc.com
Cc: yocto@yoctoproject.org
Subject: Re: Yocto & long-term reproducibility of rebuilds
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
X-List-Received-Date: Mon, 30 Jan 2012 18:10:05 -0000
Content-Type: multipart/alternative; boundary=20cf3079b68877656004b7c2c1a4

--20cf3079b68877656004b7c2c1a4
Content-Type: text/plain; charset=ISO-8859-1

2012/1/30 <paul_nathan@selinc.com>

> Hi,
>
> I am investigating Yocto for a build system here. Part of my requirements
> for a build system is auditable/traceable builds that can be replicated
> long into the future (our company has a 10 year warranty on our products,
> and we build products for the multidecade term). Initial examination of
> Yocto shows that it builds packages from a number of different domains
> online, which will not meet our requirements - we'll have to store these
> packages to ensure these packages exist in the correct version long into
> the future.  I know we can manually edit the SRC_URI setting in .bb files,
> but the more general problem of package archiving exists.
>
> I am interested in any information or recommendations other users of the
> Yocto system have on how they have solved this sort of design constraint.
>
> - - -
> Regards,
> Paul Nathan
>
> Paul,

My corrent project is still on oe-classic not on yocto, but we also aim for
reproducible builds.
Basically we perform the following steps.

checkout the opembedded repo. We use a specific hash not head as we do not
want unexpected updates
create a tarball of the git tree
build your product
save all files in the downloads dir.
put that on a local ftp mirror, add a premirror for that ftp mirror
rebuild only using that mirror (e.g. disallow your build host to go to
another external system than your ftp mirror.
archive your git tarball and the saved downloads dir

That's it.
Actually you might then also want to put the stuff on your local ftp mirror
as well as the oe tarball on a public ftp site in order to fulfill your GPL
obligations

Good luck!
Frans

--20cf3079b68877656004b7c2c1a4
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">2012/1/30  <span dir=3D"ltr">&lt;<a href=
=3D"mailto:paul_nathan@selinc.com">paul_nathan@selinc.com</a>&gt;</span><br=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex">
<font face=3D"sans-serif">Hi,</font>
<br>
<br><font face=3D"sans-serif">I am investigating Yocto for a build
system here. Part of my requirements for a build system is auditable/tracea=
ble
builds that can be replicated long into the future (our company has a 10
year warranty on our products, and we build products for the multidecade
term). Initial examination of Yocto shows that it builds packages from
a number of different domains online, which will not meet our requirements
- we&#39;ll have to store these packages to ensure these packages exist in
the correct version long into the future. =A0I know we can manually
edit the SRC_URI setting in .bb files, but the more general problem of
package archiving exists. </font>
<br>
<br><font face=3D"sans-serif">I am interested in any information or
recommendations other users of the Yocto system have on how they have solve=
d
this sort of design constraint.</font>
<br>
<br><font face=3D"sans-serif">- - -<br>
Regards,<br>
Paul Nathan</font><br><br></blockquote><div>Paul,<br><br>My corrent project=
 is still on oe-classic not on yocto, but we also aim for reproducible buil=
ds. <br>Basically we perform the following steps.<br><br>checkout the opemb=
edded repo. We use a specific hash not head as we do not want unexpected up=
dates<br>
create a tarball of the git tree<br>build your product<br>save all files in=
 the downloads dir.<br>put that on a local ftp mirror, add a premirror for =
that ftp mirror <br> rebuild only using that mirror (e.g. disallow your bui=
ld host to go to another external system than your ftp mirror.<br>
archive your git tarball and the saved downloads dir<br><br>That&#39;s it.<=
br>Actually you might then also want to put the stuff on your local ftp mir=
ror as well as the oe tarball on a public ftp site in order to fulfill your=
 GPL obligations <br>
<br>Good luck!<br>Frans<br></div></div><br>

--20cf3079b68877656004b7c2c1a4--

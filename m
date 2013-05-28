Return-Path: <satyaswaroop.damarla@gmail.com>
Received: from mail-vc0-f170.google.com (mail-vc0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B36FFE014B4
	for <yocto@yoctoproject.org>; Tue, 28 May 2013 04:57:41 -0700 (PDT)
Received: by mail-vc0-f170.google.com with SMTP id gf11so5475371vcb.29
	for <yocto@yoctoproject.org>; Tue, 28 May 2013 04:57:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=b5v1xBkqc7SvW/+1sTd8ndK1owZYAXt7K5i+PLzOgdA=;
	b=wqYf2DaMuRhm32JWiMGWA+qvKJo8K1tj3pS6WGCLPzQr+O89xhgSXKDa/ZbX8k9a6l
	aFD1VpZruM9NAkzPiYH6MwYPmmU8DN714U71HM5uP5IJ4kPfzgeB0+pTWVlpgFGh8vSo
	Sqokf/M+zxhgQIQFOkNCa68+rpvBOkoXMLyRgUCTPiXvb7tDWdaZ3uGI60vYvP4TwTNm
	pWvEQnTVQODoTxl2ggqMoxE2j1gvDcPiSE1YRxhKCcTVWg4IsOph0ysacNLffgGiMwtD
	4uoU1x3KUmRAobkMFsajfGmg7TPSiqRJN1K8Fv0pBODLWwRBrMf/FxlN92YSSwxBKgTo
	OS7A==
MIME-Version: 1.0
X-Received: by 10.52.65.238 with SMTP id a14mr14638681vdt.24.1369742261071;
	Tue, 28 May 2013 04:57:41 -0700 (PDT)
Received: by 10.52.179.33 with HTTP; Tue, 28 May 2013 04:57:41 -0700 (PDT)
In-Reply-To: <CAAGt+t1SvAkQik=jAr5xPPBe7NE-VOwbDhLTnszst7NKF5W5TA@mail.gmail.com>
References: <CAAGt+t1SvAkQik=jAr5xPPBe7NE-VOwbDhLTnszst7NKF5W5TA@mail.gmail.com>
Date: Tue, 28 May 2013 13:57:41 +0200
Message-ID: <CAFMfyzKxq626HNkNPGFW9ADeaWWDQHR7UWziJf2tZ9pXODQpgw@mail.gmail.com>
From: Satya Swaroop Damarla <satyaswaroop.damarla@gmail.com>
To: Zafrullah Syed <zafrullahmehdi@gmail.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Mailman-Approved-At: Tue, 28 May 2013 12:08:12 -0700
Subject: Re: Hello world-Checksum error
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
X-List-Received-Date: Tue, 28 May 2013 11:57:41 -0000
Content-Type: multipart/alternative; boundary=20cf307f3372e7c31604ddc5f8f6

--20cf307f3372e7c31604ddc5f8f6
Content-Type: text/plain; charset=ISO-8859-1

Hi,

Please remove the $ sign in SRC_URI and retry building the package.. I
think it is the issue


On Tue, May 28, 2013 at 1:46 PM, Zafrullah Syed <zafrullahmehdi@gmail.com>wrote:

> Hi all,
>
> I am trying to add Hello world recipe, everything was going good but after
> giving bitbake <target> command it breaks with the following error:
>
> siguser@siguser:~/yocto2013-05-08/poky/build$ *bitbake
> gumstix-console-image*
>
> ERROR: ExpansionError during parsing
> /home/siguser/yocto2013-05-08/poky/meta-bebot/recipes-bebot/hello/hello.bb:
> Failure expanding expression ${@bb.fetch.get_checksum_file_list(d)} which
> triggered exception NoMethodError: Could not find a fetcher which supports
> the URL: '${ftp://ftp.gnu.org/gnu}/hello/hello-${2.7}.tar.gz'
> ERROR: Command execution failed: Exited with 1
>
>
> *My hello.bb file is*:
>
> DESCRIPTION = "GNU Helloworld application"
> SECTION = "examples"
> LICENSE = "GPLv3+"
> LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
> PR = "r0"
> SRC_URI = "${ftp://ftp.gnu.org/gnu}/hello/hello-${2.7}.tar.gz"
> inherit autotools gettext
>
> I downloaded hello-2.7.tar.gz -> extracted -> ran md5sum against COPYING
> -> got md5 -> added that md5 to my hello.bb file.
> Any ideas where I am doing wrong?
>
>
> --
> Regards,
> Zafrullah Syed
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--20cf307f3372e7c31604ddc5f8f6
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div style>Please remove the $ sign in S=
RC_URI and retry building the package.. I think it is the issue</div></div>=
<div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Tue, May 2=
8, 2013 at 1:46 PM, Zafrullah Syed <span dir=3D"ltr">&lt;<a href=3D"mailto:=
zafrullahmehdi@gmail.com" target=3D"_blank">zafrullahmehdi@gmail.com</a>&gt=
;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi all,<div><br></div><div>=
I am trying to add Hello world recipe, everything was going good but after =
giving bitbake &lt;target&gt; command it breaks with the following error:</=
div>
<div><br clear=3D"all"><div>

<div><div>siguser@siguser:~/yocto2013-05-08/poky/build$ <b>bitbake gumstix-=
console-image</b></div></div><div><br></div><div>ERROR: ExpansionError duri=
ng parsing /home/siguser/yocto2013-05-08/poky/meta-bebot/recipes-bebot/hell=
o/<a href=3D"http://hello.bb" target=3D"_blank">hello.bb</a>: Failure expan=
ding expression ${@bb.fetch.get_checksum_file_list(d)} which triggered exce=
ption NoMethodError: Could not find a fetcher which supports the URL: &#39;=
${<a href=3D"ftp://ftp.gnu.org/gnu%7D/hello/hello-$%7B2.7%7D.tar.gz" target=
=3D"_blank">ftp://ftp.gnu.org/gnu}/hello/hello-${2.7}.tar.gz</a>&#39;</div>


<div>ERROR: Command execution failed: Exited with 1</div><div><br></div></d=
iv><div><br></div><div><b>My <a href=3D"http://hello.bb" target=3D"_blank">=
hello.bb</a> file is</b>:</div><div><br></div><div><div>DESCRIPTION =3D &qu=
ot;GNU Helloworld application&quot;=A0</div>


<div>SECTION =3D &quot;examples&quot;=A0</div><div>LICENSE =3D &quot;GPLv3+=
&quot;=A0</div><div>LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3Dd32239b=
cb673463ab874e80d47fae504&quot;=A0</div><div>PR =3D &quot;r0&quot;=A0</div>=
<div>SRC_URI =3D &quot;${<a href=3D"ftp://ftp.gnu.org/gnu%7D/hello/hello-$%=
7B2.7%7D.tar.gz" target=3D"_blank">ftp://ftp.gnu.org/gnu}/hello/hello-${2.7=
}.tar.gz</a>&quot;=A0</div>


<div>inherit autotools gettext=A0</div><div><br></div><div>I downloaded hel=
lo-2.7.tar.gz -&gt; extracted -&gt; ran md5sum against COPYING -&gt; got md=
5 -&gt; added that md5 to my <a href=3D"http://hello.bb" target=3D"_blank">=
hello.bb</a> file.</div>


<div>Any ideas where I am doing wrong?</div></div><span class=3D"HOEnZb"><f=
ont color=3D"#888888"><div><br></div><div><br></div>-- <br><span style=3D"f=
ont-family:arial,sans-serif;font-size:13px;border-collapse:collapse;color:r=
gb(136,136,136)">Regards,<br>
Zafrullah Syed</span><div>

<font color=3D"#888888" face=3D"arial, sans-serif"><span style=3D"border-co=
llapse:collapse"><br></span></font></div>
</font></span></div></div>
<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--20cf307f3372e7c31604ddc5f8f6--

Return-Path: <kergoth@gmail.com>
Received: from mail-la0-f49.google.com (mail-la0-f49.google.com
	[209.85.215.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38283E00799
	for <yocto@yoctoproject.org>; Fri,  6 Dec 2013 07:15:47 -0800 (PST)
Received: by mail-la0-f49.google.com with SMTP id er20so329575lab.8
	for <yocto@yoctoproject.org>; Fri, 06 Dec 2013 07:15:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=lduutafIxDXtevMHPhdg2PW/x9fOV+hEOEOz0xCsOMA=;
	b=CKEDttcb+yKEpygQXI2X9n9hicm/raq4E5pUBXORzglbClgFIvFIayaRdiXRmDyORt
	YrqyStskbCIEI9fTkoJB2TtNtZ64F9wdmXXxsonQ5T+7JwWPyX+VS//OXj2XatGqdOQE
	mS5wnzh6O676ghHiBISo0Wd9IZrP/aCbjAYCBZZzhJYzW0SAEps/3awQ1IcXNXKrj9gA
	RW912NWC/vKWhMFS+8bAryfyB3qFabTGExfzgkHeVkJLqktzymtiZqude6hBHcvSpsqZ
	sHpt0Wgz3l67bwyI+6+Hdm8/xVUVa+ibDoygxCwAZ+uM2OLtHVE0FpL5zLaRI/xlTSy/
	GYQw==
X-Received: by 10.112.185.67 with SMTP id fa3mr1030008lbc.28.1386342946201;
	Fri, 06 Dec 2013 07:15:46 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.114.176.201 with HTTP; Fri, 6 Dec 2013 07:15:26 -0800 (PST)
In-Reply-To: <52A1E867.40604@mlbassoc.com>
References: <52A1E867.40604@mlbassoc.com>
From: Chris Larson <clarson@kergoth.com>
Date: Fri, 6 Dec 2013 08:15:26 -0700
X-Google-Sender-Auth: 87CMBfsxCzzYqkuEjgVXG1rIdLk
Message-ID: <CABcZANmvO-f5MVmHcHUWvEoD4sz5vziJcvVCX-XVM3uvefrf4Q@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Dealing with new git fetcher
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
X-List-Received-Date: Fri, 06 Dec 2013 15:15:48 -0000
Content-Type: multipart/alternative; boundary=001a11c32da4d8662e04ecdf1e40

--001a11c32da4d8662e04ecdf1e40
Content-Type: text/plain; charset=UTF-8

On Fri, Dec 6, 2013 at 8:08 AM, Gary Thomas <gary@mlbassoc.com> wrote:

> The 'git' fetcher was recently changed to expect/need the branch
> name for the desired revision.  Many recipes don't have this and
> the revision is not on the master branch, hence leading to errors
> like this:
>   ERROR: Fetcher failure: Unable to find revision
> f89bc066db0569008418fac1a0408a9a57f2232f in branch master even from
> upstream
>   ERROR: Function failed: Fetcher failure for URL: 'git://github.com/
> boundarydevices/u-boot-imx6.git'. Unable to fetch URL from any source.
>   ERROR: Logfile of failure stored in: /local/imx6_new/tmp/work/
> sabrelite-amltd-linux-gnueabi/u-boot-script-boundary/v2013.
> 01+gitAUTOINC+f89bc066db-r0/temp/log.do_fetch.25272
>   ERROR: Task 144 (/local/poky-multi/meta-fsl-
> arm-extra/recipes-bsp/u-boot/u-boot-script-boundary_git.bb, do_fetch)
> failed with exit code '1'
>
> So the problem becomes how to identify the branch?  In the case
> above, I have a checked out copy of this repository and when I
> try to find the branch, I come up empty:
>   $ git branch --contains f89bc066db0569008418fac1a0408a9a57f2232f
>   $ git log f89bc066db0569008418fac1a0408a9a57f2232f
>   commit f89bc066db0569008418fac1a0408a9a57f2232f
>   Author: Eric Nelson <eric.nelson@boundarydevices.com>
>   Date:   Mon Aug 26 17:36:35 2013 -0700
>       i.MX6: nitrogen6x: Add Yocto boot script
>
> So I see that the commit is present, but when I ask what branch, I
> get nothing...
>

You asked git only about local branches.

$ git branch -a --contains f89bc066db0569008418fac1a0408a9a57f2232f
  remotes/origin/production-before-20131107
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a11c32da4d8662e04ecdf1e40
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Fri, Dec 6, 2013 at 8:08 AM, Gary Thomas <span dir=3D"ltr">&lt;<a href=
=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</=
span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div id=3D":8q" style=3D"overflow:hidden">The &#39;git&#39=
; fetcher was recently changed to expect/need the branch<br>


name for the desired revision. =C2=A0Many recipes don&#39;t have this and<b=
r>
the revision is not on the master branch, hence leading to errors<br>
like this:<br>
=C2=A0 ERROR: Fetcher failure: Unable to find revision f89bc066db0569008418=
fac1a0408a<u></u>9a57f2232f in branch master even from upstream<br>
=C2=A0 ERROR: Function failed: Fetcher failure for URL: &#39;git://<a href=
=3D"http://github.com/boundarydevices/u-boot-imx6.git" target=3D"_blank">gi=
thub.com/<u></u>boundarydevices/u-boot-imx6.<u></u>git</a>&#39;. Unable to =
fetch URL from any source.<br>


=C2=A0 ERROR: Logfile of failure stored in: /local/imx6_new/tmp/work/<u></u=
>sabrelite-amltd-linux-gnueabi/<u></u>u-boot-script-boundary/v2013.<u></u>0=
1+gitAUTOINC+f89bc066db-r0/<u></u>temp/log.do_fetch.25272<br>
=C2=A0 ERROR: Task 144 (/local/poky-multi/meta-fsl-<u></u>arm-extra/recipes=
-bsp/u-boot/<a href=3D"http://u-boot-script-boundary_git.bb" target=3D"_bla=
nk">u<u></u>-boot-script-boundary_git.bb</a>, do_fetch) failed with exit co=
de &#39;1&#39;<br>


<br>
So the problem becomes how to identify the branch? =C2=A0In the case<br>
above, I have a checked out copy of this repository and when I<br>
try to find the branch, I come up empty:<br>
=C2=A0 $ git branch --contains f89bc066db0569008418fac1a0408a<u></u>9a57f22=
32f<br>
=C2=A0 $ git log f89bc066db0569008418fac1a0408a<u></u>9a57f2232f<br>
=C2=A0 commit f89bc066db0569008418fac1a0408a<u></u>9a57f2232f<br>
=C2=A0 Author: Eric Nelson &lt;<a href=3D"mailto:eric.nelson@boundarydevice=
s.com" target=3D"_blank">eric.nelson@boundarydevices.<u></u>com</a>&gt;<br>
=C2=A0 Date: =C2=A0 Mon Aug 26 17:36:35 2013 -0700<br>
=C2=A0 =C2=A0 =C2=A0 i.MX6: nitrogen6x: Add Yocto boot script<br>
<br>
So I see that the commit is present, but when I ask what branch, I<br>
get nothing...</div></blockquote></div><br>You asked git only about local b=
ranches.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extr=
a">$ git branch -a --contains f89bc066db0569008418fac1a0408a9a57f2232f<div =
class=3D"gmail_extra">

=C2=A0 remotes/origin/production-before-20131107</div>-- <br>Christopher La=
rson<br>clarson at kergoth dot com<br>Founder - BitBake, OpenEmbedded, Open=
Zaurus<br>Maintainer - Tslib<br>Senior Software Engineer, Mentor Graphics
</div></div>

--001a11c32da4d8662e04ecdf1e40--

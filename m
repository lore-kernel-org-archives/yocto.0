Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96CC7E005B4
	for <yocto@yoctoproject.org>; Tue,  6 Dec 2011 08:54:33 -0800 (PST)
Received: from mail-fx0-f52.google.com ([209.85.161.52])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 06 Dec 2011 08:54:32 -0800
Received: by faao24 with SMTP id o24so3984226faa.25
	for <yocto@yoctoproject.org>; Tue, 06 Dec 2011 08:54:31 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.216.137 with SMTP id oq9mr15789455igc.40.1323190470563;
	Tue, 06 Dec 2011 08:54:30 -0800 (PST)
Received: by 10.50.184.166 with HTTP; Tue, 6 Dec 2011 08:54:30 -0800 (PST)
In-Reply-To: <CAEsOVNdiJT7MfCBYgaimSd2jcQpJxfmgcYihvV_BDfhy6ZrshQ@mail.gmail.com>
References: <1408073.zz37vY4uZy@helios>
	<CAEsOVNdiJT7MfCBYgaimSd2jcQpJxfmgcYihvV_BDfhy6ZrshQ@mail.gmail.com>
Date: Tue, 6 Dec 2011 08:54:30 -0800
Message-ID: <CAPhnLPCC9Bq5=yE1Zyyq_H7ZrJ6DZ4tkr9ZLi_hXAXhUwKegxA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: McClintock Matthew-B29882 <B29882@freescale.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"saul.wold@intel.com" <saul.wold@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Sanity tested distributions list
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
X-List-Received-Date: Tue, 06 Dec 2011 16:54:33 -0000
Content-Type: multipart/alternative; boundary=14dae934048bf7d78204b36f4937

--14dae934048bf7d78204b36f4937
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Dec 6, 2011 at 7:59 AM, McClintock Matthew-B29882 <
B29882@freescale.com> wrote:

> On Tue, Dec 6, 2011 at 9:43 AM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
> > Hi all,
> >
> > We had some discussions [1] [2] about this last cycle but I don't feel we
> > reached a proper conclusion on the list of tested distributions we want
> to set
> > (SANITY_TESTED_DISTROS) and I assume we want to support a few more
> distros
> > (latest versions of Fedora & Ubuntu, presumably?). I'd like to update
> and re-
> > post the patch [3] so we can close bug #1096 [4] but for that we need to
> agree
> > on the list.
>
> I'm fairly comprehensively testing something close to the edison 1.1.1
> release on CentOS 5.5 and Ubuntu 10.04 LTS. We plan on adding more but
> maybe not in time for our next release.
>

The autobuilders are on openSuSE 11.4 x86-64 at this point. We lost
I'm testing on Ubuntu 10.10 (with a planned switch over on one dev machine
to openSuSE 12.1)

-b


> -M
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

--14dae934048bf7d78204b36f4937
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">On Tue, Dec 6, 2011 at 7:59 AM, McClinto=
ck Matthew-B29882 <span dir=3D"ltr">&lt;<a href=3D"mailto:B29882@freescale.=
com">B29882@freescale.com</a>&gt;</span> wrote:<br><blockquote class=3D"gma=
il_quote" style=3D"margin: 0pt 0pt 0pt 0.8ex; border-left: 1px solid rgb(20=
4, 204, 204); padding-left: 1ex;">
<div class=3D"im">On Tue, Dec 6, 2011 at 9:43 AM, Paul Eggleton<br>
&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com">paul.eggleton@linux.in=
tel.com</a>&gt; wrote:<br>
&gt; Hi all,<br>
&gt;<br>
&gt; We had some discussions [1] [2] about this last cycle but I don&#39;t =
feel we<br>
&gt; reached a proper conclusion on the list of tested distributions we wan=
t to set<br>
&gt; (SANITY_TESTED_DISTROS) and I assume we want to support a few more dis=
tros<br>
&gt; (latest versions of Fedora &amp; Ubuntu, presumably?). I&#39;d like to=
 update and re-<br>
&gt; post the patch [3] so we can close bug #1096 [4] but for that we need =
to agree<br>
&gt; on the list.<br>
<br>
</div>I&#39;m fairly comprehensively testing something close to the edison =
1.1.1<br>
release on CentOS 5.5 and Ubuntu 10.04 LTS. We plan on adding more but<br>
maybe not in time for our next release.<br></blockquote><div><br>The autobu=
ilders are on openSuSE 11.4 x86-64 at this point. We lost <br>I&#39;m testi=
ng on Ubuntu 10.10 (with a planned switch over on one dev machine to openSu=
SE 12.1)<br>
=A0<br>-b<br><br></div><blockquote class=3D"gmail_quote" style=3D"margin: 0=
pt 0pt 0pt 0.8ex; border-left: 1px solid rgb(204, 204, 204); padding-left: =
1ex;">
<font color=3D"#888888"><br>
-M<br>
</font><div><div></div><div class=3D"h5">__________________________________=
_____________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br><br clear=3D"all"><br>-- <br>Elizabeth F=
lanagan<br>Yocto Project<br>Build and Release<br>

--14dae934048bf7d78204b36f4937--

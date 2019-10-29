Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 282C3E00DF0; Tue, 29 Oct 2019 12:31:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.45 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (martin.jansa[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com
	[209.85.208.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29769E00DD5
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2019 12:31:01 -0700 (PDT)
Received: by mail-ed1-f45.google.com with SMTP id bm15so11682651edb.3
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2019 12:31:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=x28S6TceGis74BNeMN/vzo+hOvbQDJbwJiOGwHPSnmU=;
	b=DPdDtnO/Ynwl+x0A1MZcSczIHZpFy/WVmo6tR4S2Ujlw/Z81rvJYW/MOgeMywnsesR
	xpgIyJ9ohOIqfGMYHSEj7Qsfoa4JWQ27y7TbTY+w3dBRVrP+3jx+L28gOImighqGaA/D
	PFJp7gGRYBBWVqph7ClA1Qz+n5WTwXCaqvglujWXr3hAUC3hQ2DIfkMCw3IpefQs/hyS
	p3fMxN2dgCeDbG2YGrvcJzLz2MyLjRXGT64wJqcai9DAPYEAHeqe9QkDIsJKC9QEgtiX
	gzQCLUFpHNfx1Z1blonjYBgJb+f1JVwbGpsbdRn0czgqSuW8D6w4LHn67rJRI5Rh+5Wk
	OsFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=x28S6TceGis74BNeMN/vzo+hOvbQDJbwJiOGwHPSnmU=;
	b=DzOOgdKXCFwY6jWpYtah3PlxHHNgG+wifoCAWsCbmiLB7eUTadFv3lr0UzGSraHXj+
	B5ersZqyEN8aXQ7jiqXh4B1TFZ/xTwQj9SQmDq4B1evlrIVZ0aZynSVpzhZEr1lWbpef
	vHGHcMOTpQzhXusJclaxFm2XZB44miMCEloFyTRNF79Wwo70SbUMf0w/LKzKNjPO3Ym7
	ZseiYnlNXWrEql96KHj5hJv4XZchWtnGhpExuaLJ8Z9tshrlPmcRI95j0Y6k0Gmzv7Mn
	Xk5bwRI8VP+KcKBDKiInchoPXjY80ZaefTdcWiT7A7C+QoW2Yly0p9K8CKGR27fI0PI6
	bNCQ==
X-Gm-Message-State: APjAAAUUfktd7VXRifvq4M9CCwUFbCTYJjQGYBFoOyv9Gfo+XUR5qMFp
	v5X6/35bprQYBQgX0wvq0fYCI4kSbOqVA7B04gg=
X-Google-Smtp-Source: APXvYqxxnMPKTlBWVeI4nhra/xaqZ5ac5p+2XHaMXRS6hup+Tm56li/rdFbyQ5ujAHrTu1qKxoqJ3LZG0YavoBllZ5g=
X-Received: by 2002:a17:906:3ca:: with SMTP id
	c10mr4975371eja.140.1572377460136; 
	Tue, 29 Oct 2019 12:31:00 -0700 (PDT)
MIME-Version: 1.0
References: <5ed5-5db71680-7f-1be36200@40858189>
	<acd179f3-b31e-905d-81e6-bb9f8f4a58c3@intel.com>
	<d88b9f08c99863d5479e5c9c98a83c991da22d12.camel@redrectangle.org>
	<3cb7a48c-fdd6-5fc8-ab7f-e93c6cf3482e@intel.com>
	<e82f1125-b9dc-fa79-008a-30f8a74866ac@mvista.com>
In-Reply-To: <e82f1125-b9dc-fa79-008a-30f8a74866ac@mvista.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Tue, 29 Oct 2019 20:30:49 +0100
Message-ID: <CA+chaQdeYS3+wQEBdK-EDOEPbauz88YQ0VsPgSdT7N8vZ3gXqg@mail.gmail.com>
To: akuster <akuster@mvista.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: systemd Version Going Backwards on Warrior
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
X-List-Received-Date: Tue, 29 Oct 2019 19:31:03 -0000
Content-Type: multipart/alternative; boundary="000000000000f6e11f059611a774"

--000000000000f6e11f059611a774
Content-Type: text/plain; charset="UTF-8"

PR server never knows which one is really newer (in git).

It just returns max(LOCALCOUNT)+1 when it gets query for hash which isn't
stored in the database yet.

Either the build in question didn't use PRserv at all or PRserv's cache was
deleted between builds or the builds were using the same buildhistory but
different PRserv's or the first systemd SRCREV was reused from sstate
created on another server which doesn't share the PRserv (so it didn't
build it locally to query local PRserv to store 511646b8ac as LOCALCOUNT).

e.g. I've just built systemd with 511646b8ac hash as:
systemd_241+0+511646b8ac-r0.0webos4_qemux86.ipk
but reusing it from sstate created on another jenkins server as shown by
buildstats-summary:

NOTE: Build completion summary:
NOTE:   do_populate_sysroot: 100.0% sstate reuse(124 setscene, 0 scratch)
NOTE:   do_package_qa: 100.0% sstate reuse(10 setscene, 0 scratch)
NOTE:   do_packagedata: 100.0% sstate reuse(51 setscene, 0 scratch)
NOTE:   do_package_write_ipk: 100.0% sstate reuse(10 setscene, 0 scratch)
NOTE:   do_populate_lic: 100.0% sstate reuse(17 setscene, 0 scratch)

Then I've reverted oe-core commit 8b9703454cb2a8a0aa6b7942498f191935d547ea
to go back to c1f8ff8d0de7e303b8004b02a0a47d4cc103a7f8 systemd revision.

This time it haven't found valid sstate archive for it:
NOTE: Build completion summary:
NOTE:   do_populate_sysroot: 0.0% sstate reuse(0 setscene, 16 scratch)
NOTE:   do_package_qa: 0.0% sstate reuse(0 setscene, 19 scratch)
NOTE:   do_package: 15.8% sstate reuse(3 setscene, 16 scratch)
NOTE:   do_packagedata: 0.0% sstate reuse(0 setscene, 16 scratch)
NOTE:   do_package_write_ipk: 0.0% sstate reuse(0 setscene, 19 scratch)
NOTE:   do_populate_lic: 100.0% sstate reuse(2 setscene, 0 scratch)

and resulting .ipk has also +0:
systemd_241+0+c1f8ff8d0d-r0.0webos4_qemux86.ipk
but no warning is shown, because in this case it went from 511 to c1f.

Removing the revert again, doesn't trigger the warning again, because it
will be again reused from sstate (and QA checks won't get executed):
NOTE: Build completion summary:
NOTE:   do_populate_sysroot: 100.0% sstate reuse(16 setscene, 0 scratch)
NOTE:   do_package_qa: 100.0% sstate reuse(19 setscene, 0 scratch)
NOTE:   do_packagedata: 100.0% sstate reuse(16 setscene, 0 scratch)
NOTE:   do_package_write_ipk: 100.0% sstate reuse(19 setscene, 0 scratch)
NOTE:   do_populate_lic: 100.0% sstate reuse(2 setscene, 0 scratch)

And the local PRserv database still has only the c1f8ff8d0d hash,
because 511646b8ac was never really queried against this local PRserv.

cache$ sqlite3 prserv.sqlite3 "select * from PRMAIN_nohist where version
like 'AUTOINC-systemd-1%'"
AUTOINC-systemd-1_241+|qemux86|AUTOINC+c1f8ff8d0d|0

Also systemd recipe is using strange format with:
PV_append = "+${SRCPV}"

most recipes use "+git${SRCPV}" or "+gitr${SRCPV} to make it more clear
where this +0+hash came from.

So long story short: the change is correct, PRserv should handle this, but
there are many cases where it will fail (e.g.
https://bugzilla.yoctoproject.org/show_bug.cgi?id=5399), but that's not a
reason to start PE bumps everywhere.

Cheers,

On Tue, Oct 29, 2019 at 12:57 PM akuster <akuster@mvista.com> wrote:

>
>
> On 10/29/19 11:50 AM, Ross Burton wrote:
> > On 29/10/2019 04:41, Robert Joslyn wrote:
> >> On Mon, 2019-10-28 at 19:06 +0000, Ross Burton wrote:
> >>> On 28/10/2019 16:25, robert.joslyn@redrectangle.org wrote:
> >>>> I'm using buildhistory in one of my builds that creates a package
> >>>> feed, and a recent update to systemd on warrior triggered version-
> >>>> going-backwards errors:
> >>>>
> >>>> ERROR: systemd-conf-241+AUTOINC+511646b8ac-r0 do_packagedata: QA
> >>>> Issue: Package version for package systemd-conf-src went backwards
> >>>> which would break package feeds from (0:241+0+c1f8ff8d0d-r0 to
> >>>> 0:241+0+511646b8ac-r0) [version-going-backwards]
>
> Isn't this do to the hashes being different and the PR server can't
> really tell which one is newer?
>
>
> >>>>
> >>>> Should PE have been updated at the same time due to the hash making
> >>>> the version number go backwards? I can send a patch if that's all
> >>>> that's missing. Or is a PR server enough to prevent this? My debug
> >>>> builds do not use a PR server, but my production builds do use a PR
> >>>> server.
> >>>
> >>> If you're using feeds, you need to use a PR server.  This is *exactly*
> >>> what they are for.
> > >
> >
> >> The part I wasn't sure about was if the PR server helped in the case
> >> where
> >> PV went backwards. I know it works when PV stays the same but the
> >> package
> >> was rebuilt. But if it keeps the versions going forward no matter how PV
> >> changes, then I should be good. I should probably setup a separate PR
> >> server on my debug builds to avoid this kind of error.
> >
> > If the PV actually goes backwards then the PR service isn't useful, as
> > PV sorts before PR.
> >
> > However in this case the problem is that SRCREV should have a
> > incrementing counter (the +0+ should be +1+ in the rebuild) which I
> > believe comes from the PR service.  I may be wrong...
> >
> > Ross
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000f6e11f059611a774
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">PR server never knows which one is really newer (in git).<=
div><br></div><div>It just returns max(LOCALCOUNT)+1 when it gets query for=
 hash which isn&#39;t stored in the database yet.</div><div><br></div><div>=
Either the build in question didn&#39;t use PRserv at all or PRserv&#39;s c=
ache was deleted between builds or the builds were using the same buildhist=
ory but different PRserv&#39;s or the first systemd SRCREV was reused from =
sstate created on another server which doesn&#39;t share the PRserv (so it =
didn&#39;t build it locally to query local PRserv to store=C2=A0<span style=
=3D"color:rgb(80,0,80)">51164</span><span style=3D"color:rgb(80,0,80)">6b8a=
c as LOCALCOUNT).</span></div><div><br></div><div>e.g. I&#39;ve just built =
systemd with=C2=A0511646b8ac hash as:</div><div>systemd_241+0+511646b8ac-r0=
.0webos4_qemux86.ipk<br></div><div>but reusing it from sstate created on an=
other jenkins server as shown by buildstats-summary:</div><div><br></div><d=
iv>NOTE: Build completion summary:<br>NOTE: =C2=A0 do_populate_sysroot: 100=
.0% sstate reuse(124 setscene, 0 scratch)<br>NOTE: =C2=A0 do_package_qa: 10=
0.0% sstate reuse(10 setscene, 0 scratch)<br>NOTE: =C2=A0 do_packagedata: 1=
00.0% sstate reuse(51 setscene, 0 scratch)<br>NOTE: =C2=A0 do_package_write=
_ipk: 100.0% sstate reuse(10 setscene, 0 scratch)<br>NOTE: =C2=A0 do_popula=
te_lic: 100.0% sstate reuse(17 setscene, 0 scratch)<br></div><div><br></div=
><div>Then I&#39;ve reverted oe-core commit=C2=A08b9703454cb2a8a0aa6b794249=
8f191935d547ea to go back to=C2=A0c1f8ff8d0de7e303b8004b02a0a47d4cc103a7f8 =
systemd revision.</div><div><br></div><div>This time it haven&#39;t found v=
alid sstate archive for it:</div><div>NOTE: Build completion summary:<br>NO=
TE: =C2=A0 do_populate_sysroot: 0.0% sstate reuse(0 setscene, 16 scratch)<b=
r>NOTE: =C2=A0 do_package_qa: 0.0% sstate reuse(0 setscene, 19 scratch)<br>=
NOTE: =C2=A0 do_package: 15.8% sstate reuse(3 setscene, 16 scratch)<br>NOTE=
: =C2=A0 do_packagedata: 0.0% sstate reuse(0 setscene, 16 scratch)<br>NOTE:=
 =C2=A0 do_package_write_ipk: 0.0% sstate reuse(0 setscene, 19 scratch)<br>=
NOTE: =C2=A0 do_populate_lic: 100.0% sstate reuse(2 setscene, 0 scratch)<br=
></div><div><br></div><div>and resulting .ipk has also=C2=A0+0:</div><div>s=
ystemd_241+0+c1f8ff8d0d-r0.0webos4_qemux86.ipk<br></div><div>but no warning=
 is shown, because in this case it went from 511 to c1f.</div><div><br></di=
v><div>Removing the revert again, doesn&#39;t trigger the warning again, be=
cause it will be again reused from sstate (and QA checks won&#39;t get exec=
uted):</div><div>NOTE: Build completion summary:<br>NOTE: =C2=A0 do_populat=
e_sysroot: 100.0% sstate reuse(16 setscene, 0 scratch)<br>NOTE: =C2=A0 do_p=
ackage_qa: 100.0% sstate reuse(19 setscene, 0 scratch)<br>NOTE: =C2=A0 do_p=
ackagedata: 100.0% sstate reuse(16 setscene, 0 scratch)<br>NOTE: =C2=A0 do_=
package_write_ipk: 100.0% sstate reuse(19 setscene, 0 scratch)<br>NOTE: =C2=
=A0 do_populate_lic: 100.0% sstate reuse(2 setscene, 0 scratch)<br></div><d=
iv><br></div><div>And the local PRserv database still has only the c1f8ff8d=
0d hash, because=C2=A0511646b8ac was never really queried against this loca=
l PRserv.</div><div><br></div><div>cache$ sqlite3 prserv.sqlite3 &quot;sele=
ct * from PRMAIN_nohist where version like &#39;AUTOINC-systemd-1%&#39;&quo=
t;<br>AUTOINC-systemd-1_241+|qemux86|AUTOINC+c1f8ff8d0d|0<br></div><div><br=
></div><div>Also systemd recipe is using strange format with:<br></div><div=
>PV_append =3D &quot;+${SRCPV}&quot;</div><div><br></div><div>most recipes =
use &quot;+git${SRCPV}&quot; or &quot;+gitr${SRCPV} to make it more clear w=
here this=C2=A0+0+hash came from.</div><div><br></div><div>So long story sh=
ort: the change is correct, PRserv should handle this, but there are many c=
ases where it will fail (e.g.=C2=A0<a href=3D"https://bugzilla.yoctoproject=
.org/show_bug.cgi?id=3D5399">https://bugzilla.yoctoproject.org/show_bug.cgi=
?id=3D5399</a>), but that&#39;s not a reason to start PE bumps everywhere.<=
/div><div><br></div><div>Cheers,</div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct 29, 2019 at 12:57 PM akus=
ter &lt;<a href=3D"mailto:akuster@mvista.com" target=3D"_blank">akuster@mvi=
sta.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><br>
<br>
On 10/29/19 11:50 AM, Ross Burton wrote:<br>
&gt; On 29/10/2019 04:41, Robert Joslyn wrote:<br>
&gt;&gt; On Mon, 2019-10-28 at 19:06 +0000, Ross Burton wrote:<br>
&gt;&gt;&gt; On 28/10/2019 16:25, <a href=3D"mailto:robert.joslyn@redrectan=
gle.org" target=3D"_blank">robert.joslyn@redrectangle.org</a> wrote:<br>
&gt;&gt;&gt;&gt; I&#39;m using buildhistory in one of my builds that create=
s a package<br>
&gt;&gt;&gt;&gt; feed, and a recent update to systemd on warrior triggered =
version-<br>
&gt;&gt;&gt;&gt; going-backwards errors:<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; ERROR: systemd-conf-241+AUTOINC+511646b8ac-r0 do_packageda=
ta: QA<br>
&gt;&gt;&gt;&gt; Issue: Package version for package systemd-conf-src went b=
ackwards<br>
&gt;&gt;&gt;&gt; which would break package feeds from (0:241+0+c1f8ff8d0d-r=
0 to<br>
&gt;&gt;&gt;&gt; 0:241+0+511646b8ac-r0) [version-going-backwards]<br>
<br>
Isn&#39;t this do to the hashes being different and the PR server can&#39;t=
<br>
really tell which one is newer?<br>
<br>
<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Should PE have been updated at the same time due to the ha=
sh making<br>
&gt;&gt;&gt;&gt; the version number go backwards? I can send a patch if tha=
t&#39;s all<br>
&gt;&gt;&gt;&gt; that&#39;s missing. Or is a PR server enough to prevent th=
is? My debug<br>
&gt;&gt;&gt;&gt; builds do not use a PR server, but my production builds do=
 use a PR<br>
&gt;&gt;&gt;&gt; server.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; If you&#39;re using feeds, you need to use a PR server.=C2=A0 =
This is *exactly*<br>
&gt;&gt;&gt; what they are for.<br>
&gt; &gt;<br>
&gt;<br>
&gt;&gt; The part I wasn&#39;t sure about was if the PR server helped in th=
e case<br>
&gt;&gt; where<br>
&gt;&gt; PV went backwards. I know it works when PV stays the same but the<=
br>
&gt;&gt; package<br>
&gt;&gt; was rebuilt. But if it keeps the versions going forward no matter =
how PV<br>
&gt;&gt; changes, then I should be good. I should probably setup a separate=
 PR<br>
&gt;&gt; server on my debug builds to avoid this kind of error.<br>
&gt;<br>
&gt; If the PV actually goes backwards then the PR service isn&#39;t useful=
, as<br>
&gt; PV sorts before PR.<br>
&gt;<br>
&gt; However in this case the problem is that SRCREV should have a<br>
&gt; incrementing counter (the +0+ should be +1+ in the rebuild) which I<br=
>
&gt; believe comes from the PR service.=C2=A0 I may be wrong...<br>
&gt;<br>
&gt; Ross<br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--000000000000f6e11f059611a774--

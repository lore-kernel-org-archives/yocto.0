Return-Path: <jfabernathy@gmail.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4918E011C9
	for <yocto@yoctoproject.org>; Wed,  3 Oct 2012 06:27:51 -0700 (PDT)
Received: by obhx4 with SMTP id x4so9550844obh.35
	for <yocto@yoctoproject.org>; Wed, 03 Oct 2012 06:27:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=MFsPg5A+K+0tk0isjgkB/gS+NQ30zbBEX8C4eCSHMDc=;
	b=wS4gLD76NX3KK3nI0P2PHY0PNt/yl+KtDekF5IRWmo8Dwg6vNUlCJz60+WDdTqqbGo
	oD3AKsnzBvsl5p26FGyqGO3LRgIHBsCKx1m7+NHWPHfRfA177k7VuXZPqBCm6vn8M9W+
	4XQZO9juMw3bsKum7tgORMyPjgiWpASvMzXjRQdTnRLMb8d/kFfoSlYL1C4hdvTrXhH5
	1/Q1lN6h9FpGRZW/Q52nmct7wOus4zaOIBe66fECFutblwN2qlIoTlLljBWYcjYrXSnr
	pkLeChg1ph+cHNf3q7FjjZDJP5RilJoTGIB32CIKVKFSTD0DfgMb4GakPiZmodjrnhHO
	P6vA==
MIME-Version: 1.0
Received: by 10.182.216.71 with SMTP id oo7mr1445754obc.70.1349270869235; Wed,
	03 Oct 2012 06:27:49 -0700 (PDT)
Received: by 10.76.143.225 with HTTP; Wed, 3 Oct 2012 06:27:49 -0700 (PDT)
In-Reply-To: <CAJTo0LbcKzbJ7-2jKoHRPzYeHx_ydYf_vULzwjsWy0zG4Q4bBQ@mail.gmail.com>
References: <CANFv2EnwjYa=DNKfiR9y9g+G_j=8WXyVZtBX_2gKcfM7Ga4MqQ@mail.gmail.com>
	<CAJTo0LbcKzbJ7-2jKoHRPzYeHx_ydYf_vULzwjsWy0zG4Q4bBQ@mail.gmail.com>
Date: Wed, 3 Oct 2012 09:27:49 -0400
Message-ID: <CANFv2EkD5NtRvbe2-fNnmt8df66HAu2r=hzCMBm-Zw4EeidBHw@mail.gmail.com>
From: James Abernathy <jfabernathy@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Correct procedure for rebuilding after a git pull
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
X-List-Received-Date: Wed, 03 Oct 2012 13:27:52 -0000
Content-Type: multipart/alternative; boundary=f46d044785c7ddd8e404cb279a26

--f46d044785c7ddd8e404cb279a26
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Oct 3, 2012 at 9:21 AM, Burton, Ross <ross.burton@intel.com> wrote:

> On 3 October 2012 14:05, James Abernathy <jfabernathy@gmail.com> wrote:
> > Now I see a bunch of patches pushed to Denzil branch and I want to test
> > them.  My build directory is untouched since the successful build before.
> > What do I do to rebuild my project to include the latest patches.  I've
> > tried things like "bitbake -c cleansstate core-image-cdv-media" before
> the
> > new "bitbake core-image-cdv-media" and I've tried just rebaking by
> itself.
> > Something always fails.  I've learned that to really test I have to
> > completely delete my build directory saving only my local.conf and
> > bblayer.conf.
>
> Just git pull ; bitbake should work -- all of the packages that
> changed will rebuild without any problems.
>
> That's the theory, and everyone who works against oe-core/poky master
> does this ever day (including me).
>
> Can you give an example of something that fails?
>


> The most recent patch update to Denzil included some Cedartrail BSP
> updates to the CDV PVR driver.  I was traveling last week and I was out of
> date on my poky and meta-intel by at least that long.  Monday was the
> pull.  So when the rebuild happened, I got a cdv-pvr driver configuration
> error.  I didn't look into why because of my experience of this taking
> longer than a complete rebuild.  So I deleted the build directory and did
> the rebuild.  And I didn't get the error on the rebuild.  Everything still
> works fine for me on that BSP.


Jim A


> Ross
>

--f46d044785c7ddd8e404cb279a26
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br>
<div class=3D"gmail_quote">On Wed, Oct 3, 2012 at 9:21 AM, Burton, Ross <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blan=
k">ross.burton@intel.com</a>&gt;</span> wrote:<br>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote">
<div class=3D"im">On 3 October 2012 14:05, James Abernathy &lt;<a href=3D"m=
ailto:jfabernathy@gmail.com">jfabernathy@gmail.com</a>&gt; wrote:<br>&gt; N=
ow I see a bunch of patches pushed to Denzil branch and I want to test<br>
&gt; them. =A0My build directory is untouched since the successful build be=
fore.<br>&gt; What do I do to rebuild my project to include the latest patc=
hes. =A0I&#39;ve<br>&gt; tried things like &quot;bitbake -c cleansstate cor=
e-image-cdv-media&quot; before the<br>
&gt; new &quot;bitbake core-image-cdv-media&quot; and I&#39;ve tried just r=
ebaking by itself.<br>&gt; Something always fails. =A0I&#39;ve learned that=
 to really test I have to<br>&gt; completely delete my build directory savi=
ng only my local.conf and<br>
&gt; bblayer.conf.<br><br></div>Just git pull ; bitbake should work -- all =
of the packages that<br>changed will rebuild without any problems.<br><br>T=
hat&#39;s the theory, and everyone who works against oe-core/poky master<br=
>
does this ever day (including me).<br><br>Can you give an example of someth=
ing that fails?<br></blockquote>
<div>=A0</div>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote">The most recent patch update to Denzi=
l included some Cedartrail BSP updates to the CDV PVR driver.=A0 I was trav=
eling last week and I was out of date on my=A0poky and meta-intel by at lea=
st that long.=A0=A0Monday was the pull.=A0 So when the rebuild happened, I =
got a cdv-pvr driver configuration error.=A0 I didn&#39;t look into why bec=
ause of my experience of this taking longer than a complete rebuild.=A0 So =
I deleted the build directory and did the rebuild.=A0 And I didn&#39;t get =
the error=A0on the rebuild.=A0 Everything still works fine for me on that B=
SP.</blockquote>

<div>=A0</div>
<div>Jim A</div>
<div>=A0</div>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote"><span class=3D"HOEnZb"><font color=3D=
"#888888">Ross<br></font></span></blockquote></div><br>

--f46d044785c7ddd8e404cb279a26--

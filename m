Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A135BE007D3; Wed,  2 Nov 2016 03:05:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58431E006E9
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2016 03:05:28 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga101.fm.intel.com with ESMTP; 02 Nov 2016 03:05:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,583,1473145200"; 
	d="scan'208,217";a="186683501"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.15.10])
	by fmsmga004.fm.intel.com with ESMTP; 02 Nov 2016 03:05:26 -0700
Message-ID: <1478081125.22552.6.camel@linux.intel.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
To: "Burton, Ross" <ross.burton@intel.com>, Bas Mevissen <abuse@basmevissen.nl>
Date: Wed, 02 Nov 2016 10:05:25 +0000
In-Reply-To: <CAJTo0Lat2oz3dpRXC6tSve3drTMB+=93mfR=0-UjxYtfgqLrxw@mail.gmail.com>
References: <30C2D590D16A5C46ADFE6521910377987FF67BEA@AZ-US1EXMB02.global.avaya.com>
	<CAJTo0LaVygRC3Z5eVtgGVkCU0mgYv7SGx07+1_om0GKkf6fHvw@mail.gmail.com>
	<21973d42-dc69-ee7b-031d-ac5544823c8f@basmevissen.nl>
	<CAJTo0Lat2oz3dpRXC6tSve3drTMB+=93mfR=0-UjxYtfgqLrxw@mail.gmail.com>
X-Mailer: Evolution 3.20.5 (3.20.5-1.fc24) 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto 2.2 Morty supported Linux Distros
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
X-List-Received-Date: Wed, 02 Nov 2016 10:05:32 -0000
Content-Type: multipart/alternative; boundary="=-8YB2D0pF4A/D/+joFvPh"

--=-8YB2D0pF4A/D/+joFvPh
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2016-11-01 at 17:11 +0000, Burton, Ross wrote:
> 
> > > On 1 November 2016 at 17:05, Bas Mevissen <abuse@basmevissen.nl>
wrote:
> > What are the criteria to call a distro supported?
> > 
> 
> > > The short version is that it's a distro that doesn't change too much,
is still supported, and we have builders on
autobuilder.yoctoproject.org running that distro.
> 
> The Centos mismatch is annoying, can you please file a bug?
> 

We previously had CentOS-7.* which was changed to CentOSLinux-7 in
meta-yocto ce1fe45e9a18a82e2b95ea7e0b088ba595ceeee6.

What's going on here? Are CentOS really changing the value of their
Distributor ID for a released version?
Or is the issue here that they aren't using consistent values for
Distributor ID and its equivalent across /etc/lsb-release, /etc/redhat-
release, /etc/os-release and other potential sources?

Can someone with a CentOS 7 box pastebin their /etc/lsb-release,
/etc/redhat-release and /etc/os-release?

Joshua
> 

--=-8YB2D0pF4A/D/+joFvPh
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div>On Tue, 2016-11-01 at 17:11 +0000, Burton, Ro=
ss wrote:</div><blockquote type=3D"cite"><div dir=3D"ltr"><div class=3D"gma=
il_extra"><br><div class=3D"gmail_quote">On 1 November 2016 at 17:05, Bas M=
evissen <span dir=3D"ltr">&lt;<a href=3D"mailto:abuse@basmevissen.nl" targe=
t=3D"_blank">abuse@basmevissen.nl</a>&gt;</span> wrote:<br><blockquote type=
=3D"cite"><div id=3D":1mt" class=3D"a3s aXjCH m15820dc2cabc4df9">What are t=
he criteria to call a distro supported?<span class=3D""><br></span></div><b=
r></blockquote></div><br>The short version is that it's a distro that doesn=
't change too much, is still supported, and we have builders on <a href=3D"=
http://autobuilder.yoctoproject.org">autobuilder.yoctoproject.org</a> runni=
ng that distro.</div><div class=3D"gmail_extra"><br></div><div>The Centos m=
ismatch is annoying, can you please file a bug?</div></div></blockquote><di=
v><br></div><div>We previously had CentOS-7.* which was changed to CentOSLi=
nux-7 in meta-yocto ce1fe45e9a18a82e2b95ea7e0b088ba595ceeee6.</div><div><br=
></div><div>What's going on here? Are CentOS really changing the value of t=
heir Distributor ID for a released version?</div><div>Or is the issue here =
that they aren't using consistent values for Distributor ID and its equival=
ent across /etc/lsb-release, /etc/redhat-release, /etc/os-release and other=
 potential sources?</div><div><br></div><div>Can someone with a CentOS 7 bo=
x pastebin their /etc/lsb-release, /etc/redhat-release and /etc/os-release?=
</div><div><br></div><div>Joshua</div><blockquote type=3D"cite">
</blockquote></body></html>

--=-8YB2D0pF4A/D/+joFvPh--

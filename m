Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8D17E00970; Thu, 12 Jan 2017 07:39:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33E94E00953
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 07:39:13 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga104.fm.intel.com with ESMTP; 12 Jan 2017 07:39:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,219,1477983600"; 
	d="scan'208,217";a="921777492"
Received: from oamoraso-mobl.amr.corp.intel.com ([10.254.1.5])
	by orsmga003.jf.intel.com with ESMTP; 12 Jan 2017 07:39:12 -0800
From: Tim Orling <timothy.t.orling@linux.intel.com>
Message-Id: <990F24BD-1C6F-4985-8E33-0C8E5B59E84A@linux.intel.com>
Mime-Version: 1.0 (Mac OS X Mail 10.2 \(3259\))
Date: Thu, 12 Jan 2017 07:39:11 -0800
In-Reply-To: <CAJTo0LZiwodwfYbokKD1n9hK_ddxYFFzpTiLixZSkVnzTtQxVQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
References: <F2336301-06DF-41BD-B64E-82D421DB9366@sentientblue.com>
	<CAJTo0LZiwodwfYbokKD1n9hK_ddxYFFzpTiLixZSkVnzTtQxVQ@mail.gmail.com>
X-Mailer: Apple Mail (2.3259)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building on MacOS X
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
X-List-Received-Date: Thu, 12 Jan 2017 15:39:17 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_DD474032-EA7A-4D22-8314-64F6D8DC2895"

--Apple-Mail=_DD474032-EA7A-4D22-8314-64F6D8DC2895
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

You can also build using Docker containers:
https://github.com/crops/docker-win-mac-docs/wiki =
<https://github.com/crops/docker-win-mac-docs/wiki>

> On Jan 12, 2017, at 7:34 AM, Burton, Ross <ross.burton@intel.com> =
wrote:
>=20
>=20
> On 12 January 2017 at 15:14, Roger Smith <roger@sentientblue.com =
<mailto:roger@sentientblue.com>> wrote:
> Is there any documentation for running the Yocto build system on Mac =
OS X or macOS as Apple now calls it? I am working with the Intel Aero =
board. Before I go down the rabbit hole of fixing issues like this one =
(and I am using the bash shell), I=E2=80=99d like to know if anyone has =
build it on os x before.
>=20
> If you install all of the GNU tools using brew or similar and put them =
first on $PATH then you can get bitbake started.  Then you need to stub =
out the linux-specific bits in bitbake.  I've previously started on this =
work already =
(http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=3Dross/darw=
in =
<http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=3Dross/darw=
in>).  The next step is figuring out how to configure OE to build and =
link natively on OSX using LLVM instead of GCC.
>=20
> However all of this is mostly academic because in Sierra (iirc) =
onwards there is tighter security on processes, which means that pseudo =
won't work even if you port it to macOS.
>=20
> So unless you fancy some non-trivial engineering the short version is =
just use something like Docker to run a Linux system on your Mac.
>=20
> Ross
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_DD474032-EA7A-4D22-8314-64F6D8DC2895
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D"">You can also build using Docker containers:<div class=3D""><a =
href=3D"https://github.com/crops/docker-win-mac-docs/wiki" =
class=3D"">https://github.com/crops/docker-win-mac-docs/wiki</a></div><div=
 class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Jan 12, 2017, at 7:34 AM, Burton, Ross &lt;<a =
href=3D"mailto:ross.burton@intel.com" =
class=3D"">ross.burton@intel.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D""><div class=3D"gmail_extra"><br class=3D""><div =
class=3D"gmail_quote">On 12 January 2017 at 15:14, Roger Smith <span =
dir=3D"ltr" class=3D"">&lt;<a href=3D"mailto:roger@sentientblue.com" =
target=3D"_blank" class=3D"">roger@sentientblue.com</a>&gt;</span> =
wrote:<br class=3D""><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px =
0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left=
-style:solid;padding-left:1ex"><div style=3D"word-wrap:break-word" =
class=3D"">Is there any documentation for running the Yocto build system =
on Mac OS X or macOS as Apple now calls it? I am working with the Intel =
Aero board. Before I go down the rabbit hole of fixing issues like this =
one (and I am using the bash shell), I=E2=80=99d like to know if anyone =
has build it on os x before.<div =
class=3D""></div></div></blockquote></div><br class=3D"">If you install =
all of the GNU tools using brew or similar and put them first on $PATH =
then you can get bitbake started.&nbsp; Then you need to stub out the =
linux-specific bits in bitbake.&nbsp; I've previously started on this =
work already (<a =
href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=3Dro=
ss/darwin" =
class=3D"">http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=3D=
ross/darwin</a>).&nbsp; The next step is figuring out how to configure =
OE to build and link natively on OSX using LLVM instead of =
GCC.</div><div class=3D"gmail_extra"><br class=3D""></div><div =
class=3D"gmail_extra">However all of this is mostly academic because in =
Sierra (iirc) onwards there is tighter security on processes, which =
means that pseudo won't work even if you port it to macOS.</div><div =
class=3D"gmail_extra"><br class=3D""></div><div class=3D"gmail_extra">So =
unless you fancy some non-trivial engineering the short version is just =
use something like Docker to run a Linux system on your Mac.</div><div =
class=3D"gmail_extra"><br class=3D""></div><div =
class=3D"gmail_extra">Ross</div></div>
-- <br class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto<br =
class=3D""></div></blockquote></div><br class=3D""></div></body></html>=

--Apple-Mail=_DD474032-EA7A-4D22-8314-64F6D8DC2895--

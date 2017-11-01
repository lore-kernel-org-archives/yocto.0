Return-Path: <adam.yh.lee@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE645E00C44; Wed,  1 Nov 2017 14:04:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (adam.yh.lee[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.181 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.181 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f181.google.com (mail-yw0-f181.google.com
	[209.85.161.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 837F6E00AAF
	for <yocto@yoctoproject.org>; Wed,  1 Nov 2017 14:04:03 -0700 (PDT)
Received: by mail-yw0-f181.google.com with SMTP id z195so2991217ywz.6
	for <yocto@yoctoproject.org>; Wed, 01 Nov 2017 14:04:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Vd8Aw31VDNjarxfFMH/99T05sadGowcjJ/i+ZUa0+Hc=;
	b=sx8jlNb3IXbzKbI/z1Tr3ljDoK3AqJMO5IeN9CKEFX9qodtz3UAkZuDyHRTtslvwNM
	ZLyQ85FBL8+bYm19XdYoI9Qoyx0a9Vg18/WOctjm6cUbtuaeyXCSbD43uzLVglFr6l8P
	Un2qikz7lwKvgX3BLDCEJ1KM4Dhnmxxm9RU5vIuPl0HmE6je8zKyUVHkNPVO0rabeDlH
	KWwDxiQPV+X8jc4PfM1wx8Iw6PzJmhtycOt6OTNCf7AN3YlIyLxyss/yDtEiTXQNJqxD
	i+tJui1In1X3W/1OPZfA/mOpfKecUpSk3GSAUkDPlZqE1tKS61ZTvMsVH3YV/viChgrU
	weXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Vd8Aw31VDNjarxfFMH/99T05sadGowcjJ/i+ZUa0+Hc=;
	b=EglO1nSIwJxXXbKphkhm8ir3BDtzCW3oUQOHjsdjTtsIH/aGA6U4697CFW5zKsTYQu
	zzR4cUobnrJxhBDEPDNabtQ+GffTkuGujj6jIH63GKV70cBQwvV/2R90+Vy6cDSbr4xT
	oJ0GgHLnwENZI7CwTAaIOafRvxrYsgxzfOR3bPrwGZ8lCpuk2iP4qSjaNyUp9ofq2Ql4
	aUeikczi3xftEfmzetY6ztKDcAdbGnV+9qlXAMPTg0Tb5+W6AjreqesUQ3wd9AjalCXF
	IIYGAEcVa8T1s8QEM3WrZYqDqD4jjc9w7NkB7/X8c9B2pXEOde5It5jhAr1bd2GiKVRN
	/AdA==
X-Gm-Message-State: AMCzsaUkmWbMHXbAzsXe+5DRy8FA9wSQ8woQNXXZKDMMzbGP2acpjueG
	Kg6o0JaSFEfFSQTkaGvGvVzW6IicmXTYcwTgrUU=
X-Google-Smtp-Source: ABhQp+TNK8Ngas1pwp/i5Ggu2DTNBnkRVN2M+aT+VEw57EXTK8Guy30x6IXzjIWJgVGXgoP5d1unzF/G1nE3AOAPcpI=
X-Received: by 10.129.159.16 with SMTP id w16mr802460ywg.479.1509570242597;
	Wed, 01 Nov 2017 14:04:02 -0700 (PDT)
MIME-Version: 1.0
References: <CAFeBWL7V1TNoGj4gpc5QkQ4mraFwUmvt77sAAxyGTmrivTQ-Mw@mail.gmail.com>
	<1509546479.13007.35.camel@collabora.co.uk>
	<CAFeBWL79uCL0tci-9YDTeUYLFZGoND1t7yx5rMi3rPJFNt9iOg@mail.gmail.com>
	<CAJTo0LbcS5eG2SxZpWiEXvw0+Nh5DPBJ9gxjb50S9ZfnNAKnwg@mail.gmail.com>
In-Reply-To: <CAJTo0LbcS5eG2SxZpWiEXvw0+Nh5DPBJ9gxjb50S9ZfnNAKnwg@mail.gmail.com>
From: Adam Lee <adam.yh.lee@gmail.com>
Date: Wed, 01 Nov 2017 21:03:52 +0000
Message-ID: <CAFeBWL7EzxmSUHpgb80rwB+cpkKuiZa7gKC0MHVgm5Y9QJ76eA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Checking for xwayland
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
X-List-Received-Date: Wed, 01 Nov 2017 21:04:04 -0000
Content-Type: multipart/alternative; boundary="94eb2c0bd48e12d93a055cf2365f"

--94eb2c0bd48e12d93a055cf2365f
Content-Type: text/plain; charset="UTF-8"

I believe something is incorrect in my distro level configuration. Apart
from including x11 and wayland in DISTRO_FEATURES, what else can I check to
build core-image-weston?

build@6e35408e8fa5:~/tisdk/build$ bitbake core-image-weston
NOTE: Started PRServer with DBfile:
/home/build/tisdk/build/cache/prserv.sqlite3, IP: 127.0.0.1, PORT: 42704,
PID: 13401
Loading cache: 100%
|###########################################################################################################|
Time: 0:00:02
Loaded 3286 entries from dependency cache.
Parsing recipes: 100%
|#########################################################################################################|
Time: 0:00:01
Parsing of 2538 .bb files complete (2537 cached, 1 parsed). 3286 targets,
272 skipped, 0 masked, 0 errors.
WARNING: No recipes available for:

/home/build/tisdk/sources/meta-openamp/recipes-bsp/device-tree/device-tree-generation_%.bbappend
NOTE: Resolving any missing task queue dependencies
*ERROR: Nothing RPROVIDES 'weston-xwayland' (but
/home/build/tisdk/sources/oe-core/meta/recipes-graphics/images/core-image-weston.bb
<http://core-image-weston.bb> RDEPENDS on or otherwise requires it)*
*NOTE: Runtime target 'weston-xwayland' is unbuildable, removing...*
*Missing or unbuildable dependency chain was: ['weston-xwayland']*
*ERROR: Required build target 'core-image-weston' has no buildable
providers.*
*Missing or unbuildable dependency chain was: ['core-image-weston',
'weston-xwayland']*

Summary: There was 1 WARNING message shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.



On Wed, Nov 1, 2017 at 12:53 PM Burton, Ross <ross.burton@intel.com> wrote:

> On 1 November 2017 at 15:58, Adam Lee <adam.yh.lee@gmail.com> wrote:
>
>> Thanks Fabien, I definitely don't have Xwayland in my rootfs. My manifest
>> is missing xserver-xorg-xwayland as well.
>>
>> Which image are you using? I thought including of  "x11 wayland" was
>> sufficient. Perhaps not..?
>>
>>
> Are you refering to DISTRO_FEATURES?  That just controls what is
> *available*, not what goes into a particular image.  As Fabien said,
> core-image-weston is the classic example of an image that has Weston.
>
> Ross
>

--94eb2c0bd48e12d93a055cf2365f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I believe something is incorrect in my distro level config=
uration. Apart from including x11 and wayland in DISTRO_FEATURES, what else=
 can I check to build core-image-weston?<div><div><br></div><div><div>build=
@6e35408e8fa5:~/tisdk/build$ bitbake core-image-weston</div><div>NOTE: Star=
ted PRServer with DBfile: /home/build/tisdk/build/cache/prserv.sqlite3, IP:=
 127.0.0.1, PORT: 42704, PID: 13401</div><div>Loading cache: 100% |########=
###########################################################################=
########################| Time: 0:00:02</div><div>Loaded 3286 entries from =
dependency cache.</div><div>Parsing recipes: 100% |########################=
###########################################################################=
######| Time: 0:00:01</div><div>Parsing of 2538 .bb files complete (2537 ca=
ched, 1 parsed). 3286 targets, 272 skipped, 0 masked, 0 errors.</div><div>W=
ARNING: No recipes available for:</div><div>=C2=A0 /home/build/tisdk/source=
s/meta-openamp/recipes-bsp/device-tree/device-tree-generation_%.bbappend</d=
iv><div>NOTE: Resolving any missing task queue dependencies</div><div><b>ER=
ROR: Nothing RPROVIDES &#39;weston-xwayland&#39; (but /home/build/tisdk/sou=
rces/oe-core/meta/recipes-graphics/images/<a href=3D"http://core-image-west=
on.bb">core-image-weston.bb</a> RDEPENDS on or otherwise requires it)</b></=
div><div><b>NOTE: Runtime target &#39;weston-xwayland&#39; is unbuildable, =
removing...</b></div><div><b>Missing or unbuildable dependency chain was: [=
&#39;weston-xwayland&#39;]</b></div><div><b>ERROR: Required build target &#=
39;core-image-weston&#39; has no buildable providers.</b></div><div><b>Miss=
ing or unbuildable dependency chain was: [&#39;core-image-weston&#39;, &#39=
;weston-xwayland&#39;]</b></div><div><br></div><div>Summary: There was 1 WA=
RNING message shown.</div><div>Summary: There were 2 ERROR messages shown, =
returning a non-zero exit code.</div></div><div><br></div><div><br></div></=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Wed, Nov 1, 20=
17 at 12:53 PM Burton, Ross &lt;<a href=3D"mailto:ross.burton@intel.com">ro=
ss.burton@intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<div dir=3D"ltr">On 1 November 2017 at 15:58, Adam Lee <span dir=3D"ltr">&l=
t;<a href=3D"mailto:adam.yh.lee@gmail.com" target=3D"_blank">adam.yh.lee@gm=
ail.com</a>&gt;</span> wrote:<br></div><div dir=3D"ltr"><div class=3D"gmail=
_extra"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"ltr">Thanks Fabien, I definitely don&#39;t have Xwayland in my rootfs. =
My manifest is missing xserver-xorg-xwayland as well.<div><br></div><div>Wh=
ich image are you using? I thought including of=C2=A0 &quot;x11 wayland&quo=
t; was sufficient. Perhaps not..?</div><div><br></div></div></blockquote><d=
iv><br></div></div></div></div><div dir=3D"ltr"><div class=3D"gmail_extra">=
<div class=3D"gmail_quote"><div>Are you refering to DISTRO_FEATURES?=C2=A0 =
That just controls what is *available*, not what goes into a particular ima=
ge.=C2=A0 As Fabien said, core-image-weston is the classic example of an im=
age that has Weston.</div></div></div></div><div dir=3D"ltr"><div class=3D"=
gmail_extra"><div class=3D"gmail_quote"><div><br></div><div>Ross=C2=A0</div=
></div></div></div></blockquote></div>

--94eb2c0bd48e12d93a055cf2365f--

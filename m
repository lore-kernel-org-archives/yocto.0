Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f44.google.com (mail-pb0-f44.google.com
	[209.85.160.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF89AE013EC
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2013 00:29:27 -0700 (PDT)
Received: by mail-pb0-f44.google.com with SMTP id uo1so5939767pbc.31
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2013 00:29:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to:x-mailer;
	bh=b7gNEpB/TtsFOkiQWA3LMt2ax7zcrceT/R5r/pPKAjk=;
	b=D5qKadrStW3OcbxRfjQtQPp13TFP12Zjsp1gusFqW964jx0DqVaRBJbIolAIBgdbiT
	ASP3L5SsiJdz3D8BVKrgaMB3gfcGn9hhowj+H1DZbo6yscY/yPjqR4ve1jNthQzCIN2X
	/m8W0q7PWqqe9JGUc0oC3u5rVEItJPagcDf85J+IZRn5lQ290ANTtVoBgbv9x5nzNvmF
	wbnvLOA8/TKK+WsqYEERcHYqW/JsI0WoR05u6rjUKw+gVcVaI3Tkwi/xEbUy9cP+aCMt
	QjKIJRgbDHqsvuk4uh5tRY6LBDkYL2fYJLWnGZ5fMVHtAJ9qr5c6fSooBdy2kKBlLqAZ
	yAbw==
X-Received: by 10.68.3.107 with SMTP id b11mr6351805pbb.118.1371713366805;
	Thu, 20 Jun 2013 00:29:26 -0700 (PDT)
Received: from bjupudi-sslvpn-nc.jnpr.net (natint3.juniper.net.
	[66.129.224.36]) by mx.google.com with ESMTPSA id
	eq5sm26660910pbc.15.2013.06.20.00.29.25 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 20 Jun 2013 00:29:26 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAFMfyzK9CusGuo40vWHdrq1dbD2fna-zTrBaiEQccfXUvhuBzg@mail.gmail.com>
Date: Thu, 20 Jun 2013 00:29:23 -0700
Message-Id: <F7494A5B-922D-43A9-A63B-4F1C83F93E81@gmail.com>
References: <CAFMfyzKMgx_6gJLO13ei7nr3fxaJg0-A3nG0=BCWQk5rH9p4TQ@mail.gmail.com>
	<CAJTo0LbzcSMRwoowq00MZr1G=+Vo-M6=VA=6HRuTBf6YMiBnAg@mail.gmail.com>
	<CAFMfyz+YoRDJ-5sC3ayaD+8oiY8rHyUWfyJnixcXbCsngYDUcA@mail.gmail.com>
	<CAFMfyzK9CusGuo40vWHdrq1dbD2fna-zTrBaiEQccfXUvhuBzg@mail.gmail.com>
To: DAMARLA Satya Swaroop <satyaswaroop.damarla@gmail.com>
X-Mailer: Apple Mail (2.1508)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Toolchain... Issues with systemd (probably)
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
X-List-Received-Date: Thu, 20 Jun 2013 07:29:28 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_8E45A9B9-BCF2-4CDD-BE6A-0EF015DA4A96"

--Apple-Mail=_8E45A9B9-BCF2-4CDD-BE6A-0EF015DA4A96
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1


On Jun 20, 2013, at 12:12 AM, DAMARLA Satya Swaroop =
<satyaswaroop.damarla@gmail.com> wrote:

> Any reasons why toolchains compile wihtout any issues on sysvinit and =
not with systemd?
>=20
>=20
> On Wed, Jun 19, 2013 at 3:11 PM, DAMARLA Satya Swaroop =
<swaroop.damarla@gmail.com> wrote:
> Yes... I thought the same and so, I made two build directories , one =
for sysvinit and the other for systemd and the errors I get abosulte no =
error when I try to populate_sdk under sysvinit but I get the following =
errors when I run the same under systemd.
>=20
> | The following packages have unmet dependencies:
> |  udev-dev : Depends: udev (=3D 182-r7) but 1:204-r0 is to be =
installed
> |             Recommends: libusb-dev but it is not installable
> |             Recommends: module-init-tools-dev but it is not =
installable
> |             Recommends: libkmod-dev but it is not installable
> | E: Unable to correct problems, you have held broken packages.


it seems you did not choose systemd as provider for udev. You should do =
that when you use systemd


> | DEBUG: Python function do_populate_sdk finished
> | ERROR: Function failed: populate_sdk_image (log file is located at =
/home/damarla/openYocto/poky/buildSmartCPUsystemd/tmp/work/smartcpu-poky-l=
inux-gnueabi/rootfs-smartcpu-sdk/1.0-r0/temp/log.do_populate_sdk.17015)
> ERROR: Task 10 =
(/home/damarla/openYocto/poky/meta-skidata/recipes-smartcpu/images/rootfs-=
smartcpu-sdk.bb, do_populate_sdk) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 4961 tasks of which 4960 didn't need to =
be rerun and 1 failed.
>=20
> Summary: 1 task failed:
>   =
/home/damarla/openYocto/poky/meta-skidata/recipes-smartcpu/images/rootfs-s=
martcpu-sdk.bb, do_populate_sdk
> Summary: There was 1 ERROR message shown, returning a non-zero exit =
code.
>=20
>  I don't understand why I dont get an error with sysvinit and get an =
error here....
>=20
>=20
> On Wed, Jun 19, 2013 at 2:11 PM, Burton, Ross <ross.burton@intel.com> =
wrote:
> On 19 June 2013 13:08, DAMARLA Satya Swaroop =
<swaroop.damarla@gmail.com> wrote:
> > I think I had to open the issue as its not closed... Here is more
> > clarity....
> >
> > The issue is I decided the problem may be with init_manager. I did =
two
> > builds one with sysvinit using traditional Poky distro and other one =
is
> > uisng systemd using new distribution which is different as we need a =
new
> > distribution for using systemd
> >
> > .. I didno t get any errors when i build using bitbake -c =
populate_sdk
> > rootfs-smartcpu with sysvinit and got build errors using systemd...
> >
> > Any possible resons what could have caused failure to build the =
toolchain?
>=20
> It really helps when you tell us what the errors are.
>=20
> Note that changing DISTRO_FEATURES in an existing build directory
> isn't supported and may well cause problems.
>=20
> Ross
>=20
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_8E45A9B9-BCF2-4CDD-BE6A-0EF015DA4A96
Content-Transfer-Encoding: 7bit
Content-Type: text/html;
	charset=iso-8859-1

<html><head><meta http-equiv="Content-Type" content="text/html charset=iso-8859-1"></head><body style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space; "><br><div><div>On Jun 20, 2013, at 12:12 AM, DAMARLA Satya Swaroop &lt;<a href="mailto:satyaswaroop.damarla@gmail.com">satyaswaroop.damarla@gmail.com</a>&gt; wrote:</div><br class="Apple-interchange-newline"><blockquote type="cite"><div dir="ltr">Any reasons why toolchains compile wihtout any issues on sysvinit and not with systemd?</div><div class="gmail_extra"><br><br><div class="gmail_quote">On Wed, Jun 19, 2013 at 3:11 PM, DAMARLA Satya Swaroop <span dir="ltr">&lt;<a href="mailto:swaroop.damarla@gmail.com" target="_blank">swaroop.damarla@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class="gmail_quote" style="margin: 0px 0px 0px 0.8ex; border-left-width: 1px; border-left-color: rgb(204, 204, 204); border-left-style: solid; padding-left: 1ex; position: static; z-index: auto; "><div dir="ltr">Yes... I thought the same and so, I made two build directories , one for sysvinit and the other for systemd and the errors I get abosulte no error when I try to <i>populate_sdk</i>&nbsp;under sysvinit but I get the following errors when I run the same under systemd.<div>

<br></div><div><div><i>| The following packages have unmet dependencies:</i></div><div><i>| &nbsp;udev-dev : Depends: udev (= 182-r7) but 1:204-r0 is to be installed</i></div><div><i>| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Recommends: libusb-dev but it is not installable</i></div>

<div><i>| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Recommends: module-init-tools-dev but it is not installable</i></div><div><i>| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Recommends: libkmod-dev but it is not installable</i></div><div><i>| E: Unable to correct problems, you have held broken packages.</i></div></div></div></blockquote></div></div></blockquote><div><br></div><div><br></div><div>it seems you did not choose systemd as provider for udev. You should do that when you use systemd</div><div><br></div><br><blockquote type="cite"><div class="gmail_extra"><div class="gmail_quote"><blockquote class="gmail_quote" style="margin: 0px 0px 0px 0.8ex; border-left-width: 1px; border-left-color: rgb(204, 204, 204); border-left-style: solid; padding-left: 1ex; position: static; z-index: auto; "><div dir="ltr"><div>

<div><i>| DEBUG: Python function do_populate_sdk finished</i></div><div><i>| ERROR: Function failed: populate_sdk_image (log file is located at /home/damarla/openYocto/poky/buildSmartCPUsystemd/tmp/work/smartcpu-poky-linux-gnueabi/rootfs-smartcpu-sdk/1.0-r0/temp/log.do_populate_sdk.17015)</i></div>

<div><i>ERROR: Task 10 (/home/damarla/openYocto/poky/meta-skidata/recipes-smartcpu/images/<a href="http://rootfs-smartcpu-sdk.bb/" target="_blank">rootfs-smartcpu-sdk.bb</a>, do_populate_sdk) failed with exit code '1'</i></div>
<div>
<i>NOTE: Tasks Summary: Attempted 4961 tasks of which 4960 didn't need to be rerun and 1 failed.</i></div><div><i><br></i></div><div><i>Summary: 1 task failed:</i></div><div><i>&nbsp; /home/damarla/openYocto/poky/meta-skidata/recipes-smartcpu/images/<a href="http://rootfs-smartcpu-sdk.bb/" target="_blank">rootfs-smartcpu-sdk.bb</a>, do_populate_sdk</i></div>

<div><i>Summary: There was 1 ERROR message shown, returning a non-zero exit code.</i></div></div><div><i><br></i></div><div><i>&nbsp;</i>I don't understand why I dont get an error with sysvinit and get an error here....</div>

</div><div class="HOEnZb"><div class="h5"><div class="gmail_extra"><br><br><div class="gmail_quote">On Wed, Jun 19, 2013 at 2:11 PM, Burton, Ross <span dir="ltr">&lt;<a href="mailto:ross.burton@intel.com" target="_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br>

<blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>On 19 June 2013 13:08, DAMARLA Satya Swaroop &lt;<a href="mailto:swaroop.damarla@gmail.com" target="_blank">swaroop.damarla@gmail.com</a>&gt; wrote:<br>


&gt; I think I had to open the issue as its not closed... Here is more<br>
&gt; clarity....<br>
&gt;<br>
&gt; The issue is I decided the problem may be with init_manager. I did two<br>
&gt; builds one with sysvinit using traditional Poky distro and other one is<br>
&gt; uisng systemd using new distribution which is different as we need a new<br>
&gt; distribution for using systemd<br>
&gt;<br>
&gt; .. I didno t get any errors when i build using bitbake -c populate_sdk<br>
&gt; rootfs-smartcpu with sysvinit and got build errors using systemd...<br>
&gt;<br>
&gt; Any possible resons what could have caused failure to build the toolchain?<br>
<br>
</div>It really helps when you tell us what the errors are.<br>
<br>
Note that changing DISTRO_FEATURES in an existing build directory<br>
isn't supported and may well cause problems.<br>
<span><font color="#888888"><br>
Ross<br>
</font></span></blockquote></div><br></div>
</div></div></blockquote></div><br></div>
_______________________________________________<br>yocto mailing list<br><a href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>https://lists.yoctoproject.org/listinfo/yocto<br></blockquote></div><br></body></html>

--Apple-Mail=_8E45A9B9-BCF2-4CDD-BE6A-0EF015DA4A96--

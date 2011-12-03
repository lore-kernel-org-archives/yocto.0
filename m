Return-Path: <davidsmoot@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29385E00739
	for <yocto@yoctoproject.org>; Fri,  2 Dec 2011 20:10:31 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ywp31 with SMTP id 31so4409034ywp.35
	for <yocto@yoctoproject.org>; Fri, 02 Dec 2011 20:10:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=from:content-type:subject:date:message-id:to:mime-version:x-mailer;
	bh=v0LhhJGVCSi88L8dabcd4Q65rxMZQSNghuvUHTr79Y4=;
	b=AkID+IWjP8RY8aI/DO++fGC928hRj7X8WLu2M9AuwCloXXFK0BftQFBq/TJIrvqFZc
	XPxpnj6SyYMSOH6F2wClQniFAqtZyAl5g3eOnhuRlIB75QBltHN67BjEXRfARVToMvCi
	nItlZbSWAr/XvRKHWNnhzXJi0cRtr0xYPOsRY=
Received: by 10.236.186.10 with SMTP id v10mr1103195yhm.54.1322885430300;
	Fri, 02 Dec 2011 20:10:30 -0800 (PST)
Received: from [192.168.1.97] (70-139-182-143.lightspeed.hstntx.sbcglobal.net.
	[70.139.182.143])
	by mx.google.com with ESMTPS id l19sm30765006anc.14.2011.12.02.20.10.28
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 02 Dec 2011 20:10:29 -0800 (PST)
From: David Smoot <davidsmoot@gmail.com>
Date: Fri, 2 Dec 2011 22:10:27 -0600
Message-Id: <6E345F6B-8BE2-4D00-AEDB-D1115AA828D8@gmail.com>
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Apple Message framework v1084)
X-Mailer: Apple Mail (2.1084)
Subject: updating the mediatomb example from meta-demo
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
X-List-Received-Date: Sat, 03 Dec 2011 04:10:31 -0000
Content-Type: multipart/alternative; boundary=Apple-Mail-8-980844212

--Apple-Mail-8-980844212
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

I have a project where I want mediatomb running on my routerstationpro =
and / or beagleboard.

I am attempting to update the "meta-demo" layer from git that was =
working with yocto 1.0 but has not been updated much since.

I am very new at this and so far google has showed me how to fix the =
first two broken recipes but now I am stuck.  I'm fine with a RTFM =
answer if you will just point me to the right manual.

I got all the way to the next to the last task and it cratered on =
building the rootfs.  Snippet of error message with context:

NOTE: package demo-image-mediatomb-1.0-r2: task do_rootfs: Started
ERROR: Function 'do_rootfs' failed (see =
/opt/yocto/yocto_beagleboard/tmp/work/beagleboard-poky-linux-gnueabi/demo-=
image-mediatomb-1.0-r2/temp/log.do_rootfs.17440 for further information)

<skip a bunch of text of stuff working right>

| head: cannot open =
`/opt/yocto/yocto_beagleboard/tmp/work/beagleboard-poky-linux-gnueabi/demo=
-image-mediatomb-1.0-r2/rootfs/etc/rpm-postinsts/*' for reading: No such =
file or directory
| Delayed package scriptlet:
| install: cannot stat =
`/opt/yocto/yocto_beagleboard/tmp/work/beagleboard-poky-linux-gnueabi/demo=
-image-mediaERROR: Function 'do_rootfs' failed (see =
/opt/yocto/yocto_beagleboard/tmp/work/beagleboard-poky-linux-gnueabi/demo-=
image-mediatomb-1.0-r2/temp/log.do_rootfs.17440 for further information)
| tomb-1.0-r2/interfaces': No such file or directory

Any help appreciated.
David Smoot
davidsmoot@gmail.com




--Apple-Mail-8-980844212
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; ">I =
have a project where I want mediatomb running on my routerstationpro and =
/ or beagleboard.<div><br></div><div>I am attempting to update the =
"meta-demo" layer from git that was working with yocto 1.0 but has not =
been updated much since.</div><div><br></div><div>I am very new at this =
and so far google has showed me how to fix the first two broken recipes =
but now I am stuck. &nbsp;I'm fine with a RTFM answer if you will just =
point me to the right manual.</div><div><br></div><div>I got all the way =
to the next to the last task and it cratered on building the rootfs. =
&nbsp;Snippet of error message with =
context:</div><div><br></div><div><div>NOTE: package =
demo-image-mediatomb-1.0-r2: task do_rootfs: Started</div><div>ERROR: =
Function 'do_rootfs' failed (see =
/opt/yocto/yocto_beagleboard/tmp/work/beagleboard-poky-linux-gnueabi/demo-=
image-mediatomb-1.0-r2/temp/log.do_rootfs.17440 for further =
information)</div></div><div><br></div><div>&lt;skip a bunch of text of =
stuff working right&gt;</div><div><br></div><div><div>| head: cannot =
open =
`/opt/yocto/yocto_beagleboard/tmp/work/beagleboard-poky-linux-gnueabi/demo=
-image-mediatomb-1.0-r2/rootfs/etc/rpm-postinsts/*' for reading: No such =
file or directory</div><div>| Delayed package scriptlet:</div><div>| =
install: cannot stat =
`/opt/yocto/yocto_beagleboard/tmp/work/beagleboard-poky-linux-gnueabi/demo=
-image-mediaERROR: Function 'do_rootfs' failed (see =
/opt/yocto/yocto_beagleboard/tmp/work/beagleboard-poky-linux-gnueabi/demo-=
image-mediatomb-1.0-r2/temp/log.do_rootfs.17440 for further =
information)</div><div>| tomb-1.0-r2/interfaces': No such file or =
directory</div></div><div><br></div><div>Any help =
appreciated.</div><div><div>
<div style=3D"font-size: 12px; ">David Smoot</div><div style=3D"font-size:=
 12px; "><a =
href=3D"mailto:davidsmoot@gmail.com">davidsmoot@gmail.com</a></div><div =
style=3D"font-size: 12px; "><br></div><br =
class=3D"Apple-interchange-newline">
</div>
<br></div></body></html>=

--Apple-Mail-8-980844212--

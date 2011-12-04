Return-Path: <davidsmoot@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63463E00719
	for <yocto@yoctoproject.org>; Sat,  3 Dec 2011 19:51:08 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ywp31 with SMTP id 31so4805159ywp.35
	for <yocto@yoctoproject.org>; Sat, 03 Dec 2011 19:51:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=from:mime-version:content-type:subject:date:in-reply-to:to
	:references:message-id:x-mailer;
	bh=QxznW1U1DnoX+j9DsQdX1VaDIFb6Y+67kNtautZrkks=;
	b=RuAwO6+3R263Ag/yIXDNFURGX/HUOpu6D2kdcpBtSxJnwdxn0fQNS4IzAPctD5khe5
	q6u0U7tzOE7qDzBvD3dJfItmFXYv4VFh3Nj8tQjG5y73+Th0yS1FB25sdGvn8YCJrx0m
	Euz0p/zN1mvI6lJGSuhn/IiIlEfxjic1qWu7c=
Received: by 10.236.76.136 with SMTP id b8mr6162754yhe.9.1322970667615;
	Sat, 03 Dec 2011 19:51:07 -0800 (PST)
Received: from [192.168.1.97] (70-139-182-143.lightspeed.hstntx.sbcglobal.net.
	[70.139.182.143])
	by mx.google.com with ESMTPS id 22sm39154282anp.12.2011.12.03.19.51.05
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 03 Dec 2011 19:51:06 -0800 (PST)
From: David Smoot <davidsmoot@gmail.com>
Mime-Version: 1.0 (Apple Message framework v1084)
Date: Sat, 3 Dec 2011 21:51:04 -0600
In-Reply-To: <6E345F6B-8BE2-4D00-AEDB-D1115AA828D8@gmail.com>
To: yocto@yoctoproject.org
References: <6E345F6B-8BE2-4D00-AEDB-D1115AA828D8@gmail.com>
Message-Id: <BA816C6B-FD37-403D-8B6F-E72ABBC232D8@gmail.com>
X-Mailer: Apple Mail (2.1084)
Subject: Re: updating the mediatomb example from meta-demo
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
X-List-Received-Date: Sun, 04 Dec 2011 03:51:08 -0000
Content-Type: multipart/alternative; boundary=Apple-Mail-9-1066081278

--Apple-Mail-9-1066081278
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


On Dec 2, 2011, at 10:10 PM, David Smoot wrote:

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

Made some progress.  Maybe a yocto expert can point me in the right =
direction.

The recipe "demo-image-mediatomb.bb" generates the error message above.  =
But if I comment out the ROOTFS_POSTPROCESS_COMMAND +=3D =
"setup_target_image ; " line, it will finish.  Below is the offending =
function that allows the build to finish when commented out.

ROOTFS_POSTPROCESS_COMMAND +=3D "setup_target_image ; "

setup_target_image() {
        # Manual workaround for lack of auto eth0 (see bug #875) & =
static IP for demo
        install -m 0644 ${WORKDIR}/interfaces =
${IMAGE_ROOTFS}/etc/network/interfaces

        # Set up mount of /media/storage NFS share
        install -d ${IMAGE_ROOTFS}/media/storage
        install -m 0644 ${WORKDIR}/fstab ${IMAGE_ROOTFS}/etc/fstab

        # Configure mediatomb to autoscan /media/storage
        install -m 0644 ${WORKDIR}/config.xml =
${IMAGE_ROOTFS}/etc/mediatomb/config.xml
}

I am guessing that maybe the syntax used in this script is outdated?  It =
looks like it is just trying to create a couple of folders and files in =
the rootfs. =20

So maybe a better question is how do I use yocto to create a particular =
directory structure on my target?

Thanks,
David=

--Apple-Mail-9-1066081278
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
"><br><div><div>On Dec 2, 2011, at 10:10 PM, David Smoot wrote:</div><br =
class=3D"Apple-interchange-newline"><div style=3D"word-wrap: break-word; =
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
style=3D"font-size: 12px; "><br></div></div></div></div></div><div><span =
class=3D"Apple-style-span" style=3D"border-collapse: separate; color: =
rgb(0, 0, 0); font-family: Helvetica; font-style: normal; font-variant: =
normal; font-weight: normal; letter-spacing: normal; line-height: =
normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: =
normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: =
0px; -webkit-border-vertical-spacing: 0px; =
-webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: =
auto; -webkit-text-stroke-width: 0px; "><div>Made some progress. =
&nbsp;Maybe a yocto expert can point me in the right =
direction.</div></span><br class=3D"Apple-interchange-newline">
</div><div>The recipe "demo-image-mediatomb.bb" generates the error =
message above. &nbsp;But if I comment out the ROOTFS_POSTPROCESS_COMMAND =
+=3D "setup_target_image ; " line, it will finish. &nbsp;Below is the =
offending function that allows the build to finish when commented =
out.</div><div><br></div><div><div>ROOTFS_POSTPROCESS_COMMAND +=3D =
"setup_target_image ; "</div><div><br></div><div>setup_target_image() =
{</div><div>&nbsp; &nbsp; &nbsp; &nbsp; # Manual workaround for lack of =
auto eth0 (see bug #875) &amp; static IP for demo</div><div>&nbsp; =
&nbsp; &nbsp; &nbsp; install -m 0644 ${WORKDIR}/interfaces =
${IMAGE_ROOTFS}/etc/network/interfaces</div><div><br></div><div>&nbsp; =
&nbsp; &nbsp; &nbsp; # Set up mount of /media/storage NFS =
share</div><div>&nbsp; &nbsp; &nbsp; &nbsp; install -d =
${IMAGE_ROOTFS}/media/storage</div><div>&nbsp; &nbsp; &nbsp; &nbsp; =
install -m 0644 ${WORKDIR}/fstab =
${IMAGE_ROOTFS}/etc/fstab</div><div><br></div><div>&nbsp; &nbsp; &nbsp; =
&nbsp; # Configure mediatomb to autoscan /media/storage</div><div>&nbsp; =
&nbsp; &nbsp; &nbsp; install -m 0644 ${WORKDIR}/config.xml =
${IMAGE_ROOTFS}/etc/mediatomb/config.xml</div><div>}</div></div>
<br><div>I am guessing that maybe the syntax used in this script is =
outdated? &nbsp;It looks like it is just trying to create a couple of =
folders and files in the rootfs. &nbsp;</div><div><br></div><div>So =
maybe a better question is how do I use yocto to create a particular =
directory structure on my =
target?</div><div><br></div><div>Thanks,</div><div>David</div></body></htm=
l>=

--Apple-Mail-9-1066081278--

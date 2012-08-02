Return-Path: <elvis.dowson@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CA89E0141D
	for <yocto@yoctoproject.org>; Thu,  2 Aug 2012 13:22:11 -0700 (PDT)
Received: by yenl5 with SMTP id l5so10651360yen.35
	for <yocto@yoctoproject.org>; Thu, 02 Aug 2012 13:22:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to:x-mailer;
	bh=EOzIosk2X11mjneNJfv59h8da9iHy8qra/hQe/PdnJs=;
	b=J8w9dUlgk25L7pFJnJfqoISmo3So8dCPc4ymyw+X867+837BwSh81qQd6XlS5LYbOb
	3Mj9rewWzsM7n6tGe5CtG3mbSFhdnlfKiZUrwgBw4douethRGGKu4Ty9PLaTKgUZiOo7
	dBgvLFm1CwgTeMgALjFw5MIulR4IAqqx9CAf9l935AlZz6F+TpQsV6mYKpfp9X55ogKP
	2ZeV8zIoEj0Bm9nObCtsRICKWF4LIu77uSMtipiuxKWZrbhydNXMEekTjRUHXJ3p7rGs
	TQx181ngkIUpvt+FHjA0W6YkBazEEreMzu7UToxeOR1i6Iq7JqtFjru8FzDuB4xB4red
	uH0g==
Received: by 10.50.47.168 with SMTP id e8mr5914403ign.3.1343938930129;
	Thu, 02 Aug 2012 13:22:10 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id g5sm18434523ign.4.2012.08.02.13.22.06
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 02 Aug 2012 13:22:09 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <501AB716.1010702@gmail.com>
Date: Fri, 3 Aug 2012 00:22:02 +0400
Message-Id: <F47D03EE-B543-41ED-B79D-1FBFFCB02115@gmail.com>
References: <1343927239.27054.YahooMailNeo@web121603.mail.ne1.yahoo.com>
	<501AB716.1010702@gmail.com>
To: Jim Abernathy <jfabernathy@gmail.com>
X-Mailer: Apple Mail (2.1278)
Cc: yocto@yoctoproject.org
Subject: Re: build error pandaboard on master
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
X-List-Received-Date: Thu, 02 Aug 2012 20:22:11 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_16D55F4E-F1B8-4963-9D02-7232B0FC3943"

--Apple-Mail=_16D55F4E-F1B8-4963-9D02-7232B0FC3943
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,

On Aug 2, 2012, at 9:21 PM, Jim Abernathy wrote:

>> One of us should fix the pulseaudio issue on master and send in a =
patch.
> probably going to be you. that's a long ways away from my skill level. =
:-)

You can find information about the linux git repos for OMAP4 here:

http://www.omappedia.com/wiki/LinuxOmapKernelGitTrees

For audio they have a specific repo, along with the name of a maintainer
Audio	ASoC	ALSA tree	https://gitorious.org/omap-audio	=
git://gitorious.org/omap-audio/linux-audio.git=09
ASoC DSP framework
You can try to use the above repo, in conjunction with the following =
repo, to see if you can get things working:
ARM Core kernel	Core Kernel	Linus' tree	=
http://git.gitorious.org/omap-sw-develoment/linux-omap-dev.git	=
git://gitorious.org/omap-sw-develoment/linux-omap-dev.git=09
Please note that I have not tried the above repos, but just thought I'd =
dig out the information for you.You probably need to hunt around a bit =
to locate the right repo.

The following gitorious project also contains some work on the =
Pandaboard x-loader, bootloader and kernel. Perhaps you might find some =
audio patches and support in it.

http://gitorious.org/pandaboard

I see one patch in x-loader for audio here

=
http://gitorious.org/+pandaboard/x-loader/pandaboard-x-loader/commit/746f9=
3150545c4d4f3ba359046a5c7249094309a

So, with a bit of time, and patience, you should be able to build and =
try each git resource, till you find one that works, extract the audio =
related patches, and apply it to the yocto bsp or kernel recipes.=20

I've got a Pandaboard with me, but I'm focussing on getting my Xilinx =
Virtex 5 FPGA up and running with yocto at the moment. It's been over a =
year or so since the Pandaboard has been released, so you should be able =
to extract the patch from one of the TI repos, or an Android kernel =
repository.

Best regards,

Elvis Dowson


--Apple-Mail=_16D55F4E-F1B8-4963-9D02-7232B0FC3943
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div><br><div><div>On Aug 2, 2012, at 9:21 PM, Jim Abernathy =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div><blockquote type=3D"cite">One of us should fix the =
pulseaudio issue on master and send in a patch.</blockquote>probably =
going to be you. that's a long ways away from my skill level. =
:-)<br></div></blockquote></div><br><div>You can find information about =
the linux git repos for OMAP4 here:</div></div><div><br></div><div><a =
href=3D"http://www.omappedia.com/wiki/LinuxOmapKernelGitTrees">http://www.=
omappedia.com/wiki/LinuxOmapKernelGitTrees</a></div><div><br></div><div>Fo=
r audio they have a specific repo, along with the name of a =
maintainer</div><div><table class=3D"wikitable sortable" border=3D"2" =
cellpadding=3D"10" cellspacing=3D"0" id=3D"sortable_table_id_3" =
style=3D"font-size: 13px; color: rgb(0, 0, 0); background-color: white; =
margin-top: 1em; margin-right: 1em; margin-bottom: 1em; margin-left: =
0px; border-top-width: 1px; border-right-width: 1px; =
border-bottom-width: 1px; border-left-width: 1px; border-top-style: =
solid; border-right-style: solid; border-bottom-style: solid; =
border-left-style: solid; border-top-color: rgb(170, 170, 170); =
border-right-color: rgb(170, 170, 170); border-bottom-color: rgb(170, =
170, 170); border-left-color: rgb(170, 170, 170); border-collapse: =
collapse; font-family: sans-serif; font-style: normal; font-variant: =
normal; font-weight: normal; letter-spacing: normal; line-height: 19px; =
orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: =
none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
position: static; z-index: auto; "><tbody><tr><td style=3D"border: 1px =
solid rgb(170, 170, 170); padding: 0.2em; ">Audio</td><td style=3D"border:=
 1px solid rgb(170, 170, 170); padding: 0.2em; ">ASoC</td><td =
style=3D"border: 1px solid rgb(170, 170, 170); padding: 0.2em; ">ALSA =
tree</td><td style=3D"border: 1px solid rgb(170, 170, 170); padding: =
0.2em; "><a href=3D"https://gitorious.org/omap-audio" class=3D"external =
free" rel=3D"nofollow" style=3D"text-decoration: none; color: rgb(51, =
102, 187); background-image: =
url(http://www.omappedia.com/skins/vector/images/lock-icon.png); =
padding: 0px 18px 0px 0px; background-position: 100% 50%; =
background-repeat: no-repeat no-repeat; =
">https://gitorious.org/omap-audio</a></td><td style=3D"border: 1px =
solid rgb(170, 170, 170); padding: 0.2em; "><a =
href=3D"git://gitorious.org/omap-audio/linux-audio.git">git://gitorious.or=
g/omap-audio/linux-audio.git</a></td><td style=3D"border: 1px solid =
rgb(170, 170, 170); padding: 0.2em; "><br></td><td style=3D"border: 1px =
solid rgb(170, 170, 170); padding: 0.2em; ">ASoC DSP =
framework</td></tr></tbody></table><div>You can try to use the above =
repo, in conjunction with the following repo, to see if you can get =
things working:</div></div><div><table class=3D"wikitable sortable" =
border=3D"2" cellpadding=3D"10" cellspacing=3D"0" =
id=3D"sortable_table_id_3" style=3D"font-size: 13px; color: rgb(0, 0, =
0); background-color: white; margin-top: 1em; margin-right: 1em; =
margin-bottom: 1em; margin-left: 0px; border-top-width: 1px; =
border-right-width: 1px; border-bottom-width: 1px; border-left-width: =
1px; border-top-style: solid; border-right-style: solid; =
border-bottom-style: solid; border-left-style: solid; border-top-color: =
rgb(170, 170, 170); border-right-color: rgb(170, 170, 170); =
border-bottom-color: rgb(170, 170, 170); border-left-color: rgb(170, =
170, 170); border-collapse: collapse; font-family: sans-serif; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: 19px; orphans: 2; text-align: =
-webkit-auto; text-indent: 0px; text-transform: none; white-space: =
normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; position: static; z-index: auto; =
"><tbody><tr><td style=3D"border: 1px solid rgb(170, 170, 170); padding: =
0.2em; ">ARM Core kernel</td><td style=3D"border: 1px solid rgb(170, =
170, 170); padding: 0.2em; ">Core Kernel</td><td style=3D"border: 1px =
solid rgb(170, 170, 170); padding: 0.2em; ">Linus' tree</td><td =
style=3D"border: 1px solid rgb(170, 170, 170); padding: 0.2em; "><a =
href=3D"http://git.gitorious.org/omap-sw-develoment/linux-omap-dev.git" =
class=3D"external free" rel=3D"nofollow" style=3D"text-decoration: none; =
color: rgb(51, 102, 187); background-image: =
url(http://www.omappedia.com/skins/vector/images/external-link-ltr-icon.pn=
g); padding: 0px 13px 0px 0px; background-position: 100% 50%; =
background-repeat: no-repeat no-repeat; =
">http://git.gitorious.org/omap-sw-develoment/linux-omap-dev.git</a></td><=
td style=3D"border: 1px solid rgb(170, 170, 170); padding: 0.2em; "><a =
href=3D"git://gitorious.org/omap-sw-develoment/linux-omap-dev.git">git://g=
itorious.org/omap-sw-develoment/linux-omap-dev.git</a></td><td =
style=3D"border: 1px solid rgb(170, 170, 170); padding: 0.2em; =
"><br></td></tr></tbody></table>Please note that I have not tried the =
above repos, but just thought I'd dig out the information for you.You =
probably need to hunt around a bit to locate the right =
repo.</div><div><br></div><div>The following gitorious project also =
contains some work on the Pandaboard x-loader, bootloader and kernel. =
Perhaps you might find some audio patches and support in =
it.</div><div><br></div><div><a =
href=3D"http://gitorious.org/pandaboard">http://gitorious.org/pandaboard</=
a></div><div><br></div><div>I see one patch in x-loader for audio =
here</div><div><br></div><div><a =
href=3D"http://gitorious.org/+pandaboard/x-loader/pandaboard-x-loader/comm=
it/746f93150545c4d4f3ba359046a5c7249094309a">http://gitorious.org/+pandabo=
ard/x-loader/pandaboard-x-loader/commit/746f93150545c4d4f3ba359046a5c72490=
94309a</a></div><div><br></div><div>So, with a bit of time, and =
patience, you should be able to build and try each git resource, till =
you find one that works, extract the audio related patches, and apply it =
to the yocto bsp or kernel recipes.&nbsp;</div><div><br></div><div>I've =
got a Pandaboard with me, but I'm focussing on getting my Xilinx Virtex =
5 FPGA up and running with yocto at the moment. It's been over a year or =
so since the Pandaboard has been released, so you should be able to =
extract the patch from one of the TI repos, or an Android kernel =
repository.</div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis =
Dowson</div><div><br></div></body></html>=

--Apple-Mail=_16D55F4E-F1B8-4963-9D02-7232B0FC3943--

Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36895E013E5
	for <yocto@yoctoproject.org>; Sun, 24 Jun 2012 08:20:59 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so6588117pbb.35
	for <yocto@yoctoproject.org>; Sun, 24 Jun 2012 08:20:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:mime-version:content-type:subject:date:in-reply-to:to
	:references:message-id:x-mailer;
	bh=lwfO7tgkmV8TQJZaVj9y6TUdtYn+wep7P/QbLZl+uBY=;
	b=a5i1ztvzHQ83VfLmXd/u2TlMjGBS0zEHKI55a0gymWolv2n3EmKVvM603e72cdw4Ef
	BpfJAR+v+mt4grUiZh0ZTHStjPsbcLhu47uD5V/evuDzgfyEsNV2POl1w/gXog4r4ff3
	ZO8bxWsLEnEcsbfvcI15Si3QlcLDpywFnz1vFwTV0tcughwkMvXo9JI/28x+vMhRIlGh
	1khe+Wb05JT6Tjf1j8hFraF9ASlmWPbsiU5iMu52ApUeu41UH6BppZwVAWb/hdOJVy2e
	5PLVIGc7D1pF4TNiCk884IU3wmN7MsLrPBJe3SbmbF/dogH05FSL44VSBv8QPyKhEhue
	Lphw==
Received: by 10.68.130.169 with SMTP id of9mr30317575pbb.82.1340551258918;
	Sun, 24 Jun 2012 08:20:58 -0700 (PDT)
Received: from [192.168.1.102] ([94.205.109.242])
	by mx.google.com with ESMTPS id to1sm5582669pbc.27.2012.06.24.08.20.54
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 24 Jun 2012 08:20:58 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Mime-Version: 1.0 (Apple Message framework v1278)
Date: Sun, 24 Jun 2012 19:20:49 +0400
In-Reply-To: <4CCCB628-7F57-4669-877F-751C2F35E1C7@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
References: <4CCCB628-7F57-4669-877F-751C2F35E1C7@gmail.com>
Message-Id: <E9D68096-46E9-4B11-B097-8A217D28B07F@gmail.com>
X-Mailer: Apple Mail (2.1278)
Subject: Re: Sourcing a shell script within a bbclass
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
X-List-Received-Date: Sun, 24 Jun 2012 15:20:59 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_5FEFED6A-B083-4ABA-B2C7-A93137AC0D3F"

--Apple-Mail=_5FEFED6A-B083-4ABA-B2C7-A93137AC0D3F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,

On Jun 24, 2012, at 6:24 PM, Elvis Dowson wrote:

> How can I source a shell script within a bbclass? For example, in =
meta-xilinx/classes/xilinx-boot.bbclass, I need to source a script file =
called settings64.sh, which setups the environment variables for the =
Xilinx ISE 14.1 design tools, in order to generate a system ace image =
file.
>=20
> For the following code snippet:
>=20
> 	if   [ "${XILINX_VER}" \> "14" ]; then
> 		bbnote "XILINX_VER ${XILINX_VER}, script location =
${XILINX_LOC}/${EDK_SCRIPT}"
> 		source ${XILINX_LOC}/${EDK_SCRIPT} ${XILINX_LOC}
> 	fi
>=20
> I get the following error:
>=20
> DEBUG: Executing python function sstate_task_prefunc
> DEBUG: Python function sstate_task_prefunc finished
> DEBUG: Executing shell function do_deploy
> ERROR: Function failed: do_deploy (see =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/u-boot-xilinx-v2012.04.0=
1-r16/temp/log.do_deploy.15616 for further information)
> NOTE: Deploying uboot elf image to /project/xilinx-ml507
> NOTE: Xilinx design tools installed in /tool/xilinx/14.1/ISE_DS
> NOTE: Generate system ace image
> NOTE: EDK_SCRIPT settings64.sh
> NOTE: XILINX_VER 14.1, script location =
/tool/xilinx/14.1/ISE_DS/settings64.sh
> =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/u-boot-xilinx-v2012.04.0=
1-r16/temp/run.do_deploy.15616: 129: =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/u-boot-xilinx-v2012.04.0=
1-r16/temp/run.do_deploy.15616: source: not found
>=20
> if I replace the source keyword with a . (dot)=20
>=20
> 	if   [ "${XILINX_VER}" \> "14" ]; then
> 		bbnote "XILINX_VER ${XILINX_VER}, script location =
${XILINX_LOC}/${EDK_SCRIPT}"
> 		. ${XILINX_LOC}/${EDK_SCRIPT} ${XILINX_LOC}
> 	fi
>=20
> it executes the scripts but gives the following error:
>=20
> NOTE: XILINX_VER 14.1, script location =
/tool/xilinx/14.1/ISE_DS/settings64.sh
> =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/u-boot-xilinx-v2012.04.0=
1-r16/temp/run.do_deploy.7879: 12: [: =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/u-boot-xilinx-v2012.04.0=
1-r16/temp/run.do_deploy.7879: unexpected operator
> . /tool/xilinx/14.1/ISE_DS/common/.settings64.sh =
/tool/xilinx/14.1/ISE_DS/common
> . /tool/xilinx/14.1/ISE_DS/EDK/.settings64.sh =
/tool/xilinx/14.1/ISE_DS/EDK
> . /tool/xilinx/14.1/ISE_DS/common/CodeSourcery/.settings64.sh =
/tool/xilinx/14.1/ISE_DS/common/CodeSourcery
> . /tool/xilinx/14.1/ISE_DS/PlanAhead/.settings64.sh =
/tool/xilinx/14.1/ISE_DS/PlanAhead
> . /tool/xilinx/14.1/ISE_DS/../../Vivado/2012.1/.settings64.sh =
/tool/xilinx/14.1/ISE_DS/../../Vivado/2012.1
> . /tool/xilinx/14.1/ISE_DS/ISE/.settings64.sh =
/tool/xilinx/14.1/ISE_DS/ISE
> . /tool/xilinx/14.1/ISE_DS/SysGen/.settings64.sh =
/tool/xilinx/14.1/ISE_DS/SysGen
>=20
>=20
> What should I do to source the settings64.sh file properly within the =
bbclass?
>=20

The problem was because of Ubuntu 12.04 shell being configured by =
default to use dash, instead of bash.=20

After I reconfigured the shell to use bash using the command:

$ sudo dpkg-reconfigure dash

everything works fine. However, Yocto 1.2 defaults or assumes that the =
user will use dash.=20

Is there anyway I can fix this issue, so that the bbclass works for both =
dash and bash. Using the . (dot) to source the script doesn't seem to =
work, so I was wondering if there are any other workarounds that I can =
use to emulate bash's sourcing behaviour in dash.

Best regards,

Elvis Dowson



--Apple-Mail=_5FEFED6A-B083-4ABA-B2C7-A93137AC0D3F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div><br><div><div>On Jun 24, 2012, at 6:24 PM, Elvis Dowson =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div style=3D"word-wrap: break-word; -webkit-nbsp-mode: =
space; -webkit-line-break: after-white-space; "><div>How can I source a =
shell script within a bbclass? For example, in =
meta-xilinx/classes/xilinx-boot.bbclass, I need to source a script file =
called settings64.sh, which setups the environment variables for the =
Xilinx ISE 14.1 design tools, in order to generate a system ace image =
file.</div><div><br></div><div>For the following code =
snippet:</div><div><br></div><div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>if &nbsp; [ "${XILINX_VER}" \&gt; =
"14" ]; then</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">		</span>bbnote "XILINX_VER =
${XILINX_VER}, script location =
${XILINX_LOC}/${EDK_SCRIPT}"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2"><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">		=
</span>source ${XILINX_LOC}/${EDK_SCRIPT} =
${XILINX_LOC}</font></div></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	=
</span>fi</font></div><div><br></div><div>I get the following =
error:</div><div><br></div><div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">DEBUG: Executing python function =
sstate_task_prefunc</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">DEBUG: Python function sstate_task_prefunc =
finished</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">DEBUG: Executing shell function =
do_deploy</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">ERROR: Function failed: do_deploy (see =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/u-boot-xilinx-v2012.04.0=
1-r16/temp/log.do_deploy.15616 for further =
information)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NOTE: Deploying uboot elf image to =
/project/xilinx-ml507</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NOTE: Xilinx design tools installed in =
/tool/xilinx/14.1/ISE_DS</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">NOTE: Generate system ace =
image</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">NOTE: EDK_SCRIPT settings64.sh</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: XILINX_VER =
14.1, script location =
/tool/xilinx/14.1/ISE_DS/settings64.sh</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/u-boot-xilinx=
-v2012.04.01-r16/temp/run.do_deploy.15616: 129: =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/u-boot-xilinx-v2012.04.0=
1-r16/temp/run.do_deploy.15616: source: not =
found</font></div></div><div><br></div><div>if I replace the source =
keyword with a . (dot)&nbsp;</div><div><br></div><div><div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2"><span =
class=3D"Apple-tab-span" style=3D"white-space: pre; ">	</span>if &nbsp; =
[ "${XILINX_VER}" \&gt; "14" ]; then</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2"><span =
class=3D"Apple-tab-span" style=3D"white-space: pre; ">		=
</span>bbnote "XILINX_VER ${XILINX_VER}, script location =
${XILINX_LOC}/${EDK_SCRIPT}"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2"><span =
class=3D"Apple-tab-span" style=3D"white-space: pre; ">		</span>. =
${XILINX_LOC}/${EDK_SCRIPT} ${XILINX_LOC}</font></div></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2"><span =
class=3D"Apple-tab-span" style=3D"white-space: pre; ">	=
</span>fi</font></div></div><div><br></div><div>it executes the scripts =
but gives the following error:</div><div><br></div><div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: XILINX_VER =
14.1, script location =
/tool/xilinx/14.1/ISE_DS/settings64.sh</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/u-boot-xilinx=
-v2012.04.01-r16/temp/run.do_deploy.7879: 12: [: =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/u-boot-xilinx-v2012.04.0=
1-r16/temp/run.do_deploy.7879: unexpected =
operator</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">. /tool/xilinx/14.1/ISE_DS/common/.settings64.sh =
/tool/xilinx/14.1/ISE_DS/common</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">. =
/tool/xilinx/14.1/ISE_DS/EDK/.settings64.sh =
/tool/xilinx/14.1/ISE_DS/EDK</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">. =
/tool/xilinx/14.1/ISE_DS/common/CodeSourcery/.settings64.sh =
/tool/xilinx/14.1/ISE_DS/common/CodeSourcery</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">. =
/tool/xilinx/14.1/ISE_DS/PlanAhead/.settings64.sh =
/tool/xilinx/14.1/ISE_DS/PlanAhead</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">. =
/tool/xilinx/14.1/ISE_DS/../../Vivado/2012.1/.settings64.sh =
/tool/xilinx/14.1/ISE_DS/../../Vivado/2012.1</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">. =
/tool/xilinx/14.1/ISE_DS/ISE/.settings64.sh =
/tool/xilinx/14.1/ISE_DS/ISE</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">. =
/tool/xilinx/14.1/ISE_DS/SysGen/.settings64.sh =
/tool/xilinx/14.1/ISE_DS/SysGen</font></div></div><div><br></div><div><br>=
</div><div>What should I do to source the settings64.sh file properly =
within the =
bbclass?</div><div><br></div></div></blockquote><br></div><div>The =
problem was because of Ubuntu 12.04 shell being configured by default to =
use dash, instead of bash.&nbsp;</div><div><br></div><div>After I =
reconfigured the shell to use bash using the =
command:</div><div><br></div><div>$ sudo dpkg-reconfigure =
dash</div><div><br></div><div>everything works fine. However, Yocto 1.2 =
defaults or assumes that the user will use =
dash.&nbsp;</div><div><br></div><div>Is there anyway I can fix this =
issue, so that the bbclass works for both dash and bash. Using the . =
(dot) to source the script doesn't seem to work, so I was wondering if =
there are any other workarounds that I can use to emulate bash's =
sourcing behaviour in dash.</div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis =
Dowson</div><div><br></div><br></div></body></html>=

--Apple-Mail=_5FEFED6A-B083-4ABA-B2C7-A93137AC0D3F--

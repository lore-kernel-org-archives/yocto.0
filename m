Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E60AE013E5
	for <yocto@yoctoproject.org>; Sun, 24 Jun 2012 07:24:50 -0700 (PDT)
Received: by dadz8 with SMTP id z8so5064485dad.35
	for <yocto@yoctoproject.org>; Sun, 24 Jun 2012 07:24:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:date:message-id:to:mime-version:x-mailer;
	bh=XmkQ6m0KxrW4eD/chDpqw+0MDOpGEH4zWJ/boV68TxM=;
	b=tghOre21yPRCOtkdqjzP4wUlcQA9L58EEeU+wq5bkfDYxi6FTiEdAmdZEBXv1TfOxF
	hMfLsV8Dll8x1OHL/8F95b55cGhCOjVMp7dhifDP72uihkMPzbLGaR0IBlDKvMBCH+Gx
	gmJukd4P9u2giZLicabfKhgEUUnydCnt32cCNgu34qsdXBwKuw6JiDfNPRyZzc8l1Sxr
	eTKWdejH6ybWv+Z4LaAE/Mpzo28P+/U+fwQNV2XTph2G5Aseyvx/09+pZmmGA37dETfp
	O+Mm6tVsSU2takH3JHm+PnMDpFiuGud1GwVN2mCq8agx9Eg14BPFsNQuT05ZN2l1KczD
	bqJA==
Received: by 10.68.225.170 with SMTP id rl10mr30541517pbc.13.1340547890332;
	Sun, 24 Jun 2012 07:24:50 -0700 (PDT)
Received: from [192.168.1.102] ([94.205.109.242])
	by mx.google.com with ESMTPS id nv6sm5460138pbc.42.2012.06.24.07.24.48
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 24 Jun 2012 07:24:49 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Sun, 24 Jun 2012 18:24:44 +0400
Message-Id: <4CCCB628-7F57-4669-877F-751C2F35E1C7@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
Subject: Sourcing a shell script within a bbclass
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
X-List-Received-Date: Sun, 24 Jun 2012 14:24:50 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_24D0BAE9-AACE-42E2-BCF2-04AC751B94FB"

--Apple-Mail=_24D0BAE9-AACE-42E2-BCF2-04AC751B94FB
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,
      How can I source a shell script within a bbclass? For example, in =
meta-xilinx/classes/xilinx-boot.bbclass, I need to source a script file =
called settings64.sh, which setups the environment variables for the =
Xilinx ISE 14.1 design tools, in order to generate a system ace image =
file.

For the following code snippet:

	if   [ "${XILINX_VER}" \> "14" ]; then
		bbnote "XILINX_VER ${XILINX_VER}, script location =
${XILINX_LOC}/${EDK_SCRIPT}"
		source ${XILINX_LOC}/${EDK_SCRIPT} ${XILINX_LOC}
	fi

I get the following error:

DEBUG: Executing python function sstate_task_prefunc
DEBUG: Python function sstate_task_prefunc finished
DEBUG: Executing shell function do_deploy
ERROR: Function failed: do_deploy (see =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/u-boot-xilinx-v2012.04.0=
1-r16/temp/log.do_deploy.15616 for further information)
NOTE: Deploying uboot elf image to /project/xilinx-ml507
NOTE: Xilinx design tools installed in /tool/xilinx/14.1/ISE_DS
NOTE: Generate system ace image
NOTE: EDK_SCRIPT settings64.sh
NOTE: XILINX_VER 14.1, script location =
/tool/xilinx/14.1/ISE_DS/settings64.sh
=
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/u-boot-xilinx-v2012.04.0=
1-r16/temp/run.do_deploy.15616: 129: =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/u-boot-xilinx-v2012.04.0=
1-r16/temp/run.do_deploy.15616: source: not found

if I replace the source keyword with a . (dot)=20

	if   [ "${XILINX_VER}" \> "14" ]; then
		bbnote "XILINX_VER ${XILINX_VER}, script location =
${XILINX_LOC}/${EDK_SCRIPT}"
		. ${XILINX_LOC}/${EDK_SCRIPT} ${XILINX_LOC}
	fi

it executes the scripts but gives the following error:

NOTE: XILINX_VER 14.1, script location =
/tool/xilinx/14.1/ISE_DS/settings64.sh
=
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/u-boot-xilinx-v2012.04.0=
1-r16/temp/run.do_deploy.7879: 12: [: =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/u-boot-xilinx-v2012.04.0=
1-r16/temp/run.do_deploy.7879: unexpected operator
. /tool/xilinx/14.1/ISE_DS/common/.settings64.sh =
/tool/xilinx/14.1/ISE_DS/common
. /tool/xilinx/14.1/ISE_DS/EDK/.settings64.sh =
/tool/xilinx/14.1/ISE_DS/EDK
. /tool/xilinx/14.1/ISE_DS/common/CodeSourcery/.settings64.sh =
/tool/xilinx/14.1/ISE_DS/common/CodeSourcery
. /tool/xilinx/14.1/ISE_DS/PlanAhead/.settings64.sh =
/tool/xilinx/14.1/ISE_DS/PlanAhead
. /tool/xilinx/14.1/ISE_DS/../../Vivado/2012.1/.settings64.sh =
/tool/xilinx/14.1/ISE_DS/../../Vivado/2012.1
. /tool/xilinx/14.1/ISE_DS/ISE/.settings64.sh =
/tool/xilinx/14.1/ISE_DS/ISE
. /tool/xilinx/14.1/ISE_DS/SysGen/.settings64.sh =
/tool/xilinx/14.1/ISE_DS/SysGen


What should I do to source the settings64.sh file properly within the =
bbclass?

Best regards,

Elvis Dowson=

--Apple-Mail=_24D0BAE9-AACE-42E2-BCF2-04AC751B94FB
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
"><div>Hi,</div><div>&nbsp; &nbsp; &nbsp; How can I source a shell =
script within a bbclass? For example, in =
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
within the bbclass?</div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis Dowson</div></body></html>=

--Apple-Mail=_24D0BAE9-AACE-42E2-BCF2-04AC751B94FB--

Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B4E5E00746
	for <yocto@yoctoproject.org>; Mon, 25 Jun 2012 09:45:08 -0700 (PDT)
Received: by dadz8 with SMTP id z8so6541766dad.35
	for <yocto@yoctoproject.org>; Mon, 25 Jun 2012 09:45:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=OX3V9JDyBLVnDUg06g/Je7bguAoHm/tgbo0BmVSWymE=;
	b=gZEkeUeUbV+T2DyCVeSUL+BdsbVxpjTRWKJ+s+qY7OxVLopKJRNtJDlfRSOfKbjRVw
	p1FPZlaR5FBaISYDwgygktMD2zD8HNkhTs0qWPZPAxrTLwicpeFvT6zCyPsJ6ZhV0ijd
	RNRQ+uHHjp4/twZqmBAq+kXRIPQdRXNf+J1TDEVLejgglpRRwSyzXAplg7rgWsE1oVdl
	zydqB+dTsf9CUmByN4tfvmERo64vMrC7vg5k/5K5My+NWZ4x1ayD+LbToYVY8f2lYjPo
	1N6oq3zvYVuQYxY56xKleYqxVzuP+y/eC05OUau2zMluZgf2dSPYXVSPzwVUTEUqeWKZ
	zHpA==
Received: by 10.68.237.106 with SMTP id vb10mr41546238pbc.148.1340642708192;
	Mon, 25 Jun 2012 09:45:08 -0700 (PDT)
Received: from [192.168.1.102] ([94.205.109.242])
	by mx.google.com with ESMTPS id ua6sm8989829pbc.20.2012.06.25.09.45.06
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 25 Jun 2012 09:45:07 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <CAEsOVNe2SUJUGvLWRBCqNkQXUiq2D6-1WtQzO_9Si2AMcUCJoA@mail.gmail.com>
Date: Mon, 25 Jun 2012 20:45:02 +0400
Message-Id: <64B36820-B84D-4903-84F4-FA0362B49DD3@gmail.com>
References: <4CCCB628-7F57-4669-877F-751C2F35E1C7@gmail.com>
	<E9D68096-46E9-4B11-B097-8A217D28B07F@gmail.com>
	<CAEsOVNe2SUJUGvLWRBCqNkQXUiq2D6-1WtQzO_9Si2AMcUCJoA@mail.gmail.com>
To: McClintock Matthew-B29882 <B29882@freescale.com>
X-Mailer: Apple Mail (2.1278)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
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
X-List-Received-Date: Mon, 25 Jun 2012 16:45:08 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,

On Jun 25, 2012, at 7:10 PM, McClintock Matthew-B29882 wrote:

>>=20
>> For the following code snippet:
>>=20
>> if   [ "${XILINX_VER}" \> "14" ]; then
>> bbnote "XILINX_VER ${XILINX_VER}, script location
>> ${XILINX_LOC}/${EDK_SCRIPT}"
>> source ${XILINX_LOC}/${EDK_SCRIPT} ${XILINX_LOC}
>> fi
>=20
> ubuntu likes the . operator
>=20
>> . ${XILINX_LOC}/${EDK_SCRIPT} ${XILINX_LOC}
>=20
> -M
>=20
>> if I replace the source keyword with a . (dot)
>>=20
>> if   [ "${XILINX_VER}" \> "14" ]; then
>> bbnote "XILINX_VER ${XILINX_VER}, script location
>> ${XILINX_LOC}/${EDK_SCRIPT}"
>> . ${XILINX_LOC}/${EDK_SCRIPT} ${XILINX_LOC}
>> fi
>>=20
>> it executes the scripts but gives the following error:
>>=20
>> NOTE: XILINX_VER 14.1, script location
>> /tool/xilinx/14.1/ISE_DS/settings64.sh
>> =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/u-boot-xilinx-v2012.04.0=
1-r16/temp/run.do_deploy.7879:
>> 12: [:
>> =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/u-boot-xilinx-v2012.04.0=
1-r16/temp/run.do_deploy.7879:
>> unexpected operator
>> . /tool/xilinx/14.1/ISE_DS/common/.settings64.sh
>> /tool/xilinx/14.1/ISE_DS/common
>> . /tool/xilinx/14.1/ISE_DS/EDK/.settings64.sh =
/tool/xilinx/14.1/ISE_DS/EDK
>> . /tool/xilinx/14.1/ISE_DS/common/CodeSourcery/.settings64.sh
>> /tool/xilinx/14.1/ISE_DS/common/CodeSourcery
>> . /tool/xilinx/14.1/ISE_DS/PlanAhead/.settings64.sh
>> /tool/xilinx/14.1/ISE_DS/PlanAhead
>> . /tool/xilinx/14.1/ISE_DS/../../Vivado/2012.1/.settings64.sh
>> /tool/xilinx/14.1/ISE_DS/../../Vivado/2012.1
>> . /tool/xilinx/14.1/ISE_DS/ISE/.settings64.sh =
/tool/xilinx/14.1/ISE_DS/ISE
>> . /tool/xilinx/14.1/ISE_DS/SysGen/.settings64.sh
>> /tool/xilinx/14.1/ISE_DS/SysGen

As you can see, I tried the . (dot) operator. The settings64.sh script =
from Xilinx, when run stand-alone runs perfectly fine in Dash, so I =
don't think there is any bashism there. The problem is with the yocto =
build system I think, because it gives a unexpected error message as =
show above.

Best regards,

Elvis Dowson



Return-Path: <r10kindsofpeople@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DE54E00533
	for <yocto@yoctoproject.org>; Mon,  3 Dec 2012 11:01:43 -0800 (PST)
Received: by mail-we0-f176.google.com with SMTP id r5so1365103wey.35
	for <yocto@yoctoproject.org>; Mon, 03 Dec 2012 11:01:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Q13xoHtoG2Zzt59PiPqfgSYVPcQOAdexJBLDzmzO678=;
	b=v8KC7foc9HKqC0aTKo3rvjoGDU486EoV9AjPjnvguBNXVQMZ+5ynfm7+/fJHPiwpF8
	HX7UeIUbdCIpclktldwFaXPqf/ympy2OHhOSYNGf7LVNnVNabHrjxvLCli1S/SaofVVN
	T4PkmGx8fQ25DX/VBT8LfrmKuadTMVUI2b5v2bF7uA6K/pLaK9dFH1lOTLM7m8oVCK3a
	mkb5ALtKs4V9YI5R8V/pukECJfNyWZqxAFJtQfFE33vCc7sk4tWrazDT+ESYjWJRPm8Q
	HpFWMxpVcV2K5xCi7yky4MSl6jCjorNXbMADYrlRsu1SkMrTfZWuNc+LT2aDE+wLs/tY
	1u+w==
MIME-Version: 1.0
Received: by 10.216.133.35 with SMTP id p35mr3651922wei.2.1354561301547; Mon,
	03 Dec 2012 11:01:41 -0800 (PST)
Received: by 10.194.82.231 with HTTP; Mon, 3 Dec 2012 11:01:41 -0800 (PST)
Date: Mon, 3 Dec 2012 14:01:41 -0500
Message-ID: <CAE8H0+UH1A4hGLM4hkX_qvw-BD4Zt4eg_69G7OqyxmaSJJmRHA@mail.gmail.com>
From: r10kindsofpeople <r10kindsofpeople@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: dhcp-server and init scripts
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
X-List-Received-Date: Mon, 03 Dec 2012 19:01:43 -0000
Content-Type: multipart/alternative; boundary=0016e6de17bc348a9a04cff7613f

--0016e6de17bc348a9a04cff7613f
Content-Type: text/plain; charset=ISO-8859-1

I seem to have figured out how to add the dhcp-server to my image,
including my own dhcpd.conf and default-server files by creating a
"dhcp_4.2.4-P1.bbappend" recipe.  Everything works, except the dhcp-server
doesn't run on boot.

If I login and run "update-rc.d dhcp-server defaults" on the target, then
it creates the entries in /etc/rc0.d (etc) and the service starts on the
next boot.

The question is, how can I get bitbake to create those entries when it
creates the image?  I'm open to completely different ways of going about
this as well.  Looking at other recipes, I thought this recipe would do,
but it doesn't:

{named dhcp_4.2.4-P1.bbappend}
FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

inherit update-rc.d

INITSCRIPT_NAME = "dhcp-server"
INITSCRIPT_PARAMS = "defaults"

# Not sure this is needed, since I'm not adding files, just replacing the
default copies
SRC_URI += "file://dhcpd.conf \
                     file://default-server \
                     "
{end file}

I'm using the 8.0 "danny" release with Crown-bay BSP.  The "layer.conf"
file includes IMAGE_INSTALL_append = " dhcp-server" (among other things).

Thanks in advance for any assistance you can offer,

John

--0016e6de17bc348a9a04cff7613f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I seem to have figured out how to add the dhcp-server to my image, includin=
g my own dhcpd.conf and default-server files by creating a &quot;dhcp_4.2.4=
-P1.bbappend&quot; recipe. =A0Everything works, except the dhcp-server does=
n&#39;t run on boot. =A0<div>
<br></div><div>If I login and run &quot;update-rc.d dhcp-server defaults&qu=
ot; on the target, then it creates the entries in /etc/rc0.d (etc) and the =
service starts on the next boot.</div><div><br></div><div>The question is, =
how can I get bitbake to create those entries when it creates the image? =
=A0I&#39;m open to completely different ways of going about this as well. =
=A0Looking at other recipes, I thought this recipe would do, but it doesn&#=
39;t:</div>
<div><br></div><div>{named dhcp_4.2.4-P1.bbappend}</div><div>FILESEXTRAPATH=
S_prepend :=3D &quot;${THISDIR}/${PN}:&quot;</div><div><br></div><div>inher=
it update-rc.d</div><div><br></div><div>INITSCRIPT_NAME =3D &quot;dhcp-serv=
er&quot;</div>
<div>INITSCRIPT_PARAMS =3D &quot;defaults&quot;</div><div><br></div><div># =
Not sure this is needed, since I&#39;m not adding files, just replacing the=
 default copies</div><div>SRC_URI +=3D &quot;file://dhcpd.conf \</div><div>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0file://default-server \</div><di=
v>=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0&quot;</div><div>{end file}</d=
iv><div><br></div><div>I&#39;m using the 8.0 &quot;danny&quot; release with=
 Crown-bay BSP. =A0The &quot;layer.conf&quot; file includes IMAGE_INSTALL_a=
ppend =3D &quot; dhcp-server&quot; (among other things). =A0</div>
<div><br></div><div>Thanks in advance for any assistance you can offer,</di=
v><div><br></div><div>John</div>

--0016e6de17bc348a9a04cff7613f--

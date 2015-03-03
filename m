Return-Path: <cleitonblaster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DAC90E00810; Tue,  3 Mar 2015 06:09:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (cleitonrbueno[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.177 listed in list.dnswl.org]
Received: from mail-lb0-f177.google.com (mail-lb0-f177.google.com
	[209.85.217.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CD6FE003FA
	for <yocto@yoctoproject.org>; Tue,  3 Mar 2015 06:09:09 -0800 (PST)
Received: by lbiz12 with SMTP id z12so9399633lbi.12
	for <yocto@yoctoproject.org>; Tue, 03 Mar 2015 06:09:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:date:message-id:subject:from:to:content-type;
	bh=qTW2UQU4u7Rc5eVIV2E1hIdJeUDEYTs3d01D6cBzrMc=;
	b=zDCxXadVQkEb30o/twMD1+xsNma4iuVnaoLB9Twbwt+aWahc59bXs6omipV2+R4Hpw
	5q3mObcn8Rd67R8vJH1qLD0UvAe16yuJh7mgZb4X2fbFJD4B+lHn+7EKCE8Ai3reNCCc
	ZCGfHStHgaboCBo0K4uMxvCfCrcowREGyv/CsXp0sN0ad0aiU9kVdCISlYMxjevUhu6V
	Zhg+72KTtgPVgH6hPuVKIOYj8OJWjnhSf25ztZEdOxr4hEMDMXJxHezyIiN2EAOChOH7
	LU5D2H87kENmPFcs/9bdlyXZjyhYyODZEOGpyKQkuc3/47EKmm2Kwl8IBvmsy0cBZiqA
	9Kpw==
MIME-Version: 1.0
X-Received: by 10.152.22.200 with SMTP id g8mr26624551laf.96.1425391747391;
	Tue, 03 Mar 2015 06:09:07 -0800 (PST)
Sender: cleitonblaster@gmail.com
Received: by 10.25.23.80 with HTTP; Tue, 3 Mar 2015 06:09:07 -0800 (PST)
Date: Tue, 3 Mar 2015 11:09:07 -0300
X-Google-Sender-Auth: QJKV7FLPhToUf1motrXYuAz5duM
Message-ID: <CABKVDBBf3nrfAuNsD+dY3g6kOJ2Mbr6f-6yd5eBk5BfsxNrfRA@mail.gmail.com>
From: Cleiton Bueno <cleitonrbueno@gmail.com>
To: yocto@yoctoproject.org
Subject: Remove and create link symbolic /etc
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
X-List-Received-Date: Tue, 03 Mar 2015 14:09:19 -0000
Content-Type: multipart/alternative; boundary=089e0158c31ac4e47a051062e0d7

--089e0158c31ac4e47a051062e0d7
Content-Type: text/plain; charset=UTF-8

Problem in remove /etc/snmp/snmpd.conf and create link symbolic to ln -sf
/app/etc/snmpd.conf /etc/snmp/snmpd.conf


Build error:

Collected errors:
 * check_data_file_clashes: Package ideale wants to install file
/home/bueno/yocto/proj-bbb-2015-vter/tmp/work/beaglebone-poky-linux-gnueabi/vter2015/1.0-r0/rootfs/etc/snmp/snmpd.conf
    But that file is already provided by package  * net-snmp-server-snmpd
 * opkg_install_cmd: Cannot install package ideale.


-- 

*Att,Cleiton Bueno*

--089e0158c31ac4e47a051062e0d7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Problem in remove /etc/snmp/snmpd.conf and create lin=
k symbolic to ln -sf /app/etc/snmpd.conf /etc/snmp/snmpd.conf<br><br><br></=
div>Build error:<br><br>Collected errors:<br>=C2=A0* check_data_file_clashe=
s: Package ideale wants to install file /home/bueno/yocto/proj-bbb-2015-vte=
r/tmp/work/beaglebone-poky-linux-gnueabi/vter2015/1.0-r0/rootfs/etc/snmp/sn=
mpd.conf<br>=C2=A0=C2=A0=C2=A0 But that file is already provided by package=
=C2=A0 * net-snmp-server-snmpd<br>=C2=A0* opkg_install_cmd: Cannot install =
package ideale.<br><br clear=3D"all"><div><div><br>-- <br><div class=3D"gma=
il_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr">=
<div><div dir=3D"ltr"><div><div dir=3D"ltr"><i><b>Att,<br>Cleiton Bueno</b>=
</i><br><br></div></div></div></div></div></div></div></div></div></div>
</div></div></div>

--089e0158c31ac4e47a051062e0d7--

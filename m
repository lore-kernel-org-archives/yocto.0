Return-Path: <david.churchill@thingtech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE02BE00E7B; Fri, 15 Nov 2019 13:00:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.161.66 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-yw1-f66.google.com (mail-yw1-f66.google.com
	[209.85.161.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 966E7E00E6A
	for <yocto@yoctoproject.org>; Fri, 15 Nov 2019 13:00:23 -0800 (PST)
Received: by mail-yw1-f66.google.com with SMTP id p128so3557465ywc.11
	for <yocto@yoctoproject.org>; Fri, 15 Nov 2019 13:00:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=thingtech.com; s=google;
	h=from:mime-version:subject:message-id:date:to;
	bh=HHXrCM6ZbKnxbPpjQvMBsQaR+ei967zqvPHHKbVvP/s=;
	b=S+SZ7YvXYe4chvYxNg8WMvq+LgTTV0mLfwQHgXEYmWBR7zj0vmDnIN8pr0L2D7U4bx
	D6C7aYZZB9qxRirI9rBbBbLuUmIWzcwkKz+VbAyEq+2TOZK5bTxl+eFNjZnIduwqznFn
	x+4rAHona2beYQ0nN0xxVUiZjBVgazxMMNgFDy8yA+hH/7JrXijNdH9zF+jWmlVTn5Zs
	wXr/moqkfO4pHguSEId5Mp4pZe2iGzU3hAY/auJKVpZDQzjMVtGRbLZZjj09ONg/MC/p
	9MTSDVhJeBiH6EhgjB//G20BVikv270tkNzximcdoeC9ysgcDHIs10z9IKivrMXljW9D
	ysIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:mime-version:subject:message-id:date:to;
	bh=HHXrCM6ZbKnxbPpjQvMBsQaR+ei967zqvPHHKbVvP/s=;
	b=EMawye9LfWqqpPvW1rgs5zgKvvJK/0WBDiCrXyyaBIfIAx+GrAQKtzWT1CVdX3tBtA
	oY8mdzYAaH20I8nFKQJ6V+pO0ZI2DRx09e9io49ESS1KGxrXoAK7eNZhLb+I8Iycjm/a
	FoA+8kGcWRSUcKGP2I0yk9/20WhvijpTh4wk76JqX/ifUMlJ/xmQ4o1IT9DFuv8uMB+p
	bpf77hAi6a4uSHCc+RdYmeGGqKmp12FUHtL0vqPU9/zJfkww8Jas6lPh1uJ8nrU/bAr8
	N/kmWCOU8xuWg1d9ATDmokIkCDx4dHCAeQUroCqDHpzwLcpcQGBkJWucUF6omgb2q1/3
	Aing==
X-Gm-Message-State: APjAAAVIGReFncr4AHIJMI0VEbJ5/xpV7JAOwddARhEtN8to9Ehy1kzx
	w3QkcWmuco++BdfloGsgzXbCMkP0zaw=
X-Google-Smtp-Source: APXvYqxv9nikf5oHSBUXM9O4YewLyBisi/CV84he8zlD7OkiHG2pluuWNgzmV/AMDNRK0ImB6p/o+Q==
X-Received: by 2002:a81:c54c:: with SMTP id o12mr11141128ywj.93.1573851622425; 
	Fri, 15 Nov 2019 13:00:22 -0800 (PST)
Received: from ?IPv6:2601:c3:4280:1b24:c45b:1d83:24fd:508b?
	([2601:c3:4280:1b24:c45b:1d83:24fd:508b])
	by smtp.gmail.com with ESMTPSA id
	204sm4555574ywm.49.2019.11.15.13.00.21 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 15 Nov 2019 13:00:21 -0800 (PST)
From: David Churchill <david.churchill@thingtech.com>
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3601.0.10\))
Message-Id: <B793512E-D26B-4CDA-A4FF-8056BC1849AB@thingtech.com>
Date: Fri, 15 Nov 2019 16:00:21 -0500
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.3601.0.10)
Subject: Cannot install package SMBNETFS Build Error Configuring CUPS
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
X-List-Received-Date: Fri, 15 Nov 2019 21:00:25 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_C1C6DC75-7E10-4505-9D04-BBB3E96FC491"

--Apple-Mail=_C1C6DC75-7E10-4505-9D04-BBB3E96FC491
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hello, new to Yocto.  I=E2=80=99m trying to add SMB/CIFS support to the =
Linux Distribution on a WP77xx based Sierra Wireless FX30 so I can mount =
windows network shares.  It seems that a  recipe exists for this in my =
source tree for my device at=20

	=
/yocto/meta-openembedded/meta-filesystems/recipes-filesystems/smbnetfs

I=E2=80=99ve edited my =
/yocto/meta-swi/meta-swi-mdm9x28/recipes-core/images/mdm9x28-image.inc =
file and added the lines:

	# Add smbnetfs package
	IMAGE_INSTALL_append =3D " smbnetfs=E2=80=9D

But when I type make in my /yocto directory the image fails to build =
with:

	ERROR: cups-2.1.4-r0 do_configure: configure failed
	configure: error: Unable to enable SSL support.
	ERROR: Task =
(/home/myUserName/yocto/poky/meta/recipes-extended/cups/cups_2.1.4.bb:do_c=
onfigure) failed with exit code =E2=80=981'

I can=E2=80=99t figure out how to get past this error,  I would greatly =
appreciate any help in resolving this.

Thanks in advance,

David=

--Apple-Mail=_C1C6DC75-7E10-4505-9D04-BBB3E96FC491
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">Hello, new to Yocto. &nbsp;I=E2=80=99m trying to add SMB/CIFS =
support to the Linux Distribution on a WP77xx based Sierra Wireless FX30 =
so I can mount windows network shares. &nbsp;It seems that a =
&nbsp;recipe exists for this in my source tree for my device =
at&nbsp;<div class=3D""><br class=3D""></div><div class=3D""><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>/yocto/meta-openembedded/meta-filesystems/recipes-filesystems/smbne=
tfs</div><div class=3D""><br class=3D""></div><div class=3D"">I=E2=80=99ve=
 edited =
my&nbsp;/yocto/meta-swi/meta-swi-mdm9x28/recipes-core/images/mdm9x28-image=
.inc file and added the lines:</div><div class=3D""><br =
class=3D""></div><div class=3D""><div class=3D""><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span># Add =
smbnetfs package</div><div class=3D""><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>IMAGE_INSTALL_append =3D " =
smbnetfs=E2=80=9D</div><div class=3D""><br class=3D""></div><div =
class=3D"">But when I type make in my /yocto directory the image fails =
to build with:</div><div class=3D""><br class=3D""></div><div =
class=3D""><font color=3D"#000000" class=3D""><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>ERROR: =
cups-2.1.4-r0 do_configure: configure failed<br class=3D""><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>configure: error: Unable to enable SSL support.<br class=3D""><span=
 class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>ERROR: =
Task =
(/home/myUserName/yocto/poky/meta/recipes-extended/cups/cups_2.1.4.bb:do_c=
onfigure) failed with&nbsp;exit code&nbsp;=E2=80=981'</font></div></div><d=
iv class=3D""><font color=3D"#000000" class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0);" class=3D""><br =
class=3D""></span></font></div><div class=3D""><font color=3D"#000000" =
class=3D"">I can=E2=80=99t figure out how to get past this error, =
&nbsp;I would greatly appreciate any help in resolving =
this.</font></div><div class=3D""><font color=3D"#000000" class=3D""><br =
class=3D""></font></div><div class=3D""><font color=3D"#000000" =
class=3D"">Thanks in advance,</font></div><div class=3D""><font =
color=3D"#000000" class=3D""><br class=3D""></font></div><div =
class=3D""><font color=3D"#000000" =
class=3D"">David</font></div></body></html>=

--Apple-Mail=_C1C6DC75-7E10-4505-9D04-BBB3E96FC491--

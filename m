Return-Path: <ashish.dalela@gmail.com>
Received: from mail-la0-f41.google.com (mail-la0-f41.google.com
	[209.85.215.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDC81E006EA
	for <yocto@yoctoproject.org>; Mon,  7 Oct 2013 06:53:22 -0700 (PDT)
Received: by mail-la0-f41.google.com with SMTP id ec20so5720212lab.0
	for <yocto@yoctoproject.org>; Mon, 07 Oct 2013 06:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=+O0uENfbULbnsNaDvHPnZiLDkSnAFZd7Ow+H27N9fFE=;
	b=rsTx8ohzdPwQQQzo3mBQIulXlHebnleDMq7IFBoU7EBXC/BeS+k63C3lKmPAyoPv8N
	B2HD2pcWu0ZsCpJt8hw7DcXQI4sCk7tuiVQnMXIs/8WUnPKPRoN29kQiJiq0UHksF4Dc
	UCtggTRXNGMEgVJAvIYACEpAdroybt1cVPe2t2r5y1I+Xtz3B8uXGENM1RiS2C6RPoK2
	l4Z1dl7KS1urHCcNZAFHef/vjFj1o9cywu5NyO4lv6+ZqM0SoNQVMa2R7dwm47XJyVD2
	XU6w5hg2BBXqnRMHrUnuTjz1AJ7SvUSd+GLIuwGWJO4StDSzbqXwdu1Z0KPlo1VIMuS2
	HvQQ==
MIME-Version: 1.0
X-Received: by 10.152.3.201 with SMTP id e9mr7161561lae.24.1381154000658; Mon,
	07 Oct 2013 06:53:20 -0700 (PDT)
Received: by 10.112.11.195 with HTTP; Mon, 7 Oct 2013 06:53:20 -0700 (PDT)
Date: Mon, 7 Oct 2013 19:23:20 +0530
Message-ID: <CABhkJRf2=Cw4Cs40+uOpLa1dXsjAxrJC=M47DOCDamegiSa6pQ@mail.gmail.com>
From: Ashish Dalela <ashish.dalela@gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: How to patch sysroots file?
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
X-List-Received-Date: Mon, 07 Oct 2013 13:53:27 -0000
Content-Type: multipart/alternative; boundary=089e013d14ca96e55604e826f926

--089e013d14ca96e55604e826f926
Content-Type: text/plain; charset=ISO-8859-1

I am trying to build bridge-utils. During compilation, I get the error:

/scratch/adalela/yocto/build/tmp/sysroots/qemux86/usr/include/linux/if_bridge.h:172:20:
error: field 'ip6' has incomplete typeIn file included from
../libbridge/libbridge.h:24:0

But, I don't see matching file paths in git path and sysroots locations.

In sysroots path:
.../build/tmp/sysroots/qemux86
$ find . -name if_bridge.h
./usr/include/linux/if_bridge.h

In GIT path:
.../build/tmp/work/qemux86-poky-linux/linux-yocto/3.8.11+git*/linux
$ find . -name if_bridge.h
./include/uapi/linux/if_bridge.h
./include/linux/if_bridge.h

./usr/include/linux/if_bridge.h and ./include/uapi/linux/if_bridge.h are
almost identical, except of #ifdef.

I can manually patch the files and the compilation is successful. But I
don't know how to create the patch file for the sysroots file, because the
GIT path does not have the same file.

So my question is: from where is the sysroots file coming? How should I
generate the patch file for the sysroots ./usr/include/linux/if_bridge.h?

Thanks
-Ashish

--089e013d14ca96e55604e826f926
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div><font face=3D"courier new, monospace">I am trying=
 to build bridge-utils. During compilation, I get the error:</font></div><d=
iv><br></div><div><font face=3D"courier new, monospace">/scratch/adalela/yo=
cto/build/tmp/sysroots/qemux86/usr/include/linux/if_bridge.h:172:20: error:=
 field &#39;ip6&#39; has incomplete typeIn file included from ../libbridge/=
libbridge.h:24:0</font></div>
<div><font face=3D"courier new, monospace"><br></font></div><div><font face=
=3D"courier new, monospace">But, I don&#39;t see matching file paths in git=
 path and sysroots locations.</font></div><div><font face=3D"courier new, m=
onospace"><br>
</font></div><div><font face=3D"courier new, monospace">In sysroots path:</=
font></div><div><font face=3D"courier new, monospace">.../build/tmp/sysroot=
s/qemux86<br></font></div><div><font face=3D"courier new, monospace"><div>$=
 find . -name if_bridge.h</div>
<div>./usr/include/linux/if_bridge.h</div><div><br></div><div>In GIT path:<=
/div><div><div>.../build/tmp/work/qemux86-poky-linux/linux-yocto/3.8.11+git=
*/linux</div><div>$ find . -name if_bridge.h</div><div>./include/uapi/linux=
/if_bridge.h</div>
<div>./include/linux/if_bridge.h</div></div><div><br></div><div>./usr/inclu=
de/linux/if_bridge.h and ./include/uapi/linux/if_bridge.h are almost identi=
cal, except of #ifdef.</div><div><br></div><div>I can manually patch the fi=
les and the compilation is successful. But I don&#39;t know how to create t=
he patch file for the sysroots file, because the GIT path does not have the=
 same file.=A0</div>
<div><br></div><div>So my question is: from where is the sysroots file comi=
ng? How should I generate the patch file for the sysroots ./usr/include/lin=
ux/if_bridge.h?</div><div><br></div></font><font face=3D"courier new, monos=
pace"><div>
Thanks</div><div>-Ashish</div></font></div></div>

--089e013d14ca96e55604e826f926--

Return-Path: <jon.szymaniak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2714E00D33; Thu, 31 May 2018 21:38:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_05_10, 
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jon.szymaniak.foss[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.42 listed in list.dnswl.org]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f42.google.com (mail-oi0-f42.google.com
	[209.85.218.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93C0BE007DA
	for <yocto@yoctoproject.org>; Thu, 31 May 2018 21:38:23 -0700 (PDT)
Received: by mail-oi0-f42.google.com with SMTP id 14-v6so13435255oie.3
	for <yocto@yoctoproject.org>; Thu, 31 May 2018 21:38:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:sender:from:date:message-id:subject:to;
	bh=xrjGlZnTrmKxpIWgaG3hM0RYckDrm5m4EEM0cvunXvA=;
	b=KMuI6SYiPgKFT9luevGF0cumyEb+rEYV7nrtbs3+zlROuZGQCt9K8hGWddCLaKjTad
	SzYP4Y0pQiefCFAWScS7g36bpa7G8ap6K0LfOMSOS3pz/LRbuVyth3gJvnnCRGub8cvM
	IWgUFMB4uPtCRgQmlnfhj+XVhKyGaFkGVHoSHK/yR6PkGJGqON1sJMdGQDU7x2cI4iz8
	Ixrsd5xZEiax5QDCF2gtYEdalKWpKW4pmiRUPV0c+I3wp+tW0eWJn94aRu44rZtmzjFy
	aMdmF4g7WPvqrlojSgjQbBVrWgWsKIf6eZFa8sE6apDTcfzxpuASmxJaTzGMf+1UmQMt
	H6HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
	:to; bh=xrjGlZnTrmKxpIWgaG3hM0RYckDrm5m4EEM0cvunXvA=;
	b=dC540/OxRpPebxIuvuAU+5huM/4XyIb9/pFvvIfvKuokC5rK5M4+GPAyr0dthm3O50
	i2Yj2B1xIuyGmERR9wrb9pFVJHSoafcl7QahVxftHDPjUmw8CW9/wRPMw1OUnK/KR1V1
	wE9siTUgiW3hS4AizaKocw0RQ9U5alrpIW3jQ8qBZTrX9IICe57PFnJ66HeIPGgD3WMM
	ysc3vYgfgsxYP1dcHNYtMnM40FKRhyaKShtrF4XM85IpuVWRBRZL2htOxaU8FOX4aKnZ
	PN2eBlqdnu2ejmUNA050LckzwVQj1fUqIsT+fdiTSASqshNTPtOtPuKXuk2tcdtXL5UD
	+xTA==
X-Gm-Message-State: APt69E3zUq73jxKARiIm8IGcBNZ3kylWnMtwp8cED4GO1s0tGceWuEVQ
	BV0F4AOdrdE0+wYS7nXQhPBfi9oyK9mdudhEDI91Yc6i
X-Google-Smtp-Source: ADUXVKKER3bgFzOPkRKPmAHnD+ta7hdrN7JN/wa57o59mkfnxTTb+oLuCe/NWRMUQ7ygmRRGD0xnCShKHzNVJ4XFDes=
X-Received: by 2002:aca:4957:: with SMTP id
	w84-v6mr2774529oia.293.1527827902764; 
	Thu, 31 May 2018 21:38:22 -0700 (PDT)
MIME-Version: 1.0
Sender: jon.szymaniak@gmail.com
Received: by 2002:a9d:ed1:0:0:0:0:0 with HTTP;
	Thu, 31 May 2018 21:38:02 -0700 (PDT)
From: Jon Szymaniak <jon.szymaniak.foss@gmail.com>
Date: Thu, 31 May 2018 23:38:02 -0500
X-Google-Sender-Auth: IvYsumY_pjBoFwRNbdIi6dzqoBI
Message-ID: <CANge7vXCY-5cULGyjqT3L+LhNUW4CF9T5mrDFhJXDNfqkcw6Ag@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 04 Jun 2018 01:11:40 -0700
Subject: [meta-security] buck-security not found in STAGING_BINDIR_NATIVE
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
X-List-Received-Date: Fri, 01 Jun 2018 04:38:24 -0000
Content-Type: multipart/alternative; boundary="0000000000006c1bfb056d8d2768"

--0000000000006c1bfb056d8d2768
Content-Type: text/plain; charset="UTF-8"

I'm working with the rocko branch of the meta-security layer [1], with the
latest poky rocko branch HEAD on an Ubuntu 17.04 machine (technically an
"untested" distro but otherwise fine in the past).

From my understanding, all that should be required to run the buck-security
after an image build is adding INHERIT += "check_security" to local.conf. I
see that check_security.bbclass [2] already takes care of appending itself
to EXTRA_IMAGEDEPENDS.

However, when building an image (e.g. core-image-minimal),
check_security.bbclass is failing to find buck-security in
${STAGING_BINDIR_NATIVE}, as indicated by the following error message:

${TMPDIR}/work/raspberrypi0_wifi-poky-linux-gnueabi/core-ima
ge-minimal/1.0-r0/temp/run.check_security.24976:
  112: ${TMPDIR}/work/raspberrypi0_wifi-poky-linux-gnueabi/core-ima
ge-minimal/1.0-r0/temp/run.check_security.24976:
     ${TMPDIR}/work/raspberrypi0_wifi-poky-linux-gnueabi/core-im
age-minimal/1.0-r0/recipe-sysroot-native/usr/bin/buck-security: not found

The above makes it clear what ${STAGING_BINDIR_NATIVE} expands to;
buck-security is indeed not present in this location.

My logs indicate that when buck-security-native recipe's do_install() is
executed [3], ${D} and ${bindir} are defined as follows:

D: ${TMPDIR}/work/x86_64-linux/buck-security-native/0.7-r0/image
bindir: ${TMPDIR}/work/x86_64-linux/buck-security-native/0.7-r0/recipe-sysroot-native/usr/bin

buck-security also appears to be present in the  following location:
${TMPDIR}/sysroots-components/x86_64/buck-security-native/usr/bin/buck-security


After going through the manuals, I'm still a little unclear about when
exactly buck-security-native's files should be copied or linked into the
image's respective sysroot (presumably, during do_populate_sysroot?), and
where the breakdown is happening here.

If anyone else is able to reproduce this or provide some assistance in
resolving or just debugging it, I'd greatly appreciate it.

Thank you,
Jon Szymaniak



References:
[1] https://git.yoctoproject.org/cgit/cgit.cgi/meta-security/
[2] https://git.yoctoproject.org/cgit/cgit.cgi/meta-security
/tree/classes/check_security.bbclass
[3] https://git.yoctoproject.org/cgit/cgit.cgi/meta-security/tree/recipes-
security/buck-security/buck-security_0.7.bb#n51

--0000000000006c1bfb056d8d2768
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m working with the rocko branch of the meta-security=
 layer [1], with the latest poky rocko branch HEAD on an Ubuntu 17.04 machi=
ne (technically an &quot;untested&quot; distro but otherwise fine in the pa=
st).<div><br></div><div><div>From my understanding, all that should be requ=
ired to run the buck-security after an image build is adding INHERIT +=3D &=
quot;check_security&quot; to local.conf. I see that check_security.bbclass =
[2] already takes care of appending itself to EXTRA_IMAGEDEPENDS.<br></div>=
<div><br></div><div>However, when building an image (e.g. core-image-minima=
l), check_security.bbclass is failing to find buck-security in ${STAGING_BI=
NDIR_NATIVE}, as indicated by the following error message:</div><div><br></=
div><div><div>${TMPDIR}/work/raspberrypi0_wi<wbr>fi-poky-linux-gnueabi/core=
-ima<wbr>ge-minimal/1.0-r0/temp/run.che<wbr>ck_security.24976:=C2=A0</div><=
div>=C2=A0 112: ${TMPDIR}/work/raspberrypi0_wi<wbr>fi-poky-linux-gnueabi/co=
re-ima<wbr>ge-minimal/1.0-r0/temp/run.che<wbr>ck_security.24976:=C2=A0</div=
><div>=C2=A0 =C2=A0 =C2=A0${TMPDIR}/work/raspberrypi0_w<wbr>ifi-poky-linux-=
gnueabi/core-im<wbr>age-minimal/1.0-r0/recipe-sysr<wbr>oot-native/usr/bin/b=
uck-securi<wbr>ty: not found</div></div><div><br></div><div>The above makes=
 it clear what ${STAGING_BINDIR_NATIVE} expands to; buck-security is indeed=
 not present in this location.</div><div><br></div><div>My logs indicate th=
at when buck-security-native recipe&#39;s do_install() is executed [3], ${D=
} and ${bindir} are defined as follows:<br><br>D: ${TMPDIR}/work/x86_64-lin=
ux/buck-security-native/0.7-r0/image</div><div>bindir:=C2=A0${TMPDIR}/work/=
x86_64-linux/buck-security-native/0.7-r0/recipe-sysroot-native/usr/bin</div=
><div><br></div><div>buck-security also appears to be present in the=C2=A0 =
following location:</div><div>${TMPDIR}/sysroots-components/x86_64/buck-sec=
urity-native/usr/bin/buck-security<br></div><div><br></div><div><br></div><=
div>After going through the manuals, I&#39;m still a little unclear about w=
hen exactly buck-security-native&#39;s files should be copied or linked int=
o the image&#39;s respective sysroot (presumably, during do_populate_sysroo=
t?), and where the breakdown is happening here.<br></div><div><br></div><di=
v>If anyone else is able to reproduce this or provide some assistance in re=
solving or just debugging it, I&#39;d greatly appreciate it.</div><div><br>=
</div><div><div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;f=
ont-size:small;font-style:normal;font-variant-ligatures:normal;font-variant=
-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-in=
dent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decor=
ation-style:initial;text-decoration-color:initial">Thank you,</div><div sty=
le=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font=
-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-w=
eight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-trans=
form:none;white-space:normal;word-spacing:0px;text-decoration-style:initial=
;text-decoration-color:initial">Jon Szymaniak</div><br></div><div><br></div=
><div><br></div><div>References:</div><div>[1]=C2=A0<a href=3D"https://git.=
yoctoproject.org/cgit/cgit.cgi/meta-security/" target=3D"_blank">https://gi=
t.yoctoproject.o<wbr>rg/cgit/cgit.cgi/meta-security<wbr>/</a><br></div><div=
>[2]=C2=A0<a href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/meta-securi=
ty/tree/classes/check_security.bbclass" target=3D"_blank">https://git.yocto=
project.o<wbr>rg/cgit/cgit.cgi/meta-security<wbr>/tree/classes/check_securi=
ty.<wbr>bbclass</a></div></div><div>[3]=C2=A0<a href=3D"https://git.yoctopr=
oject.org/cgit/cgit.cgi/meta-security/tree/recipes-security/buck-security/b=
uck-security_0.7.bb#n51" target=3D"_blank">https://git.yoctoproject.<wbr>or=
g/cgit/cgit.cgi/meta-<wbr>security/tree/recipes-<wbr>security/buck-security=
/buck-<wbr>security_0.7.bb#n51</a></div><div><br></div><div><br></div><div>=
<br></div></div>

--0000000000006c1bfb056d8d2768--

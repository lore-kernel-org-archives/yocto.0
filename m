Return-Path: <pcjegan@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A239E013BB
	for <yocto@yoctoproject.org>; Thu,  7 Jun 2012 07:54:05 -0700 (PDT)
Received: by wgbfg15 with SMTP id fg15so484352wgb.11
	for <yocto@yoctoproject.org>; Thu, 07 Jun 2012 07:54:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=HFg2kZl2B16jCHF8tIyOTvVW55Mwt2s4pt6+yBzy8/U=;
	b=WEmFEMbG9XGYuvnr/3k4Wun2CvCTsoFkxyKm5ICULDlOud2h3yDsAq2B1z41MqiTWt
	JGihJpQSHvQ1u9AEv/waabd3vZVZOgJyEN3A2BKBDT27kFNLHGZrf4vqJLb2fNPaccxj
	ZWbcArEYiSlMoJ99lHfP0kBfbvnXnRrPeMnMDtLCBnJnEkYnJE0gjQcro2lu7vqsMP01
	/626jVC7YzKWLrjw01NhAmX2UEes0JaAfVoLsgLKTSwAmPoBkjol8uiPp1Q2x/F+Mwgm
	nBICeaaaleopl2wKbslYruVyNOA24Fe1zVXkKP+Kae0ZVvKED+vFyBTihyWOIMjm9jVG
	dbIw==
Received: by 10.216.80.212 with SMTP id k62mr997699wee.18.1339080844786; Thu,
	07 Jun 2012 07:54:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.216.215.224 with HTTP; Thu, 7 Jun 2012 07:53:44 -0700 (PDT)
From: Jegan Chandru <pcjegan@gmail.com>
Date: Thu, 7 Jun 2012 20:23:44 +0530
Message-ID: <CAAA4K6LV4bPEV2QXUMgwV6NMQSU2h=2Qon08F9hnRjRZUejMgA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Is there anyway to get patched source tar file for gcc while building srpm?
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
X-List-Received-Date: Thu, 07 Jun 2012 14:54:06 -0000
Content-Type: multipart/alternative; boundary=00504502d296143b7c04c1e30e42

--00504502d296143b7c04c1e30e42
Content-Type: text/plain; charset=ISO-8859-1

Hi,

Framework - poky-denzil-7.0
arch - x86_64

Is there anyway to get patched source tar file for gcc while building
srpm? I have checked the srpms created and found gcc srpms has only the
logs_with_scripts tar file and not the patched source. I have configured
"archive-patched-source" in local.conf. Upon checking on archiver.bbclass,
noticed "not_tarball" function is excluding work-shared dir.This dir is
used by gcc only for building. I can see the obvious reason here
that(correct me if I am wrong) since this source has been used by,
say gcc-cross-intermediate, gcc-cross-4.6.3 and gcc-runtime-4.6.3 bb files
and you dont want to archive that source. But anyone can tell me the exact
reason on why work-shared is being omitted for archiving? Also, I must
include that, there are total 40 patches for gcc and all patches getting
applied in gcc-4.6.inc. So I think there is no harm in archiving that
source.

As a try and error, I have created a dummy function for not_tarball and
tried to build, but that didnt work! ;(

So please anyone shed some light on this matter. It is much appreciated.
I need srpm with source for stabilizing and do some testing.

Also there is a high chance that I missed something, so feel free to
correct me. ;)

Thanks,
-JC

--00504502d296143b7c04c1e30e42
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<div><br></div><div>Framework - poky-denzil-7.0</div><div>arch - x86_64<=
/div><div><br></div><div>Is there anyway to get patched source tar file for=
 gcc while building srpm?=A0I have checked the srpms created and found gcc =
srpms has only the logs_with_scripts tar file and not the patched source. I=
 have configured &quot;archive-patched-source&quot; in local.conf. Upon che=
cking on archiver.bbclass, noticed &quot;not_tarball&quot; function is excl=
uding work-shared dir.This dir is used by gcc only for building. I can see =
the obvious reason here that(correct me if I am wrong) since this source ha=
s been used by, say=A0gcc-cross-intermediate,=A0gcc-cross-4.6.3 and=A0gcc-r=
untime-4.6.3 bb files and you dont want to archive that source. But anyone =
can tell me the exact reason on why work-shared is being omitted for archiv=
ing? Also, I must include that, there are total 40 patches for gcc and all =
patches getting applied in=A0gcc-4.6.inc. So I think there is no harm in ar=
chiving that source.</div>

<div><br></div><div>As a try and error, I have created a dummy function for=
 not_tarball and tried to build, but that didnt work! ;(</div><div><br></di=
v><div>So please anyone shed some light on this matter. It is much apprecia=
ted.</div>

<div>I need srpm with source for=A0stabilizing and do some testing.</div><d=
iv><br></div><div>Also there is a high chance that I missed something, so f=
eel free to correct me. ;)</div><div><br></div><div>Thanks,</div><div>-JC</=
div>

<div><div><br></div>
</div>

--00504502d296143b7c04c1e30e42--

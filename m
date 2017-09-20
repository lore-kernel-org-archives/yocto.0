Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D28F3E00CD0; Wed, 20 Sep 2017 01:44:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.177 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.177 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f177.google.com (mail-ua0-f177.google.com
	[209.85.217.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31558E00A39
	for <yocto@yoctoproject.org>; Wed, 20 Sep 2017 01:44:23 -0700 (PDT)
Received: by mail-ua0-f177.google.com with SMTP id l94so1254309ual.11
	for <yocto@yoctoproject.org>; Wed, 20 Sep 2017 01:44:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=XAeoxr3qevXtXVbNwXvDSljeDNQprocECznUh+eouaE=;
	b=KlvVaDTAu8ryVd8cX64dkmuqmRD7ss6R5XG/mFzME4Ze7u4dkipnFhf1OGPW01Sfq0
	E1pyCIviX/QfcQwyQh/LSrqGJIPh2UYbwpDD5icj+3gf9XbCk2whh+f9JbBf2CcTP35/
	0Cxizp6SBbZSK11rUyKJnFrAR5P1YBkyQLgVTSdmzFqIrA5rlojKwxZe5QsNy/oSpR8J
	fEPwCCksRCKayFJVvw0ym7OuUXZKiyd+t4VhsMRnMl2W0ZcYd85rlL2xocgRwYZLht6S
	axC7r8Vw5BVqteYn7t9u/qhMlRAFC92hfIVDVz0NQYzQtusgcP2vn06polopygm9CYS6
	oePg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=XAeoxr3qevXtXVbNwXvDSljeDNQprocECznUh+eouaE=;
	b=US6sABch5HBq+CrT2BTTWs7iQTmmIPwETYMg8W0pIJI9L++idpp2o6xC/jCActm7FZ
	qz76uguDV4F0H3IcqVdAQT8ExZ4r+O7VvVdDfKKA6cCk45cNMDkINR7qWCFoI/iaLl5L
	4gSzRlFaYcqh1FaNJahau1MMWY1mkYh8icwYPdC5mQKlM0COT8pwYLtVRuM3+Ran+ldB
	/on/Ln1Pv6WzJgWtlijyQVI6Bt82FuHyA7aW4ayoyWiRz03703jDt8qYgNRG1ofxsnEb
	ZN8ZuKfM42xynTRwtMxMnq/cT3Opd2XRUtLfcTo11d3Yamf/qJV3jQMl1+zWiEKuf5YS
	h/JQ==
X-Gm-Message-State: AHPjjUjlPYpswNkKqYzmQqJmn+XJRB4oY2RnPOHTWKPtDWp3r1Mn5cAc
	mojSIHQwpWLUfHfJkGBcD9hMVH8JnUmnFCLR+yUZfg==
X-Google-Smtp-Source: AOwi7QAMAggbz24Ku7gcLIYoWgyZU7o02+H6hd0hyRvr1YzoCWqnmFFFHN+tztzm2EH49HLzkfX5U+1uJ+NJS2CygB8=
X-Received: by 10.176.20.103 with SMTP id c36mr3459281uae.137.1505897062443;
	Wed, 20 Sep 2017 01:44:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.86.193 with HTTP; Wed, 20 Sep 2017 01:44:22 -0700 (PDT)
From: Andrea Galbusera <gizero@gmail.com>
Date: Wed, 20 Sep 2017 10:44:22 +0200
Message-ID: <CAC+thW29aj-ZCsd31cfEsnuQKUuDGAfCzg5AX_srUcud0e9sBA@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: eSDK install script failure
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
X-List-Received-Date: Wed, 20 Sep 2017 08:44:24 -0000
Content-Type: multipart/alternative; boundary="001a1145371879b7f805599afb4b"

--001a1145371879b7f805599afb4b
Content-Type: text/plain; charset="UTF-8"

Seeing the errors below while installing an eSDK. This is a routinely
generated VM that installs the eSDK from installation script. The errors
appeared with the latest iteration of the eSDK script, which is generated
with almost up-to-date revisions from master. Of course I have extra layers
in the mix, but none of them apparently had relevant changed since last
(working) iteration: mostly synching to master branches happened. Can
anyone help suggesting how to investigate this further? What do those
unexpected task mean? I'm blocked on releasing this SDK to developers and
clues from expert would be very appreciated...

==> default: Checking sstate mirror object availability...
==> default: done.
==> default: ERROR: Task python-native.do_fetch attempted to execute
unexpectedly
==> default: ERROR: Task python-native.do_prepare_recipe_sysroot attempted
to execute unexpectedly
==> default: ERROR: Task python-native.do_unpack attempted to execute
unexpectedly
==> default: ERROR: Task python-native.do_patch attempted to execute
unexpectedly
==> default: ERROR: Task python-native.do_populate_lic attempted to execute
unexpectedly and should have been setscened
==> default: ERROR: Task python-native.do_configure attempted to execute
unexpectedly
==> default: ERROR: Task python-native.do_compile attempted to execute
unexpectedly
==> default: ERROR: Task python-native.do_install attempted to execute
unexpectedly
==> default: ERROR: Task python-native.do_populate_sysroot attempted to
execute unexpectedly and should have been setscened
==> default: ERROR: SDK preparation failed: error log written to
/home/vagrant/poky_sdk/preparing_build_system.log

--001a1145371879b7f805599afb4b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Seeing the errors below while installing an eSDK. This is =
a routinely generated VM that installs the eSDK from installation script. T=
he errors appeared with the latest iteration of the eSDK script, which is g=
enerated with almost up-to-date revisions from master. Of course I have ext=
ra layers in the mix, but none of them apparently had relevant changed sinc=
e last (working) iteration: mostly synching to master branches happened. Ca=
n anyone help suggesting how to investigate this further? What do those une=
xpected task mean? I&#39;m blocked on releasing this SDK to developers and =
clues from expert would be very appreciated...<br><br>=3D=3D&gt; default: C=
hecking sstate mirror object availability...<br>=3D=3D&gt; default: done.<b=
r>=3D=3D&gt; default: ERROR: Task python-native.do_fetch attempted to execu=
te unexpectedly<br>=3D=3D&gt; default: ERROR: Task python-native.do_prepare=
_recipe_sysroot attempted to execute unexpectedly<br>=3D=3D&gt; default: ER=
ROR: Task python-native.do_unpack attempted to execute unexpectedly<br>=3D=
=3D&gt; default: ERROR: Task python-native.do_patch attempted to execute un=
expectedly<br>=3D=3D&gt; default: ERROR: Task python-native.do_populate_lic=
 attempted to execute unexpectedly and should have been setscened<br>=3D=3D=
&gt; default: ERROR: Task python-native.do_configure attempted to execute u=
nexpectedly<br>=3D=3D&gt; default: ERROR: Task python-native.do_compile att=
empted to execute unexpectedly<br>=3D=3D&gt; default: ERROR: Task python-na=
tive.do_install attempted to execute unexpectedly<br>=3D=3D&gt; default: ER=
ROR: Task python-native.do_populate_sysroot attempted to execute unexpected=
ly and should have been setscened<br>=3D=3D&gt; default: ERROR: SDK prepara=
tion failed: error log written to /home/vagrant/poky_sdk/preparing_build_sy=
stem.log<br><br></div>

--001a1145371879b7f805599afb4b--

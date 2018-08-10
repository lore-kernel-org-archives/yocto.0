Return-Path: <aaron@assonance.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03B69E0086B; Fri, 10 Aug 2018 08:58:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BEDC4E006F1
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2018 08:58:55 -0700 (PDT)
Received: by mail-io0-f170.google.com with SMTP id z19-v6so8068777ioh.4
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2018 08:58:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=assonance-org.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=Afq5+k9Y6ZMJXqLf1p021WE5zdTxL63dxtoIpHvk9pM=;
	b=nlzauMbs8TqeA506aQSojkyKEyIk1vbe5cTNi+jPEdQVoZ426smX0YjbudaBTzGf/c
	bnPfaaDpdS/du4xJxUzmkD8yDN4wvKn1VJlb5SSBQ3YJRqoxF3LVTfIAiIiSDJbQwwa3
	LprKB3gg85B0c+wTORv1d+Gah3YrZBzG0O9HzsUcELeiN5AyWLGgP04hY9hujzEWZdca
	9yOkf6y4GHPE1rm/Nf0Q3HAdjDV2W8xKMkn4eFFNVeTnrv1o2jgVDYYN4zHrH1bo6lD0
	3mj5GDhGdNht5oVbY4pTlz2vOfM1PUhww7MTKAPoY4YkH67cGodL7Uj/SyG88RWTNFgQ
	UX3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Afq5+k9Y6ZMJXqLf1p021WE5zdTxL63dxtoIpHvk9pM=;
	b=pT33AXZMe+hw1rN/dufmDZG+1YQNoOSpe2r/3TF/5CEIWA9dyHs8oX3+ma0LrEPvuG
	xXxMEb0yl+SJiPGsbNywcxGGvz7YAHzECPrlygvVqo9XG/gTzgUjgUc1+Q+s0fIAY13b
	1boj0L0ym0wsEIzPEaNp6N/9uEeNrRxY96ugz0BD13Rk2ePQw7ecbuhwdTk1bFOWT4hx
	srNnvv1v4H09/jKmR8senNcxOVe01K/d90eqjS2BbIcZDMDV4a2QSzn2SvoJahin2WNq
	j8gxnWlLETGrNV8kDaA587dZvzt4yGjniP4ectzlG1IuZEDNvWZaRzmWzLeGu4780y9m
	Kcww==
X-Gm-Message-State: AOUpUlE6W7+/gVwt133eHuQ1LtA4DZ7RMnmBRpy4fK1RKrwJnnHgWzth
	CuEk2jNGuUVSjhbBPBZ8GymCbrRVwmlF1l4SmhDNSgU+SGQ=
X-Google-Smtp-Source: AA+uWPxtKoHNLyfg1p2rA4FOAi5d/8ftfDNkH5XVy+ePnR0aHyRnKkoN8eKDLwzM7ZD00V62HzBwIX2MJiXWCQWfQpM=
X-Received: by 2002:a6b:7004:: with SMTP id
	l4-v6mr6257275ioc.145.1533916734502; 
	Fri, 10 Aug 2018 08:58:54 -0700 (PDT)
MIME-Version: 1.0
From: Aaron Cohen <aaron@assonance.org>
Date: Fri, 10 Aug 2018 11:58:11 -0400
Message-ID: <CAFSZm+hiLmGNesTAWNBhw-+iPr6WQ8LFC-mRCJNBTxDX7npjdQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: oe-run-native uses host python3 instead of sysroot
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
X-List-Received-Date: Fri, 10 Aug 2018 15:58:57 -0000
Content-Type: multipart/alternative; boundary="00000000000013516a057316d288"

--00000000000013516a057316d288
Content-Type: text/plain; charset="UTF-8"

Trying to run bmaptool on Centos 7, oe-run-native using the command
"oe-run-native bmap-tools-native bmaptool copy -h" gives the following
error:

--- a/scripts/oe-run-nativeTraceback (most recent call last):
  File
"/home/joel-cohen/code/yocto-2.5/xilinx-build/tmp/work/x86_64-linux/bmap-tools-native/3.4-r0/recipe-sysroot-native/usr/bin/bmaptool",
line 6, in <module>
    from pkg_resources import load_entry_point
  File "/usr/lib/python2.7/site-packages/pkg_resources.py", line 3007, in
<module>
    working_set.require(__requires__)
  File "/usr/lib/python2.7/site-packages/pkg_resources.py", line 728, in
require
    needed = self.resolve(parse_requirements(requirements))
  File "/usr/lib/python2.7/site-packages/pkg_resources.py", line 626, in
resolve
    raise DistributionNotFound(req)
pkg_resources.DistributionNotFound: bmap-tools==3.4

which is caused because the python3 that it is using is my host's old
version (3.4.8) rather than from the recipe sysroot.

The following patch fixes it for me, but I wonder if there's a better
solution. I do think that finding the sysroot python3 is in general
preferable to using whatever happens to be on the host...

A side note: the bmaptool currently in oe throws a weird error when given
no arguments rather than a usage message. This has been fixed upstream.

--Aaron

+++ b/scripts/oe-run-native
@@ -55,7 +55,7 @@ fi
 OLD_PATH=$PATH

 # look for a tool only in native sysroot
-PATH=$OECORE_NATIVE_SYSROOT/usr/bin:$OECORE_NATIVE_SYSROOT/bin:$OECORE_NATIVE_SYSROOT/usr/sbin:$OECORE_NATIVE_SYSROOT/sbin
+PATH=$OECORE_NATIVE_SYSROOT/usr/bin:$OECORE_NATIVE_SYSROOT/bin:$OECORE_NATIVE_SYSROOT/usr/sbin:$OECORE_NATIVE_SYSROOT/sbin:$OECORE_NATIVE_SYSROOT/usr/bin/python3-native
 tool_find=`/usr/bin/which $tool 2>/dev/null`

 if [ -n "$tool_find" ] ; then

--00000000000013516a057316d288
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Trying to run bmaptool on Centos 7, oe-run-native usi=
ng the command &quot;oe-run-native bmap-tools-native bmaptool copy -h&quot;=
 gives the following error:</div><div><br></div><div>--- a/scripts/oe-run-n=
ativeTraceback (most recent call last):</div><div>=C2=A0 File &quot;/home/j=
oel-cohen/code/yocto-2.5/xilinx-build/tmp/work/x86_64-linux/bmap-tools-nati=
ve/3.4-r0/recipe-sysroot-native/usr/bin/bmaptool&quot;, line 6, in &lt;modu=
le&gt;</div><div>=C2=A0 =C2=A0 from pkg_resources import load_entry_point</=
div><div>=C2=A0 File &quot;/usr/lib/python2.7/site-packages/pkg_resources.p=
y&quot;, line 3007, in &lt;module&gt;</div><div>=C2=A0 =C2=A0 working_set.r=
equire(__requires__)</div><div>=C2=A0 File &quot;/usr/lib/python2.7/site-pa=
ckages/pkg_resources.py&quot;, line 728, in require</div><div>=C2=A0 =C2=A0=
 needed =3D self.resolve(parse_requirements(requirements))</div><div>=C2=A0=
 File &quot;/usr/lib/python2.7/site-packages/pkg_resources.py&quot;, line 6=
26, in resolve</div><div>=C2=A0 =C2=A0 raise DistributionNotFound(req)</div=
><div>pkg_resources.DistributionNotFound: bmap-tools=3D=3D3.4</div><div><br=
></div><div>which is caused because the python3 that it is using is my host=
&#39;s old version (3.4.8) rather than from the recipe sysroot.</div><div><=
br></div><div>The following patch fixes it for me, but I wonder if there&#3=
9;s a better solution. I do think that finding the sysroot python3 is in ge=
neral preferable to using whatever happens to be on the host...</div><div><=
br></div><div>A side note: the bmaptool currently in oe throws a weird erro=
r when given no arguments rather than a usage message. This has been fixed =
upstream.</div><div><br></div><div>--Aaron</div><div><br></div><div>+++ b/s=
cripts/oe-run-native</div><div>@@ -55,7 +55,7 @@ fi</div><div>=C2=A0OLD_PAT=
H=3D$PATH</div><div>=C2=A0</div><div>=C2=A0# look for a tool only in native=
 sysroot</div><div>-PATH=3D$OECORE_NATIVE_SYSROOT/usr/bin:$OECORE_NATIVE_SY=
SROOT/bin:$OECORE_NATIVE_SYSROOT/usr/sbin:$OECORE_NATIVE_SYSROOT/sbin</div>=
<div>+PATH=3D$OECORE_NATIVE_SYSROOT/usr/bin:$OECORE_NATIVE_SYSROOT/bin:$OEC=
ORE_NATIVE_SYSROOT/usr/sbin:$OECORE_NATIVE_SYSROOT/sbin:$OECORE_NATIVE_SYSR=
OOT/usr/bin/python3-native</div><div>=C2=A0tool_find=3D`/usr/bin/which $too=
l 2&gt;/dev/null`</div><div>=C2=A0</div><div>=C2=A0if [ -n &quot;$tool_find=
&quot; ] ; then</div><div><br></div></div>

--00000000000013516a057316d288--

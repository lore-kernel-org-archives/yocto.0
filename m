Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.10493.1576767850193651247
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Dec 2019 07:04:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@assonance-org.20150623.gappssmtp.com header.s=20150623 header.b=sPQrUbSL;
 spf=softfail (domain: assonance.org, ip: 140.211.169.56, mailfrom: aaron@assonance.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D487E00942; Thu, 19 Dec 2019 07:04:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.210.46 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA745E0079A
	for <yocto@yoctoproject.org>; Thu, 19 Dec 2019 07:04:08 -0800 (PST)
Received: by mail-ot1-f46.google.com with SMTP id c22so7540736otj.13
        for <yocto@yoctoproject.org>; Thu, 19 Dec 2019 07:04:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=assonance-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=XzujrHkq2/do7cvgQ2hGx7WMQfCQA+zZwXbh3gVfWac=;
        b=sPQrUbSLFbCqklD+Txdx9H5nzSnAOnMEQLlrLO2CsIDLVnmQ2L6gxdRG7ip460cf6l
         FfCyFNBLnjYKcfaez3iul4fMZ+3aB2R4w6+Lv5SiWhyTUrjW0q69SrTfbSn8oLRbuC55
         81mCH+eJNqsUiJrZFO7bX7w4rLnTLkaE594Ai3/+xO8jZh4RKVCKgs7LqvvQNDJj8Bav
         zwRkfzx2S/Hi/EU5gutV0qFNtJMSQkDLhGCf5z7Xkv9ZuqQmnJyGs5npcxkr+h/N/4c9
         PzMiTtvCGHIBEWxjDYHBPQc49lFsikorsJu0D+j1SWl3pOXvq3FEKiH2lJ1cA5LSiaKV
         lFZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=XzujrHkq2/do7cvgQ2hGx7WMQfCQA+zZwXbh3gVfWac=;
        b=EL4/qwoh5hcTDg6JF/QvUew5m9D5TeW1CYf4vMsstESbBdOq2cVMk8Ab5GqPo6QYRY
         vSyeA6+DsL+CexAgPrsPpGsHQNIkwzkVXfG1l1nUhxaF6SFkF4zYS6NxykDxDTCCrgyu
         KDPABI4a95VXZ1YkJiiZcGQoJ1SNKkqxHV2s4WVUWdHmdM10HpFWG2vjr1OmTn7iSKr0
         NP0VJlWpTe2fKYLMEJYnY0gvlURilT8nVHl1x715IqF1FZ0Y/K/lkNSKchTDtAu+I3qm
         Mg3SjwWCryE+1ZgreHGIYdPqXasJ/+Zc/ccQyJhqUylZuqjMusE8TAUVuu4h/k0f6js3
         Ylvw==
X-Gm-Message-State: APjAAAWtd/u1b27K71cIgb78+f0GmvUkK878Ndh53tzyk9YfzpOREaGD
	88KJn8zMJTimSoJuxlPXt8WbUbInPUnpUkXBsWVGRa8d58Q=
X-Google-Smtp-Source: APXvYqx+2qnDt6z80u1/Eem19Q0KAxmirs58yo2P5STPG3UXO0NemG3KubHXlHB5JNhJ92ru/GAengOTNJG6m4WcZ7A=
X-Received: by 2002:a05:6830:154c:: with SMTP id l12mr9219485otp.275.1576767847287;
 Thu, 19 Dec 2019 07:04:07 -0800 (PST)
MIME-Version: 1.0
From: "Joel A Cohen" <aaron@assonance.org>
Date: Thu, 19 Dec 2019 10:03:56 -0500
Message-ID: <CAFSZm+giT64Fn93BWQc24NaPp6cr-tTo9z+hpqRzy=2p5GgPxg@mail.gmail.com>
Subject: Skipping network-required recipes automatically?
To: yocto@yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000006e600c059a0fdfd7"

--0000000000006e600c059a0fdfd7
Content-Type: text/plain; charset="UTF-8"

Hi all,

My layer has a bunch of "development" recipes that contain something like:

PV = "1.1.2+git${SRCPV}"
SRCREV = "${AUTOREV}"
DEFAULT_PREFERENCE = "-1"


In these cases, my recipes have a "known good" version that has a specific
known-good version number (recipe_1.1.2.bb), and then the "recipe_git.bb"
file that I only enable using PREFERRED_VERSION when I'm wanting to use the
latest source code.

My problem with this is that it seems to defeat BB_NO_NETWORK, and I'm not
sure how to handle it. I would like my layer to work correctly with no
network, but the mere presence of these development recipes causes my build
to fail during parsing if the network is not available.

My last failed attempt was to create a "skip-git" class that I inherit in
local.conf with the following:

python () {
    no_network = d.getVar('BB_NO_NETWORK')
    pn = d.getVar('PN')
    pv = d.getVar('PV')

    if no_network and 'git' in pv:
        raise bb.parse.SkipRecipe("Recipe requires git, but no network:
%s-%s" % (pn, pv))
}


Unfortunately, bitbake seems to fail in data_smart.py before my class
actually has a chance to skip the recipe even in this case.

Is there a better way to handle this?

Thanks,
Aaron

--0000000000006e600c059a0fdfd7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>My layer has a bunch of &quot;d=
evelopment&quot; recipes that contain something like:</div><div><br></div><=
div>PV =3D &quot;1.1.2+git${SRCPV}&quot;</div><div>SRCREV =3D &quot;${AUTOR=
EV}&quot;</div><div>DEFAULT_PREFERENCE =3D &quot;-1&quot;</div><div><br></d=
iv><div><br></div><div>In these cases, my recipes have a &quot;known good&q=
uot; version that has a specific known-good version number (<a href=3D"http=
://recipe_1.1.2.bb">recipe_1.1.2.bb</a>), and then the &quot;<a href=3D"htt=
p://recipe_git.bb">recipe_git.bb</a>&quot; file that I only enable using PR=
EFERRED_VERSION when I&#39;m wanting to use the latest source code.</div><d=
iv><br></div><div>My problem with this is that it seems to defeat BB_NO_NET=
WORK, and I&#39;m not sure how to handle it. I would like my layer to work =
correctly with no network, but the mere presence of these development recip=
es causes my build to fail during parsing if the network is not available.<=
/div><div><br></div><div>My last failed attempt was to create a &quot;skip-=
git&quot; class that I inherit in local.conf with the following:</div><div>=
<br></div><div>python () {<br>=C2=A0 =C2=A0 no_network =3D d.getVar(&#39;BB=
_NO_NETWORK&#39;)<br>=C2=A0 =C2=A0 pn =3D d.getVar(&#39;PN&#39;)<br>=C2=A0 =
=C2=A0 pv =3D d.getVar(&#39;PV&#39;)<br><br>=C2=A0 =C2=A0 if no_network and=
 &#39;git&#39; in pv:<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 raise bb.parse.SkipRec=
ipe(&quot;Recipe requires git, but no network: %s-%s&quot; % (pn, pv))<br>}=
<br></div><div><br></div><div><br></div><div>Unfortunately, bitbake seems t=
o fail in data_smart.py before my class actually has a chance to skip the r=
ecipe even in this case.</div><div><br></div><div>Is there a better way to =
handle this?</div><div><br></div><div>Thanks,</div><div>Aaron</div></div>

--0000000000006e600c059a0fdfd7--

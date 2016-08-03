Return-Path: <joel.zhou@broadcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2B0CE00C9E; Wed,  3 Aug 2016 09:48:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.41 listed in list.dnswl.org]
Received: from mail-oi0-f41.google.com (mail-oi0-f41.google.com
	[209.85.218.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 611B9E00A75
	for <yocto@yoctoproject.org>; Wed,  3 Aug 2016 09:48:26 -0700 (PDT)
Received: by mail-oi0-f41.google.com with SMTP id 4so78633602oih.2
	for <yocto@yoctoproject.org>; Wed, 03 Aug 2016 09:48:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
	h=mime-version:from:date:message-id:subject:to;
	bh=Su/Z0sCMYOj2z6eSiJaesaNIx7HlkP4VbCH5k8zAnW8=;
	b=IagCbVmhee6G1ofFAxeWgK/16gRyqBQSwyMQRkw/WnqA8J+nyLSvQiv6A9XlCdRXPi
	Otqrdd+MJ9AyEVPusO/kticmox6OBmyRuu4U6Cn3GRi1/W5JSAaLr66imIjZq9b3CBV5
	Okpj0WyUS2cI16b+NlZvHLVP/BfzZlIA/pl/E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Su/Z0sCMYOj2z6eSiJaesaNIx7HlkP4VbCH5k8zAnW8=;
	b=l3Mnyi+n2bTHfMRrHXF85JdzgXyIds6V+I+nbeW1aLLRhEc3X5mh4G/vFnngnWk8Cd
	qXVSFn80oQsDhCBwQ5F9BmhBYUOvl8v2icT7YYQjXZIsf32ewFTIXpJiAFJiz+J3Ny7e
	6/iOJZ8DsUQv5AGg1qwwDb96g7yTbVX1/46aiXnXXGeLcOZ5BQGbE92aaN9wxobCHahp
	nnFHigAeE9BK9TS0sBk+TvzqG4IxY1xsLscLt287cdWu/JRS3uGsnG+VB9tmaTj6a459
	3NUEK9MGyWuKXwWGFvSGYaVaj+rcxGWeOGkaK7p0XPk0P7THkgDH0ITmNrKE9qgQqDJK
	8laA==
X-Gm-Message-State: AEkoouu7RHJhuFNKEggn8/f6QuGM1Ra7EVvWVeW+uFrX9TIYKwrcP5eHHyMs3Vr3VPwpP+eQl5KC/H/AzgMbie2R
X-Received: by 10.157.11.112 with SMTP id p45mr12665871otd.21.1470242905971;
	Wed, 03 Aug 2016 09:48:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.50.10 with HTTP; Wed, 3 Aug 2016 09:48:25 -0700 (PDT)
From: Joel Zhou <joel.zhou@broadcom.com>
Date: Wed, 3 Aug 2016 12:48:25 -0400
Message-ID: <CAAJbk1F3CKtvc2sJgh8E=vXfUUET47GxxCch2FfFUXn9Gvh+Jw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: libatomic missing in krogoth Yocto 2.1
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
X-List-Received-Date: Wed, 03 Aug 2016 16:48:31 -0000
Content-Type: multipart/alternative; boundary=001a11476cd82581fc05392d9a3d

--001a11476cd82581fc05392d9a3d
Content-Type: text/plain; charset=UTF-8

Hi all,

I'm building core-image-minimal with Yocto 2.1 krogoth.
It failed with missing libatomic. The only thing closest is libatomic-ops.
meta/recipes-support/libatomic-ops/libatomic-ops_7.4.2.bb

[joelz@ldt-joelz]:(krogoth)$ bitbake core-image-minimal
Parsing recipes: 100%
|####################################################################################################################################|
Time: 00:02:20
Parsing of 1948 .bb files complete (0 cached, 1948 parsed). 2514 targets,
389 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies
ERROR: Nothing RPROVIDES 'libatomic' (but
/home/joelz/poky/build/../meta/recipes-core/packagegroups/
packagegroup-core-standalone-sdk-target.bb RDEPENDS on or otherwise
requires it)
NOTE: Runtime target 'libatomic' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['libatomic']
NOTE: Runtime target 'packagegroup-core-standalone-sdk-target' is
unbuildable, removing...
Missing or unbuildable dependency chain was:
['packagegroup-core-standalone-sdk-target', 'libatomic']
ERROR: Required build target 'core-image-minimal' has no buildable
providers.
Missing or unbuildable dependency chain was: ['core-image-minimal',
'packagegroup-core-standalone-sdk-target', 'libatomic']

Summary: There were 6 WARNING messages shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

Any suggestion?

Thanks,
Joel

--001a11476cd82581fc05392d9a3d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>I&#39;m building core-image-min=
imal with Yocto 2.1 krogoth.</div><div>It failed with missing libatomic. Th=
e only thing closest is libatomic-ops.</div><div>meta/recipes-support/libat=
omic-ops/<a href=3D"http://libatomic-ops_7.4.2.bb">libatomic-ops_7.4.2.bb</=
a><br></div><div><br></div><div><div>[joelz@ldt-joelz]:(krogoth)$ bitbake c=
ore-image-minimal</div><div>Parsing recipes: 100% |########################=
###########################################################################=
#################################| Time: 00:02:20</div><div>Parsing of 1948=
 .bb files complete (0 cached, 1948 parsed). 2514 targets, 389 skipped, 0 m=
asked, 0 errors.</div><div>NOTE: Resolving any missing task queue dependenc=
ies</div><div>ERROR: Nothing RPROVIDES &#39;libatomic&#39; (but /home/joelz=
/poky/build/../meta/recipes-core/packagegroups/<a href=3D"http://packagegro=
up-core-standalone-sdk-target.bb">packagegroup-core-standalone-sdk-target.b=
b</a> RDEPENDS on or otherwise requires it)</div><div>NOTE: Runtime target =
&#39;libatomic&#39; is unbuildable, removing...</div><div>Missing or unbuil=
dable dependency chain was: [&#39;libatomic&#39;]</div><div>NOTE: Runtime t=
arget &#39;packagegroup-core-standalone-sdk-target&#39; is unbuildable, rem=
oving...</div><div>Missing or unbuildable dependency chain was: [&#39;packa=
gegroup-core-standalone-sdk-target&#39;, &#39;libatomic&#39;]</div><div>ERR=
OR: Required build target &#39;core-image-minimal&#39; has no buildable pro=
viders.</div><div>Missing or unbuildable dependency chain was: [&#39;core-i=
mage-minimal&#39;, &#39;packagegroup-core-standalone-sdk-target&#39;, &#39;=
libatomic&#39;]</div><div><br></div><div>Summary: There were 6 WARNING mess=
ages shown.</div><div>Summary: There were 2 ERROR messages shown, returning=
 a non-zero exit code.</div><div><br></div><div>Any suggestion?</div><div><=
br></div><div><div class=3D"gmail_signature" data-smartmail=3D"gmail_signat=
ure"><div dir=3D"ltr"><div><div dir=3D"ltr"><div>Thanks,</div><div>Joel</di=
v></div></div></div></div></div>
</div></div>

--001a11476cd82581fc05392d9a3d--

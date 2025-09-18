Return-Path: <rybczynska@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C4DCCAC59A
	for <webhook@archiver.kernel.org>; Thu, 18 Sep 2025 05:23:39 +0000 (UTC)
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
 by mx.groups.io with SMTP id smtpd.web11.6876.1758173015230007440
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Sep 2025 22:23:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=kYk+2jAj;
 spf=pass (domain: gmail.com, ip: 209.85.216.54, mailfrom: rybczynska@gmail.com)
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-3304a57d842so341696a91.3
        for <yocto@lists.yoctoproject.org>; Wed, 17 Sep 2025 22:23:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758173015; x=1758777815; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4FNdrEftgvuvbNstjEXQAyRj2CXbF8O1d/mOj1bZITI=;
        b=kYk+2jAjw/bq8TTOHCBJ5oq3RwsM6aX8P0cCsXCNO023t5nZQPkbJZ+lWG3OoHOjE1
         II7LxGqvapKdz7O8+lHSs8xef78a7utvn5PCbPG0CIw6hdt+Qfa7dyGzOsFdAR0pj6/A
         gotgLXJA7k5W2iLCxKNjAJG3Vf75bKZLxd07qTCUBu4KrYYSX5tht9uH7iKXovpwSTUL
         12yGuIYiyh0fqHLHfXRY9b/sqs66uR+X4abzFa0sRZFjyLffHu0RQSJCBEAlVJk4ahkJ
         wvE+pc3J6johmPqodC+ejU/WnDDIoOWwE9K64pDNdVbcSNObXfsp9sSngeJFVwZ6Ribk
         NuVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758173015; x=1758777815;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4FNdrEftgvuvbNstjEXQAyRj2CXbF8O1d/mOj1bZITI=;
        b=jNYaTsFHYZ36SSizr8/YYEsAXMpq1hTnlDJ15KFmU9J6HvCM6KaM7BOhrh1OvEug96
         DGvNd69xeba+gFLFxmlFQ6vDSThyzbXcCFKaA6QCBsX3UN15NPL+tgL9hh1SoAXcox+u
         8MgAYqICQLtdSyj+ftcJ9ZH8kOUMZSr7RNATy4BPSWlbyoc/e1KkwedN/5y6d798Jh+4
         QoyWZdqLEkKx8ExYggLDmHqUwqRa+c64xEzhPqMXyZm7OqrKNSWP3bEc7KxtKX8cQyqw
         6V/AaC87Z3kIL7mWkqc4E/XQ/37eLJ4R6DXopejTCrpW8pmQMQoUhtJUeqgoyOv1YM1P
         dKig==
X-Gm-Message-State: AOJu0YyckayJcSWziT7L7QfUHP651yfyUr5nffpOdF0pNopVbaAukID+
	H7YSD8XmW08YnfjtRGg6Adrz1rbb++W/2emLi5tE6QPUGwHXEj23qji+kw/XtrmhG7luvKnovfi
	uJn082EIEzkWLjRmqZhQrmgilslNZs/8=
X-Gm-Gg: ASbGncuh70JBiHsR+H4T2iJxTtC3/9lev8+xy6s8t1mfEfWc6uq51DKUtT7exQ0BfG4
	HE/9/AjUb4nfWLrJpB7NEMRxaSCXZBNm43qHimHLt6ZnkM0XgR65KLMTR9SosS4WPv7bHYoswQp
	EFQBEIRm4DYJJXDXtj6rmVMfZrHpzCJa1Slnc8rgHyMSS0iqtVxZfIMOhCTDPAEpN9vf+kS9a1H
	QCuVtn5FKtYPRJOzBr1i5h4qpAOluvZ1JXGgo/48JCDX0uPzGJglADmgTbR/u+pRd4wuw==
X-Google-Smtp-Source: AGHT+IGe0wf0+ze3dcxwxucjaa7iEeBbmHcJCvxbe34vSkE/Ms0HWvG3qP+NnAe9QdsKlQ6eihPZwW5Z/mREtEnXQCM=
X-Received: by 2002:a17:90b:39cc:b0:32e:9f1e:4ee4 with SMTP id
 98e67ed59e1d1-32ee3f139d0mr6952719a91.17.1758173014348; Wed, 17 Sep 2025
 22:23:34 -0700 (PDT)
MIME-Version: 1.0
References: <0327b988-48fd-4af8-bc06-c91cd7f95734@windriver.com>
In-Reply-To: <0327b988-48fd-4af8-bc06-c91cd7f95734@windriver.com>
From: Marta Rybczynska <rybczynska@gmail.com>
Date: Thu, 18 Sep 2025 07:23:21 +0200
X-Gm-Features: AS18NWDUOrLyL6-zk3zbfO_xSHCBTH3l8-a23KJk2JKus3nfxSiE3JDT2PWvxAQ
Message-ID: <CAApg2=SKPZ87ZoyLLR_npo0deFogXHKWj-rPFkukdA2B6nkzVg@mail.gmail.com>
Subject: Re: Yocto compatibility for meta-security layer
To: Yi Zhao <yi.zhao@windriver.com>
Cc: yocto@lists.yoctoproject.org, Scott Murray <scott.murray@konsulko.com>
Content-Type: multipart/alternative; boundary="000000000000f958b5063f0c8d8b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 18 Sep 2025 05:23:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65854

--000000000000f958b5063f0c8d8b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Yi,
Thank you for your messages. There is work in progress to modernize the
layer. If you already have patches that fix those issues, they are more
than welcome!

Kind regards,
Marta

On Tue, Aug 5, 2025 at 8:26=E2=80=AFAM Yi Zhao <yi.zhao@windriver.com> wrot=
e:

> Hi folks,
>
>
> I used yocto-check-layer to check Yocto compatibility of meta-security.
> The tool reported the following failures in meta-security layer:
>
> INFO: FAIL: test_security (common.CommonCheckLayer)
> INFO:
> ----------------------------------------------------------------------
> INFO: Traceback (most recent call last):
>    File "poky/scripts/lib/checklayer/cases/common.py", line 70, in
> test_security
>      self.assertTrue(filename, msg=3D"Layer doesn't contain a SECURITY.md
> file.")
> AssertionError: None is not true : Layer doesn't contain a SECURITY.md
> file.
>
>
> INFO: FAIL: test_signatures (common.CommonCheckLayer)
> INFO:
> ----------------------------------------------------------------------
> INFO: Traceback (most recent call last):
>    File "poky/scripts/lib/checklayer/cases/common.py", line 130, in
> test_signatures
>      self.fail('Adding layer %s changed signatures.\n%s' %
> (self.tc.layer['name'], msg))
> AssertionError: Adding layer meta-security changed signatures.
> 32 signatures changed, initial differences (first hash before, second
> after):
>     libmspack:do_recipe_qa:
> c95ae911bfeba96c673fd11d13933da5bee4df3a21e93b6b764ad47b7bceeaca ->
> 2381779674028e9ef4608e56fb2159dc11f37d0c6b24050dc5da7069cdb25505
>        bitbake-diffsigs --task libmspack do_recipe_qa --signature
> c95ae911bfeba96c673fd11d13933da5bee4df3a21e93b6b764ad47b7bceeaca
> 2381779674028e9ef4608e56fb2159dc11f37d0c6b24050dc5da7069cdb25505
>        NOTE: Reconnecting to bitbake server...
>        Task dependencies changed from:
>        ['HOMEPAGE', 'INSANE_SKIP', 'OE_SHARED_UMASK', 'PACKAGECONFIG',
> 'PN', 'PR', 'PV', 'QA_ERRORS_FOUND', 'RECIPE_MAINTAINER', 'SRC_URI',
> 'SRC_URI[sha256sum]', 'SSTATECREATEFUNCS', 'SSTATEPOSTCREATEFUNCS', 'SS
> TATEPOSTUNPACKFUNCS', 'SSTATE_BUILDDIR', 'SSTATE_INSTDIR',
> 'SSTATE_MANIFESTS', 'SSTATE_SCAN_FILES', 'SSTATE_SKIP_CREATION',
> 'SUMMARY', 'do_recipe_qa[network]', 'do_recipe_qa[sstate-inputdirs]',
> 'oe.path.copyhar
> dlinktree', 'oe.path.copytree', 'oe.path.remove',
> 'oe.qa.exit_if_errors', 'oe.qa.exit_with_message_if_errors',
> 'oe.sstatesig.sstate_get_manifest_filename', 'sstate_add',
> 'sstate_clean', 'sstate_clean_manifest',
>   'sstate_init', 'sstate_install', 'sstate_installpkgdir',
> 'sstate_package', 'sstate_state_fromvars', 'sstate_task_postfunc',
> 'sstate_task_prefunc']
>        to:
>        ['HOMEPAGE', 'INSANE_SKIP', 'OE_SHARED_UMASK', 'PACKAGECONFIG',
> 'PN', 'PR', 'PV', 'QA_ERRORS_FOUND', 'RECIPE_MAINTAINER', 'SRC_URI',
> 'SSTATECREATEFUNCS', 'SSTATEPOSTCREATEFUNCS', 'SSTATEPOSTUNPACKFUNCS',
> 'SSTATE_BUILDDIR', 'SSTATE_INSTDIR', 'SSTATE_MANIFESTS',
> 'SSTATE_SCAN_FILES', 'SSTATE_SKIP_CREATION', 'SUMMARY',
> 'do_recipe_qa[network]', 'do_recipe_qa[sstate-inputdirs]',
> 'oe.path.copyhardlinktree', 'oe.path.c
> opytree', 'oe.path.remove', 'oe.qa.exit_if_errors',
> 'oe.qa.exit_with_message_if_errors',
> 'oe.sstatesig.sstate_get_manifest_filename', 'sstate_add',
> 'sstate_clean', 'sstate_clean_manifest', 'sstate_init', 'sstat
> e_install', 'sstate_installpkgdir', 'sstate_package',
> 'sstate_state_fromvars', 'sstate_task_postfunc', 'sstate_task_prefunc']
>        basehash changed from
> 7389c2b644a0cbe3efb08eb36e79682648583737171690342d91f61f860d82b9 to
> 3c44df2e06825629c6dd1be4b7e660fda1c4dc9155908baef64f3cb366cf42c2
>        List of dependencies for variable SRC_URI changed from
> 'frozenset({'SRC_URI[sha256sum]', 'PV'})' to 'frozenset()'
>        Dependency on Variable SRC_URI[sha256sum] was removed
>        Variable PV value changed from '0.11alpha' to '1.11'
>        Variable SRC_URI value changed from
> 'https://www.cabextract.org.uk/libmspack/libmspack-${PV}.tar.gz' to
> 'git://github.com/kyz/libmspack.git;branch=3Dmaster;protocol=3Dhttps'
>
>
> INFO: FAIL: test_signatures (common.CommonCheckLayer)
> INFO:
> ----------------------------------------------------------------------
> INFO: Traceback (most recent call last):
>    File "poky/scripts/lib/checklayer/cases/common.py", line 130, in
> test_signatures
>      self.fail('Adding layer %s changed signatures.\n%s' %
> (self.tc.layer['name'], msg))
> AssertionError: Adding layer meta-tpm changed signatures.
> 22 signatures changed, initial differences (first hash before, second
> after):
>     systemd-boot:do_configure:
> 1ac6cccd94f468f2c258666e57b8f57338e63a85ba293abe360bd9440852da93 ->
> 376daf18bae87ebdfddd9c9ab6bf95bfe06a830eea45bb8ade914de66e3f4fae
>        bitbake-diffsigs --task systemd-boot do_configure --signature
> 1ac6cccd94f468f2c258666e57b8f57338e63a85ba293abe360bd9440852da93
> 376daf18bae87ebdfddd9c9ab6bf95bfe06a830eea45bb8ade914de66e3f4fae
>        NOTE: Reconnecting to bitbake server...
>        basehash changed from
> 5af44540c3f151f0ffc33e381a6694b6b193b0494207170656323588ee0ccc4c to
> 236e8f11f35d1dfebcb81c286f3ac82353cb92c78835a4064888a8a0c7aa405c
>        Variable EXTRA_OEMESON value changed:
>        @@ -1 +1,2 @@
>        - -Defi=3Dtrue -Dbootloader=3Dtrue                   -Dman=3Dfalse
> ${PACKAGECONFIG_CONFARGS}
>        + -Defi=3Dtrue -Dbootloader=3Dtrue                   -Dman=3Dfalse
> ${PACKAGECONFIG_CONFARGS} ${@bb.utils.contains('DISTRO_FEATURES',
> 'tpm2', '-Dtpm2=3Dtrue', '', d)}
>        +DISTRO_FEATURES{tpm2} =3D Unset
>
>
> INFO: FAIL: test_signatures (common.CommonCheckLayer)
> INFO:
> ----------------------------------------------------------------------
> INFO: Traceback (most recent call last):
>    File "poky/scripts/lib/checklayer/cases/common.py", line 130, in
> test_signatures
>      self.fail('Adding layer %s changed signatures.\n%s' %
> (self.tc.layer['name'], msg))
> AssertionError: Adding layer meta-integrity changed signatures.
> 209 signatures changed, initial differences (first hash before, second
> after):
>     linux-yocto:do_kernel_metadata:
> 3a727f91c23ce583b5fc28f0e052fb118a79ce2f2bcc70e36db9774a2d7b3be0 ->
> 6b3ea68b9a0f4feb86e074801010f82bcd0b0024ee25ea654b5c81bbb566a382
>        bitbake-diffsigs --task linux-yocto do_kernel_metadata
> --signature
> 3a727f91c23ce583b5fc28f0e052fb118a79ce2f2bcc70e36db9774a2d7b3be0
> 6b3ea68b9a0f4feb86e074801010f82bcd0b0024ee25ea654b5c81bbb566a382
>        NOTE: Reconnecting to bitbake server...
>        Dependency on checksum of file ./audit.cfg was added
>
>
>
> Here is the command I ran:
> $ yocto-check-layer-wrapper ../meta-security --dependency ../meta
> ../meta-openembedded/meta-oe ../meta-openembedded/meta-python/
> ../meta-clang --no-auto-dependency
>
>
>
> Thanks,
> Yi
>
>

--000000000000f958b5063f0c8d8b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Yi,</div><div>Thank you for your messages. Ther=
e is work in progress to modernize the layer. If you already have patches t=
hat fix those issues, they are more than welcome!</div><div><br></div><div>=
Kind regards,</div><div>Marta<br></div></div><br><div class=3D"gmail_quote =
gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 5,=
 2025 at 8:26=E2=80=AFAM Yi Zhao &lt;<a href=3D"mailto:yi.zhao@windriver.co=
m">yi.zhao@windriver.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">Hi folks,<br>
<br>
<br>
I used yocto-check-layer to check Yocto compatibility of meta-security. <br=
>
The tool reported the following failures in meta-security layer:<br>
<br>
INFO: FAIL: test_security (common.CommonCheckLayer)<br>
INFO: ---------------------------------------------------------------------=
-<br>
INFO: Traceback (most recent call last):<br>
=C2=A0=C2=A0 File &quot;poky/scripts/lib/checklayer/cases/common.py&quot;, =
line 70, in <br>
test_security<br>
=C2=A0=C2=A0=C2=A0=C2=A0 self.assertTrue(filename, msg=3D&quot;Layer doesn&=
#39;t contain a SECURITY.md <br>
file.&quot;)<br>
AssertionError: None is not true : Layer doesn&#39;t contain a SECURITY.md =
file.<br>
<br>
<br>
INFO: FAIL: test_signatures (common.CommonCheckLayer)<br>
INFO: ---------------------------------------------------------------------=
-<br>
INFO: Traceback (most recent call last):<br>
=C2=A0=C2=A0 File &quot;poky/scripts/lib/checklayer/cases/common.py&quot;, =
line 130, in <br>
test_signatures<br>
=C2=A0=C2=A0=C2=A0=C2=A0 self.fail(&#39;Adding layer %s changed signatures.=
\n%s&#39; % <br>
(self.tc.layer[&#39;name&#39;], msg))<br>
AssertionError: Adding layer meta-security changed signatures.<br>
32 signatures changed, initial differences (first hash before, second <br>
after):<br>
=C2=A0=C2=A0=C2=A0 libmspack:do_recipe_qa: <br>
c95ae911bfeba96c673fd11d13933da5bee4df3a21e93b6b764ad47b7bceeaca -&gt; <br>
2381779674028e9ef4608e56fb2159dc11f37d0c6b24050dc5da7069cdb25505<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bitbake-diffsigs --task libmspack do_r=
ecipe_qa --signature <br>
c95ae911bfeba96c673fd11d13933da5bee4df3a21e93b6b764ad47b7bceeaca <br>
2381779674028e9ef4608e56fb2159dc11f37d0c6b24050dc5da7069cdb25505<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 NOTE: Reconnecting to bitbake server..=
.<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Task dependencies changed from:<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 [&#39;HOMEPAGE&#39;, &#39;INSANE_SKIP&=
#39;, &#39;OE_SHARED_UMASK&#39;, &#39;PACKAGECONFIG&#39;, <br>
&#39;PN&#39;, &#39;PR&#39;, &#39;PV&#39;, &#39;QA_ERRORS_FOUND&#39;, &#39;R=
ECIPE_MAINTAINER&#39;, &#39;SRC_URI&#39;, <br>
&#39;SRC_URI[sha256sum]&#39;, &#39;SSTATECREATEFUNCS&#39;, &#39;SSTATEPOSTC=
REATEFUNCS&#39;, &#39;SS<br>
TATEPOSTUNPACKFUNCS&#39;, &#39;SSTATE_BUILDDIR&#39;, &#39;SSTATE_INSTDIR&#3=
9;, <br>
&#39;SSTATE_MANIFESTS&#39;, &#39;SSTATE_SCAN_FILES&#39;, &#39;SSTATE_SKIP_C=
REATION&#39;, <br>
&#39;SUMMARY&#39;, &#39;do_recipe_qa[network]&#39;, &#39;do_recipe_qa[sstat=
e-inputdirs]&#39;, <br>
&#39;oe.path.copyhar<br>
dlinktree&#39;, &#39;oe.path.copytree&#39;, &#39;oe.path.remove&#39;, <br>
&#39;oe.qa.exit_if_errors&#39;, &#39;oe.qa.exit_with_message_if_errors&#39;=
, <br>
&#39;oe.sstatesig.sstate_get_manifest_filename&#39;, &#39;sstate_add&#39;, =
<br>
&#39;sstate_clean&#39;, &#39;sstate_clean_manifest&#39;,<br>
=C2=A0=C2=A0&#39;sstate_init&#39;, &#39;sstate_install&#39;, &#39;sstate_in=
stallpkgdir&#39;, <br>
&#39;sstate_package&#39;, &#39;sstate_state_fromvars&#39;, &#39;sstate_task=
_postfunc&#39;, <br>
&#39;sstate_task_prefunc&#39;]<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 to:<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 [&#39;HOMEPAGE&#39;, &#39;INSANE_SKIP&=
#39;, &#39;OE_SHARED_UMASK&#39;, &#39;PACKAGECONFIG&#39;, <br>
&#39;PN&#39;, &#39;PR&#39;, &#39;PV&#39;, &#39;QA_ERRORS_FOUND&#39;, &#39;R=
ECIPE_MAINTAINER&#39;, &#39;SRC_URI&#39;, <br>
&#39;SSTATECREATEFUNCS&#39;, &#39;SSTATEPOSTCREATEFUNCS&#39;, &#39;SSTATEPO=
STUNPACKFUNCS&#39;,<br>
&#39;SSTATE_BUILDDIR&#39;, &#39;SSTATE_INSTDIR&#39;, &#39;SSTATE_MANIFESTS&=
#39;, <br>
&#39;SSTATE_SCAN_FILES&#39;, &#39;SSTATE_SKIP_CREATION&#39;, &#39;SUMMARY&#=
39;, <br>
&#39;do_recipe_qa[network]&#39;, &#39;do_recipe_qa[sstate-inputdirs]&#39;, =
<br>
&#39;oe.path.copyhardlinktree&#39;, &#39;oe.path.c<br>
opytree&#39;, &#39;oe.path.remove&#39;, &#39;oe.qa.exit_if_errors&#39;, <br=
>
&#39;oe.qa.exit_with_message_if_errors&#39;, <br>
&#39;oe.sstatesig.sstate_get_manifest_filename&#39;, &#39;sstate_add&#39;, =
<br>
&#39;sstate_clean&#39;, &#39;sstate_clean_manifest&#39;, &#39;sstate_init&#=
39;, &#39;sstat<br>
e_install&#39;, &#39;sstate_installpkgdir&#39;, &#39;sstate_package&#39;, <=
br>
&#39;sstate_state_fromvars&#39;, &#39;sstate_task_postfunc&#39;, &#39;sstat=
e_task_prefunc&#39;]<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 basehash changed from <br>
7389c2b644a0cbe3efb08eb36e79682648583737171690342d91f61f860d82b9 to <br>
3c44df2e06825629c6dd1be4b7e660fda1c4dc9155908baef64f3cb366cf42c2<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 List of dependencies for variable SRC_=
URI changed from <br>
&#39;frozenset({&#39;SRC_URI[sha256sum]&#39;, &#39;PV&#39;})&#39; to &#39;f=
rozenset()&#39;<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Dependency on Variable SRC_URI[sha256s=
um] was removed<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Variable PV value changed from &#39;0.=
11alpha&#39; to &#39;1.11&#39;<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Variable SRC_URI value changed from <b=
r>
&#39;<a href=3D"https://www.cabextract.org.uk/libmspack/libmspack-$%7BPV%7D=
.tar.gz" rel=3D"noreferrer" target=3D"_blank">https://www.cabextract.org.uk=
/libmspack/libmspack-${PV}.tar.gz</a>&#39; to <br>
&#39;git://<a href=3D"http://github.com/kyz/libmspack.git;branch=3Dmaster;p=
rotocol=3Dhttps" rel=3D"noreferrer" target=3D"_blank">github.com/kyz/libmsp=
ack.git;branch=3Dmaster;protocol=3Dhttps</a>&#39;<br>
<br>
<br>
INFO: FAIL: test_signatures (common.CommonCheckLayer)<br>
INFO: ---------------------------------------------------------------------=
-<br>
INFO: Traceback (most recent call last):<br>
=C2=A0=C2=A0 File &quot;poky/scripts/lib/checklayer/cases/common.py&quot;, =
line 130, in <br>
test_signatures<br>
=C2=A0=C2=A0=C2=A0=C2=A0 self.fail(&#39;Adding layer %s changed signatures.=
\n%s&#39; % <br>
(self.tc.layer[&#39;name&#39;], msg))<br>
AssertionError: Adding layer meta-tpm changed signatures.<br>
22 signatures changed, initial differences (first hash before, second <br>
after):<br>
=C2=A0=C2=A0=C2=A0 systemd-boot:do_configure: <br>
1ac6cccd94f468f2c258666e57b8f57338e63a85ba293abe360bd9440852da93 -&gt; <br>
376daf18bae87ebdfddd9c9ab6bf95bfe06a830eea45bb8ade914de66e3f4fae<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bitbake-diffsigs --task systemd-boot d=
o_configure --signature <br>
1ac6cccd94f468f2c258666e57b8f57338e63a85ba293abe360bd9440852da93 <br>
376daf18bae87ebdfddd9c9ab6bf95bfe06a830eea45bb8ade914de66e3f4fae<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 NOTE: Reconnecting to bitbake server..=
.<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 basehash changed from <br>
5af44540c3f151f0ffc33e381a6694b6b193b0494207170656323588ee0ccc4c to <br>
236e8f11f35d1dfebcb81c286f3ac82353cb92c78835a4064888a8a0c7aa405c<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Variable EXTRA_OEMESON value changed:<=
br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 @@ -1 +1,2 @@<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - -Defi=3Dtrue -Dbootloader=3Dtrue=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -Dman=3Dfalse <br>
${PACKAGECONFIG_CONFARGS}<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 + -Defi=3Dtrue -Dbootloader=3Dtrue=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -Dman=3Dfalse <br>
${PACKAGECONFIG_CONFARGS} ${@bb.utils.contains(&#39;DISTRO_FEATURES&#39;, <=
br>
&#39;tpm2&#39;, &#39;-Dtpm2=3Dtrue&#39;, &#39;&#39;, d)}<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 +DISTRO_FEATURES{tpm2} =3D Unset<br>
<br>
<br>
INFO: FAIL: test_signatures (common.CommonCheckLayer)<br>
INFO: ---------------------------------------------------------------------=
-<br>
INFO: Traceback (most recent call last):<br>
=C2=A0=C2=A0 File &quot;poky/scripts/lib/checklayer/cases/common.py&quot;, =
line 130, in <br>
test_signatures<br>
=C2=A0=C2=A0=C2=A0=C2=A0 self.fail(&#39;Adding layer %s changed signatures.=
\n%s&#39; % <br>
(self.tc.layer[&#39;name&#39;], msg))<br>
AssertionError: Adding layer meta-integrity changed signatures.<br>
209 signatures changed, initial differences (first hash before, second <br>
after):<br>
=C2=A0=C2=A0=C2=A0 linux-yocto:do_kernel_metadata: <br>
3a727f91c23ce583b5fc28f0e052fb118a79ce2f2bcc70e36db9774a2d7b3be0 -&gt; <br>
6b3ea68b9a0f4feb86e074801010f82bcd0b0024ee25ea654b5c81bbb566a382<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bitbake-diffsigs --task linux-yocto do=
_kernel_metadata <br>
--signature <br>
3a727f91c23ce583b5fc28f0e052fb118a79ce2f2bcc70e36db9774a2d7b3be0 <br>
6b3ea68b9a0f4feb86e074801010f82bcd0b0024ee25ea654b5c81bbb566a382<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 NOTE: Reconnecting to bitbake server..=
.<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Dependency on checksum of file ./audit=
.cfg was added<br>
<br>
<br>
<br>
Here is the command I ran:<br>
$ yocto-check-layer-wrapper ../meta-security --dependency ../meta <br>
../meta-openembedded/meta-oe ../meta-openembedded/meta-python/ <br>
../meta-clang --no-auto-dependency<br>
<br>
<br>
<br>
Thanks,<br>
Yi<br>
<br>
</blockquote></div>

--000000000000f958b5063f0c8d8b--


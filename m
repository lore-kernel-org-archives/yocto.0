Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB678C2BA15
	for <webhook@archiver.kernel.org>; Tue, 18 Jun 2024 07:53:11 +0000 (UTC)
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com [209.85.217.50])
 by mx.groups.io with SMTP id smtpd.web11.80761.1718697187915253526
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Jun 2024 00:53:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=cCaG0Pv+;
 spf=pass (domain: gmail.com, ip: 209.85.217.50, mailfrom: quaresma.jose@gmail.com)
Received: by mail-vs1-f50.google.com with SMTP id ada2fe7eead31-48c493dc7e7so1523184137.0
        for <yocto@lists.yoctoproject.org>; Tue, 18 Jun 2024 00:53:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718697187; x=1719301987; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dmfMTPnOG8zDUW57Ew9ElWnqdgrAV59t36VDDwEf/Vo=;
        b=cCaG0Pv+PkEl7jSo7oG7olY7ozSP+uqbz+iSliN1Kh0+0iEGyaDp0kvD0QXR7arEtO
         Dk1gs0lACMqyHm6OwkAXFeyC8K+e5TjRW1me2gRTHbxzrt+mCvpTaFQGsrU0tkTTXKKT
         G9LI/OAhIZTOzVlCivh+9b5Llmqd/xPHLFp2s/M/MOvC1SHphvxKyORh5xLvYUVm0lVD
         rSfxZbUnUADyKNo4NX/5X6Kj/ufM4JG/Dio4q2C0vdyUO2udHxjaOrvXGrXmZICgqfH3
         AKhJoxiQ81DGHYZxuxGhEex/KQjKdlvV/jmCU+QaC4k06lZwo4WF7sBuC9RJLG4zp3/P
         GQ6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718697187; x=1719301987;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dmfMTPnOG8zDUW57Ew9ElWnqdgrAV59t36VDDwEf/Vo=;
        b=Bd3pjjZCLQ0vHMe+6NpIH79K/p8UAQqMwfqzu17yGKYI/AGTlEXRxRQXpxZyoNlEEC
         Bru3Zthfz/9qYd87DpVepNjDxDlSNZgbFIcbHYGKIy2aVr1VZ+6zAW7Hg3G+tHd4vcSx
         e/TUzXEDcXArdMOMIEpfb6CvSYX217pXniYaCbnQSMHACLNco1LbP9G9czl48bNazhVw
         /VQkqyrTsnpbvUlg4QCO/dPRqHNJriJE6xFDwRKfrRV/guxvkNAYHmloKnfpye62EpxS
         MQlDscxolPyNpIUeyqCJWuEpseKaXidUZcUUv4R35MEX4M2Q/iAddvUBQImt+1ho1xiX
         CBwg==
X-Gm-Message-State: AOJu0YwCutw5EO/w0gtJeLSuXM0sZqwRaAmamm5YaljjtKKsdO/Tpcro
	Ui8mJDJDkn1stiqAcnWT5knA5mnva/jAgscvHhpQnjglyygDskJpzpjbDuNMBxa/8qJxhBDokYm
	mLN+Oz1C/jupM/5SZ5Kd7Et2tLWA=
X-Google-Smtp-Source: AGHT+IGl/Rs3uB4j3P+ZJDReIqyt3TYhH1Wasenul6K8MIKx+24RGNMABSmVzjHSVwH8MJ86XZGxvmeGequw4ryuN5g=
X-Received: by 2002:a05:6102:460d:b0:48c:1157:2f58 with SMTP id
 ada2fe7eead31-48dae32af56mr9174340137.17.1718697186748; Tue, 18 Jun 2024
 00:53:06 -0700 (PDT)
MIME-Version: 1.0
References: <CANPvuRm-EzMib+vgKRiRNB3Y9F=W_qZ2JLo-3Pe8enAnO-MsXQ@mail.gmail.com>
 <20106.1718645679714349950@lists.yoctoproject.org>
In-Reply-To: <20106.1718645679714349950@lists.yoctoproject.org>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Tue, 18 Jun 2024 08:52:55 +0100
Message-ID: <CANPvuRnNiOo_jzRrPu80XXcvW9_1isbNtc82a5tZafafu+0erw@mail.gmail.com>
Subject: Re: [yocto] bb.utils.contains() and 'inherit' issue
To: lukasz.zemla@woodward.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000004aefd1061b255fcd"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 18 Jun 2024 07:53:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63356

--0000000000004aefd1061b255fcd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Lukasz,

I tried locally and you are right, we need to switch to the inherit_defer.
The below patch adds the privdrop PACKAGECONFIG and changes the class to
useradd_.

Parsing the recipe with "bitbake -p chrony" will rise an error: Could not
inherit file classes/useradd_.bbclass
But this only happens with the inherit_defer, with just the inherit and the
same useradd_ bbclass the error is not detected

--- a/meta-networking/recipes-support/chrony/chrony_4.5.bb
+++ b/meta-networking/recipes-support/chrony/chrony_4.5.bb
@@ -48,7 +48,7 @@ DEPENDS =3D "pps-tools"
 inherit update-rc.d systemd pkgconfig

 # Add chronyd user if privdrop packageconfig is selected
-inherit ${@bb.utils.contains('PACKAGECONFIG', 'privdrop', 'useradd', '',
d)}
+inherit_defer ${@bb.utils.contains('PACKAGECONFIG', 'privdrop',
'useradd_', '', d)}
 USERADD_PACKAGES =3D "${@bb.utils.contains('PACKAGECONFIG', 'privdrop',
'${PN}', '', d)}"
 USERADD_PARAM:${PN} +=3D "${@bb.utils.contains('PACKAGECONFIG', 'privdrop'=
,
'--system -d / -M --shell /bin/nologin chronyd;', '', d)}"

@@ -61,6 +61,7 @@ USERADD_PARAM:${PN} +=3D
"${@bb.utils.contains('PACKAGECONFIG', 'privdrop', '--sys
 #     kernel to have CONFIG_SECCOMP enabled.
 PACKAGECONFIG ??=3D "editline \
     ${@bb.utils.filter('DISTRO_FEATURES', 'ipv6', d)} \
+    privdrop \
 "
 PACKAGECONFIG[editline] =3D ",--without-editline,libedit"
 PACKAGECONFIG[sechash] =3D "--without-tomcrypt,--disable-sechash,nss"


On the meta-openembedded scarthgap layer there are still quite a few
'inherit' to be converted to 'inherit_defer' as you pointed out,
patches are welcome to fix all of this:

$ grep -r 'inherit ' | grep -e '\$' -e '@' | cut -d':' -f1
meta-gnome/classes/clutter.bbclass
meta-multimedia/recipes-multimedia/vlc/vlc_3.0.20.bb
meta-networking/recipes-connectivity/networkmanager/networkmanager_1.46.0.b=
b
meta-networking/recipes-filter/nftables/nftables_1.0.9.bb
meta-networking/recipes-protocols/openlldp/openlldp_1.1.1.bb
meta-networking/recipes-support/chrony/chrony_4.5.bb
meta-networking/recipes-support/wireshark/wireshark_4.2.4.bb
meta-oe/recipes-connectivity/telepathy/telepathy-idle_0.2.0.bb
meta-oe/recipes-connectivity/modemmanager/modemmanager_1.22.0.bb
meta-oe/recipes-dbs/mysql/mysql-python_1.2.5.bb
meta-oe/recipes-extended/openlmi/openlmi-tools_0.10.5.bb
meta-oe/recipes-extended/wxwidgets/wxwidgets_3.2.1.bb
meta-oe/recipes-support/lio-utils/lio-utils_4.1.bb
meta-oe/recipes-support/poppler/poppler_23.04.0.bb
meta-webserver/recipes-httpd/cherokee/cherokee_git.bb
meta-webserver/recipes-webadmin/cockpit/cockpit_304.bb

Jose

Lukasz Zemla via Lists.Yoctoproject.Org <lukasz.zemla=3D
woodward.com@lists.yoctoproject.org> escreveu (segunda, 17/06/2024 =C3=A0(s=
)
18:34):

> Hello Jose,
>
> > There is an extra space missing in before the privdrop, the :append
> override does not add the extra space.
> > Can you try with:  PACKAGECONFIG:append =3D " privdrop" ?
> > Jose
>
> I apologize - I wanted my mail to bo compacted, so I just typed that
> expression manually. In practice my recipe contains:
>
> PACKAGECONFIG:append =3D " \
>     privdrop \
> "
>
> I does not work. I am more and more convinced that enumerated by me
> recipes should be modified (inherit -> inherit_defer). For example, I can
> see the following commit in the meta-openembedded master branch which
> addresses nftables:
>
> commit 5cf3766cf6395d4bfa5de20cf7427950ca498eaa
> Author: Michael Olbrich <m.olbrich@pengutronix.de>
> Date:   Wed May 29 11:58:51 2024 +0200
>
>     nftables: avoid python dependencies when building without python
>
>     Use inherit_defer instead of inhert. This way, setuptools3 is not
>     inherited when python is removed from PACKAGECONFIG in a .bbappend
> file.
>     This avoids dependencies added by setuptools3.
>
>     Don't add nftables-python to PACKAGES if python is disabled. It adds
>     extra runtime dependencies on python3-core and python3-json.
>
>     Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
>     Signed-off-by: Khem Raj <raj.khem@gmail.com>
>
> diff --git a/meta-networking/recipes-filter/nftables/nftables_1.0.9.bb
> b/meta-networking/recipes-filter/nftables/nftables_1.0.9.bb
> index 7718922742..17f00ffd42 100644
> --- a/meta-networking/recipes-filter/nftables/nftables_1.0.9.bb
> +++ b/meta-networking/recipes-filter/nftables/nftables_1.0.9.bb
> @@ -35,9 +35,9 @@ EXTRA_OECONF =3D " \
>
>  SETUPTOOLS_SETUP_PATH =3D "${S}/py"
>
> -inherit ${@bb.utils.contains('PACKAGECONFIG', 'python', 'setuptools3',
> '', d)}
> +inherit_defer ${@bb.utils.contains('PACKAGECONFIG', 'python',
> 'setuptools3', '', d)}
>
> -PACKAGES =3D+ "${PN}-python"
> +PACKAGES =3D+ "${@bb.utils.contains('PACKAGECONFIG', 'python',
> '${PN}-python', '', d)}"
>  FILES:${PN}-python =3D "${PYTHON_SITEPACKAGES_DIR}"
>  RDEPENDS:${PN}-python =3D "python3-core python3-json ${PN}"
>
>
>
> Best regards,
> Lukasz Zemla
>


--=20
Best regards,

Jos=C3=A9 Quaresma

--0000000000004aefd1061b255fcd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Lukasz,<br><br>I tried locally and you are right, =
we need to switch to the=C2=A0inherit_defer.<br>The below patch adds the pr=
ivdrop PACKAGECONFIG and changes=C2=A0the class to useradd_.<br><br></div><=
div>Parsing the recipe with &quot;bitbake -p chrony&quot; will rise an=C2=
=A0error: Could not inherit file classes/useradd_.bbclass</div><div>But thi=
s only happens with the inherit_defer, with just the inherit and the same u=
seradd_ bbclass=C2=A0the error is not detected<br><br></div><div>--- a/meta=
-networking/recipes-support/chrony/<a href=3D"http://chrony_4.5.bb">chrony_=
4.5.bb</a><br></div><div>+++ b/meta-networking/recipes-support/chrony/<a hr=
ef=3D"http://chrony_4.5.bb">chrony_4.5.bb</a><br>@@ -48,7 +48,7 @@ DEPENDS =
=3D &quot;pps-tools&quot;<br>=C2=A0inherit update-rc.d systemd pkgconfig<br=
>=C2=A0<br>=C2=A0# Add chronyd user if privdrop packageconfig is selected<b=
r>-inherit ${@bb.utils.contains(&#39;PACKAGECONFIG&#39;, &#39;privdrop&#39;=
, &#39;useradd&#39;, &#39;&#39;, d)}<br>+inherit_defer ${@bb.utils.contains=
(&#39;PACKAGECONFIG&#39;, &#39;privdrop&#39;, &#39;useradd_&#39;, &#39;&#39=
;, d)}<br>=C2=A0USERADD_PACKAGES =3D &quot;${@bb.utils.contains(&#39;PACKAG=
ECONFIG&#39;, &#39;privdrop&#39;, &#39;${PN}&#39;, &#39;&#39;, d)}&quot;<br=
>=C2=A0USERADD_PARAM:${PN} +=3D &quot;${@bb.utils.contains(&#39;PACKAGECONF=
IG&#39;, &#39;privdrop&#39;, &#39;--system -d / -M --shell /bin/nologin chr=
onyd;&#39;, &#39;&#39;, d)}&quot;<br>=C2=A0<br>@@ -61,6 +61,7 @@ USERADD_PA=
RAM:${PN} +=3D &quot;${@bb.utils.contains(&#39;PACKAGECONFIG&#39;, &#39;pri=
vdrop&#39;, &#39;--sys<br>=C2=A0# =C2=A0 =C2=A0 kernel to have CONFIG_SECCO=
MP enabled.<br>=C2=A0PACKAGECONFIG ??=3D &quot;editline \<br>=C2=A0 =C2=A0 =
=C2=A0${@bb.utils.filter(&#39;DISTRO_FEATURES&#39;, &#39;ipv6&#39;, d)} \<b=
r>+ =C2=A0 =C2=A0privdrop \<br>=C2=A0&quot;<br>=C2=A0PACKAGECONFIG[editline=
] =3D &quot;,--without-editline,libedit&quot;<br>=C2=A0PACKAGECONFIG[sechas=
h] =3D &quot;--without-tomcrypt,--disable-sechash,nss&quot;<br></div><div><=
br></div><div><div><br></div><div>On the meta-openembedded scarthgap layer=
=C2=A0there are still quite a few &#39;inherit&#39; to be converted to &#39=
;inherit_defer&#39; as you pointed out,</div><div>patches are welcome to fi=
x all of this:</div><div><br></div><div>$ grep -r &#39;inherit &#39; | grep=
 -e &#39;\$&#39; -e &#39;@&#39; | cut -d&#39;:&#39; -f1<br>meta-gnome/class=
es/clutter.bbclass<br>meta-multimedia/recipes-multimedia/vlc/<a href=3D"htt=
p://vlc_3.0.20.bb">vlc_3.0.20.bb</a><br>meta-networking/recipes-connectivit=
y/networkmanager/<a href=3D"http://networkmanager_1.46.0.bb">networkmanager=
_1.46.0.bb</a><br>meta-networking/recipes-filter/nftables/<a href=3D"http:/=
/nftables_1.0.9.bb">nftables_1.0.9.bb</a><br>meta-networking/recipes-protoc=
ols/openlldp/<a href=3D"http://openlldp_1.1.1.bb">openlldp_1.1.1.bb</a><br>=
meta-networking/recipes-support/chrony/<a href=3D"http://chrony_4.5.bb">chr=
ony_4.5.bb</a><br>meta-networking/recipes-support/wireshark/<a href=3D"http=
://wireshark_4.2.4.bb">wireshark_4.2.4.bb</a><br>meta-oe/recipes-connectivi=
ty/telepathy/<a href=3D"http://telepathy-idle_0.2.0.bb">telepathy-idle_0.2.=
0.bb</a><br>meta-oe/recipes-connectivity/modemmanager/<a href=3D"http://mod=
emmanager_1.22.0.bb">modemmanager_1.22.0.bb</a><br>meta-oe/recipes-dbs/mysq=
l/<a href=3D"http://mysql-python_1.2.5.bb">mysql-python_1.2.5.bb</a><br>met=
a-oe/recipes-extended/openlmi/<a href=3D"http://openlmi-tools_0.10.5.bb">op=
enlmi-tools_0.10.5.bb</a><br>meta-oe/recipes-extended/wxwidgets/<a href=3D"=
http://wxwidgets_3.2.1.bb">wxwidgets_3.2.1.bb</a><br>meta-oe/recipes-suppor=
t/lio-utils/<a href=3D"http://lio-utils_4.1.bb">lio-utils_4.1.bb</a><br>met=
a-oe/recipes-support/poppler/<a href=3D"http://poppler_23.04.0.bb">poppler_=
23.04.0.bb</a><br>meta-webserver/recipes-httpd/cherokee/<a href=3D"http://c=
herokee_git.bb">cherokee_git.bb</a><br>meta-webserver/recipes-webadmin/cock=
pit/<a href=3D"http://cockpit_304.bb">cockpit_304.bb</a></div></div><div><b=
r></div><div>Jose</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">Lukasz Zemla via <a href=3D"http://Lists.Yoctoproject.Org"=
>Lists.Yoctoproject.Org</a> &lt;lukasz.zemla=3D<a href=3D"mailto:woodward.c=
om@lists.yoctoproject.org">woodward.com@lists.yoctoproject.org</a>&gt; escr=
eveu (segunda, 17/06/2024 =C3=A0(s) 18:34):<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div style=3D"box-sizing:border-box;color:rgb(5=
1,51,51);font-family:system-ui,&quot;Segoe UI&quot;,Roboto,&quot;Helvetica =
Neue&quot;,&quot;Noto Sans&quot;,&quot;Liberation Sans&quot;,Arial,sans-ser=
if,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI =
Symbol&quot;,&quot;Noto Color Emoji&quot;;font-size:16px;font-style:normal;=
font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;lett=
er-spacing:normal;text-align:start;text-indent:0px;text-transform:none;word=
-spacing:0px;white-space:normal;background-color:rgb(255,255,255);text-deco=
ration-style:initial;text-decoration-color:initial">Hello Jose,<br><br>&gt;=
 There is an extra space missing in before the privdrop, the :append overri=
de does not add the extra space.<br style=3D"box-sizing:border-box">&gt; Ca=
n you try with:=C2=A0 PACKAGECONFIG:append =3D &quot; privdrop&quot; ?<br s=
tyle=3D"box-sizing:border-box">&gt; Jose<br><br>I apologize - I wanted my m=
ail to bo compacted, so I just typed that expression manually. In practice =
my recipe contains:<br><br>PACKAGECONFIG:append =3D &quot; \<br>=C2=A0 =C2=
=A0 privdrop \<br>&quot;<br><br>I does not work. I am more and more convinc=
ed that enumerated by me recipes should be modified (inherit -&gt; inherit_=
defer). For example, I can see the following commit in the meta-openembedde=
d master branch which addresses nftables:<br><br>commit 5cf3766cf6395d4bfa5=
de20cf7427950ca498eaa<br>Author: Michael Olbrich &lt;<a href=3D"mailto:m.ol=
brich@pengutronix.de" target=3D"_blank">m.olbrich@pengutronix.de</a>&gt;<br=
>Date: =C2=A0 Wed May 29 11:58:51 2024 +0200<br><br>=C2=A0 =C2=A0 nftables:=
 avoid python dependencies when building without python<br><br>=C2=A0 =C2=
=A0 Use inherit_defer instead of inhert. This way, setuptools3 is not<br>=
=C2=A0 =C2=A0 inherited when python is removed from PACKAGECONFIG in a .bba=
ppend file.<br>=C2=A0 =C2=A0 This avoids dependencies added by setuptools3.=
<br><br>=C2=A0 =C2=A0 Don&#39;t add nftables-python to PACKAGES if python i=
s disabled. It adds<br>=C2=A0 =C2=A0 extra runtime dependencies on python3-=
core and python3-json.<br><br>=C2=A0 =C2=A0 Signed-off-by: Michael Olbrich =
&lt;<a href=3D"mailto:m.olbrich@pengutronix.de" target=3D"_blank">m.olbrich=
@pengutronix.de</a>&gt;<br>=C2=A0 =C2=A0 Signed-off-by: Khem Raj &lt;<a hre=
f=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt=
;<br><br>diff --git a/meta-networking/recipes-filter/nftables/<a href=3D"ht=
tp://nftables_1.0.9.bb" target=3D"_blank">nftables_1.0.9.bb</a> b/meta-netw=
orking/recipes-filter/nftables/<a href=3D"http://nftables_1.0.9.bb" target=
=3D"_blank">nftables_1.0.9.bb</a><br>index 7718922742..17f00ffd42 100644<br=
>--- a/meta-networking/recipes-filter/nftables/<a href=3D"http://nftables_1=
.0.9.bb" target=3D"_blank">nftables_1.0.9.bb</a><br>+++ b/meta-networking/r=
ecipes-filter/nftables/<a href=3D"http://nftables_1.0.9.bb" target=3D"_blan=
k">nftables_1.0.9.bb</a><br>@@ -35,9 +35,9 @@ EXTRA_OECONF =3D &quot; \<br>=
<br>=C2=A0SETUPTOOLS_SETUP_PATH =3D &quot;${S}/py&quot;<br><br>-inherit ${@=
bb.utils.contains(&#39;PACKAGECONFIG&#39;, &#39;python&#39;, &#39;setuptool=
s3&#39;, &#39;&#39;, d)}<br>+inherit_defer ${@bb.utils.contains(&#39;PACKAG=
ECONFIG&#39;, &#39;python&#39;, &#39;setuptools3&#39;, &#39;&#39;, d)}<br><=
br>-PACKAGES =3D+ &quot;${PN}-python&quot;<br>+PACKAGES =3D+ &quot;${@bb.ut=
ils.contains(&#39;PACKAGECONFIG&#39;, &#39;python&#39;, &#39;${PN}-python&#=
39;, &#39;&#39;, d)}&quot;<br>=C2=A0FILES:${PN}-python =3D &quot;${PYTHON_S=
ITEPACKAGES_DIR}&quot;<br>=C2=A0RDEPENDS:${PN}-python =3D &quot;python3-cor=
e python3-json ${PN}&quot;<br><br><br><br>Best regards,<br>Lukasz Zemla</di=
v>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">Best regards,<div><br>Jos=C3=A9 Quaresma</div></div></div></=
div>

--0000000000004aefd1061b255fcd--


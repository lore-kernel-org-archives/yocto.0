Return-Path: <kubiznak@2n.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 461B0C4828D
	for <webhook@archiver.kernel.org>; Tue,  6 Feb 2024 14:41:27 +0000 (UTC)
Subject: SDK: Install recipe dependencies only
To: yocto@lists.yoctoproject.org
From: =?UTF-8?B?UGV0ciBLdWJpesWIw6Fr?= <kubiznak@2n.com>
X-Originating-Location: Prague, Hlavni mesto Praha, CZ (90.182.112.124)
X-Originating-Platform: Linux Chrome 117
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 06 Feb 2024 06:41:19 -0800
Message-ID: <yzLo.1707230479202311438.Hvkm@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="zn805SeXYZk8DjcX2oR1"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 06 Feb 2024 14:41:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62404

--zn805SeXYZk8DjcX2oR1
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Here is one of frequent scenarios. There is a custom image (say image-custo=
m.bb) including an application (my-app.bb). For application development, th=
e Standard SDK can be built by `bitbake image-custom -c populate_sdk`. Prod=
uced SDK contains all libraries necessary for application development, and =
the application itself. This suffers from multiple issues, though.

1. The SDK only contains libraries that are being used by the current versi=
on of my-app. If a future (i.e. currently unused) dependency is added to `D=
EPENDS` in my-app.bb, it does not propagate to the SDK.
2. If the application is not buildable, the SDK is neither buildable.
3. The SDK contains my-app which is generally not desirable.

I was looking for a mechanism to exclude my-app from SDK generation (e.g. `=
PACKAGE_EXCLUDE`), but haven't found how to keep all its dependencies.

I have end up with an inc file (my-app.inc), included by both my-app.bb and=
 image-custom.bb:

```
DEPENDS_NATIVE =3D "tool1-native tool2-native"
DEPENDS_TARGET =3D "lib1 lib2"

# consumed by my-app
DEPENDS:class-target =3D "${DEPENDS_NATIVE} ${DEPENDS_TARGET}"

# consumed by image-custom
TOOLCHAIN_HOST_TASK:append =3D "${@native2sdk(DEPENDS_NATIVE)}"
TOOLCHAIN_TARGET_TASK:append =3D "${DEPENDS_TARGET}"

# changes the native packages to nativesdk, e.g. 'foo-native' -> 'nativesdk=
-foo'
def native2sdk(pkgs):
import re
return re.sub(r'([\w-]+)\-native', r'nativesdk-\1', pkgs)
```

This works somehow, but:

1. Dependencies are not defined right in my-app.bb, where they belong.
2. Runtime dependencies of my-app are not installed in SDK and need to be f=
urther explicitly specified in `TOOLCHAIN_TARGET_TASK`.
3. Native dependencies conversion is cumbersome.

Am I overlooking a mechanism how to identify and install all dependencies o=
f a package without actually building that package? It is clear that automa=
tic runtime dependencies resolution couldn't be performed but perhaps all p=
rovided packages (with some exceptions) could be installed. I mean, if for =
example `harfbuzz` is in `DEPENDS`, all provided packages including `harfbu=
zz-icu` can be installed.

Best Regards,
Petr Kubiznak

--zn805SeXYZk8DjcX2oR1
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi,</div>
<div>&nbsp;</div>
<div>Here is one of frequent scenarios. There is a custom image (say image-=
custom.bb) including an application (my-app.bb). For application developmen=
t, the Standard SDK can be built by `bitbake image-custom -c populate_sdk`.=
 Produced SDK contains all libraries necessary for application development,=
 and the application itself. This suffers from multiple issues, though.</di=
v>
<div>&nbsp;</div>
<div>1. The SDK only contains libraries that are being used by the current =
version of my-app. If a future (i.e. currently unused) dependency is added =
to `DEPENDS` in my-app.bb, it does not propagate to the SDK.</div>
<div>2. If the application is not buildable, the SDK is neither buildable.<=
/div>
<div>3. The SDK contains my-app which is generally not desirable.</div>
<div>&nbsp;</div>
<div>I was looking for a mechanism to exclude my-app from SDK generation (e=
.g. `PACKAGE_EXCLUDE`), but haven't found how to keep all its dependencies.=
</div>
<div>&nbsp;</div>
<div>I have end up with an inc file (my-app.inc), included by both my-app.b=
b and image-custom.bb:</div>
<div>&nbsp;</div>
<div>```</div>
<div>DEPENDS_NATIVE =3D "tool1-native tool2-native"</div>
<div>DEPENDS_TARGET =3D "lib1 lib2"</div>
<div>&nbsp;</div>
<div># consumed by my-app</div>
<div>DEPENDS:class-target =3D "${DEPENDS_NATIVE} ${DEPENDS_TARGET}"</div>
<div>&nbsp;</div>
<div># consumed by image-custom</div>
<div>TOOLCHAIN_HOST_TASK:append =3D "${@native2sdk(DEPENDS_NATIVE)}"</div>
<div>TOOLCHAIN_TARGET_TASK:append =3D "${DEPENDS_TARGET}"</div>
<div>&nbsp;</div>
<div># changes the native packages to nativesdk, e.g. 'foo-native' -&gt; 'n=
ativesdk-foo'</div>
<div>def native2sdk(pkgs):</div>
<div>&nbsp; &nbsp; import re</div>
<div>&nbsp; &nbsp; return re.sub(r'([\w-]+)\-native', r'nativesdk-\1', pkgs=
)</div>
<div>```</div>
<div>&nbsp;</div>
<div>This works somehow, but:</div>
<div>&nbsp;</div>
<div>1. Dependencies are not defined right in my-app.bb, where they belong.=
</div>
<div>2. Runtime dependencies of my-app are not installed in SDK and need to=
 be further explicitly specified in `TOOLCHAIN_TARGET_TASK`.<br />3. Native=
 dependencies conversion is cumbersome.</div>
<div>&nbsp;</div>
<div>Am I overlooking a mechanism how to identify and install all dependenc=
ies of a package without actually building that package? It is clear that a=
utomatic runtime dependencies resolution couldn't be performed but perhaps =
all provided packages (with some exceptions) could be installed. I mean, if=
 for example `harfbuzz` is in `DEPENDS`, all provided packages including `h=
arfbuzz-icu` can be installed.</div>
<div>&nbsp;</div>
<div>Best Regards,</div>
<div>Petr Kubiznak</div>

--zn805SeXYZk8DjcX2oR1--


Subject: Re: http2 support issue in curl #yocto #raspberrypi
To: yocto@lists.yoctoproject.org
From: "Uzair Mazhar" <uzair.mazhar@emumba.com>
X-Originating-Location: Islamabad, PK (203.99.49.142)
X-Originating-Platform: Linux Chrome 78
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 05 Dec 2019 02:30:23 -0800
References: <51ac1f70-332b-4557-823b-931918fcbbb4@www.fastmail.com>
In-Reply-To: <51ac1f70-332b-4557-823b-931918fcbbb4@www.fastmail.com>
Message-ID: <16345.1575541823580051622@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Zdjd9Pd299pLWEYIPV2G"

--Zdjd9Pd299pLWEYIPV2G
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I added nghttp2 into depends but it gave dependency chain error about nghtt=
p2-native.
"ERROR: Nothing PROVIDES 'nghttp2-native' (but virtual:native:/mnt/sdb1/yo=
cto_exp/poky-warrior/meta/recipes-support/curl/curl_7.64.1.bb DEPENDS on or=
 otherwise requires it). Close matches:
gtest-native
ncp-native
gyp-native "
NOTE: Runtime target 'core-image-base' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['core-image-base', 'apt-nati=
ve', 'curl-native', 'nghttp2-native']
NOTE: Runtime target 'avs-device-sdk' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['avs-device-sdk', 'cmake-nat=
ive', 'curl-native', 'nghttp2-native']

--Zdjd9Pd299pLWEYIPV2G
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I added nghttp2 into depends but it gave dependency chain error about nghtt=
p2-native.<br />"ERROR: Nothing PROVIDES 'nghttp2-native' (but virtual:nati=
ve:/mnt/sdb1/yocto_exp/poky-warrior/meta/recipes-support/curl/curl_7.64.1.b=
b DEPENDS on or otherwise requires it). Close matches:
<div>&nbsp; gtest-native</div>
<div>&nbsp; ncp-native</div>
<div>&nbsp; gyp-native "<br />
<div>NOTE: Runtime target 'core-image-base' is unbuildable, removing...</d=
iv>
<div>Missing or unbuildable dependency chain was: ['core-image-base', 'apt=
-native', 'curl-native', 'nghttp2-native']</div>
<div>NOTE: Runtime target 'avs-device-sdk' is unbuildable, removing...</di=
v>
<div>Missing or unbuildable dependency chain was: ['avs-device-sdk', 'cmak=
e-native', 'curl-native', 'nghttp2-native']</div>
<div>&nbsp;</div>
</div>

--Zdjd9Pd299pLWEYIPV2G--

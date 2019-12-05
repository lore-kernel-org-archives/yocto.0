Subject: http2 support issue in curl #yocto #raspberrypi
To: yocto@lists.yoctoproject.org
From: "Uzair Mazhar" <uzair.mazhar@emumba.com>
X-Originating-Location: Islamabad, PK (203.99.49.142)
X-Originating-Platform: Linux Chrome 78
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 04 Dec 2019 23:32:41 -0800
Message-ID: <CLAP.1575531161135737416.olxy@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="P5g1UJfUlwSqPdePL3jB"

--P5g1UJfUlwSqPdePL3jB
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,
While testing my image on raspberry pi3b, I found that curl doesn=E2=80=99=
t have http2 support.
$ curl --http2 -I https://nghttp2.org/ ( https://nghttp2.org/ )
# Unsupported protocol

I tried to search for the solution and one of the possible answer [1][2] w=
ere adding --with-nghttp2 flag to curl. For that I modified curl recipes (c=
url_7.64.1.bb) and added =E2=80=9CEXTRA_OECONF =3D --with-nghttp2 =E2=80=9C=
 along with default parameter already set in this block but it again shows =
the same error.

After That I have been trying to resolve this issue from over a week now a=
s per my understanding of this issue but I am not able to solve this.

I generated rpi image by following these steps:
Cloned warrior branch of poky, meta-raspberrypi and meta-openembedded
Edited conf/local.conf to add,
LICENSE_FLAGS_WHITELIST_append =3D " commercial_faad2 commercial_gstreamer=
1.0-plugins-ugly "
IMAGE_INSTALL_append +=3D " avs-device-sdk curl=E2=80=9D
Edited conf/bblayer.conf to add all relevant layers (meta-raspberrypi, met=
a-networking etc.)
Generate image using =E2=80=9Cbitbake -k core-image-base=E2=80=9D

I have tried to replicate whole procedure with poky =E2=80=9CThud=E2=80=9D=
 branch but in vain.

My Environment setup:
Yocto version is 2.7.0
Ubuntu~18.04.1
Linux kernel 4.15.0-66-generic
Python3 version 3.6.8
gcc/g++ 7.4.0
Git 2.17.1
[1] https://github.com/alexa/avs-device-sdk/wiki/Ubuntu-Linux-Quick-Start-=
Guide#authorization
[2]https://serversforhackers.com/c/curl-with-http2-support

Any help in this matter will be appreciated.
Thanks,
Uzair Mazhar Awan
Design and Verification Engineer | www.Emumba.com Office: 3rd Floor, B-Blo=
ck, STP-3, I9/3, Islamabad,Pakistan

--P5g1UJfUlwSqPdePL3jB
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,&nbsp; <br />&nbsp;While testing my image on raspberry pi3b, I found=
 that curl doesn&rsquo;t have http2 support.<br />&nbsp; &nbsp;$ curl --htt=
p2 -I <a href=3D"https://nghttp2.org/" target=3D"_blank" rel=3D"noopener">h=
ttps://nghttp2.org/&nbsp;</a><br />&nbsp;# Unsupported protocol&nbsp; &nbsp=
;<br /><br />I tried to search for the solution and one of the possible ans=
wer [1][2] were adding --with-nghttp2 flag to curl. For that I modified cur=
l recipes (curl_7.64.1.bb) and added &ldquo;EXTRA_OECONF =3D --with-nghttp2=
 &ldquo; along with default parameter already set in this block but it agai=
n shows the same error.<br /><br />After That I have been trying to resolve=
 this issue from over a week now as per my understanding of this issue but =
I am not able to solve this.&nbsp; <br /><br />I generated rpi image by fol=
lowing these steps:&nbsp;<br />Cloned warrior branch of poky, meta-raspberr=
ypi and meta-openembedded&nbsp; <br />&nbsp;Edited conf/local.conf to add,&=
nbsp; &nbsp;<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; LICENSE_FLAGS_W=
HITELIST_append =3D " commercial_faad2 commercial_gstreamer1.0-plugins-ugly=
 "&nbsp; <br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;IMAGE_INSTALL_appen=
d +=3D " avs-device-sdk curl&rdquo;&nbsp;<br />Edited conf/bblayer.conf to =
add all relevant layers (meta-raspberrypi, meta-networking etc.)&nbsp; <br =
/>Generate image using &ldquo;bitbake -k core-image-base&rdquo;&nbsp; <br /=
><br />&nbsp;I have tried to replicate whole procedure with poky &ldquo;Thu=
d&rdquo; branch but in vain.&nbsp; &nbsp; &nbsp;<br /><br />My Environment =
setup:&nbsp;<br />&nbsp; &nbsp; &nbsp; Yocto version is 2.7.0<br />&nbsp; &=
nbsp; &nbsp; Ubuntu~18.04.1&nbsp; &nbsp;<br />&nbsp; &nbsp; &nbsp; Linux ke=
rnel 4.15.0-66-generic&nbsp; &nbsp;<br />&nbsp; &nbsp; &nbsp;Python3 versio=
n 3.6.8&nbsp; <br />&nbsp; &nbsp; &nbsp;gcc/g++ 7.4.0<span style=3D"white-s=
pace: pre;"> </span>&nbsp;<br />&nbsp; &nbsp; &nbsp;Git 2.17.1&nbsp; <br />=
&nbsp;[1] https://github.com/alexa/avs-device-sdk/wiki/Ubuntu-Linux-Quick-S=
tart-Guide#authorization&nbsp; <br />&nbsp;[2]https://serversforhackers.com=
/c/curl-with-http2-support&nbsp; &nbsp; &nbsp;<br /><br />Any help in this =
matter will be appreciated.&nbsp; &nbsp;<br />&nbsp;Thanks,&nbsp; &nbsp;<br=
 />&nbsp;Uzair Mazhar Awan&nbsp; &nbsp;<br />&nbsp;Design and Verification =
Engineer | www.Emumba.com Office: 3rd Floor, B-Block, STP-3, I9/3, Islamaba=
d,Pakistan

--P5g1UJfUlwSqPdePL3jB--

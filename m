Subject: #yocto #sdk running esdk as crops with local esdk-installer
To: yocto@lists.yoctoproject.org
From: valentin.duee@weidmueller.com
X-Originating-Location: Bielefeld, North Rhine-Westphalia, DE (37.201.145.8)
X-Originating-Platform: Windows Chrome 84
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 03 Aug 2020 07:25:47 -0700
Message-ID: <Wuuh.1596464747487976429.TAEv@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="8ehGvZTMN8pMMXHbOx9L"

--8ehGvZTMN8pMMXHbOx9L
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello guys,

I am trying to run an eSDK-environment by using crops. I did created the e=
SDK installer locally by doing "bitbake image -c populate_sdk_ext" with my =
own custom .wic-image. Now, if I want to run the container I need to do som=
ething like: " docker run --rm -it -v /home/yocto_dev/crops:/workdir crops/=
extsdk-container --url url ". But my install is not in the internet but rat=
her locally. So I provide the path on my local machine like: /home/sdk/x86_=
64-buildtools-nativesdk-standalone-V2.6.0.sh as url. Although this file exi=
sts I do get the error: "FileNotFoundError: [Errno 2] No such file or direc=
tory".

What might be the issue here?

Thanks in advance and best regards

--8ehGvZTMN8pMMXHbOx9L
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello guys,<br /><br />I am trying to run an eSDK-environment by using crop=
s. I did created the eSDK installer locally by doing "bitbake image -c popu=
late_sdk_ext" with my own custom .wic-image. Now, if I want to run the cont=
ainer I need to do something like: "<span lang=3D"EN-US" style=3D"font-size=
: 11.0pt; line-height: 107%; font-family: 'Calibri',sans-serif; mso-ascii-t=
heme-font: minor-latin; mso-fareast-font-family: Calibri; mso-fareast-theme=
-font: minor-latin; mso-hansi-theme-font: minor-latin; mso-bidi-font-family=
: 'Times New Roman'; mso-bidi-theme-font: minor-bidi; mso-ansi-language: EN=
-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;">docker run --r=
m -it -v /home/yocto_dev/crops:/workdir crops/extsdk-container --url <em>ur=
l</em>". But my install is not in the internet but rather locally. So I pro=
vide the path on my local machine like: /home/sdk/x86_64-buildtools-natives=
dk-standalone-V2.6.0.sh as url. Although this file exists I do get the erro=
r: "FileNotFoundError: [Errno 2] No such file or directory".<br /><br />Wha=
t might be the issue here?<br /><br />Thanks in advance and best regards</s=
pan>

--8ehGvZTMN8pMMXHbOx9L--

Subject: Split kernel patches over different machines
To: yocto@lists.yoctoproject.org
From: "Bel Hadj Salem Talel" <bhstalel@gmail.com>
X-Originating-Location: TN (197.27.101.41)
X-Originating-Platform: Linux Firefox 82
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 11 Nov 2020 03:30:33 -0800
Message-ID: <1dsw.1605094233511014181.pYzy@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="qo0fBzZgn0ApKntQi5wi"

--qo0fBzZgn0ApKntQi5wi
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,

I created two different machines "menzu-console" and "menzu-media"
I have main patch for device tree for both , and only one patch specific f=
or menzu-media machine
So in the linux recipe bbappend I want to set something like this:
SRC_URI +=3D "file://main.patch" # FOR BOTH MACHINES
SRC_URI_menzu-media +=3D "file://media.patch" # FOR menzu-media ONLY

But this didn't work, only "media.patch" is unpacked and moreover the kern=
el recipe workdir does not contain a content as if unpack didn't work prope=
rly.
How can I do it ?

Thanks, Talel

--qo0fBzZgn0ApKntQi5wi
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,<br /><br />I created two different machines "menzu-console" and "me=
nzu-media"<br />I have main patch for device tree for both , and only one p=
atch specific for menzu-media machine<br />So in the linux recipe bbappend =
I want to set something like this:<br />SRC_URI +=3D "file://main.patch" # =
FOR BOTH MACHINES<br />SRC_URI_menzu-media +=3D "file://media.patch" # FOR =
menzu-media ONLY<br /><br />But this didn't work, only "media.patch" is unp=
acked and moreover the kernel recipe workdir does not contain a content as =
if unpack didn't work properly.<br />How can I do it ?<br /><br />Thanks, T=
alel

--qo0fBzZgn0ApKntQi5wi--

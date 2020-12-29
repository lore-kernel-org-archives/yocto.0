Subject: Re: Prevent WIC image from being built?
To: yocto@lists.yoctoproject.org
From: "Howard" <howard.egan@avid.com>
X-Originating-Location: Santa Cruz, California, US (23.119.165.140)
X-Originating-Platform: Mac Firefox 84
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 29 Dec 2020 08:51:28 -0800
References: <CADkTA4PdYsAjURfo4m3+1usN55p-fZd6rFQM2XcFVUkEB8o02Q@mail.gmail.com>
In-Reply-To: <CADkTA4PdYsAjURfo4m3+1usN55p-fZd6rFQM2XcFVUkEB8o02Q@mail.gmail.com>
Message-ID: <23641.1609260688086369826@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="X2whEEj9w74ZRhwQmzVL"

--X2whEEj9w74ZRhwQmzVL
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Yup, thank you Bruce:

Using
IMAGE_FSTYPES_remove +=3D "wic"

Didn't do it for me, but

IMAGE_TYPES_remove +=3D "wic"

did the trick.

--X2whEEj9w74ZRhwQmzVL
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Yup, thank you Bruce:<br /><br />Using<br />IMAGE_FSTYPES_remove +=3D "wic"=
<br /><br />Didn't do it for me, but <br /><br />IMAGE_TYPES_remove +=3D "w=
ic"<br /><br />did the trick.&nbsp;

--X2whEEj9w74ZRhwQmzVL--

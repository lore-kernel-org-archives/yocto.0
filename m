Subject: Re: http2 support issue in curl #yocto #raspberrypi
To: yocto@lists.yoctoproject.org
From: "Uzair Mazhar" <uzair.mazhar@emumba.com>
X-Originating-Location: Islamabad, PK (203.175.79.190)
X-Originating-Platform: Linux Chrome 78
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 05 Dec 2019 10:30:17 -0800
References: <ead38ea2-9dd8-aa8e-c163-cab7e1404db7@intel.com>
In-Reply-To: <ead38ea2-9dd8-aa8e-c163-cab7e1404db7@intel.com>
Message-ID: <25054.1575570617074009771@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="RCxaEoNyy7ppNvhFFov0"

--RCxaEoNyy7ppNvhFFov0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 5, 2019 at 07:48 PM, Ross Burton wrote:

>=20
> Did you add meta-networking to bblayers.conf?

Yes! I have.

I am going to try " PACKAGECONFIG[nghttp2] =3D "--with-nghttp2,--without-n=
ghttp2,nghttp2"" thing with the help of documentation and will get back to =
you with my findings.

Thanks,
Uzair

--RCxaEoNyy7ppNvhFFov0
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 5, 2019 at 07:48 PM, Ross Burton wrote:<br />
<blockquote>Did you add meta-networking to bblayers.conf?</blockquote>
Yes! I have.&nbsp;<br /><br />I am going to try "<span style=3D"white-spac=
e: pre-wrap;">PACKAGECONFIG[nghttp2] =3D "--with-nghttp2,--without-nghttp2,=
nghttp2"" thing with the help of documentation and will get back to you wit=
h my findings. <br /><br /></span>Thanks,&nbsp;<br />Uzair

--RCxaEoNyy7ppNvhFFov0--

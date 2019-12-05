Subject: Re: http2 support issue in curl #yocto #raspberrypi
To: yocto@lists.yoctoproject.org
From: "Uzair Mazhar" <uzair.mazhar@emumba.com>
X-Originating-Location: Islamabad, PK (203.99.49.142)
X-Originating-Platform: Linux Chrome 78
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 05 Dec 2019 03:23:51 -0800
References: <cbf1df7f-c852-438c-9c20-ef142d5bbb64@intel.com>
In-Reply-To: <cbf1df7f-c852-438c-9c20-ef142d5bbb64@intel.com>
Message-ID: <2561.1575545031107221548@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="lQPV5Ww3oIBaw9DiagFI"

--lQPV5Ww3oIBaw9DiagFI
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

As I mentioned That I Cloned warrior branch of poky, meta-raspberrypi and m=
eta-openembedded.
nghttp2 recipe=C2=A0is already=C2=A0in my repository under "meta-openembed=
ded/meta- networking/recipes-support/ nghttp2"
but the problem is still persistent.

I tried=C2=A0to add nghttp2 as RDENPENDS in curl and it compiled successfu=
lly=C2=A0but libnghttp2 was not part of my image.

If I add nghttp2 in conf/local.conf inside "IMAGE_INSTALL_append ", the li=
bnghttp2 becomes the part of my image under /usr/lib but again curl doesn't=
 support http2.

--lQPV5Ww3oIBaw9DiagFI
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<span style=3D"color: #1b1f22; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small; --darkreader-inline-color: #181c1f;" data-darkreader-inlin=
e-color=3D"">As I mentioned That I Cloned warrior branch of poky, meta-rasp=
berrypi and meta-openembedded.</span>
<div style=3D"color: #1b1f22; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small; --darkreader-inline-color: #181c1f;" data-darkreader-inlin=
e-color=3D"">nghttp2 recipe&nbsp;is already&nbsp;in my repository under "me=
ta-openembedded/meta-<wbr />networking/recipes-support/<wbr />nghttp2"&nbsp=
;</div>
<div style=3D"color: #1b1f22; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small; --darkreader-inline-color: #181c1f;" data-darkreader-inlin=
e-color=3D"">but the problem is still persistent.&nbsp;</div>
<div style=3D"color: #1b1f22; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small; --darkreader-inline-color: #181c1f;" data-darkreader-inlin=
e-color=3D"">&nbsp;</div>
<div style=3D"color: #1b1f22; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small; --darkreader-inline-color: #181c1f;" data-darkreader-inlin=
e-color=3D"">I tried&nbsp;to add nghttp2 as RDENPENDS in curl and it compil=
ed successfully&nbsp;but libnghttp2 was not part of my image.&nbsp;</div>
<div style=3D"color: #1b1f22; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small; --darkreader-inline-color: #181c1f;" data-darkreader-inlin=
e-color=3D"">&nbsp;</div>
<div style=3D"color: #1b1f22; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small; --darkreader-inline-color: #181c1f;" data-darkreader-inlin=
e-color=3D"">If I add nghttp2 in conf/local.conf inside "IMAGE_INSTALL_appe=
nd ", the libnghttp2 becomes the part of my image under /usr/lib but again =
curl doesn't support http2.&nbsp;</div>

--lQPV5Ww3oIBaw9DiagFI--

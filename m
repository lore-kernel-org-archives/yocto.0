Subject: Packagegroup Understanding
To: yocto@lists.yoctoproject.org
From: "Charlie Davies" <charles.davies@whitetree.xyz>
X-Originating-Location: GB (92.40.170.144)
X-Originating-Platform: Linux Chrome 86
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 23 Nov 2020 02:51:46 -0800
Message-ID: <3Hs8.1606128706482703504.nAtC@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="y986wvDD9G7oU3lVGjBC"

--y986wvDD9G7oU3lVGjBC
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,

I am seeing some behaviour when creating my own packagegroups which I do n=
ot quite understand.

Using the example from the mega-manual:

DESCRIPTION =3D "My Custom Package Groups"

     inherit packagegroup

     PACKAGES =3D "\
         packagegroup-custom-apps \
         packagegroup-custom-tools \
         "

     RDEPENDS_packagegroup-custom-apps =3D "\
         dropbear \
         portmap \
         psplash"

     RDEPENDS_packagegroup-custom-tools =3D "\
         oprofile \
         oprofileui-server \
         lttng-control \
         lttng-viewer"

If I then include packagegroup-custom-apps in my image I am also seeing th=
e packages in packagegroup-custom-tools being built (but not included in th=
e image) while building my image.

Is this behaviour correct? I would not expect the packages in packagegroup=
-custom-tools to be built if the packagegroup-custom-tools is not included =
in the image.

Many Thanks,

Charlie

--y986wvDD9G7oU3lVGjBC
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,<br /><br />I am seeing some behaviour when creating my own packageg=
roups which I do not quite understand.<br /><br />Using the example from th=
e mega-manual:<br /><br />
<pre style=3D"white-space: pre-wrap; color: #000000;"><em>DESCRIPTION =3D =
"My Custom Package Groups"
</em>=20
<em>      inherit packagegroup
</em>=20
<em>      PACKAGES =3D "\
</em><em>          packagegroup-custom-apps \
</em><em>          packagegroup-custom-tools \
</em><em>          "
</em>=20
<em>      RDEPENDS_packagegroup-custom-apps =3D "\
</em><em>          dropbear \
</em><em>          portmap \
</em><em>          psplash"
</em>=20
<em>      RDEPENDS_packagegroup-custom-tools =3D "\
</em><em>          oprofile \
</em><em>          oprofileui-server \
</em><em>          lttng-control \
</em><em>          lttng-viewer"<br /></em></pre>
<p>If I then include packagegroup-custom-apps in my image I am also seeing=
 the packages in packagegroup-custom-tools being built (but not included in=
 the image) while building my image.<br /><br />Is this behaviour correct? =
I would not expect the packages in packagegroup-custom-tools to be built if=
 the packagegroup-custom-tools is not included in the image.<br /><br />Man=
y Thanks,<br /><br />Charlie</p>

--y986wvDD9G7oU3lVGjBC--

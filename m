Subject: Re: [meta-security] Clamav libclammspack.so missing from image
To: yocto@lists.yoctoproject.org
From: "yoc" <yoc.dev@whitetree.xyz>
X-Originating-Location: GB (92.40.169.106)
X-Originating-Platform: Linux Chrome 84
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 02 Aug 2020 12:31:58 -0700
References: <22223.1596146308757509890@lists.yoctoproject.org>
In-Reply-To: <22223.1596146308757509890@lists.yoctoproject.org>
Message-ID: <22224.1596396718974893230@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="nfGWyawqdWL2u3qHgKBa"

--nfGWyawqdWL2u3qHgKBa
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

After a closer look I realised that there isnt a difference between the sto=
ck libmspack and the internal clamav libmspack so 1 can be ignored.

I have submitted a patch for 3.

I have also tested updating the recipe to rel/0.102 the latest release.

There was a couple of problems during configure with curl.

1) The configure script looks for curl-config under /usr/bin but the locat=
ion under sysroot is /usr/bin/crossscripts/curl-config. I patched the confi=
gure script to change the path it looks for and this worked but do not know=
 if this is the best solution?
2) The configure script checks the version of curl due to this feature htt=
ps://www.clamav.net/documents/on-access-scanning#on-access-scanning Current=
ly on the dunfell branch this check fails due to the curl recipe version no=
t being >=3D 7.45
I used the suggested work around of adding=C2=A0--disable-clamonacc to EXT=
RA_OECONF_CLAMAV for now

Once these two issues were sorted everything build and ran as expected.

What are your thoughts on the way forward with the two curl issues?

Kind Regards,

Charlie

--nfGWyawqdWL2u3qHgKBa
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

After a closer look I realised that there isnt a difference between the sto=
ck libmspack and the internal clamav libmspack so 1 can be ignored.<br /><b=
r />I have submitted a patch for 3.<br /><br />I have also tested updating =
the recipe to rel/0.102 the latest release.<br /><br />There was a couple o=
f problems during configure with curl.<br /><br />1) The configure script l=
ooks for curl-config under /usr/bin but the location under sysroot is /usr/=
bin/crossscripts/curl-config. I patched the configure script to change the =
path it looks for and this worked but do not know if this is the best solut=
ion?<br />2) The configure script checks the version of curl due to this fe=
ature&nbsp;<a href=3D"https://www.clamav.net/documents/on-access-scanning#o=
n-access-scanning" target=3D"_blank" rel=3D"noopener">https://www.clamav.ne=
t/documents/on-access-scanning#on-access-scanning</a>&nbsp;Currently on the=
 dunfell branch this check fails due to the curl recipe version not being &=
gt;=3D 7.45<br />&nbsp; &nbsp; &nbsp;I used the suggested work around of ad=
ding&nbsp;--disable-clamonacc to EXTRA_OECONF_CLAMAV for now<br /><br />Onc=
e these two issues were sorted everything build and ran as expected.<br /><=
br />What are your thoughts on the way forward with the two curl issues?<br=
 /><br />Kind Regards,<br /><br />Charlie

--nfGWyawqdWL2u3qHgKBa--

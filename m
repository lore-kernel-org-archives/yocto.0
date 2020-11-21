Subject: Best convention for FILES variable
To: yocto@lists.yoctoproject.org
From: rustyhowell@gmail.com
X-Originating-Location: Lehi, Utah, US (68.177.138.69)
X-Originating-Platform: Linux Firefox 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 20 Nov 2020 18:49:33 -0800
Message-ID: <SGGF.1605926973795518137.Lv2i@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="bakkgGpGrdecMUiSOiWM"

--bakkgGpGrdecMUiSOiWM
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,
I am relatively new to yocto, and I am working on several recipes at the m=
oment and I'm wondering about using wildcards in my FILES_{PN} list. None o=
f the packages have more than 5 or 6 files to package. They could easily be=
 covered with two wildcard entries, but I wonder if there is benefit to lis=
ting each file explicitly. Thanks for the help.=C2=A0 Example below:
FILES_fooz =3D "\
   */fooz* \
   */*/fooz* \
" vs
FILES_fooz =3D "\
=C2=A0=C2=A0 /lib/foozlib.so \
=C2=A0=C2=A0 /usr/lib/foozlib-2.so \
  /usr/bin/fooz \
  /bin/fooz \
  /usr/share/fooz \
" Thanks

--bakkgGpGrdecMUiSOiWM
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello, <br />I am relatively new to yocto, and I am working on several reci=
pes at the moment and I'm wondering about using wildcards in my FILES_{PN} =
list. None of the packages have more than 5 or 6 files to package. They cou=
ld easily be covered with two wildcard entries, but I wonder if there is be=
nefit to listing each file explicitly. Thanks for the help.&nbsp; Example b=
elow:<br />
<pre>FILES_fooz =3D "\<br />    */fooz* \<br />    */*/fooz* \<br />"</pre=
>
vs<br />
<pre>FILES_fooz =3D "\<br />&nbsp;&nbsp; /lib/foozlib.so \<br />&nbsp;&nbs=
p; /usr/lib/foozlib-2.so \<br />   /usr/bin/fooz \<br />   /bin/fooz \<br /=
>   /usr/share/fooz \<br />"</pre>
Thanks

--bakkgGpGrdecMUiSOiWM--

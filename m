Subject: Re: How to get mysqy/mariadb to start on powerup.
To: yocto@lists.yoctoproject.org
From: slopez@icf.com.es
X-Originating-Location: Barcelona, Catalonia, ES (83.56.44.98)
X-Originating-Platform: Linux Firefox 75
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 21 Apr 2020 03:56:58 -0700
References: <CAMKF1spQj+MOCbe0fxLax3rBQY_cbnuNyUsESSpegbzSX5HB_w@mail.gmail.com>
In-Reply-To: <CAMKF1spQj+MOCbe0fxLax3rBQY_cbnuNyUsESSpegbzSX5HB_w@mail.gmail.com>
Message-ID: <8712.1587466618208199254@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="b7SjKaccCKBTR59XQf0M"

--b7SjKaccCKBTR59XQf0M
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi, all!
I'm having the same issue. I'm dummy with yocto, How I can create the bbap=
pend file?
I added the file mariadb_%.bbappend in my layer folder/recipes-dbs/mysql a=
nd add the line:
SYSTEMD_AUTO_ENABLE_${PN}-server ?=3D "enable"
But nothings occurred, What I'm doing wrong?
Regads,

--b7SjKaccCKBTR59XQf0M
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi, all!<br />I'm having the same issue. I'm dummy with yocto, How I can cr=
eate the bbappend file?<br />I added the file mariadb_%.bbappend in my laye=
r folder/recipes-dbs/mysql and add the line:<br />SYSTEMD_AUTO_ENABLE_${PN}=
-server ?=3D "enable"<br />But nothings occurred, What I'm doing wrong?<br =
/>Regads,

--b7SjKaccCKBTR59XQf0M--

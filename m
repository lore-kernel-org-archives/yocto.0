Subject: Install packages to an "image" without its dependencies being pulled in. #yocto
To: yocto@lists.yoctoproject.org
From: bibibobibo@gmail.com
X-Originating-Location: US (205.251.233.178)
X-Originating-Platform: Mac Chrome 92
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 19 Aug 2021 20:41:25 -0700
Message-ID: <PMcN.1629430885111388773.CltD@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ATlWGxk7pJVeuyCgBJfH"

--ATlWGxk7pJVeuyCgBJfH
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Greetings everyone,

Is there a way to instruct Yocto's image class to install package(s) withou=
t its dependencies for an image target (i.e ext4)? For instance, we are try=
ing to build a system where there is a main system partition and another pa=
rtition that'll host additional lib, etc and during boot up we would overla=
y them together. Hence, the "other" partition does not really need all the =
same system libs, etc that already exists on the system partition. This oth=
er partition is developed by an external partner so we want to have the aut=
onomy to update separately (i.e not mingled things together with system par=
tition). I am having trouble finding a way to do this because Yocto seem to=
 like to install a package long with all its dependencies (i.e glibc, etc).

PS. I apologize if this is not the right place to ask the question.

Thanks,
Mike

--ATlWGxk7pJVeuyCgBJfH
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Greetings everyone,&nbsp;<br /><br />Is there a way to instruct Yocto's ima=
ge class to install package(s) without its dependencies for an image target=
 (i.e ext4)? For instance, we are trying to build a system where there is a=
 main system partition and another partition that'll host additional lib, e=
tc and during boot up we would overlay them together. Hence, the "other" pa=
rtition does not really need all the same system libs, etc that already exi=
sts on the system partition. This other partition is developed by an extern=
al partner so we want to have the autonomy to update separately (i.e not mi=
ngled things together with system partition). I am having trouble finding a=
 way to do this because Yocto seem to like to install a package long with a=
ll its dependencies (i.e glibc, etc).<br /><br />PS. I apologize if this is=
 not the right place to ask the question.<br /><br />Thanks,<br />Mike

--ATlWGxk7pJVeuyCgBJfH--

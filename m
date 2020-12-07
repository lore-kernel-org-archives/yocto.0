Subject: Re: Which package provides full featured passwd, adduser, etc?
To: yocto@lists.yoctoproject.org
From: "Lukasz Domowy" <lukasz.odw39@gmail.com>
X-Originating-Location: Neuss, North Rhine-Westphalia, DE (93.241.63.155)
X-Originating-Platform: Windows Chrome 86
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 07 Dec 2020 15:12:11 -0800
References: <54PP.1607375500080817654.JwyJ@lists.yoctoproject.org>
In-Reply-To: <54PP.1607375500080817654.JwyJ@lists.yoctoproject.org>
Message-ID: <6649.1607382731741731476@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="MenAmEbVwRs4t3noyFdS"

--MenAmEbVwRs4t3noyFdS
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I looks like it is provided by just 'shadow' recipe:

oe-pkgdata-util list-pkg-files shadow
shadow:
/etc/default/useradd
/etc/limits
/etc/login.access
/sbin/nologin.shadow
/sbin/vigr.shadow
/sbin/vipw.shadow
/usr/bin/chage
/usr/bin/chfn.shadow
/usr/bin/chsh.shadow
/usr/bin/expiry
/usr/bin/faillog
/usr/bin/gpasswd
/usr/bin/lastlog
/usr/bin/newgidmap
/usr/bin/newuidmap
/usr/bin/passwd.shadow
/usr/sbin/chgpasswd
/usr/sbin/chpasswd.shadow
/usr/sbin/groupadd
/usr/sbin/groupdel
/usr/sbin/groupmems
/usr/sbin/groupmod
/usr/sbin/grpck
/usr/sbin/grpconv
/usr/sbin/grpunconv
/usr/sbin/logoutd
/usr/sbin/newusers
/usr/sbin/pwck
/usr/sbin/pwconv
/usr/sbin/pwunconv
/usr/sbin/useradd
/usr/sbin/userdel
/usr/sbin/usermod

However, after adding 'shadow' package to image, nothing changed. Files en=
umerated above have not been added. Any ideas why?

Best regards,
Lukasz

--MenAmEbVwRs4t3noyFdS
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I looks like it is provided by just 'shadow' recipe:<br /><br />
<div>oe-pkgdata-util list-pkg-files shadow</div>
<div>shadow:</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; /etc/default/useradd</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; /etc/limits</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; /etc/login.access</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; /sbin/nologin.shadow</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; /sbin/vigr.shadow</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; /sbin/vipw.shadow</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; /usr/bin/chage</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; /usr/bin/chfn.shadow</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; /usr/bin/chsh.shadow</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; /usr/bin/expiry</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; /usr/bin/faillog</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; /usr/bin/gpasswd</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; /usr/bin/lastlog</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; /usr/bin/newgidmap</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; /usr/bin/newuidmap</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; /usr/bin/passwd.shadow</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; /usr/sbin/chgpasswd</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; /usr/sbin/chpasswd.shadow</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; /usr/sbin/groupadd</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; /usr/sbin/groupdel</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; /usr/sbin/groupmems</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; /usr/sbin/groupmod</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; /usr/sbin/grpck</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; /usr/sbin/grpconv</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; /usr/sbin/grpunconv</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; /usr/sbin/logoutd</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; /usr/sbin/newusers</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; /usr/sbin/pwck</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; /usr/sbin/pwconv</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; /usr/sbin/pwunconv</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; /usr/sbin/useradd</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; /usr/sbin/userdel</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; /usr/sbin/usermod<br /><br />However, aft=
er adding 'shadow' package to image, nothing changed. Files enumerated abov=
e have not been added. Any ideas why?<br /><br />Best regards,<br />Lukasz<=
/div>

--MenAmEbVwRs4t3noyFdS--

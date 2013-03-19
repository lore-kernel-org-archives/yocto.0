Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qe0-f43.google.com (mail-qe0-f43.google.com
	[209.85.128.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 039C7E0147A
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2013 02:34:37 -0700 (PDT)
Received: by mail-qe0-f43.google.com with SMTP id 1so121246qee.16
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2013 02:34:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:content-type;
	bh=SCfIU36RvmDDOnoq9/Q7dLRwE5X/fVSudHKXgHxQnaY=;
	b=G0chcLb8LsTJHQmz+PZP7Xmfq7zaPRCSpQxlrsm52GNT69BqDdy4YkmO5HiwMPBrQg
	W51z5TYt2H/JOIiCnGsCNRLqcEIzvJexmvnj1yDfIlzqAL5EXdcFKLQTplzCduGFr0Zk
	Dz2F5UqM/wBqdLuWEENgsW12W1JHZ2E/zmxK5ynNovYXvozZ8UjH8CoaWLjxspjZpF1g
	o7TIARUaj5D6i40i/qHdX2R33luzpIyl8DDUdSo+aFc0F/9BxRfd9/UROugV9t3MeHQ8
	yAr/gdzX5ehaNem8gkuP4aCypx5EjvWo8gTEuat0LEaTCACwNVogoU90NpLezfpFOujz
	55fg==
MIME-Version: 1.0
X-Received: by 10.229.111.79 with SMTP id r15mr278744qcp.133.1363685677286;
	Tue, 19 Mar 2013 02:34:37 -0700 (PDT)
Received: by 10.49.67.98 with HTTP; Tue, 19 Mar 2013 02:34:37 -0700 (PDT)
In-Reply-To: <CAFyqS9qv4Sg_7VM-5nRj--BPgRkF-8FW1tY_KvjeTGHh7CeKMg@mail.gmail.com>
References: <CAFyqS9qv4Sg_7VM-5nRj--BPgRkF-8FW1tY_KvjeTGHh7CeKMg@mail.gmail.com>
Date: Tue, 19 Mar 2013 10:34:37 +0100
Message-ID: <CAFyqS9pS0qu3N5OonBEKosCn+PJf6MTL=rJWv8Wkb+bweysg-A@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: remove /usr/share/terminfo
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 19 Mar 2013 09:34:38 -0000
Content-Type: multipart/alternative; boundary=002354470988614ea504d843d0c6

--002354470988614ea504d843d0c6
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 18, 2013 at 1:13 PM, Hans Beck=E9rus <hans.beckerus@gmail.com>w=
rote:

> This is a continuation of the thread handling removal of /boot/uImage and
> terminfo database. The /boot/uImage is solved but I am still having issue=
s
> with trying to remove /usr/share/terminfo database. I thought it would be
> as easy as just creating a ncurses .bbappend and configure the package wi=
th
> OE_EXTRACONF =3D "--disable-database --enable-termcap". Not so. The probl=
em
> is that the ncurses.inc has some hardcode configuration options. One of
> these is not compatible with "--disable-database". Specifically it is
> "--with-ticlib". To me it seems like the ncurses package has not been
> designed for providing the option to disable the terminfo database.
>
> What I did as a temporary workaround was to override the entire
> ncurses_config() option to overcome the conflict. But I am not very happy
> with this solution, neither I am very happy with what happens to the
> package when actually faulting out the terminfo support. The result of su=
ch
> a configuration is that the entire ncurses library gets crippled and a lo=
t
> of packages can no longer be used, eg. htop. Also, the ncurses package
> recipe does not seem to create the termcap database instead of terminfo i=
f
> such is removed. Which is completely natural since it does not support
> disabling terminfo in the first place.
> Maybe I could try the option to compile in the termcap database? But then
> I do not know what the gain would be. What I am after is to get rid of th=
e
> database completely from the rootfs due to size constraints, but instead
> link to some network mounted location. If the terminfo database is missin=
g
> ncurses will simply fallback to a dumb terminal setting which is fine on =
a
> production board. In a test environment the network location will be
> available and ncurses will be able to locate the database.
>
> Any ideas what can be done here? If I would like to remove the physical
> database from the rootfs and instead replace it by a soft link. Where wou=
ld
> be the best place to do this?
>
>
So, just posting back my progress so far. Since I did not receive any
responses I simply had to try "something". Not very proud of it, but it
works. What I did was to create a ncurses .bbappend file in my layer
containing only this:

shell_do_install_append() {
       if [ "${CLASSOVERRIDE}" =3D=3D "class-target" ]; then
               rm -rf "${D}${datadir}/terminfo"
               ln -sf /app/usr/share/terminfo "${D}${datadir}/terminfo"
       fi
}

So, what it does is by using brute force removing the terminfo database
from /usr/share as installed by the recipe and replacing it with a soft
link to a well known location, eg. an NFS mount point. The minimalistic
database is still kept in /etc/terminfo. This database serves most purposes
on a production board. If a full functional database is needed a user must
provide it through the link. The result is still a fully functional ncurses
implementation, but with heavily reduced footprint.

I do not know if my conditional to detect a target build is correct (I do
not wish to have this done for eg. natrive builds). There is probably a
much better way to have this code only being performed for certain classes.
Also I do not understand why using do_install_append() does not work, I had
to use shell_do_install_append() as shell_do_install is defined in
ncurses.inc otherwise I got recipe parse errors!?

Hans

--002354470988614ea504d843d0c6
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 18, 2013 at 1:13 PM, Hans Beck=E9rus <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:hans.beckerus@gmail.com" target=3D"_blank">hans.beckerus@gmai=
l.com</a>&gt;</span> wrote:<br><div class=3D"gmail_quote"><blockquote class=
=3D"gmail_quote" style=3D"margin:0pt 0pt 0pt 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
This is a continuation of the thread handling removal of /boot/uImage and t=
erminfo database. The /boot/uImage is solved but I am still having issues w=
ith trying to remove /usr/share/terminfo database. I thought it would be as=
 easy as just creating a ncurses .bbappend and configure the package with O=
E_EXTRACONF =3D &quot;--disable-database --enable-termcap&quot;. Not so. Th=
e problem is that the ncurses.inc has some hardcode configuration options. =
One of these is not compatible with &quot;--disable-database&quot;. Specifi=
cally it is &quot;--with-ticlib&quot;. To me it seems like the ncurses pack=
age has not been designed for providing the option to disable the terminfo =
database.<br>

<br>What I did as a temporary workaround was to override the entire ncurses=
_config() option to overcome the conflict. But I am not very happy with thi=
s solution, neither I am very happy with what happens to the package when a=
ctually faulting out the terminfo support. The result of such a configurati=
on is that the entire ncurses library gets crippled and a lot of packages c=
an no longer be used, eg. htop. Also, the ncurses package recipe does not s=
eem to create the termcap database instead of terminfo if such is removed. =
Which is completely natural since it does not support disabling terminfo in=
 the first place.<br>

Maybe I could try the option to compile in the termcap database? But then I=
 do not know what the gain would be. What I am after is to get rid of the d=
atabase completely from the rootfs due to size constraints, but instead lin=
k to some network mounted location. If the terminfo database is missing ncu=
rses will simply fallback to a dumb terminal setting which is fine on a pro=
duction board. In a test environment the network location will be available=
 and ncurses will be able to locate the database.<br>

<br>Any ideas what can be done here? If I would like to remove the physical=
 database from the rootfs and instead replace it by a soft link. Where woul=
d be the best place to do this? <br><span class=3D"HOEnZb"><font color=3D"#=
888888"><br>
</font></span></blockquote><br></div>So, just posting back my progress so f=
ar. Since I did not receive any responses I simply had to try &quot;somethi=
ng&quot;. Not very proud of it, but it works. What I did was to create a nc=
urses .bbappend file in my layer containing only this:<br>
<br>shell_do_install_append() {<br>=A0=A0=A0=A0=A0=A0 if [ &quot;${CLASSOVE=
RRIDE}&quot; =3D=3D &quot;class-target&quot; ]; then<br>=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 rm -rf &quot;${D}${datadir}/terminfo&quot;<br>=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ln -sf /app/usr/share/terminfo &quo=
t;${D}${datadir}/terminfo&quot;<br>
=A0=A0=A0=A0=A0=A0 fi<br>}<br><br>So, what it does is by using brute force =
removing the terminfo database from /usr/share as installed by the recipe a=
nd replacing it with a soft link to a well known location, eg. an NFS mount=
 point. The minimalistic database is still kept in /etc/terminfo. This data=
base serves most purposes on a production board. If a full functional datab=
ase is needed a user must provide it through the link. The result is still =
a fully functional ncurses implementation, but with heavily reduced footpri=
nt.<br>
<br>I do not know if my conditional to detect a target build is correct (I =
do not wish to have this done for eg. natrive builds). There is probably a =
much better way to have this code only being performed for certain classes.=
<br>
Also I do not understand why using do_install_append() does not work, I had=
 to use shell_do_install_append() as shell_do_install is defined in ncurses=
.inc otherwise I got recipe parse errors!?<br><br>Hans<br><br><br><br><br>
<br><br><br><br><br>

--002354470988614ea504d843d0c6--

Return-Path: <kergoth@gmail.com>
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83A82E00BF0
	for <yocto@yoctoproject.org>; Wed,  9 Apr 2014 14:00:25 -0700 (PDT)
Received: by mail-la0-f48.google.com with SMTP id gf5so1577834lab.7
	for <yocto@yoctoproject.org>; Wed, 09 Apr 2014 14:00:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=d0WiW67IZPrhP7eddadSOn5qQMVm39va00lIgdANk5Y=;
	b=K5jOAlHHk8yyz+uzr332UgF+qp5h9pYvu6nyNLJl53PVxbxWx80mSYm/2xnV8kmOLi
	irPiWQh8jpf3d/6soYieqOYzIEyUbWEDb8wqhtRpara5b7mPRC4qm16ip4912M4m+6Ew
	FMVGf+zeBpqlSV0kUmcbquIzQo3ztsMkiEzGnqfBFjKt3P3jEUB8ps+HBYIfNtJeruhj
	wy4rb+P6QZWp85BC5vf0ZfPVzc6w6DjKxyfmNLEWkTlIf/RxTLZc/yWAG2nHTwlRM0m4
	ddQg3xKoCIB2hKqKVeTWxb5wBwFOm9mlhiY0ko94co4OyX9JuB1R0FveFTTbsWqgRZCN
	Bnpw==
X-Received: by 10.153.8.135 with SMTP id dk7mr9105457lad.18.1397077223752;
	Wed, 09 Apr 2014 14:00:23 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.35.194 with HTTP; Wed, 9 Apr 2014 14:00:03 -0700 (PDT)
In-Reply-To: <CAPphmgb4T+ZWE_rsVu6iS=XGCESVBqjSeysQHi5BVpkENnQrbQ@mail.gmail.com>
References: <CAPphmgb4T+ZWE_rsVu6iS=XGCESVBqjSeysQHi5BVpkENnQrbQ@mail.gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Wed, 9 Apr 2014 14:00:03 -0700
X-Google-Sender-Auth: VRg1nc5aWsqvqCLxUqIIHMuyg_8
Message-ID: <CABcZAN=uPhJWEqbbj3qUdLy9O45dCQqvdDKhepvy4a-JoQR4Vw@mail.gmail.com>
To: Jate S <jatedev@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: do_populate_sysroot_setscene needs pseudo-native
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
X-List-Received-Date: Wed, 09 Apr 2014 21:00:28 -0000
Content-Type: multipart/alternative; boundary=001a11347e9ea54b9e04f6a263f9

--001a11347e9ea54b9e04f6a263f9
Content-Type: text/plain; charset=UTF-8

On Wed, Apr 9, 2014 at 1:52 PM, Jate S <jatedev@gmail.com> wrote:

> WARNING: Setscene task 45
> (/home/jate/workspace/poky/meta/recipes-connectivity/avahi/
> avahi-ui_0.6.31.bb,
> do_populate_sysroot_setscene) failed with exit code '1' - real task
> will be run instead
>
> The task log.do_populate_sysroot_setscene has the following WARNING:
>
> NOTE: Performing useradd with [--root
> /home/jate/workspace/poky/qemux86/tmp/sysroots/qemux86 --system --home
> /var/run/avahi-daemon                               --no-create-home
> --shell /bin/false                               --user-group avahi]
> and 10 times of retry
>
> /home/jate/workspace/poky/qemux86/tmp/work/i586-poky-linux/avahi-ui/0.6.31-r7.0/temp/run.useradd_sysroot_sstate.17299:
> line 284:
> /home/jate/workspace/poky/qemux86/tmp/sysroots/i686-linux/usr/bin/pseudo:
> No such file or directory
> WARNING: useradd command did not succeed. Retrying...
>
> If I bitbake pseudo-native manually first, I can eliminate the
> warning. I tried adding pseudo-native to the useradd.bbclass, but that
> doesn't cause a rebuild.
>
> Any thoughts on how to do this?
>

You likely need something like:

    do_populate_sysroot_setscene[depends] +=
"pseudo-native:do_populate_sysroot_setscene"

If you grep around oe-core/poky, there are a couple examples of this. I
actually just ran into a case like this, where gdk-pixbuf-native needed
jpeg-native to run its setscene postinst, but the dep was missing, causing
setscene failure.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a11347e9ea54b9e04f6a263f9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Wed, Apr 9, 2014 at 1:52 PM, Jate S <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:jatedev@gmail.com" target=3D"_blank">jatedev@gmail.com</a>&gt;</span> w=
rote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div id=3D":af" class=3D"a3s" style=3D"overf=
low:hidden">WARNING: Setscene task 45<br>
(/home/jate/workspace/poky/meta/recipes-connectivity/avahi/<a href=3D"http:=
//avahi-ui_0.6.31.bb" target=3D"_blank">avahi-ui_0.6.31.bb</a>,<br>
do_populate_sysroot_setscene) failed with exit code &#39;1&#39; - real task=
<br>
will be run instead<br>
<br>
The task log.do_populate_sysroot_setscene has the following WARNING:<br>
<br>
NOTE: Performing useradd with [--root<br>
/home/jate/workspace/poky/qemux86/tmp/sysroots/qemux86 --system --home<br>
/var/run/avahi-daemon =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --no-create-home<br>
--shell /bin/false =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --user-group avahi]<br>
and 10 times of retry<br>
/home/jate/workspace/poky/qemux86/tmp/work/i586-poky-linux/avahi-ui/0.6.31-=
r7.0/temp/run.useradd_sysroot_sstate.17299:<br>
line 284: /home/jate/workspace/poky/qemux86/tmp/sysroots/i686-linux/usr/bin=
/pseudo:<br>
No such file or directory<br>
WARNING: useradd command did not succeed. Retrying...<br>
<br>
If I bitbake pseudo-native manually first, I can eliminate the<br>
warning. I tried adding pseudo-native to the useradd.bbclass, but that<br>
doesn&#39;t cause a rebuild.<br>
<br>
Any thoughts on how to do this?</div></blockquote></div><br>You likely need=
 something like:</div><div class=3D"gmail_extra"><br></div><div class=3D"gm=
ail_extra">=C2=A0 =C2=A0 do_populate_sysroot_setscene[depends] +=3D &quot;p=
seudo-native:do_populate_sysroot_setscene&quot;</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">If you grep=
 around oe-core/poky, there are a couple examples of this. I actually just =
ran into a case like this, where gdk-pixbuf-native needed jpeg-native to ru=
n its setscene postinst, but the dep was missing, causing setscene failure.=
<br>

-- <br>Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBak=
e, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engine=
er, Mentor Graphics
</div></div>

--001a11347e9ea54b9e04f6a263f9--

Return-Path: <billmartin544@gmail.com>
Received: from mail-ie0-f177.google.com (mail-ie0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F625E0174C
	for <yocto@yoctoproject.org>; Tue, 22 Oct 2013 19:00:14 -0700 (PDT)
Received: by mail-ie0-f177.google.com with SMTP id e14so257259iej.22
	for <yocto@yoctoproject.org>; Tue, 22 Oct 2013 19:00:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=MOzDdFHARaN4m40yHnhFBA6IL0r35WS/ue9hXLRFh6k=;
	b=rE61MJiAeCGc3D21tR1BRL48fdj3XEa596mPkCeSAa8bkn9uNFTzAw79EIqLl7VgQI
	ZJDsE4uX5sIVAXGx0Wm/e2HCl0qsdlcCyqYHzdhxK/Hxep/ah2cdqIilPjCESICHY2bC
	xvO4hUTfFH2+MLoK+1FSkUImgREQhrIjCMNUsBS7rdIZYmNKmiH5UXq+VouMxdEzWZw0
	1ZYd6ATIs8QAVcCoLfftWHmCoTP8Fdw9ov0Qg+7W0kgCrq8Lv0HsNkfzw1Kl2gbh/7T5
	uFr+hWMnlrIsTvRfFo4BRnrS5SrUk9Qfs5OaQeUGUEUyrXEsjIsgPS/7axYyMrFqDVoB
	7qUA==
MIME-Version: 1.0
X-Received: by 10.50.119.4 with SMTP id kq4mr15594804igb.40.1382493613286;
	Tue, 22 Oct 2013 19:00:13 -0700 (PDT)
Received: by 10.64.228.199 with HTTP; Tue, 22 Oct 2013 19:00:13 -0700 (PDT)
Date: Tue, 22 Oct 2013 19:00:13 -0700
Message-ID: <CAJGS5=GmTRgkwZroASOrOJs-AgAgdA59azfeaLbLGw_mVDQ-yw@mail.gmail.com>
From: Bill Martin <billmartin544@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: how to add a new bb(xerces-c)?
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
X-List-Received-Date: Wed, 23 Oct 2013 02:00:14 -0000
Content-Type: multipart/alternative; boundary=089e013c6e4ab9690604e95ee09c

--089e013c6e4ab9690604e95ee09c
Content-Type: text/plain; charset=ISO-8859-1

Regarding  my earlier post (see below)

I found a patch by Hans Beckerus dated September 10. I do think adding this
patch to libtools is important and I did. But it did not solve the problem
of unsafe or poisoned host include or library files. I tried using the flag
--with-libtools-sysroot to point to two different directories (they have to
be absolute paths I think) but still got the same issue.  I made sure the
libtools patch of Hans' was installed correctly. You can see the patch
inside the configure in your xerxes-c WORKDIR. I haven't cross compiled
outside of autotools as I thought I did. It was all on the build machine.
So next step is to cross compile on my own outside the Yocto environment.


Running out of ideas.

Bill


earlier post:
-----------------
Message: 3
Date: Tue, 22 Oct 2013 11:23:33 -0700
From: Bill Martin <billmartin544@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: [yocto] how to add a new bb(xerces-c)?
Message-ID:
        <CAJGS5=HTuyPuqropAOjys6oiz-
Adx=K9b1dci+zC0d4FPbMQ9w@mail.gmail.com>
Content-Type: text/plain; charset="iso-8859-1"

I have been tasked to add xerces-c too. There is an OE recipe already for
this (you can google it).

However your recipe seems to run into the same problem that I get. The
solution is not just to look at config.log and log.do_config. They display
the symptoms. The one who responded to your post implies the fix is in the
recipe by just adding extra config flags to point to the correct libraries.

I can run ./configure outside of yocto and send in the libraries I want.
But the OEEXTRACONFS I added in my recipe had no effect on the libraries.
Note that the auto tools is forcing the enable-poison-system directories,
as it should. But the cause is further up the "food chain" so to speak.

The problem seems to be with a bug in lib tools that Hans Beckerus found.

http://www.mail-archive.com/yocto@yoctoproject.org/msg15325.html

Essentially it's to do with the with-libtool-sysroot usage in the libtool.
I have not tried Hans' solution yet but will today.  Hopefully this info is
enough to get you started so you can make your own fix and use xerces-c.

thanks

Bill

--089e013c6e4ab9690604e95ee09c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Regarding=A0 my earlier post (see below)<br><br>I fou=
nd a patch by Hans Beckerus dated September 10. I do think adding this patc=
h to libtools is important and I did. But it did not solve the problem of u=
nsafe or poisoned host include or library files. I tried using the flag --w=
ith-libtools-sysroot to point to two different directories (they have to be=
 absolute paths I think) but still got the same issue.=A0 I made sure the l=
ibtools patch of Hans&#39; was installed correctly. You can see the patch i=
nside the configure in your xerxes-c WORKDIR. I haven&#39;t cross compiled =
outside of autotools as I thought I did. It was all on the build machine. S=
o next step is to cross compile on my own outside the Yocto environment.<br=
>
</div><div><br><br></div><div>Running out of ideas. <br><br></div><div>Bill=
<br></div><div><br><br></div>earlier post:<br><div>-----------------<br>Mes=
sage: 3<br>
Date: <span tabindex=3D"0" class=3D""><span class=3D"">Tue, 22 Oct 2013 11:=
23:33 -0700</span></span><br>
From: Bill Martin &lt;<a href=3D"mailto:billmartin544@gmail.com">billmartin=
544@gmail.com</a>&gt;<br>
To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
Subject: Re: [yocto] how to add a new bb(xerces-c)?<br>
Message-ID:<br>
=A0 =A0 =A0 =A0 &lt;CAJGS5=3DHTuyPuqropAOjys6oiz-<div id=3D":lc">Adx=3D<a h=
ref=3D"mailto:K9b1dci%2BzC0d4FPbMQ9w@mail.gmail.com">K9b1dci+zC0d4FPbMQ9w@m=
ail.gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;iso-8859-1&quot;<br>
<br>
I have been tasked to add xerces-c too. There is an OE recipe already for<b=
r>
this (you can google it).<br>
<br>
However your recipe seems to run into the same problem that I get. The<br>
solution is not just to look at config.log and log.do_config. They display<=
br>
the symptoms. The one who responded to your post implies the fix is in the<=
br>
recipe by just adding extra config flags to point to the correct libraries.=
<br>
<br>
I can run ./configure outside of yocto and send in the libraries I want.<br=
>
But the OEEXTRACONFS I added in my recipe had no effect on the libraries.<b=
r>
Note that the auto tools is forcing the enable-poison-system directories,<b=
r>
as it should. But the cause is further up the &quot;food chain&quot; so to =
speak.<br>
<br>
The problem seems to be with a bug in lib tools that Hans Beckerus found.<b=
r>
<br>
<a href=3D"http://www.mail-archive.com/yocto@yoctoproject.org/msg15325.html=
" target=3D"_blank">http://www.mail-archive.com/yocto@yoctoproject.org/msg1=
5325.html</a><br>
<br>
Essentially it&#39;s to do with the with-libtool-sysroot usage in the libto=
ol.<br>
I have not tried Hans&#39; solution yet but will today. =A0Hopefully this i=
nfo is<br>
enough to get you started so you can make your own fix and use xerces-c.<br=
>
<br>
thanks<br>
<br>
Bill</div><br></div></div>

--089e013c6e4ab9690604e95ee09c--

Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-oa0-f45.google.com (mail-oa0-f45.google.com
	[209.85.219.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B3FBE013A2
	for <yocto@yoctoproject.org>; Sun, 26 May 2013 23:52:43 -0700 (PDT)
Received: by mail-oa0-f45.google.com with SMTP id j6so8475692oag.18
	for <yocto@yoctoproject.org>; Sun, 26 May 2013 23:52:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=YQAUhXsTvn/CaU/459AMcYr9STpXBPuZAuChpjqm3c8=;
	b=koFT3Nc0T0J5juwx/0IKBDXHLG5C34Otqd0+B1X6CAg6ZCpjjC023HAlB3Ppi6iMvI
	hm77dhnyv1VsCs7CQ7WxL0K5enA7CwxVUUAnkaEasraUKGhYwqm/jlW/Fvmn8a4CTMjX
	glKvMM98fWI0h1AlTc1LhbXYVAvRy4xoxW/C1sAJQ3DmUXE137XFpUAavFZKIQ6D6GZC
	R92hftldxSUjMCXcBx7/EEu/61wR5XX1YewdDucXw3Ndssg+nHrggzgdAyhOU94UBQ9V
	fbEUYmGNIySsx9hj9aqZxx1O0p5Iqk79qwdiJF/cMkdG51eqEUS+Ub6vXZThgtJr9Rhh
	uZZA==
X-Received: by 10.60.103.76 with SMTP id fu12mr17997094oeb.71.1369637563257;
	Sun, 26 May 2013 23:52:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.27.165 with HTTP; Sun, 26 May 2013 23:52:23 -0700 (PDT)
In-Reply-To: <51A2F1DC.6010307@cn.fujitsu.com>
References: <51A2F1DC.6010307@cn.fujitsu.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Mon, 27 May 2013 08:52:23 +0200
Message-ID: <CAP71WjxNxeK_Jn5MeNjzGb1bi0vcvJLmF6HoDvnA_zwtJOiLBg@mail.gmail.com>
To: Li Zhijian <lizhijian@cn.fujitsu.com>
X-Gm-Message-State: ALoCoQn12S29cSqWmu2wI6QbvXrA00gWhZvHmf9MfcGh4J0nCpAec3Ik7DBkW0mc9AAb5Y0BZknZ
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: How to modify SRC_URI[md5sum] if there are mutil remote files
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
X-List-Received-Date: Mon, 27 May 2013 06:52:44 -0000
Content-Type: multipart/alternative; boundary=089e011613e86de5ef04ddad98bc

--089e011613e86de5ef04ddad98bc
Content-Type: text/plain; charset=ISO-8859-1

On Mon, May 27, 2013 at 7:40 AM, Li Zhijian <lizhijian@cn.fujitsu.com>wrote:

> I modified as follows ,but it don't work.
>
> --- a/meta-oe/recipes-support/ntp/ntp.inc
> +++ b/meta-oe/recipes-support/ntp/ntp.inc
> @@ -20,6 +20,9 @@ SRC_URI = "
> http://www.eecis.udel.edu/~ntp/ntp_spool/ntp4/ntp-4.2/ntp-${PV}.tar.g
> file://ntpdate.default \
> file://ntp.keys \
> "
> +SRC_URI[md5sum] = "00df80a84ec9528fcfb09498075525bc"
> +SRC_URI[sha256sum] =
> "d6ab8371f9d31e594eb6922823d5ccd03dcc4e9d84b0e23ea25ac1405432f91c"
> +SRC_URI += "
> http://jaist.dl.sourceforge.net/project/ictom/ntpstat-0.2.tar.gz "
> +SRC_URI[md5sum] += "516847d99a772305cab711339998f9ea"
> +SRC_URI[sha256sum] +=
> "486fdfceb38590a9ff52ab8de1cc1ec4fc696f2e94da992e9ccf30157c32f01e"
>
>
> Any help or ideas?
>

you should have a look at:

http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-extended/bash/bash_4.2.bb

or

http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-bsp/apmd/apmd_3.2.2-14.bb

and for more examples, you can run
$ git grep "\.md5sum"

in the OE-core tree.

basically, the idea is to 'name' each of your sources, and refer them as
<name>.md5sum

--089e011613e86de5ef04ddad98bc
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Mon, May 27, 2013 at 7:40 AM, Li Zhijian <span dir=3D"ltr">&lt;<a href=
=3D"mailto:lizhijian@cn.fujitsu.com" target=3D"_blank">lizhijian@cn.fujitsu=
.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div id=3D":11b" style=3D"overflow:hidden">I modified as f=
ollows ,but it don&#39;t work.<br>


<br>
--- a/meta-oe/recipes-support/ntp/ntp.inc<br>
+++ b/meta-oe/recipes-support/ntp/ntp.inc<br>
@@ -20,6 +20,9 @@ SRC_URI =3D &quot;<a href=3D"http://www.eecis.udel.edu/~n=
tp/ntp_spool/ntp4/ntp-4.2/ntp-${PV}.tar.g" target=3D"_blank">http://www.eec=
is.udel.edu/~ntp/ntp_spool/ntp4/ntp-4.2/ntp-${PV}.tar.g</a><br>
file://ntpdate.default \<br>
file://ntp.keys \<br>
&quot;<br>
+SRC_URI[md5sum] =3D &quot;00df80a84ec9528fcfb09498075525bc&quot;<br>
+SRC_URI[sha256sum] =3D &quot;d6ab8371f9d31e594eb6922823d5ccd03dcc4e9d84b0e=
23ea25ac1405432f91c&quot;<br>
+SRC_URI +=3D &quot;<a href=3D"http://jaist.dl.sourceforge.net/project/icto=
m/ntpstat-0.2.tar.gz" target=3D"_blank">http://jaist.dl.sourceforge.net/pro=
ject/ictom/ntpstat-0.2.tar.gz</a> &quot;<br>
+SRC_URI[md5sum] +=3D &quot;516847d99a772305cab711339998f9ea&quot;<br>
+SRC_URI[sha256sum] +=3D &quot;486fdfceb38590a9ff52ab8de1cc1ec4fc696f2e94da=
992e9ccf30157c32f01e&quot;<br>
<br>
<br>
Any help or ideas?<div class=3D""><div id=3D":128" class=3D"" tabindex=3D"0=
"></div></div></div></blockquote></div><br>you should have a look at:</div>=
<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"><a href=3D"=
http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-extended/b=
ash/bash_4.2.bb">http://cgit.openembedded.org/openembedded-core/tree/meta/r=
ecipes-extended/bash/bash_4.2.bb</a><br>

</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra" style=
>or</div><div class=3D"gmail_extra" style><br></div><div class=3D"gmail_ext=
ra" style><a href=3D"http://cgit.openembedded.org/openembedded-core/tree/me=
ta/recipes-bsp/apmd/apmd_3.2.2-14.bb">http://cgit.openembedded.org/openembe=
dded-core/tree/meta/recipes-bsp/apmd/apmd_3.2.2-14.bb</a><br>

</div><div class=3D"gmail_extra" style><br></div><div class=3D"gmail_extra"=
 style>and for more examples, you can run=A0</div><div class=3D"gmail_extra=
" style>$ git grep &quot;\.md5sum&quot;=A0</div><div class=3D"gmail_extra" =
style><br>

</div><div class=3D"gmail_extra" style>in the OE-core tree.</div><div class=
=3D"gmail_extra" style><br></div><div class=3D"gmail_extra" style>basically=
, the idea is to &#39;name&#39; each of your sources, and refer them as &lt=
;name&gt;.md5sum</div>

<div class=3D"gmail_extra" style><br></div></div>

--089e011613e86de5ef04ddad98bc--

Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-ob0-f181.google.com (mail-ob0-f181.google.com
	[209.85.214.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 297C4E0084B
	for <yocto@yoctoproject.org>; Mon,  6 Jan 2014 16:29:28 -0800 (PST)
Received: by mail-ob0-f181.google.com with SMTP id uy5so19343185obc.12
	for <yocto@yoctoproject.org>; Mon, 06 Jan 2014 16:29:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=S4h+r++ZxIKVxuBhQi3thUDUdeajqNU4SZC/9ekmeqs=;
	b=L40OaB9r+RQhHTHmZ0S24y7fzlLEFQ2C4wqHSwP72z+dlN4hiiY0feqOuhEDnyvgU/
	vm0mHSojVpunSxPZDiy3DXzN2c9CAKs3k68OU8ms37PoFF4z4ZI7hoXBe4OObyRkMVrO
	A1vve8BZ16mgxTf/lg49s+tgjpCF360Jrs6/MKeqvCwNUvne3O7MOBT8hWwLWcgdZBfJ
	8XZ842wc/21f0se675v2GYGLnFMoOmZoWM0R8lt2gqZ/VM2aBYW6gXHriLM1fh1fo0um
	6fOIhe49stGgAyW+2fs3rt1Ho29VzH9BPpjCtJQyPeeOvlqw2xI8N97RRlZ29UQ6zWvS
	jkTg==
X-Gm-Message-State: ALoCoQm3AYgQuwJNFesoD8VvzdQsTS4imenoZi5+FmXwfbdi4kjkO3B56eUZjLuhyODDbXw8UvX6
X-Received: by 10.182.146.104 with SMTP id tb8mr3190439obb.54.1389054567743;
	Mon, 06 Jan 2014 16:29:27 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.89.143 with HTTP; Mon, 6 Jan 2014 16:29:07 -0800 (PST)
In-Reply-To: <CAGNTBAXK-0hqLbyxdRo7RfS6MkPfxP+etmx0bE=P9vjF91tTgQ@mail.gmail.com>
References: <CAGNTBAXK-0hqLbyxdRo7RfS6MkPfxP+etmx0bE=P9vjF91tTgQ@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Tue, 7 Jan 2014 01:29:07 +0100
Message-ID: <CAP71WjxP67f0pnxBYZfFKEB0dvR55yc4r3etUNhwbi1vZdftMg@mail.gmail.com>
To: Reeve Yang <reeve.yang@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Problem & Question about FILES_${PN}
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
X-List-Received-Date: Tue, 07 Jan 2014 00:29:30 -0000
Content-Type: multipart/alternative; boundary=f46d04451a3915986104ef567860

--f46d04451a3915986104ef567860
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Jan 7, 2014 at 1:19 AM, Reeve Yang <reeve.yang@gmail.com> wrote:

> FILES_${PN} = "${bindir}/* ${sbindir}/* ${libexecdir}/*
> ${libdir}/lib*${SOLIBS} \
>     ${sysconfdir} ${sharedstatedir} ${localstatedir} \
>     ${base_bindir}/* ${base_sbindir}/* \
>     ${base_libdir}/*${SOLIBS} \
>     ${datadir}/${BPN} ${libdir}/${BPN}/*${SOLIBSDEV} \
>     ${datadir}/include/scl/ ${datadir}/xsd"
> FILES_${PN}-dev += "${libdir}/${BPN}/lib*.la
> ${libdir}/${BPN}/*${SOLIBSDEV}"
>

it seems that  ${libdir}/${BPN}/*${SOLIBSDEV} is both in FILES_{PN} and
FILES_{PN}-dev, in which case the actual files will be added in the -dev
package, not, the 'main binary' package.

Files are 'removed' from the local 'install' directory ($D) by processing
FILES_{PN} variables in the order defined by PACKAGES. since the -dev
package is before the binary package, your .so files will be added to the
-dev package first, and no longer in the local 'install' folder when the
binary package is being built.

so you need to remove the glob from FILES_{PN}-dev.

--f46d04451a3915986104ef567860
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Tue, Jan 7, 2014 at 1:19 AM, Reeve Yang <span dir=3D"ltr">&lt;<a href=3D=
"mailto:reeve.yang@gmail.com" target=3D"_blank">reeve.yang@gmail.com</a>&gt=
;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div>FILES_${PN} =3D &quot;${bindir}/* ${sbindir}/* ${libe=
xecdir}/* ${libdir}/lib*${SOLIBS} \</div>


<div>=A0 =A0 ${sysconfdir} ${sharedstatedir} ${localstatedir} \</div><div>=
=A0 =A0 ${base_bindir}/* ${base_sbindir}/* \</div><div>=A0 =A0 ${base_libdi=
r}/*${SOLIBS} \</div><div>=A0 =A0 ${datadir}/${BPN} ${libdir}/${BPN}/*${SOL=
IBSDEV} \</div>


<div>=A0 =A0 ${datadir}/include/scl/ ${datadir}/xsd&quot;</div><div>FILES_$=
{PN}-dev +=3D &quot;${libdir}/${BPN}/lib*.la ${libdir}/${BPN}/*${SOLIBSDEV}=
&quot;</div></blockquote></div><div class=3D"gmail_extra"><br></div>it seem=
s that=A0=A0${libdir}/${BPN}/*${SOLIBSDEV} is both in FILES_{PN} and FILES_=
{PN}-dev, in which case the actual files will be added in the -dev package,=
 not, the &#39;main binary&#39; package.=A0</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Files are &=
#39;removed&#39; from the local &#39;install&#39; directory ($D) by process=
ing FILES_{PN} variables in the order defined by PACKAGES. since the -dev p=
ackage is before the binary package, your .so files will be added to the -d=
ev package first, and no longer in the local &#39;install&#39; folder when =
the binary package is being built.</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">so you need=
 to remove the glob from FILES_{PN}-dev.</div><div class=3D"gmail_extra"><b=
r></div><div class=3D"gmail_extra"><br><br></div></div>

--f46d04451a3915986104ef567860--

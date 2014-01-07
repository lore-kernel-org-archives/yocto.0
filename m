Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-ob0-f179.google.com (mail-ob0-f179.google.com
	[209.85.214.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A888BE006CA
	for <yocto@yoctoproject.org>; Tue,  7 Jan 2014 12:39:54 -0800 (PST)
Received: by mail-ob0-f179.google.com with SMTP id wm4so750199obc.10
	for <yocto@yoctoproject.org>; Tue, 07 Jan 2014 12:39:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:content-type;
	bh=oN19nZISfSesFzRNZ/LgZeuyhylYAox/UF7yw4/cd6Q=;
	b=iyMf6Nsx4L47W7BX1M+xMBeVdVKSA8oodV33Qe1cQm6iFCLz7tpwGVph7YsbSrboWw
	qbcVNxZEbTYa/UqonSA2Wp96eQ6qQaDQs+T6fCYqK9/+Fe5UiqoDrzKJVpMdD3Tfr10Y
	hghP7h2XFpMXoV8r+5v+YCoJ8xTr1DPixzg3O6Awe9yI35tlXhVLa6mHjm4tHR8tKHdj
	rZ6nmKsfJAozTlL3oDyK1I6cAdFasOMD8igSUFD4cwtHqj2EQ8t+YNllqoahaxx8gCb1
	foQUoHXXCWzkk0RevR+fmtOfLT/vo9+G362bw/VDBVRS6I4VmKDe2LaQ8Il+kvM7Jbh6
	W4qg==
X-Gm-Message-State: ALoCoQn51emPXOBkc8gtAtar9k1SU/N054OOEt7NRgUupsD+lA6Y+Nz1a3u8aWvhBkwaY3sOTImL
MIME-Version: 1.0
X-Received: by 10.182.255.137 with SMTP id aq9mr249076obd.80.1389127193876;
	Tue, 07 Jan 2014 12:39:53 -0800 (PST)
Received: by 10.76.89.143 with HTTP; Tue, 7 Jan 2014 12:39:53 -0800 (PST)
Received: by 10.76.89.143 with HTTP; Tue, 7 Jan 2014 12:39:53 -0800 (PST)
In-Reply-To: <CAGNTBAVHWpnM2p+WoWmOJ145Y8eaeQSEPex8AXZtPod77hGtgA@mail.gmail.com>
References: <CAGNTBAXK-0hqLbyxdRo7RfS6MkPfxP+etmx0bE=P9vjF91tTgQ@mail.gmail.com>
	<CAP71WjxP67f0pnxBYZfFKEB0dvR55yc4r3etUNhwbi1vZdftMg@mail.gmail.com>
	<CAGNTBAVHWpnM2p+WoWmOJ145Y8eaeQSEPex8AXZtPod77hGtgA@mail.gmail.com>
Date: Tue, 7 Jan 2014 21:39:53 +0100
Message-ID: <CAP71WjzP3w43Bmw7R=FeC8p31pJLNwD1zyBmsGL4ZshwbzLpag@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
To: Reeve Yang <reeve.yang@gmail.com>,
	Yocto list discussion <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 07 Jan 2014 20:39:55 -0000
Content-Type: multipart/alternative; boundary=001a1134a71af0773704ef67607c

--001a1134a71af0773704ef67607c
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,

Le 7 janv. 2014 21:35, "Reeve Yang" <reeve.yang@gmail.com> a =E9crit :
>
> Hi Nicolas,
>
> Thanks for reply. How nice it is! But one thing I don't understand is,
sometimes the files might be needed into two different packages, e.g. main
and dev, how can we achieve that? In another words, is there anyway in
local recipe to make files not deleted during packaging time?

Thanks. Please let's keep the discussion on the list.

you cannot do that. In fact i don't quite see why you would want to do
that. If 2 packages provide the same file you won't be able to install them
simultaneously.

If you want to duplicate the same file in 2 different location in the
rootFS then you can duplicate in do_install().

>
> Appreciate your help.
> - Reeve
>
>
> On Mon, Jan 6, 2014 at 4:29 PM, Nicolas Dechesne <
nicolas.dechesne@linaro.org> wrote:
>>
>>
>> On Tue, Jan 7, 2014 at 1:19 AM, Reeve Yang <reeve.yang@gmail.com> wrote:
>>>
>>> FILES_${PN} =3D "${bindir}/* ${sbindir}/* ${libexecdir}/*
${libdir}/lib*${SOLIBS} \
>>>     ${sysconfdir} ${sharedstatedir} ${localstatedir} \
>>>     ${base_bindir}/* ${base_sbindir}/* \
>>>     ${base_libdir}/*${SOLIBS} \
>>>     ${datadir}/${BPN} ${libdir}/${BPN}/*${SOLIBSDEV} \
>>>     ${datadir}/include/scl/ ${datadir}/xsd"
>>> FILES_${PN}-dev +=3D "${libdir}/${BPN}/lib*.la
${libdir}/${BPN}/*${SOLIBSDEV}"
>>
>>
>> it seems that  ${libdir}/${BPN}/*${SOLIBSDEV} is both in FILES_{PN} and
FILES_{PN}-dev, in which case the actual files will be added in the -dev
package, not, the 'main binary' package.
>>
>> Files are 'removed' from the local 'install' directory ($D) by
processing FILES_{PN} variables in the order defined by PACKAGES. since the
-dev package is before the binary package, your .so files will be added to
the -dev package first, and no longer in the local 'install' folder when
the binary package is being built.
>>
>> so you need to remove the glob from FILES_{PN}-dev.
>>
>>
>>
>

--001a1134a71af0773704ef67607c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Hi,</p>
<p dir=3D"ltr">Le 7 janv. 2014 21:35, &quot;Reeve Yang&quot; &lt;<a href=3D=
"mailto:reeve.yang@gmail.com">reeve.yang@gmail.com</a>&gt; a =E9crit :<br>
&gt;<br>
&gt; Hi Nicolas,<br>
&gt;<br>
&gt; Thanks for reply. How nice it is! But one thing I don&#39;t understand=
 is, sometimes the files might be needed into two different packages, e.g. =
main and dev, how can we achieve that? In another words, is there anyway in=
 local recipe to make files not deleted during packaging time?</p>

<p dir=3D"ltr">Thanks. Please let&#39;s keep the discussion on the list.</p=
>
<p dir=3D"ltr"> you cannot do that. In fact i don&#39;t quite see why you w=
ould want to do that. If 2 packages provide the same file you won&#39;t be =
able to install them simultaneously. </p>
<p dir=3D"ltr">If you want to duplicate the same file in 2 different locati=
on in the rootFS then you can duplicate in do_install().</p>
<p dir=3D"ltr">&gt;<br>
&gt; Appreciate your help.<br>
&gt; - Reeve<br>
&gt;<br>
&gt;<br>
&gt; On Mon, Jan 6, 2014 at 4:29 PM, Nicolas Dechesne &lt;<a href=3D"mailto=
:nicolas.dechesne@linaro.org">nicolas.dechesne@linaro.org</a>&gt; wrote:<br=
>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; On Tue, Jan 7, 2014 at 1:19 AM, Reeve Yang &lt;<a href=3D"mailto:r=
eeve.yang@gmail.com">reeve.yang@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; FILES_${PN} =3D &quot;${bindir}/* ${sbindir}/* ${libexecdir}/*=
 ${libdir}/lib*${SOLIBS} \<br>
&gt;&gt;&gt; =A0 =A0 ${sysconfdir} ${sharedstatedir} ${localstatedir} \<br>
&gt;&gt;&gt; =A0 =A0 ${base_bindir}/* ${base_sbindir}/* \<br>
&gt;&gt;&gt; =A0 =A0 ${base_libdir}/*${SOLIBS} \<br>
&gt;&gt;&gt; =A0 =A0 ${datadir}/${BPN} ${libdir}/${BPN}/*${SOLIBSDEV} \<br>
&gt;&gt;&gt; =A0 =A0 ${datadir}/include/scl/ ${datadir}/xsd&quot;<br>
&gt;&gt;&gt; FILES_${PN}-dev +=3D &quot;${libdir}/${BPN}/lib*.la ${libdir}/=
${BPN}/*${SOLIBSDEV}&quot;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; it seems that=A0=A0${libdir}/${BPN}/*${SOLIBSDEV} is both in FILES=
_{PN} and FILES_{PN}-dev, in which case the actual files will be added in t=
he -dev package, not, the &#39;main binary&#39; package.=A0<br>
&gt;&gt;<br>
&gt;&gt; Files are &#39;removed&#39; from the local &#39;install&#39; direc=
tory ($D) by processing FILES_{PN} variables in the order defined by PACKAG=
ES. since the -dev package is before the binary package, your .so files wil=
l be added to the -dev package first, and no longer in the local &#39;insta=
ll&#39; folder when the binary package is being built.<br>

&gt;&gt;<br>
&gt;&gt; so you need to remove the glob from FILES_{PN}-dev.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;<br>
</p>

--001a1134a71af0773704ef67607c--

Return-Path: <stefano.cappa.ks89@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47A08E00DB5; Fri,  4 Oct 2019 05:26:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (stefano.cappa.ks89[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.49 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com
	[209.85.222.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 342BAE009D4
	for <yocto@yoctoproject.org>; Fri,  4 Oct 2019 05:26:22 -0700 (PDT)
Received: by mail-ua1-f49.google.com with SMTP id u31so1980558uah.0
	for <yocto@yoctoproject.org>; Fri, 04 Oct 2019 05:26:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=cfYlJpfPq9BZ3g02UmL2GY0L1/dCrg01oei7B5E/Iw4=;
	b=CyBFFik/bSetVx3CS6YJ4IRkoTRw+DHnARFdx3qhoHx5IflkA6nc7lRD2dKdflPcCq
	rn5lFBv/xevqFsFPLdiw5Zd7pupzESkFWxctQAQKDDNY7SFKA6iq9G5ebhQ8lGHA26k7
	plljFS9FbbwSy9jojJilkhqNnXhLA97dzGHoD7i16RfbhAjOUKwenttq8W/2VLeYjDqT
	Sb5YGXtwzqp9tERPDzcxu3HdvOsCeWqsXmGQ+pZUyjo01yGneB/GKgxYyl33i/ICRGKx
	Z6ZLYlJQR240yVBq2b/PQ5uU+O0favSfrTtMXUDYQ6bMDFtTOKLMlmmSdz5sltKCeBqt
	MFdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=cfYlJpfPq9BZ3g02UmL2GY0L1/dCrg01oei7B5E/Iw4=;
	b=nToE9seijl7libcx/HvtVYEhKtyMdT4lOK78fCycGL/Wb3xY7TglLzePQekVE0wrVa
	6h7iPPJzw0lrdAEjX0iHwF7HHwY9TGKk0YsPcnmq5VoSObGGDQoN9005oWGUKyYSM47K
	g673kBH8+O/3VY4J3VSAHVAgCqwidV8vMhs0eb80uig4s0rJHVnoGuJRxzqLas+n+N7I
	GCZkcI+Ok9EJ5/cPqdWDBsCBQMfNvU65GWRhF4iR+/5PLGhzZyrn8JPzfohbseOmhAvR
	jbKJ3Mihf+FRXlxasB0BbUqykUiqBK8alDpC/GKWIEW6RoymZg21RZe7DTNQpag4ea23
	Edjw==
X-Gm-Message-State: APjAAAXhS940KgGsZTt4zsfJHq9q3UD89PAEb03SI2OI391fcwTXPV1O
	DBsgPJ3LgY2TLbh6XAlVT/sWXEqfi9Z9HImMeJEBWfdj
X-Google-Smtp-Source: APXvYqzgsNsv9WzMpTLP6XjTmo/c0httjxH1oYlKOXxMkz1WNYUjb6GeCtezqM0RbLbVHDiI92oPuOsc9A1Q8lZmNag=
X-Received: by 2002:ab0:476:: with SMTP id 109mr3418203uav.89.1570191981012;
	Fri, 04 Oct 2019 05:26:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAKRytNy3XoG8H1R4uZqGFC3Az5WGsE5+zYKRgUepgjBDYxvgXw@mail.gmail.com>
	<35712e36-d517-2665-fd80-50f4b089b16b@gmail.com>
	<CAKRytNxGZ02wOuydLdS_pE0MtDRtQi=DSuSsaK0WTtfOqToukw@mail.gmail.com>
	<CAKRytNy7w-5N8fAz9N-fF3iggMvW0KgXUS5Dm1XA9NBD7ewePw@mail.gmail.com>
In-Reply-To: <CAKRytNy7w-5N8fAz9N-fF3iggMvW0KgXUS5Dm1XA9NBD7ewePw@mail.gmail.com>
From: Stefano Cappa <stefano.cappa.ks89@gmail.com>
Date: Fri, 4 Oct 2019 14:26:07 +0200
Message-ID: <CAKRytNyoOGmoGB9tT5uFB6uJZTb0NS9zM6DfQ3r2ennRsRJqmA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Cannot use "LICENSE_CREATE_PACKAGE = 1" when building the image with mdns
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
X-List-Received-Date: Fri, 04 Oct 2019 12:26:23 -0000
Content-Type: multipart/alternative; boundary="00000000000041f289059414cf56"

--00000000000041f289059414cf56
Content-Type: text/plain; charset="UTF-8"

I investigated a little bit.
Probably, I didn't understand your point.

The postinst script modifies nsswitch adding mdns and this is right, but
why is this interfering with the license create package?

If I remove the postinst I can build with license create package, however I
need this change to nsswitch.

Is it possibile to change the recipe of mdns to modify nsswitch without
interfering with license create package in another xxxx() { }?

Thanks



Il gio 3 ott 2019, 14:24 Stefano Cappa <stefano.cappa.ks89@gmail.com> ha
scritto:

> I resend this email because it's not visible in yocto mailing list.
>
>
>
> Hi thank you for the answer.
>
> In my rootfs I have this nsswitch.conf:
> -------------------------------------------------------
> # /etc/nsswitch.conf
> #
> # Example configuration of GNU Name Service Switch functionality.
> # If you have the `glibc-doc' and `info' packages installed, try:
> # `info libc "Name Service Switch"' for information about this file.
>
> passwd:         compat
> group:          compat
> shadow:         compat
>
> hosts:          files myhostname  mdns dns
> networks:       files
>
> protocols:      db files
> services:       db files
> ethers:         db files
> rpc:            db files
>
> netgroup:       nis
> -------------------------------------------------------
>
> I'm not familiar with this file.
> Also changing "hosts: files myhostname  mdns dns" to "hosts: files
> mdns4_minimal [NOTFOUND=return] dns" (copied from a raspberry pi 3) I'm
> still having the same problem.
>
> What should I change to fix this issue?
>
>
>
>
> Il mar 1 ott 2019, 11:29 Stefano Cappa <stefano.cappa.ks89@gmail.com> ha
> scritto:
>
>> Hi thank you for the answer.
>>
>> In my rootfs I have this nsswitch.conf:
>> -------------------------------------------------------
>> # /etc/nsswitch.conf
>> #
>> # Example configuration of GNU Name Service Switch functionality.
>> # If you have the `glibc-doc' and `info' packages installed, try:
>> # `info libc "Name Service Switch"' for information about this file.
>>
>> passwd:         compat
>> group:          compat
>> shadow:         compat
>>
>> hosts:          files myhostname  mdns dns
>> networks:       files
>>
>> protocols:      db files
>> services:       db files
>> ethers:         db files
>> rpc:            db files
>>
>> netgroup:       nis
>> -------------------------------------------------------
>>
>> I'm not familiar with this file.
>> Also changing "hosts: files myhostname  mdns dns" to "hosts: files
>> mdns4_minimal [NOTFOUND=return] dns" (copied from a raspberry pi 3) I'm
>> still having the same problem.
>>
>> What should I change to fix this issue?
>>
>>
>> Il lun 30 set 2019, 22:45 Khem Raj <raj.khem@gmail.com> ha scritto:
>>
>>>
>>>
>>> On 9/30/19 8:17 AM, Stefano Cappa wrote:
>>> > I saw your last patch to upgrade mdns, so I'm sending this email also
>>> to
>>> > you to try to get help.
>>> >
>>> > mdns is working correctly, however, when I try to build my image with
>>> > "LICENSE_CREATE_PACKAGE = "1"" in my local.conf as described
>>> > here
>>> https://www.yoctoproject.org/docs/2.8/dev-manual/dev-manual.html#providing-license-text
>>>  I
>>> > get this error message:
>>> >
>>> > ERROR: mydevice-image-1.0-r0 do_rootfs: Postinstall scriptlets of
>>> > ['mdns'] have failed. If the intention is to defer them to first boot,
>>> > then please place them into pkg_postinst_ontarget_${PN} ().
>>> > Deferring to first boot via 'exit 1' is no longer supported.
>>> > Details of the failure are in
>>> >
>>> /home/user/git/poky/build/tmp/work/mydevice1-image-poky-linux-gnueabi/mydevice-image/1.0-r0/temp/log.do_rootfs.
>>> > ERROR: mydevice-image-1.0-r0 do_rootfs: Function failed: do_rootfs
>>> > ERROR: Logfile of failure stored in:
>>> >
>>> /home/user/git/poky/build/tmp/work/mydevice1-poky-linux-gnueabi/mydevice-image/1.0-r0/temp/log.do_rootfs.14586
>>> > ERROR: Task (MY CUSTOM LAYER
>>> > PATH/recipes-core/images/mydevice-image.bb:do_rootfs) failed with exit
>>> > code '1'
>>> > NOTE: Tasks Summary: Attempted 4871 tasks of which 4654 didn't need to
>>> > be rerun and 1 failed.
>>> >
>>> > Do you have a solution? Why is it happening?
>>> >
>>>
>>> see mdns recipe especially
>>>
>>> pkg_postinst_${PN} (), that function is not able to execute offline
>>> during build. It could be that nsswitch.conf does not exist in your
>>> image rootfs
>>>
>>> > thank u.
>>>
>>

--00000000000041f289059414cf56
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I investigated a little bit.<div dir=3D"auto">Probably, I=
 didn&#39;t understand your point.=C2=A0<br></div><div dir=3D"auto"><br></d=
iv><div dir=3D"auto">The postinst script modifies nsswitch adding mdns and =
this is right, but why is this interfering with the license create package?=
=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">If I remove the p=
ostinst I can build with license create package, however I need this change=
 to nsswitch.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Is it poss=
ibile to change the recipe of mdns to modify nsswitch without interfering w=
ith license create package in another xxxx() { }?=C2=A0</div><div dir=3D"au=
to"><br></div><div dir=3D"auto">Thanks=C2=A0</div><div dir=3D"auto"><br></d=
iv><div dir=3D"auto"><br></div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">Il gio 3 ott 2019, 14:24 Stefano Cappa &lt;<=
a href=3D"mailto:stefano.cappa.ks89@gmail.com" target=3D"_blank" rel=3D"nor=
eferrer">stefano.cappa.ks89@gmail.com</a>&gt; ha scritto:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex"><div dir=3D"auto">I resend this email because it&#39=
;s not visible in yocto mailing list.=C2=A0<div dir=3D"auto"><br></div><div=
 dir=3D"auto"><br></div><div dir=3D"auto"><br><div dir=3D"auto">Hi thank yo=
u for the answer.<div dir=3D"auto"><br></div><div dir=3D"auto">In my rootfs=
 I have this nsswitch.conf:</div><div dir=3D"auto">------------------------=
-------------------------------</div><div dir=3D"auto"># /etc/nsswitch.conf=
<br>#<br># Example configuration of GNU Name Service Switch functionality.<=
br># If you have the `glibc-doc&#39; and `info&#39; packages installed, try=
:<br># `info libc &quot;Name Service Switch&quot;&#39; for information abou=
t this file.<br><br>passwd: =C2=A0 =C2=A0 =C2=A0 =C2=A0 compat<br>group: =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0compat<br>shadow: =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 compat<br><br>hosts: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0files myhostn=
ame =C2=A0mdns dns<br>networks: =C2=A0 =C2=A0 =C2=A0 files<br><br>protocols=
: =C2=A0 =C2=A0 =C2=A0db files<br>services: =C2=A0 =C2=A0 =C2=A0 db files<b=
r>ethers: =C2=A0 =C2=A0 =C2=A0 =C2=A0 db files<br>rpc: =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0db files<br><br>netgroup: =C2=A0 =C2=A0 =C2=A0 nis<br>=
</div><div dir=3D"auto">---------------------------------------------------=
----<br></div><div dir=3D"auto"><br></div><div dir=3D"auto">I&#39;m not fam=
iliar with this file.</div><div dir=3D"auto">Also changing &quot;hosts: fil=
es myhostname =C2=A0mdns dns&quot; to &quot;hosts: files mdns4_minimal [NOT=
FOUND=3Dreturn] dns&quot; (copied from a raspberry pi 3) I&#39;m still havi=
ng the same=C2=A0problem.<br></div><div dir=3D"auto"><br></div><div dir=3D"=
auto">What should I change to fix this issue?</div><div dir=3D"auto"><br st=
yle=3D"font-family:sans-serif;font-size:12.8px"></div></div><div dir=3D"aut=
o"><br></div><div dir=3D"auto"><br></div></div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il mar 1 ott 2019, 11:29 Ste=
fano Cappa &lt;<a href=3D"mailto:stefano.cappa.ks89@gmail.com" rel=3D"noref=
errer noreferrer" target=3D"_blank">stefano.cappa.ks89@gmail.com</a>&gt; ha=
 scritto:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div dir=
=3D"auto">Hi thank you for the answer.<div dir=3D"auto"><br></div><div dir=
=3D"auto">In my rootfs I have this nsswitch.conf:</div><div dir=3D"auto">--=
-----------------------------------------------------</div><div dir=3D"auto=
"># /etc/nsswitch.conf<br>#<br># Example configuration of GNU Name Service =
Switch functionality.<br># If you have the `glibc-doc&#39; and `info&#39; p=
ackages installed, try:<br># `info libc &quot;Name Service Switch&quot;&#39=
; for information about this file.<br><br>passwd: =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 compat<br>group: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0compat<br>shadow: =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 compat<br><br>hosts: =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0files myhostname =C2=A0mdns dns<br>networks: =C2=A0 =C2=A0 =C2=A0=
 files<br><br>protocols: =C2=A0 =C2=A0 =C2=A0db files<br>services: =C2=A0 =
=C2=A0 =C2=A0 db files<br>ethers: =C2=A0 =C2=A0 =C2=A0 =C2=A0 db files<br>r=
pc: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0db files<br><br>netgroup: =C2=
=A0 =C2=A0 =C2=A0 nis<br></div><div dir=3D"auto">--------------------------=
-----------------------------<br></div><div dir=3D"auto"><br></div><div dir=
=3D"auto">I&#39;m not familiar with this file.</div><div dir=3D"auto">Also =
changing &quot;hosts: files myhostname =C2=A0mdns dns&quot; to &quot;hosts:=
 files mdns4_minimal [NOTFOUND=3Dreturn] dns&quot; (copied from a raspberry=
 pi 3) I&#39;m still having the same=C2=A0problem.<br></div><div dir=3D"aut=
o"><br></div><div dir=3D"auto">What should I change to fix this issue?</div=
><div dir=3D"auto"><br></div><div></div></div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il lun 30 set 2019, 22:45 Khe=
m Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" rel=3D"noreferrer noreferre=
r noreferrer" target=3D"_blank">raj.khem@gmail.com</a>&gt; ha scritto:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
<br>
On 9/30/19 8:17 AM, Stefano Cappa wrote:<br>
&gt; I saw your last patch to upgrade mdns, so I&#39;m sending this email a=
lso to<br>
&gt; you to try to get help.<br>
&gt; <br>
&gt; mdns is working correctly, however, when I try to build my image with<=
br>
&gt; &quot;LICENSE_CREATE_PACKAGE =3D &quot;1&quot;&quot; in my local.conf =
as described<br>
&gt; here=C2=A0<a href=3D"https://www.yoctoproject.org/docs/2.8/dev-manual/=
dev-manual.html#providing-license-text" rel=3D"noreferrer noreferrer norefe=
rrer noreferrer noreferrer" target=3D"_blank">https://www.yoctoproject.org/=
docs/2.8/dev-manual/dev-manual.html#providing-license-text</a>=C2=A0I<br>
&gt; get this error=C2=A0message:<br>
&gt; <br>
&gt; ERROR: mydevice-image-1.0-r0 do_rootfs: Postinstall scriptlets of<br>
&gt; [&#39;mdns&#39;] have failed. If the intention is to defer them to fir=
st boot,<br>
&gt; then please place them into pkg_postinst_ontarget_${PN} ().<br>
&gt; Deferring to first boot via &#39;exit 1&#39; is no longer supported.<b=
r>
&gt; Details of the failure are in<br>
&gt; /home/user/git/poky/build/tmp/work/mydevice1-image-poky-linux-gnueabi/=
mydevice-image/1.0-r0/temp/log.do_rootfs.<br>
&gt; ERROR: mydevice-image-1.0-r0 do_rootfs: Function failed: do_rootfs<br>
&gt; ERROR: Logfile of failure stored in:<br>
&gt; /home/user/git/poky/build/tmp/work/mydevice1-poky-linux-gnueabi/mydevi=
ce-image/1.0-r0/temp/log.do_rootfs.14586<br>
&gt; ERROR: Task (MY CUSTOM LAYER<br>
&gt; PATH/recipes-core/images/mydevice-image.bb:do_rootfs) failed with exit=
<br>
&gt; code &#39;1&#39;<br>
&gt; NOTE: Tasks Summary: Attempted 4871 tasks of which 4654 didn&#39;t nee=
d to<br>
&gt; be rerun and 1 failed.<br>
&gt; <br>
&gt; Do you have a solution? Why is it happening?=C2=A0<br>
&gt; <br>
<br>
see mdns recipe especially<br>
<br>
pkg_postinst_${PN} (), that function is not able to execute offline<br>
during build. It could be that nsswitch.conf does not exist in your<br>
image rootfs<br>
<br>
&gt; thank u.<br>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--00000000000041f289059414cf56--

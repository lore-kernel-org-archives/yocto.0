Return-Path: <stefano.cappa.ks89@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C532E00C5C; Fri,  4 Oct 2019 08:04:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.193 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (stefano.cappa.ks89[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vk1-f193.google.com (mail-vk1-f193.google.com
	[209.85.221.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 372EBE0049C
	for <yocto@yoctoproject.org>; Fri,  4 Oct 2019 08:04:13 -0700 (PDT)
Received: by mail-vk1-f193.google.com with SMTP id j21so1523982vki.11
	for <yocto@yoctoproject.org>; Fri, 04 Oct 2019 08:04:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=xU5Z/9LVC4rCEXbVNciEwwUrIXRHpqI+l4MmwQ6wMbs=;
	b=OQqnW/VvaP9qLRyeHXMSiPPYfig7pIdP16I6h81EQ5ri5NfFan6dp6UvlI1yhMZD+I
	c334wRWQcofEa4mPbypnMXmQpbHcByiVEZuv0gj63BGcJLnbL1poArYdO3xMinmTQjBL
	DWn1cM7SjXkDKrXTouLTuhxXt0+zPol4ZpClAzFDbT9PAhWhvb8rOBDhh8lDjl4IqgnY
	3ioVc+mdsa5APdoayTNXIGpBmzSEdjamE7koOZQQMcVjLxU4iDYYFzUGKsHJrv9adzF8
	z/7FwjwSV8v+hbawg8DP0drKRK2dal0dGScvPKmXGH2Mjh1BOzJWdz9eAk5Crz3YfeDC
	l2+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=xU5Z/9LVC4rCEXbVNciEwwUrIXRHpqI+l4MmwQ6wMbs=;
	b=UPoFyaKjhP32UhwkFw6zZj/4UqX7t4kk2EEVlZgLxMh8Srs/dVh97xonAS6j7jGFF4
	ZxeWpGm+aZ7AmUM8xR7jXVqyqFG5LcqxK7dXyVSKRIkyBJ6QXOKG1vDBNysh5nkthf9q
	DpbH8UaSwk/AvrGn+FLpm7E6NZfHWVE7QnSlvK5kwTjJ+DdL9dU31WhQYi6zrPqcOvlW
	MHxePywwW41/A5kNlt65amrIZRiHdGbySwq4jxOKiEmA0VZhZIQyhUzNxsh4EVMSO7az
	swv5wflTTCIuUc/Sjkg7LSvAouqfhK6KZ4ddeJHqfqX9JUc/kXlku7Jd15FxOEeSsHmi
	dJNw==
X-Gm-Message-State: APjAAAXGbdN+Fxp0XBE67gWsbUygA9WMoPqaYD+Bvi8WKOCzvILo2Jxv
	rQzRNbkETa6hRpwZV0p2mtLSIxcC1f1xAI6lFBrQBd/0Mnw=
X-Google-Smtp-Source: APXvYqwVQpL6LO2OtQhjL7UsCLaTviId16jVGzUzuK0LspTKaSx17eQw/HBFo0VwEjNi/XMdM5bT87szc9bVB/XbVOQ=
X-Received: by 2002:a1f:dc41:: with SMTP id t62mr8175759vkg.5.1570201452007;
	Fri, 04 Oct 2019 08:04:12 -0700 (PDT)
MIME-Version: 1.0
References: <CAKRytNy3XoG8H1R4uZqGFC3Az5WGsE5+zYKRgUepgjBDYxvgXw@mail.gmail.com>
	<35712e36-d517-2665-fd80-50f4b089b16b@gmail.com>
	<CAKRytNxGZ02wOuydLdS_pE0MtDRtQi=DSuSsaK0WTtfOqToukw@mail.gmail.com>
	<CAKRytNy7w-5N8fAz9N-fF3iggMvW0KgXUS5Dm1XA9NBD7ewePw@mail.gmail.com>
	<CAKRytNyoOGmoGB9tT5uFB6uJZTb0NS9zM6DfQ3r2ennRsRJqmA@mail.gmail.com>
In-Reply-To: <CAKRytNyoOGmoGB9tT5uFB6uJZTb0NS9zM6DfQ3r2ennRsRJqmA@mail.gmail.com>
From: Stefano Cappa <stefano.cappa.ks89@gmail.com>
Date: Fri, 4 Oct 2019 17:04:00 +0200
Message-ID: <CAKRytNw20PnVr8iNesH4FxPMxVBK-7S4Dfb1Tmpjm6EvWSAr4w@mail.gmail.com>
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
X-List-Received-Date: Fri, 04 Oct 2019 15:04:15 -0000
Content-Type: multipart/alternative; boundary="000000000000c5d5c70594170307"

--000000000000c5d5c70594170307
Content-Type: text/plain; charset="UTF-8"

I fixed this issue in this way:

I modified the recipe replacing this:
------------------------------
pkg_postinst_${PN} () {
    sed -e '/^hosts:/s/\s*\<mdns\>//' \
        -e 's/\(^hosts:.*\)\(\<files\>\)\(.*\)\(\<dns\>\)\(.*\)/\1\2
mdns\3\4\5/' \
        -i $D/etc/nsswitch.conf
}

pkg_prerm_${PN} () {
    sed -e '/^hosts:/s/\s*\<mdns\>//' \
        -e '/^hosts:/s/\s*mdns//' \
        -i $D/etc/nsswitch.conf
}------------------------------

with this:
------------------------------
pkg_postinst_ontarget_${PN} () {
    sed -e '/^hosts:/s/\s*\<mdns\>//' \
        -e 's/\(^hosts:.*\)\(\<files\>\)\(.*\)\(\<dns\>\)\(.*\)/\1\2\3mdns
\4\5/' \
        -i $D/etc/nsswitch.conf
}

pkg_prerm_ontarget_${PN} () {
    sed -e '/^hosts:/s/\s*\<mdns\>//' \
        -e '/^hosts:/s/\s*mdns//' \
        -i $D/etc/nsswitch.conf
}
------------------------------


Basically, I added _ontarget_ as suggested by yocto error that says: "...
If the intention is to defer them to first boot,
> then please place them into pkg_postinst_ontarget_${PN} ()....".

In this way I can build the final image with LICENSE_CREATE_PACKAGE=1. Why?
I don't know. I didn't understand why there was this error.

However, the final result on the device when my os is running is different,
because my nsswitch.conf changes from "hosts:  files myhostname  mdns dns"
to "hosts:  files mdns myhostname  dns". Why? I don't know, however I
changed the regex in sed from "\1\2 mdns\3\4\5" to "\1\2\3mdns \4\5" to
restore the original result.

Why is it happening? Honestly, I don't know the reason. My solution worked,
but since I don't know why, I want to ask to someone more expert about
nsswitch.conf and in particular about pkg_prerm_ and pkg_postinst_ because
I really don't understand why I cannot change nsswitch without those and
why without LICENSE_CREATE_PACKAGE they are working also without adding
ontarget_, but with LICENSE_CREATE_PACKAGE = 1 the ontarget_ is required.

Please, can someone help about this? Or at least add in CC someone with
more experience about these topics.

Thank you.


Il giorno ven 4 ott 2019 alle ore 14:26 Stefano Cappa <
stefano.cappa.ks89@gmail.com> ha scritto:

> I investigated a little bit.
> Probably, I didn't understand your point.
>
> The postinst script modifies nsswitch adding mdns and this is right, but
> why is this interfering with the license create package?
>
> If I remove the postinst I can build with license create package, however
> I need this change to nsswitch.
>
> Is it possibile to change the recipe of mdns to modify nsswitch without
> interfering with license create package in another xxxx() { }?
>
> Thanks
>
>
>
> Il gio 3 ott 2019, 14:24 Stefano Cappa <stefano.cappa.ks89@gmail.com> ha
> scritto:
>
>> I resend this email because it's not visible in yocto mailing list.
>>
>>
>>
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
>>
>>
>> Il mar 1 ott 2019, 11:29 Stefano Cappa <stefano.cappa.ks89@gmail.com> ha
>> scritto:
>>
>>> Hi thank you for the answer.
>>>
>>> In my rootfs I have this nsswitch.conf:
>>> -------------------------------------------------------
>>> # /etc/nsswitch.conf
>>> #
>>> # Example configuration of GNU Name Service Switch functionality.
>>> # If you have the `glibc-doc' and `info' packages installed, try:
>>> # `info libc "Name Service Switch"' for information about this file.
>>>
>>> passwd:         compat
>>> group:          compat
>>> shadow:         compat
>>>
>>> hosts:          files myhostname  mdns dns
>>> networks:       files
>>>
>>> protocols:      db files
>>> services:       db files
>>> ethers:         db files
>>> rpc:            db files
>>>
>>> netgroup:       nis
>>> -------------------------------------------------------
>>>
>>> I'm not familiar with this file.
>>> Also changing "hosts: files myhostname  mdns dns" to "hosts: files
>>> mdns4_minimal [NOTFOUND=return] dns" (copied from a raspberry pi 3) I'm
>>> still having the same problem.
>>>
>>> What should I change to fix this issue?
>>>
>>>
>>> Il lun 30 set 2019, 22:45 Khem Raj <raj.khem@gmail.com> ha scritto:
>>>
>>>>
>>>>
>>>> On 9/30/19 8:17 AM, Stefano Cappa wrote:
>>>> > I saw your last patch to upgrade mdns, so I'm sending this email also
>>>> to
>>>> > you to try to get help.
>>>> >
>>>> > mdns is working correctly, however, when I try to build my image with
>>>> > "LICENSE_CREATE_PACKAGE = "1"" in my local.conf as described
>>>> > here
>>>> https://www.yoctoproject.org/docs/2.8/dev-manual/dev-manual.html#providing-license-text
>>>>  I
>>>> > get this error message:
>>>> >
>>>> > ERROR: mydevice-image-1.0-r0 do_rootfs: Postinstall scriptlets of
>>>> > ['mdns'] have failed. If the intention is to defer them to first boot,
>>>> > then please place them into pkg_postinst_ontarget_${PN} ().
>>>> > Deferring to first boot via 'exit 1' is no longer supported.
>>>> > Details of the failure are in
>>>> >
>>>> /home/user/git/poky/build/tmp/work/mydevice1-image-poky-linux-gnueabi/mydevice-image/1.0-r0/temp/log.do_rootfs.
>>>> > ERROR: mydevice-image-1.0-r0 do_rootfs: Function failed: do_rootfs
>>>> > ERROR: Logfile of failure stored in:
>>>> >
>>>> /home/user/git/poky/build/tmp/work/mydevice1-poky-linux-gnueabi/mydevice-image/1.0-r0/temp/log.do_rootfs.14586
>>>> > ERROR: Task (MY CUSTOM LAYER
>>>> > PATH/recipes-core/images/mydevice-image.bb:do_rootfs) failed with
>>>> exit
>>>> > code '1'
>>>> > NOTE: Tasks Summary: Attempted 4871 tasks of which 4654 didn't need to
>>>> > be rerun and 1 failed.
>>>> >
>>>> > Do you have a solution? Why is it happening?
>>>> >
>>>>
>>>> see mdns recipe especially
>>>>
>>>> pkg_postinst_${PN} (), that function is not able to execute offline
>>>> during build. It could be that nsswitch.conf does not exist in your
>>>> image rootfs
>>>>
>>>> > thank u.
>>>>
>>>

--000000000000c5d5c70594170307
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">I fixed this issue in this way:<div><br><=
/div><div>I modified the recipe replacing this:</div><div>-----------------=
-------------<br></div>pkg_postinst_${PN} () {<br>=C2=A0 =C2=A0 sed -e &#39=
;/^hosts:/s/\s*\&lt;mdns\&gt;//&#39; \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 -e &#=
39;s/\(^hosts:.*\)\(\&lt;files\&gt;\)\(.*\)\(\&lt;dns\&gt;\)\(.*\)/\1\2 mdn=
s\3\4\5/&#39; \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 -i $D/etc/nsswitch.conf<br>}=
<br><br>pkg_prerm_${PN} () {<br>=C2=A0 =C2=A0 sed -e &#39;/^hosts:/s/\s*\&l=
t;mdns\&gt;//&#39; \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 -e &#39;/^hosts:/s/\s*m=
dns//&#39; \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 -i $D/etc/nsswitch.conf<br><div=
>}------------------------------<br></div><div><br></div><div>with this:</d=
iv><div>------------------------------</div><div>pkg_postinst_ontarget_${PN=
} () {</div>=C2=A0 =C2=A0 sed -e &#39;/^hosts:/s/\s*\&lt;mdns\&gt;//&#39; \=
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 -e &#39;s/\(^hosts:.*\)\(\&lt;files\&gt;\)\=
(.*\)\(\&lt;dns\&gt;\)\(.*\)/\1\2\3mdns \4\5/&#39; \<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 -i $D/etc/nsswitch.conf<br>}<br><br>pkg_prerm_ontarget_${PN} () =
{<br>=C2=A0 =C2=A0 sed -e &#39;/^hosts:/s/\s*\&lt;mdns\&gt;//&#39; \<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 -e &#39;/^hosts:/s/\s*mdns//&#39; \<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 -i $D/etc/nsswitch.conf<br>}<br><div>--------------------=
----------</div><div><br></div><div><br></div><div>Basically, I added=C2=A0=
_ontarget_ as suggested by yocto error that says: &quot;... If the intentio=
n is to defer them to first boot,</div><div>&gt; then please place them int=
o pkg_postinst_ontarget_${PN} ()....&quot;.</div><div><br></div><div>In thi=
s way I can build the final image with LICENSE_CREATE_PACKAGE=3D1. Why? I d=
on&#39;t know. I didn&#39;t understand why there was this error.<br></div><=
div><br></div><div>However, the final result on the device when my os is ru=
nning is different, because my nsswitch.conf changes from &quot;hosts:=C2=
=A0 files myhostname=C2=A0 mdns dns&quot; to &quot;hosts:=C2=A0 files mdns =
myhostname=C2=A0 dns&quot;. Why? I don&#39;t know, however I changed the re=
gex in sed from &quot;\1\2 mdns\3\4\5&quot; to &quot;\1\2\3mdns \4\5&quot; =
to restore the original result.</div><div><br></div><div>Why is it happenin=
g? Honestly, I don&#39;t know the reason. My solution worked, but since I d=
on&#39;t know why, I want to ask to someone more expert about nsswitch.conf=
 and in particular about=C2=A0pkg_prerm_ and=C2=A0pkg_postinst_ because I r=
eally don&#39;t understand why I cannot change nsswitch without those and w=
hy without=C2=A0LICENSE_CREATE_PACKAGE they are working also without adding=
 ontarget_, but with=C2=A0LICENSE_CREATE_PACKAGE =3D 1 the=C2=A0ontarget_ i=
s required.</div><div><br></div><div>Please, can someone help about this? O=
r at least add in CC someone with more experience about these topics.</div>=
<div><br></div><div>Thank you.</div><div><br></div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il giorno ven 4 ott 2019=
 alle ore 14:26 Stefano Cappa &lt;<a href=3D"mailto:stefano.cappa.ks89@gmai=
l.com">stefano.cappa.ks89@gmail.com</a>&gt; ha scritto:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">I investigated a =
little bit.<div dir=3D"auto">Probably, I didn&#39;t understand your point.=
=C2=A0<br></div><div dir=3D"auto"><br></div><div dir=3D"auto">The postinst =
script modifies nsswitch adding mdns and this is right, but why is this int=
erfering with the license create package?=C2=A0</div><div dir=3D"auto"><br>=
</div><div dir=3D"auto">If I remove the postinst I can build with license c=
reate package, however I need this change to nsswitch.</div><div dir=3D"aut=
o"><br></div><div dir=3D"auto">Is it possibile to change the recipe of mdns=
 to modify nsswitch without interfering with license create package in anot=
her xxxx() { }?=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">Th=
anks=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto"><br></div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il =
gio 3 ott 2019, 14:24 Stefano Cappa &lt;<a href=3D"mailto:stefano.cappa.ks8=
9@gmail.com" rel=3D"noreferrer" target=3D"_blank">stefano.cappa.ks89@gmail.=
com</a>&gt; ha scritto:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div dir=3D"auto">I resend this email because it&#39;s not visible =
in yocto mailing list.=C2=A0<div dir=3D"auto"><br></div><div dir=3D"auto"><=
br></div><div dir=3D"auto"><br><div dir=3D"auto">Hi thank you for the answe=
r.<div dir=3D"auto"><br></div><div dir=3D"auto">In my rootfs I have this ns=
switch.conf:</div><div dir=3D"auto">---------------------------------------=
----------------</div><div dir=3D"auto"># /etc/nsswitch.conf<br>#<br># Exam=
ple configuration of GNU Name Service Switch functionality.<br># If you hav=
e the `glibc-doc&#39; and `info&#39; packages installed, try:<br># `info li=
bc &quot;Name Service Switch&quot;&#39; for information about this file.<br=
><br>passwd: =C2=A0 =C2=A0 =C2=A0 =C2=A0 compat<br>group: =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0compat<br>shadow: =C2=A0 =C2=A0 =C2=A0 =C2=A0 compat<br><b=
r>hosts: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0files myhostname =C2=A0mdns dns<=
br>networks: =C2=A0 =C2=A0 =C2=A0 files<br><br>protocols: =C2=A0 =C2=A0 =C2=
=A0db files<br>services: =C2=A0 =C2=A0 =C2=A0 db files<br>ethers: =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 db files<br>rpc: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0db files<br><br>netgroup: =C2=A0 =C2=A0 =C2=A0 nis<br></div><div dir=
=3D"auto">-------------------------------------------------------<br></div>=
<div dir=3D"auto"><br></div><div dir=3D"auto">I&#39;m not familiar with thi=
s file.</div><div dir=3D"auto">Also changing &quot;hosts: files myhostname =
=C2=A0mdns dns&quot; to &quot;hosts: files mdns4_minimal [NOTFOUND=3Dreturn=
] dns&quot; (copied from a raspberry pi 3) I&#39;m still having the same=C2=
=A0problem.<br></div><div dir=3D"auto"><br></div><div dir=3D"auto">What sho=
uld I change to fix this issue?</div><div dir=3D"auto"><br style=3D"font-fa=
mily:sans-serif;font-size:12.8px"></div></div><div dir=3D"auto"><br></div><=
div dir=3D"auto"><br></div></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">Il mar 1 ott 2019, 11:29 Stefano Cappa &lt=
;<a href=3D"mailto:stefano.cappa.ks89@gmail.com" rel=3D"noreferrer noreferr=
er" target=3D"_blank">stefano.cappa.ks89@gmail.com</a>&gt; ha scritto:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><di=
v dir=3D"auto">Hi thank you for the answer.<div dir=3D"auto"><br></div><div=
 dir=3D"auto">In my rootfs I have this nsswitch.conf:</div><div dir=3D"auto=
">-------------------------------------------------------</div><div dir=3D"=
auto"># /etc/nsswitch.conf<br>#<br># Example configuration of GNU Name Serv=
ice Switch functionality.<br># If you have the `glibc-doc&#39; and `info&#3=
9; packages installed, try:<br># `info libc &quot;Name Service Switch&quot;=
&#39; for information about this file.<br><br>passwd: =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 compat<br>group: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0compat<br>shadow:=
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
</blockquote></div></div>

--000000000000c5d5c70594170307--

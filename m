Return-Path: <stefano.cappa.ks89@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89683E00D47; Fri,  4 Oct 2019 08:17:39 -0700 (PDT)
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
	*      [209.85.217.44 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (stefano.cappa.ks89[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com
	[209.85.217.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5C9FE00C5C
	for <yocto@yoctoproject.org>; Fri,  4 Oct 2019 08:17:37 -0700 (PDT)
Received: by mail-vs1-f44.google.com with SMTP id w195so4329140vsw.11
	for <yocto@yoctoproject.org>; Fri, 04 Oct 2019 08:17:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=kxT6mloWyBCen4JExu21JnibV4+PdvPBm3cRw+76gqw=;
	b=cNW0CvOncff4AQGUr0wZX6Dk71G1hYlhhm3cy36ESfeXgrsL/2a4CVQ+TZyyv2muQM
	6dxtK57mitxr490KCw72fE6063TwQoy848Y6YEXEh/hvrVjcWBFP8/c5DwXQeLwwRrkZ
	sOwKIF7htJJcMyFEn5KCaQPRHxCQex+/bpzEcUVKjY0ntluYv9Vy6GStASC10XZIXY1q
	zQdEI9zek7AtwaJznXbxYdvPsJI1b1VtzdE+Eh39e2P14MyZjYqMRQe7AVva5TQUMm9X
	3XRPQD2dCocWS+DIJAnLYzqDpBz4nVWFSvWuxpz4cZptGAxbXViujqUEj2k5fFoRd9Z1
	tG9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=kxT6mloWyBCen4JExu21JnibV4+PdvPBm3cRw+76gqw=;
	b=njOxDp8tDwIRUbov641JaLlbgu8EpKDHAbvO/ntxyBQhY57YokHG8Rodsn2yOXRL6r
	op0T2bQkihTT07wKtlT2w6fI+b14vEdnhrabfINTJYz83TESJQmvRRFVzY3eqjC0aKVR
	ey37csZxdFTvqT7qs62yEaXci+poSlUugp9FiDdrHfCKzArmlVRveQQeTb00PuR4Fokq
	uJFfZSg3JveH776rgH2/a/eajLlYsKZ97tVOw9rugzElqqF2wUywxsmjVW7BF33SuZTw
	CWrNQ3CYjOQxsHuNICFXzfYD2u5v89+pr85Rnjv9dccUqTk8fr5wzMqjurhtC3vfMQsS
	gHjw==
X-Gm-Message-State: APjAAAUMBv5t4jXTiEP4WDJQvcryXjwfS+Vwsee9dzO8moAFKhfpEUwi
	+J6wbA2nFN2YyYtgWbyr1+OhDWrPHfl9c5nrwF4/teZuTxM=
X-Google-Smtp-Source: APXvYqwM7+bqfDXkR2XCiYtn1k3KK1ewbxs7cwW71OOyPRg40TVgx9HhSXFkf4ABBfoSdwONdmAbvJ6PrWc6D6WDvMU=
X-Received: by 2002:a67:bc15:: with SMTP id t21mr8109764vsn.90.1570202256501; 
	Fri, 04 Oct 2019 08:17:36 -0700 (PDT)
MIME-Version: 1.0
References: <CAKRytNy3XoG8H1R4uZqGFC3Az5WGsE5+zYKRgUepgjBDYxvgXw@mail.gmail.com>
	<35712e36-d517-2665-fd80-50f4b089b16b@gmail.com>
	<CAKRytNxGZ02wOuydLdS_pE0MtDRtQi=DSuSsaK0WTtfOqToukw@mail.gmail.com>
	<CAKRytNy7w-5N8fAz9N-fF3iggMvW0KgXUS5Dm1XA9NBD7ewePw@mail.gmail.com>
	<CAKRytNyoOGmoGB9tT5uFB6uJZTb0NS9zM6DfQ3r2ennRsRJqmA@mail.gmail.com>
	<CAKRytNw20PnVr8iNesH4FxPMxVBK-7S4Dfb1Tmpjm6EvWSAr4w@mail.gmail.com>
In-Reply-To: <CAKRytNw20PnVr8iNesH4FxPMxVBK-7S4Dfb1Tmpjm6EvWSAr4w@mail.gmail.com>
From: Stefano Cappa <stefano.cappa.ks89@gmail.com>
Date: Fri, 4 Oct 2019 17:17:25 +0200
Message-ID: <CAKRytNw4-7j0jX1QidCEgcYhAPh1FTFmm4curuSrMdf8LGDQ+g@mail.gmail.com>
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
X-List-Received-Date: Fri, 04 Oct 2019 15:17:39 -0000
Content-Type: multipart/alternative; boundary="000000000000b97094059417335c"

--000000000000b97094059417335c
Content-Type: text/plain; charset="UTF-8"

Oh, another update to integrate the previous email.

Inside the source code of mDNSResponder (
https://opensource.apple.com/tarballs/mDNSResponder/mDNSResponder-878.260.1.tar.gz)
I found in "mDNSPosix/Makefile" this:

"
# Check the nsswitch.conf file.
# If 'mdns' does not already appear on the "hosts:" line, then add it right
before 'dns'
cp -f /etc/nsswitch.conf /etc/nsswitch.conf.pre-mdns
sed -e '/mdns/!s/^\(hosts:.*\)dns\(.*\)/\1mdns dns\2/'
/etc/nsswitch.conf.pre-mdns > /etc/nsswitch.conf
"

Probably, It's better to use this "sed -e
'/mdns/!s/^\(hosts:.*\)dns\(.*\)/\1mdns dns\2/' /etc/nsswitch.conf.pre-mdns
> /etc/nsswitch.conf" instead of the existing one.

What do you think?


Il giorno ven 4 ott 2019 alle ore 17:04 Stefano Cappa <
stefano.cappa.ks89@gmail.com> ha scritto:

> I fixed this issue in this way:
>
> I modified the recipe replacing this:
> ------------------------------
> pkg_postinst_${PN} () {
>     sed -e '/^hosts:/s/\s*\<mdns\>//' \
>         -e 's/\(^hosts:.*\)\(\<files\>\)\(.*\)\(\<dns\>\)\(.*\)/\1\2
> mdns\3\4\5/' \
>         -i $D/etc/nsswitch.conf
> }
>
> pkg_prerm_${PN} () {
>     sed -e '/^hosts:/s/\s*\<mdns\>//' \
>         -e '/^hosts:/s/\s*mdns//' \
>         -i $D/etc/nsswitch.conf
> }------------------------------
>
> with this:
> ------------------------------
> pkg_postinst_ontarget_${PN} () {
>     sed -e '/^hosts:/s/\s*\<mdns\>//' \
>         -e 's/\(^hosts:.*\)\(\<files\>\)\(.*\)\(\<dns\>\)\(.*\)/\1\2\3mdns
> \4\5/' \
>         -i $D/etc/nsswitch.conf
> }
>
> pkg_prerm_ontarget_${PN} () {
>     sed -e '/^hosts:/s/\s*\<mdns\>//' \
>         -e '/^hosts:/s/\s*mdns//' \
>         -i $D/etc/nsswitch.conf
> }
> ------------------------------
>
>
> Basically, I added _ontarget_ as suggested by yocto error that says: "...
> If the intention is to defer them to first boot,
> > then please place them into pkg_postinst_ontarget_${PN} ()....".
>
> In this way I can build the final image with LICENSE_CREATE_PACKAGE=1.
> Why? I don't know. I didn't understand why there was this error.
>
> However, the final result on the device when my os is running is
> different, because my nsswitch.conf changes from "hosts:  files myhostname
> mdns dns" to "hosts:  files mdns myhostname  dns". Why? I don't know,
> however I changed the regex in sed from "\1\2 mdns\3\4\5" to "\1\2\3mdns
> \4\5" to restore the original result.
>
> Why is it happening? Honestly, I don't know the reason. My solution
> worked, but since I don't know why, I want to ask to someone more expert
> about nsswitch.conf and in particular about pkg_prerm_ and pkg_postinst_
> because I really don't understand why I cannot change nsswitch without
> those and why without LICENSE_CREATE_PACKAGE they are working also without
> adding ontarget_, but with LICENSE_CREATE_PACKAGE = 1 the ontarget_ is
> required.
>
> Please, can someone help about this? Or at least add in CC someone with
> more experience about these topics.
>
> Thank you.
>
>
> Il giorno ven 4 ott 2019 alle ore 14:26 Stefano Cappa <
> stefano.cappa.ks89@gmail.com> ha scritto:
>
>> I investigated a little bit.
>> Probably, I didn't understand your point.
>>
>> The postinst script modifies nsswitch adding mdns and this is right, but
>> why is this interfering with the license create package?
>>
>> If I remove the postinst I can build with license create package, however
>> I need this change to nsswitch.
>>
>> Is it possibile to change the recipe of mdns to modify nsswitch without
>> interfering with license create package in another xxxx() { }?
>>
>> Thanks
>>
>>
>>
>> Il gio 3 ott 2019, 14:24 Stefano Cappa <stefano.cappa.ks89@gmail.com> ha
>> scritto:
>>
>>> I resend this email because it's not visible in yocto mailing list.
>>>
>>>
>>>
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
>>>
>>>
>>> Il mar 1 ott 2019, 11:29 Stefano Cappa <stefano.cappa.ks89@gmail.com>
>>> ha scritto:
>>>
>>>> Hi thank you for the answer.
>>>>
>>>> In my rootfs I have this nsswitch.conf:
>>>> -------------------------------------------------------
>>>> # /etc/nsswitch.conf
>>>> #
>>>> # Example configuration of GNU Name Service Switch functionality.
>>>> # If you have the `glibc-doc' and `info' packages installed, try:
>>>> # `info libc "Name Service Switch"' for information about this file.
>>>>
>>>> passwd:         compat
>>>> group:          compat
>>>> shadow:         compat
>>>>
>>>> hosts:          files myhostname  mdns dns
>>>> networks:       files
>>>>
>>>> protocols:      db files
>>>> services:       db files
>>>> ethers:         db files
>>>> rpc:            db files
>>>>
>>>> netgroup:       nis
>>>> -------------------------------------------------------
>>>>
>>>> I'm not familiar with this file.
>>>> Also changing "hosts: files myhostname  mdns dns" to "hosts: files
>>>> mdns4_minimal [NOTFOUND=return] dns" (copied from a raspberry pi 3) I'm
>>>> still having the same problem.
>>>>
>>>> What should I change to fix this issue?
>>>>
>>>>
>>>> Il lun 30 set 2019, 22:45 Khem Raj <raj.khem@gmail.com> ha scritto:
>>>>
>>>>>
>>>>>
>>>>> On 9/30/19 8:17 AM, Stefano Cappa wrote:
>>>>> > I saw your last patch to upgrade mdns, so I'm sending this email
>>>>> also to
>>>>> > you to try to get help.
>>>>> >
>>>>> > mdns is working correctly, however, when I try to build my image with
>>>>> > "LICENSE_CREATE_PACKAGE = "1"" in my local.conf as described
>>>>> > here
>>>>> https://www.yoctoproject.org/docs/2.8/dev-manual/dev-manual.html#providing-license-text
>>>>>  I
>>>>> > get this error message:
>>>>> >
>>>>> > ERROR: mydevice-image-1.0-r0 do_rootfs: Postinstall scriptlets of
>>>>> > ['mdns'] have failed. If the intention is to defer them to first
>>>>> boot,
>>>>> > then please place them into pkg_postinst_ontarget_${PN} ().
>>>>> > Deferring to first boot via 'exit 1' is no longer supported.
>>>>> > Details of the failure are in
>>>>> >
>>>>> /home/user/git/poky/build/tmp/work/mydevice1-image-poky-linux-gnueabi/mydevice-image/1.0-r0/temp/log.do_rootfs.
>>>>> > ERROR: mydevice-image-1.0-r0 do_rootfs: Function failed: do_rootfs
>>>>> > ERROR: Logfile of failure stored in:
>>>>> >
>>>>> /home/user/git/poky/build/tmp/work/mydevice1-poky-linux-gnueabi/mydevice-image/1.0-r0/temp/log.do_rootfs.14586
>>>>> > ERROR: Task (MY CUSTOM LAYER
>>>>> > PATH/recipes-core/images/mydevice-image.bb:do_rootfs) failed with
>>>>> exit
>>>>> > code '1'
>>>>> > NOTE: Tasks Summary: Attempted 4871 tasks of which 4654 didn't need
>>>>> to
>>>>> > be rerun and 1 failed.
>>>>> >
>>>>> > Do you have a solution? Why is it happening?
>>>>> >
>>>>>
>>>>> see mdns recipe especially
>>>>>
>>>>> pkg_postinst_${PN} (), that function is not able to execute offline
>>>>> during build. It could be that nsswitch.conf does not exist in your
>>>>> image rootfs
>>>>>
>>>>> > thank u.
>>>>>
>>>>

--000000000000b97094059417335c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Oh, another update to integrate the previous email.<div><b=
r></div><div>Inside the source code of mDNSResponder (<a href=3D"https://op=
ensource.apple.com/tarballs/mDNSResponder/mDNSResponder-878.260.1.tar.gz">h=
ttps://opensource.apple.com/tarballs/mDNSResponder/mDNSResponder-878.260.1.=
tar.gz</a>) I found in &quot;mDNSPosix/Makefile&quot;=C2=A0this:<div><br></=
div><div>&quot;</div><div>	# Check the nsswitch.conf file.<br>	# If &#39;md=
ns&#39; does not already appear on the &quot;hosts:&quot; line, then add it=
 right before &#39;dns&#39;<br>	cp -f /etc/nsswitch.conf /etc/nsswitch.conf=
.pre-mdns<br>	sed -e &#39;/mdns/!s/^\(hosts:.*\)dns\(.*\)/\1mdns dns\2/&#39=
; /etc/nsswitch.conf.pre-mdns &gt; /etc/nsswitch.conf<br></div><div>&quot;<=
/div><div><br></div><div>Probably, It&#39;s better to use this &quot;sed -e=
 &#39;/mdns/!s/^\(hosts:.*\)dns\(.*\)/\1mdns dns\2/&#39; /etc/nsswitch.conf=
.pre-mdns &gt; /etc/nsswitch.conf&quot; instead of the existing one.</div><=
div><br></div><div>What do=C2=A0you think?</div><div><br></div></div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il gio=
rno ven 4 ott 2019 alle ore 17:04 Stefano Cappa &lt;<a href=3D"mailto:stefa=
no.cappa.ks89@gmail.com">stefano.cappa.ks89@gmail.com</a>&gt; ha scritto:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=
<div dir=3D"ltr">I fixed this issue in this way:<div><br></div><div>I modif=
ied the recipe replacing this:</div><div>------------------------------<br>=
</div>pkg_postinst_${PN} () {<br>=C2=A0 =C2=A0 sed -e &#39;/^hosts:/s/\s*\&=
lt;mdns\&gt;//&#39; \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 -e &#39;s/\(^hosts:.*\=
)\(\&lt;files\&gt;\)\(.*\)\(\&lt;dns\&gt;\)\(.*\)/\1\2 mdns\3\4\5/&#39; \<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 -i $D/etc/nsswitch.conf<br>}<br><br>pkg_prerm=
_${PN} () {<br>=C2=A0 =C2=A0 sed -e &#39;/^hosts:/s/\s*\&lt;mdns\&gt;//&#39=
; \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 -e &#39;/^hosts:/s/\s*mdns//&#39; \<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 -i $D/etc/nsswitch.conf<br><div>}--------------=
----------------<br></div><div><br></div><div>with this:</div><div>--------=
----------------------</div><div>pkg_postinst_ontarget_${PN} () {</div>=C2=
=A0 =C2=A0 sed -e &#39;/^hosts:/s/\s*\&lt;mdns\&gt;//&#39; \<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 -e &#39;s/\(^hosts:.*\)\(\&lt;files\&gt;\)\(.*\)\(\&lt;dn=
s\&gt;\)\(.*\)/\1\2\3mdns \4\5/&#39; \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 -i $D=
/etc/nsswitch.conf<br>}<br><br>pkg_prerm_ontarget_${PN} () {<br>=C2=A0 =C2=
=A0 sed -e &#39;/^hosts:/s/\s*\&lt;mdns\&gt;//&#39; \<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 -e &#39;/^hosts:/s/\s*mdns//&#39; \<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 -i $D/etc/nsswitch.conf<br>}<br><div>------------------------------</di=
v><div><br></div><div><br></div><div>Basically, I added=C2=A0_ontarget_ as =
suggested by yocto error that says: &quot;... If the intention is to defer =
them to first boot,</div><div>&gt; then please place them into pkg_postinst=
_ontarget_${PN} ()....&quot;.</div><div><br></div><div>In this way I can bu=
ild the final image with LICENSE_CREATE_PACKAGE=3D1. Why? I don&#39;t know.=
 I didn&#39;t understand why there was this error.<br></div><div><br></div>=
<div>However, the final result on the device when my os is running is diffe=
rent, because my nsswitch.conf changes from &quot;hosts:=C2=A0 files myhost=
name=C2=A0 mdns dns&quot; to &quot;hosts:=C2=A0 files mdns myhostname=C2=A0=
 dns&quot;. Why? I don&#39;t know, however I changed the regex in sed from =
&quot;\1\2 mdns\3\4\5&quot; to &quot;\1\2\3mdns \4\5&quot; to restore the o=
riginal result.</div><div><br></div><div>Why is it happening? Honestly, I d=
on&#39;t know the reason. My solution worked, but since I don&#39;t know wh=
y, I want to ask to someone more expert about nsswitch.conf and in particul=
ar about=C2=A0pkg_prerm_ and=C2=A0pkg_postinst_ because I really don&#39;t =
understand why I cannot change nsswitch without those and why without=C2=A0=
LICENSE_CREATE_PACKAGE they are working also without adding ontarget_, but =
with=C2=A0LICENSE_CREATE_PACKAGE =3D 1 the=C2=A0ontarget_ is required.</div=
><div><br></div><div>Please, can someone help about this? Or at least add i=
n CC someone with more experience about these topics.</div><div><br></div><=
div>Thank you.</div><div><br></div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">Il giorno ven 4 ott 2019 alle ore 14:26 =
Stefano Cappa &lt;<a href=3D"mailto:stefano.cappa.ks89@gmail.com" target=3D=
"_blank">stefano.cappa.ks89@gmail.com</a>&gt; ha scritto:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">I investigated =
a little bit.<div dir=3D"auto">Probably, I didn&#39;t understand your point=
.=C2=A0<br></div><div dir=3D"auto"><br></div><div dir=3D"auto">The postinst=
 script modifies nsswitch adding mdns and this is right, but why is this in=
terfering with the license create package?=C2=A0</div><div dir=3D"auto"><br=
></div><div dir=3D"auto">If I remove the postinst I can build with license =
create package, however I need this change to nsswitch.</div><div dir=3D"au=
to"><br></div><div dir=3D"auto">Is it possibile to change the recipe of mdn=
s to modify nsswitch without interfering with license create package in ano=
ther xxxx() { }?=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">T=
hanks=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto"><br></div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il=
 gio 3 ott 2019, 14:24 Stefano Cappa &lt;<a href=3D"mailto:stefano.cappa.ks=
89@gmail.com" rel=3D"noreferrer" target=3D"_blank">stefano.cappa.ks89@gmail=
.com</a>&gt; ha scritto:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"auto">I resend this email because it&#39;s not visib=
le in yocto mailing list.=C2=A0<div dir=3D"auto"><br></div><div dir=3D"auto=
"><br></div><div dir=3D"auto"><br><div dir=3D"auto">Hi thank you for the an=
swer.<div dir=3D"auto"><br></div><div dir=3D"auto">In my rootfs I have this=
 nsswitch.conf:</div><div dir=3D"auto">------------------------------------=
-------------------</div><div dir=3D"auto"># /etc/nsswitch.conf<br>#<br># E=
xample configuration of GNU Name Service Switch functionality.<br># If you =
have the `glibc-doc&#39; and `info&#39; packages installed, try:<br># `info=
 libc &quot;Name Service Switch&quot;&#39; for information about this file.=
<br><br>passwd: =C2=A0 =C2=A0 =C2=A0 =C2=A0 compat<br>group: =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0compat<br>shadow: =C2=A0 =C2=A0 =C2=A0 =C2=A0 compat<br=
><br>hosts: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0files myhostname =C2=A0mdns d=
ns<br>networks: =C2=A0 =C2=A0 =C2=A0 files<br><br>protocols: =C2=A0 =C2=A0 =
=C2=A0db files<br>services: =C2=A0 =C2=A0 =C2=A0 db files<br>ethers: =C2=A0=
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
</blockquote></div>

--000000000000b97094059417335c--

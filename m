Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1BC2E00D86; Wed, 10 Jul 2019 05:15:49 -0700 (PDT)
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
	*      [209.85.222.178 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
	[209.85.222.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36256E00B65
	for <yocto@yoctoproject.org>; Wed, 10 Jul 2019 05:15:48 -0700 (PDT)
Received: by mail-qk1-f178.google.com with SMTP id w190so1653678qkc.6
	for <yocto@yoctoproject.org>; Wed, 10 Jul 2019 05:15:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=ewMBNnPNP4kmalM/bOZLFd/CTyvUKladRjnVWdkCOxA=;
	b=X3vAZzgh1T0fQiT6B0HqG+oFvcRauEUAzWsGg4dI4gE1nstyC0ur2o6zYRF1u8Blhw
	Q3ta4m9Hz7Ya2QqLL80MPlwd9ApOFYtdGdMVc4dzNp4EeEM9OXQiDKp+JeABcq4TWGeg
	O9BR49a7yOSg6YD5MkaaieHZ1FVxOT9+cjcOEaJ9ffkYnYzL/PkVcoq2ZvswxJmoNJ2f
	33he0x/8X2XG7hpvqQtFTB9bbieqLiu5AojYLGSc/QWJnY9VL9pH273AWDlqSSzAZVNK
	wCCXorOEwhbbMEGE4vzj6eFBRWjDNT/jrNXl/7JtMc1wRA1hJg7I7CyVEFLZhG9Yo8In
	aZNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=ewMBNnPNP4kmalM/bOZLFd/CTyvUKladRjnVWdkCOxA=;
	b=LYkvr+7ZQ9stHd6glngQflJ9Pb3XMejDEI3q5tWX3XSf13Ls7Nmqe+VFmGxFyW+Sox
	hG9X9p9T2ul7HBN4lf7uduMmuwI6tVksfiK2CbJxJG4k+EAF3QsxNBsAZOjfOxV+iqYd
	31YCTI9jP4r+t3lMgbBhM98N03Q8R0GDLP9mm2RFmWbukV1dwpG+DwlznJoepZnHFkxo
	S3osn2+2vLytaaWTCEvLrmevR+Y3j8tMh0TFgCvQN2VuzeyECxWB9RukFqIflZbKAOn+
	9jdfHi+3nahNnKGbqb+ZrtZxwd6dG1wSe8SUk2cGvno7TLIeeoT2YdxjjDllxoZZl8UR
	VEDw==
X-Gm-Message-State: APjAAAWQUSzMoe9yi1G14xLs1Mr/Ry5unWbeVGXBVIktwlgeWlknMkon
	ElV1/gOv2NvJujGAzhtgtPgjBtJNoU4021eKbRw=
X-Google-Smtp-Source: APXvYqz0xfRia1gZkHaxJqVmCeGDe7i7CqyJI/FYZEnS+scDBPTwmotNa8LUypk23O0NbfF5HMrMaAKeTKBWo78mh3w=
X-Received: by 2002:ae9:e217:: with SMTP id c23mr22625201qkc.227.1562760947449;
	Wed, 10 Jul 2019 05:15:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAG+Ob8ZcYRYaFcyFopckNiTMR8ZTJW5vcM1cO+DZM7-0aR3+rA@mail.gmail.com>
	<CAGAf8LzyVbxJ--aDihMZyokOo+Sn18s=4vQvX91Y5jBpvbc_Bg@mail.gmail.com>
	<CAG+Ob8YYxVf4d9LEjL5Z9KEm3zP4xBMHr-H46rqumXOLLJAZyA@mail.gmail.com>
	<CAGAf8Lx0gUQorBVBGUCURDXW6JexowXTWsfAcdu+DMxTRrb2vQ@mail.gmail.com>
In-Reply-To: <CAGAf8Lx0gUQorBVBGUCURDXW6JexowXTWsfAcdu+DMxTRrb2vQ@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 10 Jul 2019 14:15:35 +0200
Message-ID: <CAGAf8Lw4cvDPv94BpnV=Saz7A8ju=HaOR=Opb5e7izkkF-aLgQ@mail.gmail.com>
To: Max Krummenacher <max.krummenacher@toradex.com>
X-Mailman-Approved-At: Fri, 12 Jul 2019 08:13:13 -0700
Subject: [Meta-Qt5] "Unknown Module: declarative" Error While Creating Toolchain
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
X-List-Received-Date: Wed, 10 Jul 2019 12:15:49 -0000
Content-Type: multipart/alternative; boundary="0000000000002441c2058d52a356"

--0000000000002441c2058d52a356
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Max,

Remember me? Zoran Stojsavljevic, from very far in Past... From Y2017!

Could you, please, help Onur with this problem? I know that U R Subject
Matter Expert with iMX6 and Qt5, and probably U already met this problem
not too far in The Past...

Please, could you read carefully the underlying thread, and U'll understand
the problem 100% in 5 minutes for U (my best guess)!

Thank you in advance,
Zoran Stojsavljevic
_______

---------- Forwarded message ---------
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Tue, Jul 9, 2019 at 11:02 AM
Subject: Re: [yocto] [Meta-Qt5] "Unknown Module: declarative" Error While
Creating Toolchain
To: Onur Eser <onureser12@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>

Onur,

I am not subject matter expert in Qt layers... Here is what I found
while searching for an answer to the problem...

Here is the .bb causing to you problems:
https://github.com/meta-qt5/meta-qt5/blob/sumo/recipes-qt/qt5/qtquick1_git.=
bb

It is sumo branch. I noted that thud branch does NOT have this .bb (it
is rearranged, and this .bb removed).

meta-qt5 has there for thud: qtquickcontrols_git.bb and
qtquickcontrols2_git.bb (for 5.11.3 version).

Kludge: maybe you can try to build the whole thing using thud branch?!

Hope this hepls,
Zoran
_______

On Tue, Jul 9, 2019 at 10:38 AM Onur Eser <onureser12@gmail.com> wrote:
>
> Hello Zoran!
> Thank you for your answer, but that page is about the missing packages in
your configuration. There is no a missing dependency in my configuration.
The recipe "qtdeclarative" is already added.
>
> Note: Sending again because sent as PM accidentally.
> Thanks anyway!
> Onur
>
> Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>, 9 Tem 2019 Sal,
10:59 tarihinde =C5=9Funu yazd=C4=B1:
>>
>> Maybe this:
>>
https://www.technexion.com/support/knowledgebase/resolving-dependencies-iss=
ues-in-yocto/
>>
>> Zoran
>> _______
>>
>> On Tue, Jul 9, 2019 at 7:59 AM Onur Eser <onureser12@gmail.com> wrote:
>> >
>> > Hello All,
>> >
>> > I have talked to my BSP provider and they have solved the conflict
files issue with an update. Now I am able to create and boot a Yocto Image
with Meta-Qt5 recipes and 'dev_pkgs' in it. But still cannot create a
toolchain. Nor with I guess it is trying to compile something before
qtdeclarative, but these 'something' depends on qtdeclarative.
>> >
>> > My image is core image is Weston. I added the line 'inherit
populate_sdk_qt5' to my core-image-weston.bb file. And tried both commands
'bitbake meta-toolchain-qt5' and 'bitbake -c populate_sdk
core-image-weston'. The result is the same.
>> >
>> > I cut just the error part of my output:
>> >
>> > | cd qdeclarativefolderlistmodel/ && ( test -e Makefile ||
/home/closx/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/qtquick1=
/5.10.1+gitAUTOINC+b2476dcd53-r0/recipe-sysroot-native/usr/bin/qt5/qmake
-o Makefile
/home/closx/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/qtquick1=
/5.10.1+gitAUTOINC+b2476dcd53-r0/git/tests/auto/declarative/qdeclarativefol=
derlistmodel/
qdeclarativefolderlistmodel.pro ) && make -f Makefile
>> > | Project ERROR: Unknown module(s) in QT: declarative widgets
>> > | Makefile:88: recipe for target
'sub-qdeclarativecomponent-make_first' failed
>> > | make[2]: *** [sub-qdeclarativecomponent-make_first] Error 3
>> > | make[2]: *** Waiting for unfinished jobs....
>> > | Project ERROR: Unknown module(s) in QT: declarative
>> > | Project ERROR: Unknown module(s) in QT: declarative
>> > | Makefile:113: recipe for target 'sub-qdeclarativecontext-make_first'
failed
>> > | make[2]: *** [sub-qdeclarativecontext-make_first] Error 3
>> > | Project ERROR: Unknown module(s) in QT: declarative
>> > | Makefile:138: recipe for target 'sub-qdeclarativeengine-make_first'
failed
>> > | make[2]: *** [sub-qdeclarativeengine-make_first] Error 3
>> > | Makefile:63: recipe for target 'sub-parserstress-make_first' failed
>> > | make[2]: *** [sub-parserstress-make_first] Error 3
>> > | make[2]: Entering directory
'/home/closx/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/qtquick=
1/5.10.1+gitAUTOINC+b2476dcd53-r0/build/tests/manual/declarative'
>> > | make[2]: Nothing to be done for 'first'.
>> > | make[2]: Leaving directory
'/home/closx/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/qtquick=
1/5.10.1+gitAUTOINC+b2476dcd53-r0/build/tests/manual/declarative'
>> > | make[1]: Leaving directory
'/home/closx/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/qtquick=
1/5.10.1+gitAUTOINC+b2476dcd53-r0/build/tests/manual'
>> > | Project ERROR: Unknown module(s) in QT: declarative
>> > | Makefile:163: recipe for target 'sub-qdeclarativeerror-make_first'
failed
>> > | make[2]: *** [sub-qdeclarativeerror-make_first] Error 3
>> > | Project ERROR: Unknown module(s) in QT: declarative
>> > | Makefile:188: recipe for target
'sub-qdeclarativefolderlistmodel-make_first' failed
>> > | make[2]: *** [sub-qdeclarativefolderlistmodel-make_first] Error 3
>> > | make[2]: Leaving directory
'/home/closx/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/qtquick=
1/5.10.1+gitAUTOINC+b2476dcd53-r0/build/tests/auto/declarative'
>> > | Makefile:45: recipe for target 'sub-declarative-make_first' failed
>> > | make[1]: *** [sub-declarative-make_first] Error 2
>> > | make[1]: Leaving directory
'/home/closx/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/qtquick=
1/5.10.1+gitAUTOINC+b2476dcd53-r0/build/tests/auto'
>> > | Makefile:45: recipe for target 'sub-auto-make_first' failed
>> > | make: *** [sub-auto-make_first] Error 2
>> > | ERROR: oe_runmake failed
>> > | WARNING: exit code 1 from a shell command.
>> > | ERROR: Function failed: do_compile_ptest_base (log file is located
at
/home/closx/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/qtquick1=
/5.10.1+gitAUTOINC+b2476dcd53-r0/temp/log.do_compile_ptest_base.29566)
>> > ERROR: Task (/home/closx/poky/meta-qt5/recipes-qt/qt5/qtquick1_git.bb:=
do_compile_ptest_base)
failed with exit code '1'
>> >
>> > What do you guys think the reason of this issue may be? Any solution
offers?
>> >
>> > My full output:
>> > https://paste.ee/p/PupWr#Epvqnw9FoasgQEBhIXqQ8hH7veMcRybX
>> >
>> > Another source issue again?
>> > Have a lovely day!
>> > Onur
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto

--0000000000002441c2058d52a356
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Max,</div><div><br></div><div>Remember me? Zora=
n Stojsavljevic, from very far in Past... From Y2017!</div><div><br></div><=
div>Could you, please, help Onur with this problem? I know that U R Subject=
 Matter Expert with iMX6 and Qt5, and probably U already met this problem n=
ot too far in The Past...</div><div><br></div><div>Please, could you read c=
arefully the underlying thread, and U&#39;ll understand the problem 100% in=
 5 minutes for U (my best guess)!</div><div><br></div><div>Thank you in adv=
ance,</div><div>Zoran Stojsavljevic</div><div>_______<br></div><div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">---------- Fo=
rwarded message ---------<br>From: <b class=3D"gmail_sendername" dir=3D"aut=
o">Zoran Stojsavljevic</b> <span dir=3D"auto">&lt;<a href=3D"mailto:zoran.s=
tojsavljevic@gmail.com">zoran.stojsavljevic@gmail.com</a>&gt;</span><br>Dat=
e: Tue, Jul 9, 2019 at 11:02 AM<br>Subject: Re: [yocto] [Meta-Qt5] &quot;Un=
known Module: declarative&quot; Error While Creating Toolchain<br>To: Onur =
Eser &lt;<a href=3D"mailto:onureser12@gmail.com">onureser12@gmail.com</a>&g=
t;<br>Cc: Yocto Project &lt;<a href=3D"mailto:yocto@yoctoproject.org">yocto=
@yoctoproject.org</a>&gt;<br></div><br>Onur,<br>
<br>
I am not subject matter expert in Qt layers... Here is what I found<br>
while searching for an answer to the problem...<br>
<br>
Here is the .bb causing to you problems:<br>
<a href=3D"https://github.com/meta-qt5/meta-qt5/blob/sumo/recipes-qt/qt5/qt=
quick1_git.bb" rel=3D"noreferrer" target=3D"_blank">https://github.com/meta=
-qt5/meta-qt5/blob/sumo/recipes-qt/qt5/qtquick1_git.bb</a><br>
<br>
It is sumo branch. I noted that thud branch does NOT have this .bb (it<br>
is rearranged, and this .bb removed).<br>
<br>
meta-qt5 has there for thud: <a href=3D"http://qtquickcontrols_git.bb" rel=
=3D"noreferrer" target=3D"_blank">qtquickcontrols_git.bb</a> and<br>
<a href=3D"http://qtquickcontrols2_git.bb" rel=3D"noreferrer" target=3D"_bl=
ank">qtquickcontrols2_git.bb</a> (for 5.11.3 version).<br>
<br>
Kludge: maybe you can try to build the whole thing using thud branch?!<br>
<br>
Hope this hepls,<br>
Zoran<br>
_______<br>
<br>
On Tue, Jul 9, 2019 at 10:38 AM Onur Eser &lt;<a href=3D"mailto:onureser12@=
gmail.com" target=3D"_blank">onureser12@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hello Zoran!<br>
&gt; Thank you for your answer, but that page is about the missing packages=
 in your configuration. There is no a missing dependency in my configuratio=
n. The recipe &quot;qtdeclarative&quot; is already added.<br>
&gt;<br>
&gt; Note: Sending again because sent as PM accidentally.<br>
&gt; Thanks anyway!<br>
&gt; Onur<br>
&gt;<br>
&gt; Zoran Stojsavljevic &lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.co=
m" target=3D"_blank">zoran.stojsavljevic@gmail.com</a>&gt;, 9 Tem 2019 Sal,=
 10:59 tarihinde =C5=9Funu yazd=C4=B1:<br>
&gt;&gt;<br>
&gt;&gt; Maybe this:<br>
&gt;&gt; <a href=3D"https://www.technexion.com/support/knowledgebase/resolv=
ing-dependencies-issues-in-yocto/" rel=3D"noreferrer" target=3D"_blank">htt=
ps://www.technexion.com/support/knowledgebase/resolving-dependencies-issues=
-in-yocto/</a><br>
&gt;&gt;<br>
&gt;&gt; Zoran<br>
&gt;&gt; _______<br>
&gt;&gt;<br>
&gt;&gt; On Tue, Jul 9, 2019 at 7:59 AM Onur Eser &lt;<a href=3D"mailto:onu=
reser12@gmail.com" target=3D"_blank">onureser12@gmail.com</a>&gt; wrote:<br=
>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Hello All,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I have talked to my BSP provider and they have solved the con=
flict files issue with an update. Now I am able to create and boot a Yocto =
Image with Meta-Qt5 recipes and &#39;dev_pkgs&#39; in it. But still cannot =
create a toolchain. Nor with I guess it is trying to compile something befo=
re qtdeclarative, but these &#39;something&#39; depends on qtdeclarative.<b=
r>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; My image is core image is Weston. I added the line &#39;inher=
it populate_sdk_qt5&#39; to my <a href=3D"http://core-image-weston.bb" rel=
=3D"noreferrer" target=3D"_blank">core-image-weston.bb</a> file. And tried =
both commands &#39;bitbake meta-toolchain-qt5&#39; and &#39;bitbake -c popu=
late_sdk core-image-weston&#39;. The result is the same.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I cut just the error part of my output:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; | cd qdeclarativefolderlistmodel/ &amp;&amp; ( test -e Makefi=
le || /home/closx/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/qt=
quick1/5.10.1+gitAUTOINC+b2476dcd53-r0/recipe-sysroot-native/usr/bin/qt5/qm=
ake -o Makefile /home/closx/poky/build/tmp/work/cortexa9hf-neon-poky-linux-=
gnueabi/qtquick1/5.10.1+gitAUTOINC+b2476dcd53-r0/git/tests/auto/declarative=
/qdeclarativefolderlistmodel/<a href=3D"http://qdeclarativefolderlistmodel.=
pro" rel=3D"noreferrer" target=3D"_blank">qdeclarativefolderlistmodel.pro</=
a> ) &amp;&amp; make -f Makefile<br>
&gt;&gt; &gt; | Project ERROR: Unknown module(s) in QT: declarative widgets=
<br>
&gt;&gt; &gt; | Makefile:88: recipe for target &#39;sub-qdeclarativecompone=
nt-make_first&#39; failed<br>
&gt;&gt; &gt; | make[2]: *** [sub-qdeclarativecomponent-make_first] Error 3=
<br>
&gt;&gt; &gt; | make[2]: *** Waiting for unfinished jobs....<br>
&gt;&gt; &gt; | Project ERROR: Unknown module(s) in QT: declarative<br>
&gt;&gt; &gt; | Project ERROR: Unknown module(s) in QT: declarative<br>
&gt;&gt; &gt; | Makefile:113: recipe for target &#39;sub-qdeclarativecontex=
t-make_first&#39; failed<br>
&gt;&gt; &gt; | make[2]: *** [sub-qdeclarativecontext-make_first] Error 3<b=
r>
&gt;&gt; &gt; | Project ERROR: Unknown module(s) in QT: declarative<br>
&gt;&gt; &gt; | Makefile:138: recipe for target &#39;sub-qdeclarativeengine=
-make_first&#39; failed<br>
&gt;&gt; &gt; | make[2]: *** [sub-qdeclarativeengine-make_first] Error 3<br=
>
&gt;&gt; &gt; | Makefile:63: recipe for target &#39;sub-parserstress-make_f=
irst&#39; failed<br>
&gt;&gt; &gt; | make[2]: *** [sub-parserstress-make_first] Error 3<br>
&gt;&gt; &gt; | make[2]: Entering directory &#39;/home/closx/poky/build/tmp=
/work/cortexa9hf-neon-poky-linux-gnueabi/qtquick1/5.10.1+gitAUTOINC+b2476dc=
d53-r0/build/tests/manual/declarative&#39;<br>
&gt;&gt; &gt; | make[2]: Nothing to be done for &#39;first&#39;.<br>
&gt;&gt; &gt; | make[2]: Leaving directory &#39;/home/closx/poky/build/tmp/=
work/cortexa9hf-neon-poky-linux-gnueabi/qtquick1/5.10.1+gitAUTOINC+b2476dcd=
53-r0/build/tests/manual/declarative&#39;<br>
&gt;&gt; &gt; | make[1]: Leaving directory &#39;/home/closx/poky/build/tmp/=
work/cortexa9hf-neon-poky-linux-gnueabi/qtquick1/5.10.1+gitAUTOINC+b2476dcd=
53-r0/build/tests/manual&#39;<br>
&gt;&gt; &gt; | Project ERROR: Unknown module(s) in QT: declarative<br>
&gt;&gt; &gt; | Makefile:163: recipe for target &#39;sub-qdeclarativeerror-=
make_first&#39; failed<br>
&gt;&gt; &gt; | make[2]: *** [sub-qdeclarativeerror-make_first] Error 3<br>
&gt;&gt; &gt; | Project ERROR: Unknown module(s) in QT: declarative<br>
&gt;&gt; &gt; | Makefile:188: recipe for target &#39;sub-qdeclarativefolder=
listmodel-make_first&#39; failed<br>
&gt;&gt; &gt; | make[2]: *** [sub-qdeclarativefolderlistmodel-make_first] E=
rror 3<br>
&gt;&gt; &gt; | make[2]: Leaving directory &#39;/home/closx/poky/build/tmp/=
work/cortexa9hf-neon-poky-linux-gnueabi/qtquick1/5.10.1+gitAUTOINC+b2476dcd=
53-r0/build/tests/auto/declarative&#39;<br>
&gt;&gt; &gt; | Makefile:45: recipe for target &#39;sub-declarative-make_fi=
rst&#39; failed<br>
&gt;&gt; &gt; | make[1]: *** [sub-declarative-make_first] Error 2<br>
&gt;&gt; &gt; | make[1]: Leaving directory &#39;/home/closx/poky/build/tmp/=
work/cortexa9hf-neon-poky-linux-gnueabi/qtquick1/5.10.1+gitAUTOINC+b2476dcd=
53-r0/build/tests/auto&#39;<br>
&gt;&gt; &gt; | Makefile:45: recipe for target &#39;sub-auto-make_first&#39=
; failed<br>
&gt;&gt; &gt; | make: *** [sub-auto-make_first] Error 2<br>
&gt;&gt; &gt; | ERROR: oe_runmake failed<br>
&gt;&gt; &gt; | WARNING: exit code 1 from a shell command.<br>
&gt;&gt; &gt; | ERROR: Function failed: do_compile_ptest_base (log file is =
located at /home/closx/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnuea=
bi/qtquick1/5.10.1+gitAUTOINC+b2476dcd53-r0/temp/log.do_compile_ptest_base.=
29566)<br>
&gt;&gt; &gt; ERROR: Task (/home/closx/poky/meta-qt5/recipes-qt/qt5/qtquick=
1_git.bb:do_compile_ptest_base) failed with exit code &#39;1&#39;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; What do you guys think the reason of this issue may be? Any s=
olution offers?<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; My full output:<br>
&gt;&gt; &gt; <a href=3D"https://paste.ee/p/PupWr#Epvqnw9FoasgQEBhIXqQ8hH7v=
eMcRybX" rel=3D"noreferrer" target=3D"_blank">https://paste.ee/p/PupWr#Epvq=
nw9FoasgQEBhIXqQ8hH7veMcRybX</a><br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Another source issue again?<br>
&gt;&gt; &gt; Have a lovely day!<br>
&gt;&gt; &gt; Onur<br>
&gt;&gt; &gt; --<br>
&gt;&gt; &gt; _______________________________________________<br>
&gt;&gt; &gt; yocto mailing list<br>
&gt;&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">y=
octo@yoctoproject.org</a><br>
&gt;&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/y=
octo</a><br>
</div></div></div>

--0000000000002441c2058d52a356--

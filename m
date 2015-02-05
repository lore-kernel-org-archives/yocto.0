Return-Path: <yuq825@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4232E00815; Thu,  5 Feb 2015 06:43:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yuq825[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.181 listed in list.dnswl.org]
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57DFDE00815
	for <yocto@yoctoproject.org>; Thu,  5 Feb 2015 06:43:48 -0800 (PST)
Received: by mail-ig0-f181.google.com with SMTP id hn18so12672400igb.2
	for <yocto@yoctoproject.org>; Thu, 05 Feb 2015 06:43:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=YS+eyAmOO+qllewYUFf5Rl5gDioUez9qbRqbz//7Ik4=;
	b=l3SQI0823WrVRjxsSODu5IDKXusyE/xbUuNHuGycEwwrdUPi3lmTYdK7gxkmfyA49s
	uVBuj8p/RIES16QWoALvYthdOXn4ZWOfUe7DfKFqyq/27k2cDcg/Ke5nSc3Kup7JAJWo
	OJ1CN2dOxTYUGt6HoEbTjMdW0N0lSCHUvXPjuLix7A7LA0y/8XH8tKBPLfki6nCWznNF
	O4rmRrsu2icXsWbFCPGhu905FMesPWI3NpXFhtfsFL9L7LWGztU7AGWgnU4QMzWrNVrb
	Uv7MZEwHNjD6QC9HhT37WdQP3q9/EcNPYYuYG6Bl3vxfuKT8KeKZSEiE3FqubU+It6Zz
	lGDg==
MIME-Version: 1.0
X-Received: by 10.50.79.163 with SMTP id k3mr9618634igx.30.1423147428312; Thu,
	05 Feb 2015 06:43:48 -0800 (PST)
Received: by 10.36.51.145 with HTTP; Thu, 5 Feb 2015 06:43:48 -0800 (PST)
In-Reply-To: <CAKGbVbuUbQ970__5EGF+1Z3wcqD6rQsqUjLTmg20swqf53UAVA@mail.gmail.com>
References: <CAKGbVbuXvDEirTo9jcM+aGHszcjgwgKvKaJQAYU6wE1M5W1u_A@mail.gmail.com>
	<CAKGbVbuUbQ970__5EGF+1Z3wcqD6rQsqUjLTmg20swqf53UAVA@mail.gmail.com>
Date: Thu, 5 Feb 2015 22:43:48 +0800
Message-ID: <CAKGbVbtRMJyMRQtjDaVZaWYCXOn4hGTfpP8j+8GM0ADGjUTmZA@mail.gmail.com>
From: Qiang Yu <yuq825@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Cc: Xie Chengyong <chengyong.xie@theqtcompany.com>,
	Otavio Salvador <otavio@ossystems.com.br>
Subject: Re: [meta-qt5] static link plugin lib path problem
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
X-List-Received-Date: Thu, 05 Feb 2015 14:43:53 -0000
Content-Type: multipart/alternative; boundary=089e01184038ed9c31050e585446

--089e01184038ed9c31050e585446
Content-Type: text/plain; charset=UTF-8

I find the problem:

qt.prf:
plugpath = $$[QT_INSTALL_PLUGINS/get]

both $$[QT_INSTALL_PLUGINS/get] and $$[QT_INSTALL_PLUGINS/raw] equal
/usr/lib/qt5/plugins
but $$[QT_INSTALL_PLUGINS] equals right path.

Now my question is
1. why there are three var of QT_INSTALL_PLUGINS?
2. where are their values from?

Thanks,
Qiang

On Thu, Feb 5, 2015 at 11:04 AM, Qiang Yu <yuq825@gmail.com> wrote:

> the share link version of the same Makefile's LIBS has no plugin link:
> LIBS          = $(SUBLIBS)
> -L/opt/yocto/build/sunxi/linda-a20navi-base/tmp/work/cortexa7hf-vfp-vfpv4-neon-linda-linux-gnueabi/qtxmlpatterns/5.3.2-r0/build/lib
> -lQt5XmlPatterns -lQt5Network -lQt5Core -lpthread
>
> On Thu, Feb 5, 2015 at 10:53 AM, Qiang Yu <yuq825@gmail.com> wrote:
>
>> Hi all,
>>
>> I use meta-qt5 for QT5 support. But I need static link the application so
>> I remove the -share from configure args and add -static.
>>
>> The "bitbake qtbase" is fine, but "bitbake qtxmlpatterns" do_compile fail:
>> | linking ../../bin/xmlpatterns
>> |
>> /opt/yocto-rel/yocto/0.1/build/linda-a20navi/tmp/sysroots/x86_64-linux/usr/libexec/arm-linda-linux-gnueabi/gcc/arm-linda-linux-gnueabi/4.9.1/ld:
>> warning: library search path "/usr/lib/qt5/plugins/bearer" is unsafe for
>> cross-compilation
>> |
>> /opt/yocto-rel/yocto/0.1/build/linda-a20navi/tmp/sysroots/x86_64-linux/usr/libexec/arm-linda-linux-gnueabi/gcc/arm-linda-linux-gnueabi/4.9.1/ld:
>> cannot find -lqgenericbearer
>> | collect2: error: ld returned 1 exit status
>> | make[2]: *** [../../bin/xmlpatterns] Error 1
>> | make[2]: Leaving directory
>> `/opt/yocto-rel/yocto/0.1/build/linda-a20navi/tmp/work/cortexa7hf-vfp-vfpv4-neon-linda-linux-gnueabi/qtxmlpatterns/5.3.2-r0/build/tools/xmlpatterns'
>>
>> I find the Makefile generated by qmake for tools/xmlpatterns has the
>> wrong LIBS:
>> LIBS          = $(SUBLIBS)
>> -L/opt/yocto-rel/yocto/0.1/build/linda-a20navi/tmp/work/cortexa7hf-vfp-vfpv4-neon-linda-linux-gnueabi/qtxmlpatterns/5.3.2-r0/build/lib
>> -lQt5XmlPatterns -lQt5Network -lQt5Core -lz -lm -ldl -lrt
>> -L/usr/lib/qt5/plugins/bearer -lqgenericbearer -lpthread
>>
>> It seems the plugin lib dir doesn't have a cross compile prefix. Any one
>> meet this problem before or know how to fix static link plugin lib path?
>>
>> Thanks,
>> Qiang
>>
>
>

--089e01184038ed9c31050e585446
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I find the problem:<div><br><div>qt.prf:</div><div>plugpat=
h =3D $$[QT_INSTALL_PLUGINS/get]<br></div><div><br></div><div><div>both $$[=
QT_INSTALL_PLUGINS/get] and $$[QT_INSTALL_PLUGINS/raw] equal /usr/lib/qt5/p=
lugins</div></div></div><div>but $$[QT_INSTALL_PLUGINS] equals right path.<=
/div><div><br></div><div>Now my question is</div><div>1. why there are thre=
e var of QT_INSTALL_PLUGINS?</div><div>2. where are their values from?</div=
><div><br></div><div>Thanks,</div><div>Qiang</div></div><div class=3D"gmail=
_extra"><br><div class=3D"gmail_quote">On Thu, Feb 5, 2015 at 11:04 AM, Qia=
ng Yu <span dir=3D"ltr">&lt;<a href=3D"mailto:yuq825@gmail.com" target=3D"_=
blank">yuq825@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex"><div dir=3D"ltr">the share link version of the same Makefile&#39;s LIB=
S has no plugin link:<div><div>LIBS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D $=
(SUBLIBS) -L/opt/yocto/build/sunxi/linda-a20navi-base/tmp/work/cortexa7hf-v=
fp-vfpv4-neon-linda-linux-gnueabi/qtxmlpatterns/5.3.2-r0/build/lib -lQt5Xml=
Patterns -lQt5Network -lQt5Core -lpthread</div></div></div><div class=3D"HO=
EnZb"><div class=3D"h5"><div class=3D"gmail_extra"><br><div class=3D"gmail_=
quote">On Thu, Feb 5, 2015 at 10:53 AM, Qiang Yu <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:yuq825@gmail.com" target=3D"_blank">yuq825@gmail.com</a>&gt;<=
/span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi all,<di=
v><br></div><div>I use meta-qt5 for QT5 support. But I need static link the=
 application so I remove the -share from configure args and add -static.</d=
iv><div><br></div><div>The &quot;bitbake qtbase&quot; is fine, but &quot;bi=
tbake qtxmlpatterns&quot; do_compile fail:</div><div><div>| linking ../../b=
in/xmlpatterns</div><div>| /opt/yocto-rel/yocto/0.1/build/linda-a20navi/tmp=
/sysroots/x86_64-linux/usr/libexec/arm-linda-linux-gnueabi/gcc/arm-linda-li=
nux-gnueabi/4.9.1/ld: warning: library search path &quot;/usr/lib/qt5/plugi=
ns/bearer&quot; is unsafe for cross-compilation</div><div>| /opt/yocto-rel/=
yocto/0.1/build/linda-a20navi/tmp/sysroots/x86_64-linux/usr/libexec/arm-lin=
da-linux-gnueabi/gcc/arm-linda-linux-gnueabi/4.9.1/ld: cannot find -lqgener=
icbearer</div><div>| collect2: error: ld returned 1 exit status</div><div>|=
 make[2]: *** [../../bin/xmlpatterns] Error 1</div><div>| make[2]: Leaving =
directory `/opt/yocto-rel/yocto/0.1/build/linda-a20navi/tmp/work/cortexa7hf=
-vfp-vfpv4-neon-linda-linux-gnueabi/qtxmlpatterns/5.3.2-r0/build/tools/xmlp=
atterns&#39;</div></div><div><br></div><div>I find the Makefile generated b=
y qmake for tools/xmlpatterns has the wrong LIBS:</div><div><div>LIBS =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D $(SUBLIBS) -L/opt/yocto-rel/yocto/0.1/bu=
ild/linda-a20navi/tmp/work/cortexa7hf-vfp-vfpv4-neon-linda-linux-gnueabi/qt=
xmlpatterns/5.3.2-r0/build/lib -lQt5XmlPatterns -lQt5Network -lQt5Core -lz =
-lm -ldl -lrt -L/usr/lib/qt5/plugins/bearer -lqgenericbearer -lpthread</div=
></div><div><br></div><div>It seems the plugin lib dir doesn&#39;t have a c=
ross compile prefix. Any one meet this problem before or know how to fix st=
atic link plugin lib path?</div><div><br></div><div>Thanks,</div><div>Qiang=
</div></div>
</blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--089e01184038ed9c31050e585446--

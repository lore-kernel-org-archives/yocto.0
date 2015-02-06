Return-Path: <yuq825@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3FA74E00809; Thu,  5 Feb 2015 21:33:06 -0800 (PST)
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
	*      [209.85.213.182 listed in list.dnswl.org]
Received: from mail-ig0-f182.google.com (mail-ig0-f182.google.com
	[209.85.213.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F117EE00757
	for <yocto@yoctoproject.org>; Thu,  5 Feb 2015 21:32:59 -0800 (PST)
Received: by mail-ig0-f182.google.com with SMTP id h15so5755342igd.3
	for <yocto@yoctoproject.org>; Thu, 05 Feb 2015 21:32:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=gyvBM41Ych3YOCvWo16fHtLb+K/P4BP+b7PYX2XAfkk=;
	b=zr1dx1kE3iqAlFZmYMPwebO6wW6YzyKwoNIgAShuMPmHcfnxwQ6D04T5npDYooRDzR
	Zn19r+lKxZ2ENJmCOWxQfGftjKUIargVXo4WX5VwrXiPacLUFuTqxDpN+vQT93qfBEFs
	se9WFnfEgZq5JRxMWo0qgf3rKubUzHQFgNHED5M4dIaA7e0mpkOg9wPDRPbkpvlsmL+9
	BQANTFK6omDn43GoizWajOqUDTNk0aIfaJ98uPDt494w3MuT4CxfSb7I5lUdCvM6NrtU
	a3BNBEnj77QxJTOxV8N9PVA3QyjHnU37SeV0oHE28aaOhOhH5HCnYTQO32JlE7xbxDFf
	GxiQ==
MIME-Version: 1.0
X-Received: by 10.43.89.68 with SMTP id bd4mr10857786icc.63.1423200778736;
	Thu, 05 Feb 2015 21:32:58 -0800 (PST)
Received: by 10.36.51.145 with HTTP; Thu, 5 Feb 2015 21:32:58 -0800 (PST)
In-Reply-To: <CAKGbVbtRMJyMRQtjDaVZaWYCXOn4hGTfpP8j+8GM0ADGjUTmZA@mail.gmail.com>
References: <CAKGbVbuXvDEirTo9jcM+aGHszcjgwgKvKaJQAYU6wE1M5W1u_A@mail.gmail.com>
	<CAKGbVbuUbQ970__5EGF+1Z3wcqD6rQsqUjLTmg20swqf53UAVA@mail.gmail.com>
	<CAKGbVbtRMJyMRQtjDaVZaWYCXOn4hGTfpP8j+8GM0ADGjUTmZA@mail.gmail.com>
Date: Fri, 6 Feb 2015 13:32:58 +0800
Message-ID: <CAKGbVbup5y5suRGUhyDxdmC-j-5XKzNER81qFc_WBqWbCWO=8g@mail.gmail.com>
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
X-List-Received-Date: Fri, 06 Feb 2015 05:33:06 -0000
Content-Type: multipart/alternative; boundary=bcaec517c6c0dc5baf050e64c05c

--bcaec517c6c0dc5baf050e64c05c
Content-Type: text/plain; charset=UTF-8

I find some valuable info from
https://github.com/meta-qt5/meta-qt5/wiki/Building-with-OE

Now I use $$[QT_INSTALL_PLUGINS] which qmake will prefix /usr/lib/plugins
with SYSROOT.
But the Makefile has another problem when upgrade to 5.4:
LIBS          = $(SUBLIBS)
-L/opt/yocto-rel/yocto/0.1/build/linda-a20navi/tmp/work/cortexa7hf-vfp-vfpv4-neon-linda-linux-gnueabi/qtxmlpatterns/5.4.0-r0/build/lib
-lQt5XmlPatterns
-L/opt/yocto-rel/yocto/0.1/build/linda-a20navi/tmp/sysroots/a20navi/usr/lib/qt5/plugins/bearer
-lqgenericbearer -L${libdir} -lQt5Network -lQt5Core -lz -lm -ldl -lrt
-lpthread

The ${libdir} expend to /usr/lib which is cross-compile unsafe.

Another question, from the wiki I saw quit some work on the QT5 build path.
Now that QT5 is enhancing its cross-compile
support, will meta-qt5 switch to the native, less-patch and clean method?

Regards,
Qiang

On Thu, Feb 5, 2015 at 10:43 PM, Qiang Yu <yuq825@gmail.com> wrote:

> I find the problem:
>
> qt.prf:
> plugpath = $$[QT_INSTALL_PLUGINS/get]
>
> both $$[QT_INSTALL_PLUGINS/get] and $$[QT_INSTALL_PLUGINS/raw] equal
> /usr/lib/qt5/plugins
> but $$[QT_INSTALL_PLUGINS] equals right path.
>
> Now my question is
> 1. why there are three var of QT_INSTALL_PLUGINS?
> 2. where are their values from?
>
> Thanks,
> Qiang
>
> On Thu, Feb 5, 2015 at 11:04 AM, Qiang Yu <yuq825@gmail.com> wrote:
>
>> the share link version of the same Makefile's LIBS has no plugin link:
>> LIBS          = $(SUBLIBS)
>> -L/opt/yocto/build/sunxi/linda-a20navi-base/tmp/work/cortexa7hf-vfp-vfpv4-neon-linda-linux-gnueabi/qtxmlpatterns/5.3.2-r0/build/lib
>> -lQt5XmlPatterns -lQt5Network -lQt5Core -lpthread
>>
>> On Thu, Feb 5, 2015 at 10:53 AM, Qiang Yu <yuq825@gmail.com> wrote:
>>
>>> Hi all,
>>>
>>> I use meta-qt5 for QT5 support. But I need static link the application
>>> so I remove the -share from configure args and add -static.
>>>
>>> The "bitbake qtbase" is fine, but "bitbake qtxmlpatterns" do_compile
>>> fail:
>>> | linking ../../bin/xmlpatterns
>>> |
>>> /opt/yocto-rel/yocto/0.1/build/linda-a20navi/tmp/sysroots/x86_64-linux/usr/libexec/arm-linda-linux-gnueabi/gcc/arm-linda-linux-gnueabi/4.9.1/ld:
>>> warning: library search path "/usr/lib/qt5/plugins/bearer" is unsafe for
>>> cross-compilation
>>> |
>>> /opt/yocto-rel/yocto/0.1/build/linda-a20navi/tmp/sysroots/x86_64-linux/usr/libexec/arm-linda-linux-gnueabi/gcc/arm-linda-linux-gnueabi/4.9.1/ld:
>>> cannot find -lqgenericbearer
>>> | collect2: error: ld returned 1 exit status
>>> | make[2]: *** [../../bin/xmlpatterns] Error 1
>>> | make[2]: Leaving directory
>>> `/opt/yocto-rel/yocto/0.1/build/linda-a20navi/tmp/work/cortexa7hf-vfp-vfpv4-neon-linda-linux-gnueabi/qtxmlpatterns/5.3.2-r0/build/tools/xmlpatterns'
>>>
>>> I find the Makefile generated by qmake for tools/xmlpatterns has the
>>> wrong LIBS:
>>> LIBS          = $(SUBLIBS)
>>> -L/opt/yocto-rel/yocto/0.1/build/linda-a20navi/tmp/work/cortexa7hf-vfp-vfpv4-neon-linda-linux-gnueabi/qtxmlpatterns/5.3.2-r0/build/lib
>>> -lQt5XmlPatterns -lQt5Network -lQt5Core -lz -lm -ldl -lrt
>>> -L/usr/lib/qt5/plugins/bearer -lqgenericbearer -lpthread
>>>
>>> It seems the plugin lib dir doesn't have a cross compile prefix. Any one
>>> meet this problem before or know how to fix static link plugin lib path?
>>>
>>> Thanks,
>>> Qiang
>>>
>>
>>
>

--bcaec517c6c0dc5baf050e64c05c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I find some valuable info from<div><a href=3D"https://gith=
ub.com/meta-qt5/meta-qt5/wiki/Building-with-OE">https://github.com/meta-qt5=
/meta-qt5/wiki/Building-with-OE</a></div><div><br></div><div>Now I use=C2=
=A0<span style=3D"font-size:12.8000001907349px">$$[QT_INSTALL_PLUGINS] whic=
h qmake will prefix /usr/lib/plugins with SYSROOT.</span></div><div><span s=
tyle=3D"font-size:12.8000001907349px">But the Makefile has another problem =
when upgrade to 5.4:</span></div><div><div style><span style=3D"font-size:1=
2.8000001907349px">LIBS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D $(SUBLIBS) -L=
/opt/yocto-rel/yocto/0.1/build/linda-a20navi/tmp/work/cortexa7hf-vfp-vfpv4-=
neon-linda-linux-gnueabi/qtxmlpatterns/</span><span style=3D"font-size:12.8=
000001907349px">5.4.0-r0/build/lib -lQt5XmlPatterns -L/opt/yocto-rel/yocto/=
0.1/build/linda-a20navi/tmp/sysroots/a20navi/usr/lib/qt5/plugins/bearer -lq=
genericbe</span><span style=3D"font-size:12.8000001907349px">arer -L${libdi=
r} -lQt5Network -lQt5Core -lz -lm -ldl -lrt -lpthread</span></div></div><di=
v style><span style=3D"font-size:12.8000001907349px"><br></span></div><div =
style><span style=3D"font-size:12.8000001907349px">The ${libdir} expend to =
/usr/lib which is cross-compile unsafe.</span></div><div style><span style=
=3D"font-size:12.8000001907349px"><br></span></div><div style><span style=
=3D"font-size:12.8000001907349px">Another question, from the wiki I saw qui=
t some work on the QT5 build path. Now that QT5 is enhancing its cross-comp=
ile</span></div><div style><span style=3D"font-size:12.8000001907349px">sup=
port, will meta-qt5 switch to the native, less-patch and clean method?</spa=
n></div><div style><span style=3D"font-size:12.8000001907349px"><br></span>=
</div><div style><span style=3D"font-size:12.8000001907349px">Regards,</spa=
n></div><div style><span style=3D"font-size:12.8000001907349px">Qiang</span=
></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On T=
hu, Feb 5, 2015 at 10:43 PM, Qiang Yu <span dir=3D"ltr">&lt;<a href=3D"mail=
to:yuq825@gmail.com" target=3D"_blank">yuq825@gmail.com</a>&gt;</span> wrot=
e:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">I find the problem:<d=
iv><br><div>qt.prf:</div><div>plugpath =3D $$[QT_INSTALL_PLUGINS/get]<br></=
div><div><br></div><div><div>both $$[QT_INSTALL_PLUGINS/get] and $$[QT_INST=
ALL_PLUGINS/raw] equal /usr/lib/qt5/plugins</div></div></div><div>but $$[QT=
_INSTALL_PLUGINS] equals right path.</div><div><br></div><div>Now my questi=
on is</div><div>1. why there are three var of QT_INSTALL_PLUGINS?</div><div=
>2. where are their values from?</div><div><br></div><div>Thanks,</div><div=
>Qiang</div></div><div class=3D"HOEnZb"><div class=3D"h5"><div class=3D"gma=
il_extra"><br><div class=3D"gmail_quote">On Thu, Feb 5, 2015 at 11:04 AM, Q=
iang Yu <span dir=3D"ltr">&lt;<a href=3D"mailto:yuq825@gmail.com" target=3D=
"_blank">yuq825@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex"><div dir=3D"ltr">the share link version of the same Makefile&#39;s L=
IBS has no plugin link:<div><div>LIBS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D=
 $(SUBLIBS) -L/opt/yocto/build/sunxi/linda-a20navi-base/tmp/work/cortexa7hf=
-vfp-vfpv4-neon-linda-linux-gnueabi/qtxmlpatterns/5.3.2-r0/build/lib -lQt5X=
mlPatterns -lQt5Network -lQt5Core -lpthread</div></div></div><div><div><div=
 class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Feb 5, 2015 a=
t 10:53 AM, Qiang Yu <span dir=3D"ltr">&lt;<a href=3D"mailto:yuq825@gmail.c=
om" target=3D"_blank">yuq825@gmail.com</a>&gt;</span> wrote:<br><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex"><div dir=3D"ltr">Hi all,<div><br></div><div>I use meta-=
qt5 for QT5 support. But I need static link the application so I remove the=
 -share from configure args and add -static.</div><div><br></div><div>The &=
quot;bitbake qtbase&quot; is fine, but &quot;bitbake qtxmlpatterns&quot; do=
_compile fail:</div><div><div>| linking ../../bin/xmlpatterns</div><div>| /=
opt/yocto-rel/yocto/0.1/build/linda-a20navi/tmp/sysroots/x86_64-linux/usr/l=
ibexec/arm-linda-linux-gnueabi/gcc/arm-linda-linux-gnueabi/4.9.1/ld: warnin=
g: library search path &quot;/usr/lib/qt5/plugins/bearer&quot; is unsafe fo=
r cross-compilation</div><div>| /opt/yocto-rel/yocto/0.1/build/linda-a20nav=
i/tmp/sysroots/x86_64-linux/usr/libexec/arm-linda-linux-gnueabi/gcc/arm-lin=
da-linux-gnueabi/4.9.1/ld: cannot find -lqgenericbearer</div><div>| collect=
2: error: ld returned 1 exit status</div><div>| make[2]: *** [../../bin/xml=
patterns] Error 1</div><div>| make[2]: Leaving directory `/opt/yocto-rel/yo=
cto/0.1/build/linda-a20navi/tmp/work/cortexa7hf-vfp-vfpv4-neon-linda-linux-=
gnueabi/qtxmlpatterns/5.3.2-r0/build/tools/xmlpatterns&#39;</div></div><div=
><br></div><div>I find the Makefile generated by qmake for tools/xmlpattern=
s has the wrong LIBS:</div><div><div>LIBS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0=3D $(SUBLIBS) -L/opt/yocto-rel/yocto/0.1/build/linda-a20navi/tmp/work/c=
ortexa7hf-vfp-vfpv4-neon-linda-linux-gnueabi/qtxmlpatterns/5.3.2-r0/build/l=
ib -lQt5XmlPatterns -lQt5Network -lQt5Core -lz -lm -ldl -lrt -L/usr/lib/qt5=
/plugins/bearer -lqgenericbearer -lpthread</div></div><div><br></div><div>I=
t seems the plugin lib dir doesn&#39;t have a cross compile prefix. Any one=
 meet this problem before or know how to fix static link plugin lib path?</=
div><div><br></div><div>Thanks,</div><div>Qiang</div></div>
</blockquote></div><br></div>
</div></div></blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--bcaec517c6c0dc5baf050e64c05c--

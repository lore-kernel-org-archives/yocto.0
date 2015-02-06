Return-Path: <yuq825@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1AE5E00809; Thu,  5 Feb 2015 22:35:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.182 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (yuq825[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f182.google.com (mail-ig0-f182.google.com
	[209.85.213.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D32AE00757
	for <yocto@yoctoproject.org>; Thu,  5 Feb 2015 22:35:02 -0800 (PST)
Received: by mail-ig0-f182.google.com with SMTP id h15so139509igd.3
	for <yocto@yoctoproject.org>; Thu, 05 Feb 2015 22:35:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=DDDwQj0hhALnVWw2pI2zivTDTdM5uSF0sexB/CFHB90=;
	b=KKCsSKiT6VaaRpSbPmrRH5X4/95HVBzMpkxRoIjcvLb/HXyKi2uHJ1QBZHHDfs1lGY
	WKp4Q4Bsi96NWlNP3I5cnKpHuMKZLqWL19muV8t0b5QdDMJZpyKcDoaM8Qkoxr2hnIiW
	qHdtLCixJzfqGQyp5+Kts1cIatT9zGRYUdaXxRSmJmsQC0ZEsuTnYxwlThNMZRljbb1G
	CW22rL6H/RMoEtI3gYLj08Xcuak61mtCs1Nhm5SsjmPYbeH4S1FVzNFpOKEBk5eZwxSR
	15R+gkgLPktT7dyYQdHssVRSGcZiwy0sFdKfuXBFrWW1M9mxcadEZWiVaFXt+lwF3Wmp
	GLpQ==
MIME-Version: 1.0
X-Received: by 10.42.251.65 with SMTP id mr1mr11541882icb.76.1423204501953;
	Thu, 05 Feb 2015 22:35:01 -0800 (PST)
Received: by 10.36.51.145 with HTTP; Thu, 5 Feb 2015 22:35:01 -0800 (PST)
In-Reply-To: <CAKGbVbup5y5suRGUhyDxdmC-j-5XKzNER81qFc_WBqWbCWO=8g@mail.gmail.com>
References: <CAKGbVbuXvDEirTo9jcM+aGHszcjgwgKvKaJQAYU6wE1M5W1u_A@mail.gmail.com>
	<CAKGbVbuUbQ970__5EGF+1Z3wcqD6rQsqUjLTmg20swqf53UAVA@mail.gmail.com>
	<CAKGbVbtRMJyMRQtjDaVZaWYCXOn4hGTfpP8j+8GM0ADGjUTmZA@mail.gmail.com>
	<CAKGbVbup5y5suRGUhyDxdmC-j-5XKzNER81qFc_WBqWbCWO=8g@mail.gmail.com>
Date: Fri, 6 Feb 2015 14:35:01 +0800
Message-ID: <CAKGbVbuj9MQ-hcP3H7acL=HG9ow9rjv2B=5_M8rE4y7H+28=3g@mail.gmail.com>
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
X-List-Received-Date: Fri, 06 Feb 2015 06:35:11 -0000
Content-Type: multipart/alternative; boundary=20cf3010ec0bc8232d050e659e1a

--20cf3010ec0bc8232d050e659e1a
Content-Type: text/plain; charset=UTF-8

The libdir problem occurs when I change $$[QT_INSTALL_PLUGINS/get] to
$$[QT_INSTALL_PLUGINS].


On Fri, Feb 6, 2015 at 1:32 PM, Qiang Yu <yuq825@gmail.com> wrote:

> I find some valuable info from
> https://github.com/meta-qt5/meta-qt5/wiki/Building-with-OE
>
> Now I use $$[QT_INSTALL_PLUGINS] which qmake will prefix /usr/lib/plugins
> with SYSROOT.
> But the Makefile has another problem when upgrade to 5.4:
> LIBS          = $(SUBLIBS)
> -L/opt/yocto-rel/yocto/0.1/build/linda-a20navi/tmp/work/cortexa7hf-vfp-vfpv4-neon-linda-linux-gnueabi/qtxmlpatterns/5.4.0-r0/build/lib
> -lQt5XmlPatterns
> -L/opt/yocto-rel/yocto/0.1/build/linda-a20navi/tmp/sysroots/a20navi/usr/lib/qt5/plugins/bearer
> -lqgenericbearer -L${libdir} -lQt5Network -lQt5Core -lz -lm -ldl -lrt
> -lpthread
>
> The ${libdir} expend to /usr/lib which is cross-compile unsafe.
>
> Another question, from the wiki I saw quit some work on the QT5 build
> path. Now that QT5 is enhancing its cross-compile
> support, will meta-qt5 switch to the native, less-patch and clean method?
>
> Regards,
> Qiang
>
> On Thu, Feb 5, 2015 at 10:43 PM, Qiang Yu <yuq825@gmail.com> wrote:
>
>> I find the problem:
>>
>> qt.prf:
>> plugpath = $$[QT_INSTALL_PLUGINS/get]
>>
>> both $$[QT_INSTALL_PLUGINS/get] and $$[QT_INSTALL_PLUGINS/raw] equal
>> /usr/lib/qt5/plugins
>> but $$[QT_INSTALL_PLUGINS] equals right path.
>>
>> Now my question is
>> 1. why there are three var of QT_INSTALL_PLUGINS?
>> 2. where are their values from?
>>
>> Thanks,
>> Qiang
>>
>> On Thu, Feb 5, 2015 at 11:04 AM, Qiang Yu <yuq825@gmail.com> wrote:
>>
>>> the share link version of the same Makefile's LIBS has no plugin link:
>>> LIBS          = $(SUBLIBS)
>>> -L/opt/yocto/build/sunxi/linda-a20navi-base/tmp/work/cortexa7hf-vfp-vfpv4-neon-linda-linux-gnueabi/qtxmlpatterns/5.3.2-r0/build/lib
>>> -lQt5XmlPatterns -lQt5Network -lQt5Core -lpthread
>>>
>>> On Thu, Feb 5, 2015 at 10:53 AM, Qiang Yu <yuq825@gmail.com> wrote:
>>>
>>>> Hi all,
>>>>
>>>> I use meta-qt5 for QT5 support. But I need static link the application
>>>> so I remove the -share from configure args and add -static.
>>>>
>>>> The "bitbake qtbase" is fine, but "bitbake qtxmlpatterns" do_compile
>>>> fail:
>>>> | linking ../../bin/xmlpatterns
>>>> |
>>>> /opt/yocto-rel/yocto/0.1/build/linda-a20navi/tmp/sysroots/x86_64-linux/usr/libexec/arm-linda-linux-gnueabi/gcc/arm-linda-linux-gnueabi/4.9.1/ld:
>>>> warning: library search path "/usr/lib/qt5/plugins/bearer" is unsafe for
>>>> cross-compilation
>>>> |
>>>> /opt/yocto-rel/yocto/0.1/build/linda-a20navi/tmp/sysroots/x86_64-linux/usr/libexec/arm-linda-linux-gnueabi/gcc/arm-linda-linux-gnueabi/4.9.1/ld:
>>>> cannot find -lqgenericbearer
>>>> | collect2: error: ld returned 1 exit status
>>>> | make[2]: *** [../../bin/xmlpatterns] Error 1
>>>> | make[2]: Leaving directory
>>>> `/opt/yocto-rel/yocto/0.1/build/linda-a20navi/tmp/work/cortexa7hf-vfp-vfpv4-neon-linda-linux-gnueabi/qtxmlpatterns/5.3.2-r0/build/tools/xmlpatterns'
>>>>
>>>> I find the Makefile generated by qmake for tools/xmlpatterns has the
>>>> wrong LIBS:
>>>> LIBS          = $(SUBLIBS)
>>>> -L/opt/yocto-rel/yocto/0.1/build/linda-a20navi/tmp/work/cortexa7hf-vfp-vfpv4-neon-linda-linux-gnueabi/qtxmlpatterns/5.3.2-r0/build/lib
>>>> -lQt5XmlPatterns -lQt5Network -lQt5Core -lz -lm -ldl -lrt
>>>> -L/usr/lib/qt5/plugins/bearer -lqgenericbearer -lpthread
>>>>
>>>> It seems the plugin lib dir doesn't have a cross compile prefix. Any
>>>> one meet this problem before or know how to fix static link plugin lib path?
>>>>
>>>> Thanks,
>>>> Qiang
>>>>
>>>
>>>
>>
>

--20cf3010ec0bc8232d050e659e1a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The libdir problem occurs when I change=C2=A0<span style=
=3D"font-size:12.8000001907349px">$$[QT_INSTALL_PLUGINS/get] to=C2=A0</span=
><span style=3D"font-size:12.8000001907349px">$$[QT_INSTALL_PLUGINS].</span=
><div><span style=3D"font-size:12.8000001907349px"><br></span></div></div><=
div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Feb 6, 201=
5 at 1:32 PM, Qiang Yu <span dir=3D"ltr">&lt;<a href=3D"mailto:yuq825@gmail=
.com" target=3D"_blank">yuq825@gmail.com</a>&gt;</span> wrote:<br><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex"><div dir=3D"ltr">I find some valuable info from<div><=
a href=3D"https://github.com/meta-qt5/meta-qt5/wiki/Building-with-OE" targe=
t=3D"_blank">https://github.com/meta-qt5/meta-qt5/wiki/Building-with-OE</a>=
</div><div><br></div><div>Now I use=C2=A0<span style=3D"font-size:12.800000=
1907349px">$$[QT_INSTALL_PLUGINS] which qmake will prefix /usr/lib/plugins =
with SYSROOT.</span></div><div><span style=3D"font-size:12.8000001907349px"=
>But the Makefile has another problem when upgrade to 5.4:</span></div><div=
><div><span style=3D"font-size:12.8000001907349px">LIBS =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0=3D $(SUBLIBS) -L/opt/yocto-rel/yocto/0.1/build/linda-a20n=
avi/tmp/work/cortexa7hf-vfp-vfpv4-neon-linda-linux-gnueabi/qtxmlpatterns/</=
span><span style=3D"font-size:12.8000001907349px">5.4.0-r0/build/lib -lQt5X=
mlPatterns -L/opt/yocto-rel/yocto/0.1/build/linda-a20navi/tmp/sysroots/a20n=
avi/usr/lib/qt5/plugins/bearer -lqgenericbe</span><span style=3D"font-size:=
12.8000001907349px">arer -L${libdir} -lQt5Network -lQt5Core -lz -lm -ldl -l=
rt -lpthread</span></div></div><div><span style=3D"font-size:12.80000019073=
49px"><br></span></div><div><span style=3D"font-size:12.8000001907349px">Th=
e ${libdir} expend to /usr/lib which is cross-compile unsafe.</span></div><=
div><span style=3D"font-size:12.8000001907349px"><br></span></div><div><spa=
n style=3D"font-size:12.8000001907349px">Another question, from the wiki I =
saw quit some work on the QT5 build path. Now that QT5 is enhancing its cro=
ss-compile</span></div><div><span style=3D"font-size:12.8000001907349px">su=
pport, will meta-qt5 switch to the native, less-patch and clean method?</sp=
an></div><div><span style=3D"font-size:12.8000001907349px"><br></span></div=
><div><span style=3D"font-size:12.8000001907349px">Regards,</span></div><di=
v><span style=3D"font-size:12.8000001907349px">Qiang</span></div></div><div=
 class=3D"HOEnZb"><div class=3D"h5"><div class=3D"gmail_extra"><br><div cla=
ss=3D"gmail_quote">On Thu, Feb 5, 2015 at 10:43 PM, Qiang Yu <span dir=3D"l=
tr">&lt;<a href=3D"mailto:yuq825@gmail.com" target=3D"_blank">yuq825@gmail.=
com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr=
">I find the problem:<div><br><div>qt.prf:</div><div>plugpath =3D $$[QT_INS=
TALL_PLUGINS/get]<br></div><div><br></div><div><div>both $$[QT_INSTALL_PLUG=
INS/get] and $$[QT_INSTALL_PLUGINS/raw] equal /usr/lib/qt5/plugins</div></d=
iv></div><div>but $$[QT_INSTALL_PLUGINS] equals right path.</div><div><br><=
/div><div>Now my question is</div><div>1. why there are three var of QT_INS=
TALL_PLUGINS?</div><div>2. where are their values from?</div><div><br></div=
><div>Thanks,</div><div>Qiang</div></div><div><div><div class=3D"gmail_extr=
a"><br><div class=3D"gmail_quote">On Thu, Feb 5, 2015 at 11:04 AM, Qiang Yu=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:yuq825@gmail.com" target=3D"_blank=
">yuq825@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<div dir=3D"ltr">the share link version of the same Makefile&#39;s LIBS has=
 no plugin link:<div><div>LIBS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D $(SUBL=
IBS) -L/opt/yocto/build/sunxi/linda-a20navi-base/tmp/work/cortexa7hf-vfp-vf=
pv4-neon-linda-linux-gnueabi/qtxmlpatterns/5.3.2-r0/build/lib -lQt5XmlPatte=
rns -lQt5Network -lQt5Core -lpthread</div></div></div><div><div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Feb 5, 2015 at 10:5=
3 AM, Qiang Yu <span dir=3D"ltr">&lt;<a href=3D"mailto:yuq825@gmail.com" ta=
rget=3D"_blank">yuq825@gmail.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div dir=3D"ltr">Hi all,<div><br></div><div>I use meta-qt5 fo=
r QT5 support. But I need static link the application so I remove the -shar=
e from configure args and add -static.</div><div><br></div><div>The &quot;b=
itbake qtbase&quot; is fine, but &quot;bitbake qtxmlpatterns&quot; do_compi=
le fail:</div><div><div>| linking ../../bin/xmlpatterns</div><div>| /opt/yo=
cto-rel/yocto/0.1/build/linda-a20navi/tmp/sysroots/x86_64-linux/usr/libexec=
/arm-linda-linux-gnueabi/gcc/arm-linda-linux-gnueabi/4.9.1/ld: warning: lib=
rary search path &quot;/usr/lib/qt5/plugins/bearer&quot; is unsafe for cros=
s-compilation</div><div>| /opt/yocto-rel/yocto/0.1/build/linda-a20navi/tmp/=
sysroots/x86_64-linux/usr/libexec/arm-linda-linux-gnueabi/gcc/arm-linda-lin=
ux-gnueabi/4.9.1/ld: cannot find -lqgenericbearer</div><div>| collect2: err=
or: ld returned 1 exit status</div><div>| make[2]: *** [../../bin/xmlpatter=
ns] Error 1</div><div>| make[2]: Leaving directory `/opt/yocto-rel/yocto/0.=
1/build/linda-a20navi/tmp/work/cortexa7hf-vfp-vfpv4-neon-linda-linux-gnueab=
i/qtxmlpatterns/5.3.2-r0/build/tools/xmlpatterns&#39;</div></div><div><br><=
/div><div>I find the Makefile generated by qmake for tools/xmlpatterns has =
the wrong LIBS:</div><div><div>LIBS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D $=
(SUBLIBS) -L/opt/yocto-rel/yocto/0.1/build/linda-a20navi/tmp/work/cortexa7h=
f-vfp-vfpv4-neon-linda-linux-gnueabi/qtxmlpatterns/5.3.2-r0/build/lib -lQt5=
XmlPatterns -lQt5Network -lQt5Core -lz -lm -ldl -lrt -L/usr/lib/qt5/plugins=
/bearer -lqgenericbearer -lpthread</div></div><div><br></div><div>It seems =
the plugin lib dir doesn&#39;t have a cross compile prefix. Any one meet th=
is problem before or know how to fix static link plugin lib path?</div><div=
><br></div><div>Thanks,</div><div>Qiang</div></div>
</blockquote></div><br></div>
</div></div></blockquote></div><br></div>
</div></div></blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--20cf3010ec0bc8232d050e659e1a--

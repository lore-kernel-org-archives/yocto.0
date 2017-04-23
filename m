Return-Path: <dbensoussan@synapticon.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7DEDE00AD0; Sun, 23 Apr 2017 01:40:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.171 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.171 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f171.google.com (mail-yb0-f171.google.com
	[209.85.213.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABC8FE00AC0
	for <yocto@yoctoproject.org>; Sun, 23 Apr 2017 01:40:36 -0700 (PDT)
Received: by mail-yb0-f171.google.com with SMTP id 81so54346471ybp.0
	for <yocto@yoctoproject.org>; Sun, 23 Apr 2017 01:40:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=synapticon-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=LH8PsCW7Oa6e96ynb9OjLy5VyJSdkAQlnLrCOP7eRXc=;
	b=QxNn0fv8aCUtsZ6b+OHZ1ic7CcCugxB0UF+5KfDSMorN1Gr5X++ZWAlVy7Gjci6gUi
	mmX3Yura88PHoTjMrakLx1qr7X10v8mdEunwfyemUlrCbjWtg6yaq9jgqNyxVOP25Kaz
	9hmVcnXVBSDB3UAb+lyGLISYwWW9hyTTydzwAleVt/KSlCRdKzfEDPGcVUd949aTveY3
	Z9x2lobaEg04ysD2eAClGbbtSOiqcB2tBxChrVRVrYi/xmEyr2YxiCRIgXbdgkJAYO5U
	CREb1OZDkgZf5RnrWqFlutsleKMcyW1LunigCGFEYW2YLxW0ILLcfWmBnaigIBg441AE
	jsfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=LH8PsCW7Oa6e96ynb9OjLy5VyJSdkAQlnLrCOP7eRXc=;
	b=qf1aTZvi723xKtcyUrsfefOnaZe/FNgmniE09XTJFyJ6+eJfYw05QD8fB0/mgAK0H+
	ln0FvBI1pvKCnAsLZlrSXsqFmnqUxKnVhnZ+MhjmzeblsWYjU3p7HgliQiivHMyfyk3t
	nI9CtM5Jq2xO7uSievgwm5PNljQ0r812i7cN8CXgvAn12MJJ6Eae5wGgNfGdmdV+e41W
	o5UyhBaTx6EAsGmcz20H8A7xczLSQLWjPmnsAOi3zpUsX9OLuozoK2rFukJMRITWmx9X
	ETXqs+dh4XVcKA7BJP3y26eYw1KrdvAnnmhkRMUDpax4SVgBjfiioi9XWqkdu9D/BABF
	3MMQ==
X-Gm-Message-State: AN3rC/7cLrWde0KH/w8UMnaaX4Wtdzbx6p7zX5BEDToZELO/UJQRXYPi
	Embc1yXZ6pCogH9/MPyaJ517z+vnDg==
X-Received: by 10.37.66.3 with SMTP id p3mr660103yba.132.1492936836120; Sun,
	23 Apr 2017 01:40:36 -0700 (PDT)
MIME-Version: 1.0
References: <CACDGP4GBGn6KNH8m+UHhbWajbKTMppPW4g8ePKqfhm9fdpXE2g@mail.gmail.com>
	<20170421185026.GA8444@linux-uys3>
	<CACDGP4F4jTRdLuZD0e98qe9H5qcQEL2Yo+n2wKPePUrOtTUi+g@mail.gmail.com>
In-Reply-To: <CACDGP4F4jTRdLuZD0e98qe9H5qcQEL2Yo+n2wKPePUrOtTUi+g@mail.gmail.com>
From: David Bensoussan <dbensoussan@synapticon.com>
Date: Sun, 23 Apr 2017 08:40:25 +0000
Message-ID: <CACDGP4F3DJA5JRX5tek3_qZ5eSv2WT+o820JvP3xicj3LUYgnw@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: bitbake core-image-base -c do_populate_sdk fails with glibc (unmet dependencies)
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
X-List-Received-Date: Sun, 23 Apr 2017 08:40:41 -0000
Content-Type: multipart/alternative; boundary=001a11c04eb4ca2276054dd17153

--001a11c04eb4ca2276054dd17153
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I managed to track down how to create the SDK. Sorry for the long answer
but it might help people googling it.

DISTRO_FEATURES ?=3D "${DISTRO_FEATURES_DEFAULT} ${DISTRO_FEATURES_LIBC}
${POKY_DEFAULT_DISTRO_FEATURES}" in *meta-poky/conf/distro/poky.conf*
DISTRO_FEATURES_LIBC is defined as DISTRO_FEATURES_LIBC_DEFAULT in
*meta/conf/distro/include/default-distrovars.inc*
DISTRO_FEATURES_LIBC_DEFAULT ?=3D "ipv4 ipv6 libc-backtrace libc-big-macros
libc-bsd libc-cxx-tests libc-catgets libc-charsets libc-crypt \
libc-crypt-ufc libc-db-aliases libc-envz libc-fcvt libc-fmtmsg libc-fstab
libc-ftraverse \
libc-getlogin libc-idn libc-inet-anl libc-libm libc-locales
libc-locale-code \
libc-memusage libc-nis libc-nsswitch libc-rcmd libc-rtld-debug libc-spawn
libc-streams libc-sunrpc \
libc-utmp libc-utmpx libc-wordexp libc-posix-clang-wchar libc-posix-regexp
libc-posix-regexp-glibc \
libc-posix-wchar-io" i*n the same file*

And finally:

LIBC_DEPENDENCIES =3D "libsegfault \
    glibc \
    glibc-dbg \
    glibc-dev \
    glibc-utils \
    glibc-thread-db \
    ${@get_libc_locales_dependencies(d)}"

LIBC_LOCALE_DEPENDENCIES =3D "\
glibc-localedata-i18n \
glibc-gconv-ibm850 \
glibc-gconv-cp1252 \
glibc-gconv-iso8859-1 \
glibc-gconv-iso8859-15"

def get_libc_locales_dependencies(d):
    if 'libc-locales' in (d.getVar('DISTRO_FEATURES', True) or '').split() =
:
        return d.getVar('LIBC_LOCALE_DEPENDENCIES', True) or ''
    else:
        return ''


*in ../meta/conf/distro/include/tclibc-glibc.inc*

This is how they are enabled. To make it work, I added in my local.conf:
LIBC_DEPENDENCIES_remove +=3D "glibc-gconv-cp1252 glibc-gconv-ibm850
glibc-gconv-iso8859-1 glibc-gconv-iso8859-15 glibc-localedata-i18n"

Now, I simply wonder why is there a "compatibility issue" having them in
the DISTRO_FEATURES.


On Sat, 22 Apr 2017 at 09:49 David Bensoussan <dbensoussan@synapticon.com>
wrote:

> It was a typo, sorry, I typed it without the "do_"
>
> On Fri, 21 Apr 2017 at 20:50 Trevor Woerner <twoerner@gmail.com> wrote:
>
>> On Fri 2017-04-21 @ 11:37:44 AM, David Bensoussan wrote:
>> > I wanted to generate an sdk and met these errors while executing:
>> > $ bitbake core-image-base -c do_populate_sdk
>>
>> Does adding the "do_" work? Is there any difference if you type:
>>
>>         $ bitbake core-image-base -c populate_sdk
>>
>> ?
>>
> --
>
> *David bensoussan*
> Roboticist / Embedded Software Engineer
> ------------------------------
>
> *Synapticon* | Robotic Control Systems
> Mobile: 015779804515
> Fax: +49 7031 / 30 478 -99 <+49%207031%203047899>
>
> *synapticon.com* <https://www.synapticon.com/> | Twitter
> <https://twitter.com/#!/synapticon_co> | Facebook
> <https://fb.com/Synapticon>
>
> Synapticon GmbH | Daimlerstra=C3=9Fe 26 | 71101 Sch=C3=B6naich, Germany
> Secretary +49 7031 / 30 478 -0 | Managing Director: Nikolai Ensslen
> Amtsgericht Stuttgart HRB 756076 | USt-ID DE271647127
>
> This message and any files transmitted with it are confidential and
> intended solely for the use of the individual or entity to whom they are
> addressed. Please notify the sender immediately if you have received this
> e-mail by mistake and delete it from your system.
>
--=20

*David bensoussan*
Roboticist / Embedded Software Engineer
------------------------------

*Synapticon* | Robotic Control Systems
Mobile: 015779804515
Fax: +49 7031 / 30 478 -99

*synapticon.com* <https://www.synapticon.com/> | Twitter
<https://twitter.com/#!/synapticon_co> | Facebook
<https://fb.com/Synapticon>

Synapticon GmbH | Daimlerstra=C3=9Fe 26 | 71101 Sch=C3=B6naich, Germany
Secretary +49 7031 / 30 478 -0 | Managing Director: Nikolai Ensslen
Amtsgericht Stuttgart HRB 756076 | USt-ID DE271647127

This message and any files transmitted with it are confidential and
intended solely for the use of the individual or entity to whom they are
addressed. Please notify the sender immediately if you have received this
e-mail by mistake and delete it from your system.

--001a11c04eb4ca2276054dd17153
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I managed to track down how to create the SDK. Sorry for t=
he long answer but it might help people googling it.<br><div><br></div><div=
>DISTRO_FEATURES ?=3D &quot;${DISTRO_FEATURES_DEFAULT} ${DISTRO_FEATURES_LI=
BC} ${POKY_DEFAULT_DISTRO_FEATURES}&quot; in <b>meta-poky/conf/distro/poky.=
conf</b></div><div>DISTRO_FEATURES_LIBC is defined as DISTRO_FEATURES_LIBC_=
DEFAULT in=C2=A0<b>meta/conf/distro/include/default-distrovars.inc</b><br><=
/div><div><div>DISTRO_FEATURES_LIBC_DEFAULT ?=3D &quot;ipv4 ipv6 libc-backt=
race libc-big-macros libc-bsd libc-cxx-tests libc-catgets libc-charsets lib=
c-crypt \</div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre=
">					</span>libc-crypt-ufc libc-db-aliases libc-envz libc-fcvt libc-fmtms=
g libc-fstab libc-ftraverse \</div><div><span class=3D"Apple-tab-span" styl=
e=3D"white-space:pre">					</span>libc-getlogin libc-idn libc-inet-anl libc=
-libm libc-locales libc-locale-code \</div><div><span class=3D"Apple-tab-sp=
an" style=3D"white-space:pre">					</span>libc-memusage libc-nis libc-nsswi=
tch libc-rcmd libc-rtld-debug libc-spawn libc-streams libc-sunrpc \</div><d=
iv><span class=3D"Apple-tab-span" style=3D"white-space:pre">					</span>lib=
c-utmp libc-utmpx libc-wordexp libc-posix-clang-wchar libc-posix-regexp lib=
c-posix-regexp-glibc \</div><div><span class=3D"Apple-tab-span" style=3D"wh=
ite-space:pre">					</span>libc-posix-wchar-io&quot; i<b>n the same file</b=
></div></div><div><b><br></b></div><div>And finally:</div><div><br></div><d=
iv><div>LIBC_DEPENDENCIES =3D &quot;libsegfault \</div><div><span class=3D"=
Apple-tab-span" style=3D"white-space:pre">		</span> =C2=A0 =C2=A0 glibc \</=
div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>=
 =C2=A0 =C2=A0 glibc-dbg \</div><div><span class=3D"Apple-tab-span" style=
=3D"white-space:pre">		</span> =C2=A0 =C2=A0 glibc-dev \</div><div><span cl=
ass=3D"Apple-tab-span" style=3D"white-space:pre">		</span> =C2=A0 =C2=A0 gl=
ibc-utils \</div><div><span class=3D"Apple-tab-span" style=3D"white-space:p=
re">		</span> =C2=A0 =C2=A0 glibc-thread-db \</div><div><span class=3D"Appl=
e-tab-span" style=3D"white-space:pre">		</span> =C2=A0 =C2=A0 ${@get_libc_l=
ocales_dependencies(d)}&quot;</div><div><br></div><div>LIBC_LOCALE_DEPENDEN=
CIES =3D &quot;\</div><div><span class=3D"Apple-tab-span" style=3D"white-sp=
ace:pre">	</span>glibc-localedata-i18n \</div><div><span class=3D"Apple-tab=
-span" style=3D"white-space:pre">	</span>glibc-gconv-ibm850 \</div><div><sp=
an class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>glibc-gconv-c=
p1252 \</div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">=
	</span>glibc-gconv-iso8859-1 \</div><div><span class=3D"Apple-tab-span" st=
yle=3D"white-space:pre">	</span>glibc-gconv-iso8859-15&quot;</div><div><br>=
</div><div>def get_libc_locales_dependencies(d):</div><div>=C2=A0 =C2=A0 if=
 &#39;libc-locales&#39; in (d.getVar(&#39;DISTRO_FEATURES&#39;, True) or &#=
39;&#39;).split() :</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return d.getVar(&=
#39;LIBC_LOCALE_DEPENDENCIES&#39;, True) or &#39;&#39;</div><div>=C2=A0 =C2=
=A0 else:</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return &#39;&#39;</div><div=
 style=3D"font-weight:bold"><br></div></div><div><b>in ../meta/conf/distro/=
include/tclibc-glibc.inc<br></b></div><div><b><br></b></div><div>This is ho=
w they are enabled. To make it work, I added in my local.conf:<br><div>LIBC=
_DEPENDENCIES_remove +=3D &quot;glibc-gconv-cp1252 glibc-gconv-ibm850 glibc=
-gconv-iso8859-1 glibc-gconv-iso8859-15 glibc-localedata-i18n&quot;</div></=
div><div><br>Now, I simply wonder why is there a &quot;compatibility issue&=
quot; having them in the DISTRO_FEATURES.=C2=A0</div><br></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr">On Sat, 22 Apr 2017 at 09:49 David Bens=
oussan &lt;<a href=3D"mailto:dbensoussan@synapticon.com">dbensoussan@synapt=
icon.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D=
"ltr">It was a typo, sorry, I typed it without the &quot;do_&quot;</div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr">On Fri, 21 Apr 2017 at 20:50 T=
revor Woerner &lt;<a href=3D"mailto:twoerner@gmail.com" target=3D"_blank">t=
woerner@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On=
 Fri 2017-04-21 @ 11:37:44 AM, David Bensoussan wrote:<br>
&gt; I wanted to generate an sdk and met these errors while executing:<br>
&gt; $ bitbake core-image-base -c do_populate_sdk<br>
<br>
Does adding the &quot;do_&quot; work? Is there any difference if you type:<=
br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 $ bitbake core-image-base -c populate_sdk<br>
<br>
?<br>
</blockquote></div><div dir=3D"ltr">-- <br></div><div data-smartmail=3D"gma=
il_signature"><div dir=3D"ltr"><p id=3D"m_1602349764644549906inbox-inbox-pe=
rson-name" style=3D"box-sizing:border-box;font-family:arial,helvetica,sans-=
serif;font-size:13.3333px;color:rgb(0,0,0);padding:0px;margin:1em 0px"><str=
ong style=3D"box-sizing:border-box">David bensoussan</strong><br style=3D"b=
ox-sizing:border-box">Roboticist / Embedded Software Engineer</p><hr style=
=3D"box-sizing:border-box;margin:0px;padding:0px;height:1px;background-imag=
e:initial;background-position:initial;background-size:initial;background-re=
peat:initial;background-origin:initial;background-clip:initial;background-c=
olor:rgb(229,27,65);border:none;color:rgb(17,17,17);font-family:arial,helve=
tica,sans-serif;font-size:13.3333px"><p id=3D"m_1602349764644549906inbox-in=
box-tag-line" style=3D"box-sizing:border-box;font-family:arial,helvetica,sa=
ns-serif;font-size:12pt;color:rgb(0,0,0);padding:0px;margin:1em 0px"><stron=
g style=3D"box-sizing:border-box">Synapticon</strong><span class=3D"m_16023=
49764644549906inbox-inbox-Apple-converted-space">=C2=A0</span>| Robotic Con=
trol Systems</p><table cellpadding=3D"0" cellspacing=3D"0" style=3D"box-siz=
ing:border-box;font-family:arial,helvetica,sans-serif;font-size:13.3333px;c=
olor:rgb(17,17,17);padding:0px"><tbody style=3D"box-sizing:border-box"><tr =
style=3D"box-sizing:border-box"><td style=3D"box-sizing:border-box;color:rg=
b(0,0,0);padding:0px 15px 3px 0px">Mobile:</td><td style=3D"box-sizing:bord=
er-box;color:rgb(0,0,0);padding:0px 15px 3px 0px">015779804515</td></tr><tr=
 style=3D"box-sizing:border-box"><td style=3D"box-sizing:border-box;color:r=
gb(0,0,0);padding:0px 15px 3px 0px">Fax:</td><td style=3D"box-sizing:border=
-box;color:rgb(0,0,0);padding:0px 15px 3px 0px"><a href=3D"tel:+49%207031%2=
03047899" value=3D"+4970313047899" target=3D"_blank">+49 7031 / 30 478 -99<=
/a></td></tr></tbody></table><p style=3D"box-sizing:border-box;font-family:=
arial,helvetica,sans-serif;font-size:13.3333px;color:rgb(0,0,0);padding:0px=
;margin:1em 0px"><a href=3D"https://www.synapticon.com/" style=3D"box-sizin=
g:border-box;color:rgb(1,81,154)" target=3D"_blank"><strong style=3D"box-si=
zing:border-box">synapticon.com</strong></a><span class=3D"m_16023497646445=
49906inbox-inbox-Apple-converted-space">=C2=A0</span>|<span class=3D"m_1602=
349764644549906inbox-inbox-Apple-converted-space">=C2=A0</span><a href=3D"h=
ttps://twitter.com/#!/synapticon_co" style=3D"box-sizing:border-box;color:r=
gb(1,81,154)" target=3D"_blank">Twitter</a><span class=3D"m_160234976464454=
9906inbox-inbox-Apple-converted-space">=C2=A0</span>|<span class=3D"m_16023=
49764644549906inbox-inbox-Apple-converted-space">=C2=A0</span><a href=3D"ht=
tps://fb.com/Synapticon" style=3D"box-sizing:border-box;color:rgb(1,81,154)=
" target=3D"_blank">Facebook</a></p><p id=3D"m_1602349764644549906inbox-inb=
ox-address" style=3D"box-sizing:border-box;font-family:arial,helvetica,sans=
-serif;font-size:13.3333px;color:rgb(153,153,153);padding:0px;margin:1em 0p=
x">Synapticon GmbH | Daimlerstra=C3=9Fe 26 | 71101 Sch=C3=B6naich, Germany<=
span class=3D"m_1602349764644549906inbox-inbox-Apple-converted-space">=C2=
=A0</span><br style=3D"box-sizing:border-box">Secretary +49 7031 / 30 478 -=
0 | Managing Director: Nikolai Ensslen<span class=3D"m_1602349764644549906i=
nbox-inbox-Apple-converted-space">=C2=A0</span><br style=3D"box-sizing:bord=
er-box">Amtsgericht Stuttgart HRB 756076 | USt-ID DE271647127<span class=3D=
"m_1602349764644549906inbox-inbox-Apple-converted-space">=C2=A0</span><br s=
tyle=3D"box-sizing:border-box"></p><p style=3D"box-sizing:border-box;font-f=
amily:arial,helvetica,sans-serif;font-size:13.3333px;color:rgb(0,0,0);paddi=
ng:0px;margin:1em 0px"></p><p id=3D"m_1602349764644549906inbox-inbox-confid=
entiality" style=3D"box-sizing:border-box;font-family:arial,helvetica,sans-=
serif;font-size:7.5pt;color:rgb(153,153,153);padding:0px;margin:1em 0px;wid=
th:450px">This message and any files transmitted with it are confidential a=
nd intended solely for the use of the individual or entity to whom they are=
 addressed. Please notify the sender immediately if you have received this =
e-mail by mistake and delete it from your system.</p></div></div></blockquo=
te></div><div dir=3D"ltr">-- <br></div><div data-smartmail=3D"gmail_signatu=
re"><div dir=3D"ltr"><p id=3D"inbox-inbox-person-name" style=3D"box-sizing:=
border-box;font-family:arial,helvetica,sans-serif;font-size:13.3333px;color=
:rgb(0,0,0);padding:0px;margin:1em 0px"><strong style=3D"box-sizing:border-=
box">David bensoussan</strong><br style=3D"box-sizing:border-box">Roboticis=
t / Embedded Software Engineer</p><hr style=3D"box-sizing:border-box;margin=
:0px;padding:0px;height:1px;background-image:initial;background-position:in=
itial;background-size:initial;background-repeat:initial;background-origin:i=
nitial;background-clip:initial;background-color:rgb(229,27,65);border:none;=
color:rgb(17,17,17);font-family:arial,helvetica,sans-serif;font-size:13.333=
3px"><p id=3D"inbox-inbox-tag-line" style=3D"box-sizing:border-box;font-fam=
ily:arial,helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0);padding:0px;=
margin:1em 0px"><strong style=3D"box-sizing:border-box">Synapticon</strong>=
<span class=3D"inbox-inbox-Apple-converted-space">=C2=A0</span>| Robotic Co=
ntrol Systems</p><table cellpadding=3D"0" cellspacing=3D"0" style=3D"box-si=
zing:border-box;font-family:arial,helvetica,sans-serif;font-size:13.3333px;=
color:rgb(17,17,17);padding:0px"><tbody style=3D"box-sizing:border-box"><tr=
 style=3D"box-sizing:border-box"><td style=3D"box-sizing:border-box;color:r=
gb(0,0,0);padding:0px 15px 3px 0px">Mobile:</td><td style=3D"box-sizing:bor=
der-box;color:rgb(0,0,0);padding:0px 15px 3px 0px">015779804515</td></tr><t=
r style=3D"box-sizing:border-box"><td style=3D"box-sizing:border-box;color:=
rgb(0,0,0);padding:0px 15px 3px 0px">Fax:</td><td style=3D"box-sizing:borde=
r-box;color:rgb(0,0,0);padding:0px 15px 3px 0px">+49 7031 / 30 478 -99</td>=
</tr></tbody></table><p style=3D"box-sizing:border-box;font-family:arial,he=
lvetica,sans-serif;font-size:13.3333px;color:rgb(0,0,0);padding:0px;margin:=
1em 0px"><a href=3D"https://www.synapticon.com/" style=3D"box-sizing:border=
-box;color:rgb(1,81,154)"><strong style=3D"box-sizing:border-box">synaptico=
n.com</strong></a><span class=3D"inbox-inbox-Apple-converted-space">=C2=A0<=
/span>|<span class=3D"inbox-inbox-Apple-converted-space">=C2=A0</span><a hr=
ef=3D"https://twitter.com/#!/synapticon_co" style=3D"box-sizing:border-box;=
color:rgb(1,81,154)">Twitter</a><span class=3D"inbox-inbox-Apple-converted-=
space">=C2=A0</span>|<span class=3D"inbox-inbox-Apple-converted-space">=C2=
=A0</span><a href=3D"https://fb.com/Synapticon" style=3D"box-sizing:border-=
box;color:rgb(1,81,154)">Facebook</a></p><p id=3D"inbox-inbox-address" styl=
e=3D"box-sizing:border-box;font-family:arial,helvetica,sans-serif;font-size=
:13.3333px;color:rgb(153,153,153);padding:0px;margin:1em 0px">Synapticon Gm=
bH | Daimlerstra=C3=9Fe 26 | 71101 Sch=C3=B6naich, Germany<span class=3D"in=
box-inbox-Apple-converted-space">=C2=A0</span><br style=3D"box-sizing:borde=
r-box">Secretary +49 7031 / 30 478 -0 | Managing Director: Nikolai Ensslen<=
span class=3D"inbox-inbox-Apple-converted-space">=C2=A0</span><br style=3D"=
box-sizing:border-box">Amtsgericht Stuttgart HRB 756076 | USt-ID DE27164712=
7<span class=3D"inbox-inbox-Apple-converted-space">=C2=A0</span><br style=
=3D"box-sizing:border-box"></p><p style=3D"box-sizing:border-box;font-famil=
y:arial,helvetica,sans-serif;font-size:13.3333px;color:rgb(0,0,0);padding:0=
px;margin:1em 0px"></p><p id=3D"inbox-inbox-confidentiality" style=3D"box-s=
izing:border-box;font-family:arial,helvetica,sans-serif;font-size:7.5pt;col=
or:rgb(153,153,153);padding:0px;margin:1em 0px;width:450px">This message an=
d any files transmitted with it are confidential and intended solely for th=
e use of the individual or entity to whom they are addressed. Please notify=
 the sender immediately if you have received this e-mail by mistake and del=
ete it from your system.</p></div></div>

--001a11c04eb4ca2276054dd17153--

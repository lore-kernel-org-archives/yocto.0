Return-Path: <dbensoussan@synapticon.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A634E00AD0; Sun, 23 Apr 2017 02:09:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, MANY_SPAN_IN_TEXT,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 MANY_SPAN_IN_TEXT Many <SPAN> tags embedded within text
Received: from mail-yw0-f174.google.com (mail-yw0-f174.google.com
	[209.85.161.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BECE1E00872
	for <yocto@yoctoproject.org>; Sun, 23 Apr 2017 02:09:32 -0700 (PDT)
Received: by mail-yw0-f174.google.com with SMTP id l18so7781781ywh.3
	for <yocto@yoctoproject.org>; Sun, 23 Apr 2017 02:09:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=synapticon-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=W2B6jFVy7QvaqFDYBqcgAP9w9Y5fzpsUMX8nAFYIATc=;
	b=F2Z3JMs+owF0pUkIAPx3L6FCqeihGFYAzZGjErM/WNl6QbAkD31Y2GCjnEW018UVUV
	dSKXp1tNuV0C5QpgsO9Lp4kKu7atVgARDmujBHHS2sMIgiXqGdbPka4whF5TFwYIbrYr
	xgDOn3N89Hplz80kJAo2iydXpvUHl+ArLDdkCbil2MysBBoHELkycUUH/PzQoMlJHJGu
	6B6Ml9I5/+9APOJdgfDRJsFuv9B+VJQLK7/ngNlnZAdU/+G0VJAVt96oSLekgr4v/gB6
	mbr/45WLmNSWVMw5E4mSNQDTBQMxdluCTJyCApM7uonCLjSoCb5S0rTS5MuDWgrYhUz/
	bCHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=W2B6jFVy7QvaqFDYBqcgAP9w9Y5fzpsUMX8nAFYIATc=;
	b=ox9gMcap1semuMmUx8tuXwL/0dNd9BIXU/UIyjURHEqh+thv+xrUIEyb8cpE5jMGx9
	ZpzzumeLYIw4Vy6T4IcHe0XiWHsKB95AOQgD5eOHhXUinqCN1MTvsBZN1sOogf9Td4tG
	ah5QQlbmczPsjrDYv0QSQMFWR53/Ci1DK+ePkGAGV0L92W6chNRCFwkRxfROwRSIaJ6T
	qfAufqRAXBJRwGw9JVOiVEnE9CVgDFpCC2iFOGPdih3U9kCZIK2dk56H6m+kkBwXsu6M
	5efizTLLdWSL5cZyetti9T7wGKvtfj+acHXNKXtbdpCPHKjUo7niQ3ef45I2+vTCL0n7
	90lQ==
X-Gm-Message-State: AN3rC/4S08LXQwfUJPGjYvk09OX6yNqnXH7DR/FqR4lFwjeObgxUgoJR
	+ZwMsYVpZxCFh9bi8HJnnkenC61MfQ==
X-Received: by 10.129.166.129 with SMTP id d123mr621474ywh.108.1492938571866; 
	Sun, 23 Apr 2017 02:09:31 -0700 (PDT)
MIME-Version: 1.0
References: <CACDGP4GBGn6KNH8m+UHhbWajbKTMppPW4g8ePKqfhm9fdpXE2g@mail.gmail.com>
	<20170421185026.GA8444@linux-uys3>
	<CACDGP4F4jTRdLuZD0e98qe9H5qcQEL2Yo+n2wKPePUrOtTUi+g@mail.gmail.com>
	<CACDGP4F3DJA5JRX5tek3_qZ5eSv2WT+o820JvP3xicj3LUYgnw@mail.gmail.com>
In-Reply-To: <CACDGP4F3DJA5JRX5tek3_qZ5eSv2WT+o820JvP3xicj3LUYgnw@mail.gmail.com>
From: David Bensoussan <dbensoussan@synapticon.com>
Date: Sun, 23 Apr 2017 09:09:21 +0000
Message-ID: <CACDGP4FrVPiNhw5qNc_b=AT8MbeOgGU1OmZR8oGRm_jfVzXadQ@mail.gmail.com>
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
X-List-Received-Date: Sun, 23 Apr 2017 09:09:36 -0000
Content-Type: multipart/alternative; boundary=94eb2c114c8e3f7d0d054dd1d9f3

--94eb2c114c8e3f7d0d054dd1d9f3
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I forgot to precise, compiling, doesn't work on the host system, it cannot
compile a simple .c file, not finding "stdio.h".

On Sun, 23 Apr 2017 at 10:40 David Bensoussan <dbensoussan@synapticon.com>
wrote:

> I managed to track down how to create the SDK. Sorry for the long answer
> but it might help people googling it.
>
> DISTRO_FEATURES ?=3D "${DISTRO_FEATURES_DEFAULT} ${DISTRO_FEATURES_LIBC}
> ${POKY_DEFAULT_DISTRO_FEATURES}" in *meta-poky/conf/distro/poky.conf*
> DISTRO_FEATURES_LIBC is defined as DISTRO_FEATURES_LIBC_DEFAULT in
> *meta/conf/distro/include/default-distrovars.inc*
> DISTRO_FEATURES_LIBC_DEFAULT ?=3D "ipv4 ipv6 libc-backtrace libc-big-macr=
os
> libc-bsd libc-cxx-tests libc-catgets libc-charsets libc-crypt \
> libc-crypt-ufc libc-db-aliases libc-envz libc-fcvt libc-fmtmsg libc-fstab
> libc-ftraverse \
> libc-getlogin libc-idn libc-inet-anl libc-libm libc-locales
> libc-locale-code \
> libc-memusage libc-nis libc-nsswitch libc-rcmd libc-rtld-debug libc-spawn
> libc-streams libc-sunrpc \
> libc-utmp libc-utmpx libc-wordexp libc-posix-clang-wchar libc-posix-regex=
p
> libc-posix-regexp-glibc \
> libc-posix-wchar-io" i*n the same file*
>
> And finally:
>
> LIBC_DEPENDENCIES =3D "libsegfault \
>     glibc \
>     glibc-dbg \
>     glibc-dev \
>     glibc-utils \
>     glibc-thread-db \
>     ${@get_libc_locales_dependencies(d)}"
>
> LIBC_LOCALE_DEPENDENCIES =3D "\
> glibc-localedata-i18n \
> glibc-gconv-ibm850 \
> glibc-gconv-cp1252 \
> glibc-gconv-iso8859-1 \
> glibc-gconv-iso8859-15"
>
> def get_libc_locales_dependencies(d):
>     if 'libc-locales' in (d.getVar('DISTRO_FEATURES', True) or '').split(=
)
> :
>         return d.getVar('LIBC_LOCALE_DEPENDENCIES', True) or ''
>     else:
>         return ''
>
>
> *in ../meta/conf/distro/include/tclibc-glibc.inc*
>
> This is how they are enabled. To make it work, I added in my local.conf:
> LIBC_DEPENDENCIES_remove +=3D "glibc-gconv-cp1252 glibc-gconv-ibm850
> glibc-gconv-iso8859-1 glibc-gconv-iso8859-15 glibc-localedata-i18n"
>
> Now, I simply wonder why is there a "compatibility issue" having them in
> the DISTRO_FEATURES.
>
>
> On Sat, 22 Apr 2017 at 09:49 David Bensoussan <dbensoussan@synapticon.com=
>
> wrote:
>
>> It was a typo, sorry, I typed it without the "do_"
>>
>> On Fri, 21 Apr 2017 at 20:50 Trevor Woerner <twoerner@gmail.com> wrote:
>>
>>> On Fri 2017-04-21 @ 11:37:44 AM, David Bensoussan wrote:
>>> > I wanted to generate an sdk and met these errors while executing:
>>> > $ bitbake core-image-base -c do_populate_sdk
>>>
>>> Does adding the "do_" work? Is there any difference if you type:
>>>
>>>         $ bitbake core-image-base -c populate_sdk
>>>
>>> ?
>>>
>> --
>>
>> *David bensoussan*
>> Roboticist / Embedded Software Engineer
>> ------------------------------
>>
>> *Synapticon* | Robotic Control Systems
>> Mobile: 015779804515
>> Fax: +49 7031 / 30 478 -99 <+49%207031%203047899>
>>
>> *synapticon.com* <https://www.synapticon.com/> | Twitter
>> <https://twitter.com/#!/synapticon_co> | Facebook
>> <https://fb.com/Synapticon>
>>
>> Synapticon GmbH | Daimlerstra=C3=9Fe 26 | 71101 Sch=C3=B6naich, Germany
>> Secretary +49 7031 / 30 478 -0 | Managing Director: Nikolai Ensslen
>> Amtsgericht Stuttgart HRB 756076 | USt-ID DE271647127
>>
>> This message and any files transmitted with it are confidential and
>> intended solely for the use of the individual or entity to whom they are
>> addressed. Please notify the sender immediately if you have received thi=
s
>> e-mail by mistake and delete it from your system.
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

--94eb2c114c8e3f7d0d054dd1d9f3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I forgot to precise, compiling, doesn&#39;t work on the ho=
st system, it cannot compile a simple .c file, not finding &quot;stdio.h&qu=
ot;.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Sun, 23 Apr 20=
17 at 10:40 David Bensoussan &lt;<a href=3D"mailto:dbensoussan@synapticon.c=
om">dbensoussan@synapticon.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex"><div dir=3D"ltr">I managed to track down how to create the SDK. =
Sorry for the long answer but it might help people googling it.<br><div><br=
></div><div>DISTRO_FEATURES ?=3D &quot;${DISTRO_FEATURES_DEFAULT} ${DISTRO_=
FEATURES_LIBC} ${POKY_DEFAULT_DISTRO_FEATURES}&quot; in <b>meta-poky/conf/d=
istro/poky.conf</b></div><div>DISTRO_FEATURES_LIBC is defined as DISTRO_FEA=
TURES_LIBC_DEFAULT in=C2=A0<b>meta/conf/distro/include/default-distrovars.i=
nc</b><br></div><div><div>DISTRO_FEATURES_LIBC_DEFAULT ?=3D &quot;ipv4 ipv6=
 libc-backtrace libc-big-macros libc-bsd libc-cxx-tests libc-catgets libc-c=
harsets libc-crypt \</div><div><span class=3D"m_4609314871860484Apple-tab-s=
pan" style=3D"white-space:pre-wrap">					</span>libc-crypt-ufc libc-db-alia=
ses libc-envz libc-fcvt libc-fmtmsg libc-fstab libc-ftraverse \</div><div><=
span class=3D"m_4609314871860484Apple-tab-span" style=3D"white-space:pre-wr=
ap">					</span>libc-getlogin libc-idn libc-inet-anl libc-libm libc-locales=
 libc-locale-code \</div><div><span class=3D"m_4609314871860484Apple-tab-sp=
an" style=3D"white-space:pre-wrap">					</span>libc-memusage libc-nis libc-=
nsswitch libc-rcmd libc-rtld-debug libc-spawn libc-streams libc-sunrpc \</d=
iv><div><span class=3D"m_4609314871860484Apple-tab-span" style=3D"white-spa=
ce:pre-wrap">					</span>libc-utmp libc-utmpx libc-wordexp libc-posix-clang=
-wchar libc-posix-regexp libc-posix-regexp-glibc \</div><div><span class=3D=
"m_4609314871860484Apple-tab-span" style=3D"white-space:pre-wrap">					</sp=
an>libc-posix-wchar-io&quot; i<b>n the same file</b></div></div><div><b><br=
></b></div><div>And finally:</div><div><br></div><div><div>LIBC_DEPENDENCIE=
S =3D &quot;libsegfault \</div><div><span class=3D"m_4609314871860484Apple-=
tab-span" style=3D"white-space:pre-wrap">		</span> =C2=A0 =C2=A0 glibc \</d=
iv><div><span class=3D"m_4609314871860484Apple-tab-span" style=3D"white-spa=
ce:pre-wrap">		</span> =C2=A0 =C2=A0 glibc-dbg \</div><div><span class=3D"m=
_4609314871860484Apple-tab-span" style=3D"white-space:pre-wrap">		</span> =
=C2=A0 =C2=A0 glibc-dev \</div><div><span class=3D"m_4609314871860484Apple-=
tab-span" style=3D"white-space:pre-wrap">		</span> =C2=A0 =C2=A0 glibc-util=
s \</div><div><span class=3D"m_4609314871860484Apple-tab-span" style=3D"whi=
te-space:pre-wrap">		</span> =C2=A0 =C2=A0 glibc-thread-db \</div><div><spa=
n class=3D"m_4609314871860484Apple-tab-span" style=3D"white-space:pre-wrap"=
>		</span> =C2=A0 =C2=A0 ${@get_libc_locales_dependencies(d)}&quot;</div><d=
iv><br></div><div>LIBC_LOCALE_DEPENDENCIES =3D &quot;\</div><div><span clas=
s=3D"m_4609314871860484Apple-tab-span" style=3D"white-space:pre-wrap">	</sp=
an>glibc-localedata-i18n \</div><div><span class=3D"m_4609314871860484Apple=
-tab-span" style=3D"white-space:pre-wrap">	</span>glibc-gconv-ibm850 \</div=
><div><span class=3D"m_4609314871860484Apple-tab-span" style=3D"white-space=
:pre-wrap">	</span>glibc-gconv-cp1252 \</div><div><span class=3D"m_46093148=
71860484Apple-tab-span" style=3D"white-space:pre-wrap">	</span>glibc-gconv-=
iso8859-1 \</div><div><span class=3D"m_4609314871860484Apple-tab-span" styl=
e=3D"white-space:pre-wrap">	</span>glibc-gconv-iso8859-15&quot;</div><div><=
br></div><div>def get_libc_locales_dependencies(d):</div><div>=C2=A0 =C2=A0=
 if &#39;libc-locales&#39; in (d.getVar(&#39;DISTRO_FEATURES&#39;, True) or=
 &#39;&#39;).split() :</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return d.getVa=
r(&#39;LIBC_LOCALE_DEPENDENCIES&#39;, True) or &#39;&#39;</div><div>=C2=A0 =
=C2=A0 else:</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return &#39;&#39;</div><=
div style=3D"font-weight:bold"><br></div></div><div><b>in ../meta/conf/dist=
ro/include/tclibc-glibc.inc<br></b></div><div><b><br></b></div><div>This is=
 how they are enabled. To make it work, I added in my local.conf:<br><div>L=
IBC_DEPENDENCIES_remove +=3D &quot;glibc-gconv-cp1252 glibc-gconv-ibm850 gl=
ibc-gconv-iso8859-1 glibc-gconv-iso8859-15 glibc-localedata-i18n&quot;</div=
></div><div><br>Now, I simply wonder why is there a &quot;compatibility iss=
ue&quot; having them in the DISTRO_FEATURES.=C2=A0</div><br></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr">On Sat, 22 Apr 2017 at 09:49 David B=
ensoussan &lt;<a href=3D"mailto:dbensoussan@synapticon.com" target=3D"_blan=
k">dbensoussan@synapticon.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex"><div dir=3D"ltr">It was a typo, sorry, I typed it without the &qu=
ot;do_&quot;</div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Fri, 2=
1 Apr 2017 at 20:50 Trevor Woerner &lt;<a href=3D"mailto:twoerner@gmail.com=
" target=3D"_blank">twoerner@gmail.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex">On Fri 2017-04-21 @ 11:37:44 AM, David Bensoussan wrote:=
<br>
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
il_signature"><div dir=3D"ltr"><p id=3D"m_4609314871860484m_160234976464454=
9906inbox-inbox-person-name" style=3D"box-sizing:border-box;font-family:ari=
al,helvetica,sans-serif;font-size:13.3333px;color:rgb(0,0,0);padding:0px;ma=
rgin:1em 0px"><strong style=3D"box-sizing:border-box">David bensoussan</str=
ong><br style=3D"box-sizing:border-box">Roboticist / Embedded Software Engi=
neer</p><hr style=3D"box-sizing:border-box;margin:0px;padding:0px;height:1p=
x;background-image:initial;background-position:initial;background-size:init=
ial;background-repeat:initial;background-origin:initial;background-clip:ini=
tial;background-color:rgb(229,27,65);border:none;color:rgb(17,17,17);font-f=
amily:arial,helvetica,sans-serif;font-size:13.3333px"><p id=3D"m_4609314871=
860484m_1602349764644549906inbox-inbox-tag-line" style=3D"box-sizing:border=
-box;font-family:arial,helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)=
;padding:0px;margin:1em 0px"><strong style=3D"box-sizing:border-box">Synapt=
icon</strong><span class=3D"m_4609314871860484m_1602349764644549906inbox-in=
box-Apple-converted-space">=C2=A0</span>| Robotic Control Systems</p><table=
 cellpadding=3D"0" cellspacing=3D"0" style=3D"box-sizing:border-box;font-fa=
mily:arial,helvetica,sans-serif;font-size:13.3333px;color:rgb(17,17,17);pad=
ding:0px"><tbody style=3D"box-sizing:border-box"><tr style=3D"box-sizing:bo=
rder-box"><td style=3D"box-sizing:border-box;color:rgb(0,0,0);padding:0px 1=
5px 3px 0px">Mobile:</td><td style=3D"box-sizing:border-box;color:rgb(0,0,0=
);padding:0px 15px 3px 0px">015779804515</td></tr><tr style=3D"box-sizing:b=
order-box"><td style=3D"box-sizing:border-box;color:rgb(0,0,0);padding:0px =
15px 3px 0px">Fax:</td><td style=3D"box-sizing:border-box;color:rgb(0,0,0);=
padding:0px 15px 3px 0px"><a href=3D"tel:+49%207031%203047899" value=3D"+49=
70313047899" target=3D"_blank">+49 7031 / 30 478 -99</a></td></tr></tbody><=
/table><p style=3D"box-sizing:border-box;font-family:arial,helvetica,sans-s=
erif;font-size:13.3333px;color:rgb(0,0,0);padding:0px;margin:1em 0px"><a hr=
ef=3D"https://www.synapticon.com/" style=3D"box-sizing:border-box;color:rgb=
(1,81,154)" target=3D"_blank"><strong style=3D"box-sizing:border-box">synap=
ticon.com</strong></a><span class=3D"m_4609314871860484m_160234976464454990=
6inbox-inbox-Apple-converted-space">=C2=A0</span>|<span class=3D"m_46093148=
71860484m_1602349764644549906inbox-inbox-Apple-converted-space">=C2=A0</spa=
n><a href=3D"https://twitter.com/#!/synapticon_co" style=3D"box-sizing:bord=
er-box;color:rgb(1,81,154)" target=3D"_blank">Twitter</a><span class=3D"m_4=
609314871860484m_1602349764644549906inbox-inbox-Apple-converted-space">=C2=
=A0</span>|<span class=3D"m_4609314871860484m_1602349764644549906inbox-inbo=
x-Apple-converted-space">=C2=A0</span><a href=3D"https://fb.com/Synapticon"=
 style=3D"box-sizing:border-box;color:rgb(1,81,154)" target=3D"_blank">Face=
book</a></p><p id=3D"m_4609314871860484m_1602349764644549906inbox-inbox-add=
ress" style=3D"box-sizing:border-box;font-family:arial,helvetica,sans-serif=
;font-size:13.3333px;color:rgb(153,153,153);padding:0px;margin:1em 0px">Syn=
apticon GmbH | Daimlerstra=C3=9Fe 26 | 71101 Sch=C3=B6naich, Germany<span c=
lass=3D"m_4609314871860484m_1602349764644549906inbox-inbox-Apple-converted-=
space">=C2=A0</span><br style=3D"box-sizing:border-box">Secretary +49 7031 =
/ 30 478 -0 | Managing Director: Nikolai Ensslen<span class=3D"m_4609314871=
860484m_1602349764644549906inbox-inbox-Apple-converted-space">=C2=A0</span>=
<br style=3D"box-sizing:border-box">Amtsgericht Stuttgart HRB 756076 | USt-=
ID DE271647127<span class=3D"m_4609314871860484m_1602349764644549906inbox-i=
nbox-Apple-converted-space">=C2=A0</span><br style=3D"box-sizing:border-box=
"></p><p style=3D"box-sizing:border-box;font-family:arial,helvetica,sans-se=
rif;font-size:13.3333px;color:rgb(0,0,0);padding:0px;margin:1em 0px"></p><p=
 id=3D"m_4609314871860484m_1602349764644549906inbox-inbox-confidentiality" =
style=3D"box-sizing:border-box;font-family:arial,helvetica,sans-serif;font-=
size:7.5pt;color:rgb(153,153,153);padding:0px;margin:1em 0px;width:450px">T=
his message and any files transmitted with it are confidential and intended=
 solely for the use of the individual or entity to whom they are addressed.=
 Please notify the sender immediately if you have received this e-mail by m=
istake and delete it from your system.</p></div></div></blockquote></div><d=
iv dir=3D"ltr">-- <br></div><div data-smartmail=3D"gmail_signature"><div di=
r=3D"ltr"><p id=3D"m_4609314871860484inbox-inbox-person-name" style=3D"box-=
sizing:border-box;font-family:arial,helvetica,sans-serif;font-size:13.3333p=
x;color:rgb(0,0,0);padding:0px;margin:1em 0px"><strong style=3D"box-sizing:=
border-box">David bensoussan</strong><br style=3D"box-sizing:border-box">Ro=
boticist / Embedded Software Engineer</p><hr style=3D"box-sizing:border-box=
;margin:0px;padding:0px;height:1px;background-image:initial;background-posi=
tion:initial;background-size:initial;background-repeat:initial;background-o=
rigin:initial;background-clip:initial;background-color:rgb(229,27,65);borde=
r:none;color:rgb(17,17,17);font-family:arial,helvetica,sans-serif;font-size=
:13.3333px"><p id=3D"m_4609314871860484inbox-inbox-tag-line" style=3D"box-s=
izing:border-box;font-family:arial,helvetica,sans-serif;font-size:12pt;colo=
r:rgb(0,0,0);padding:0px;margin:1em 0px"><strong style=3D"box-sizing:border=
-box">Synapticon</strong><span class=3D"m_4609314871860484inbox-inbox-Apple=
-converted-space">=C2=A0</span>| Robotic Control Systems</p><table cellpadd=
ing=3D"0" cellspacing=3D"0" style=3D"box-sizing:border-box;font-family:aria=
l,helvetica,sans-serif;font-size:13.3333px;color:rgb(17,17,17);padding:0px"=
><tbody style=3D"box-sizing:border-box"><tr style=3D"box-sizing:border-box"=
><td style=3D"box-sizing:border-box;color:rgb(0,0,0);padding:0px 15px 3px 0=
px">Mobile:</td><td style=3D"box-sizing:border-box;color:rgb(0,0,0);padding=
:0px 15px 3px 0px">015779804515</td></tr><tr style=3D"box-sizing:border-box=
"><td style=3D"box-sizing:border-box;color:rgb(0,0,0);padding:0px 15px 3px =
0px">Fax:</td><td style=3D"box-sizing:border-box;color:rgb(0,0,0);padding:0=
px 15px 3px 0px"><a href=3D"tel:+49%207031%203047899" value=3D"+49703130478=
99" target=3D"_blank">+49 7031 / 30 478 -99</a></td></tr></tbody></table><p=
 style=3D"box-sizing:border-box;font-family:arial,helvetica,sans-serif;font=
-size:13.3333px;color:rgb(0,0,0);padding:0px;margin:1em 0px"><a href=3D"htt=
ps://www.synapticon.com/" style=3D"box-sizing:border-box;color:rgb(1,81,154=
)" target=3D"_blank"><strong style=3D"box-sizing:border-box">synapticon.com=
</strong></a><span class=3D"m_4609314871860484inbox-inbox-Apple-converted-s=
pace">=C2=A0</span>|<span class=3D"m_4609314871860484inbox-inbox-Apple-conv=
erted-space">=C2=A0</span><a href=3D"https://twitter.com/#!/synapticon_co" =
style=3D"box-sizing:border-box;color:rgb(1,81,154)" target=3D"_blank">Twitt=
er</a><span class=3D"m_4609314871860484inbox-inbox-Apple-converted-space">=
=C2=A0</span>|<span class=3D"m_4609314871860484inbox-inbox-Apple-converted-=
space">=C2=A0</span><a href=3D"https://fb.com/Synapticon" style=3D"box-sizi=
ng:border-box;color:rgb(1,81,154)" target=3D"_blank">Facebook</a></p><p id=
=3D"m_4609314871860484inbox-inbox-address" style=3D"box-sizing:border-box;f=
ont-family:arial,helvetica,sans-serif;font-size:13.3333px;color:rgb(153,153=
,153);padding:0px;margin:1em 0px">Synapticon GmbH | Daimlerstra=C3=9Fe 26 |=
 71101 Sch=C3=B6naich, Germany<span class=3D"m_4609314871860484inbox-inbox-=
Apple-converted-space">=C2=A0</span><br style=3D"box-sizing:border-box">Sec=
retary +49 7031 / 30 478 -0 | Managing Director: Nikolai Ensslen<span class=
=3D"m_4609314871860484inbox-inbox-Apple-converted-space">=C2=A0</span><br s=
tyle=3D"box-sizing:border-box">Amtsgericht Stuttgart HRB 756076 | USt-ID DE=
271647127<span class=3D"m_4609314871860484inbox-inbox-Apple-converted-space=
">=C2=A0</span><br style=3D"box-sizing:border-box"></p><p style=3D"box-sizi=
ng:border-box;font-family:arial,helvetica,sans-serif;font-size:13.3333px;co=
lor:rgb(0,0,0);padding:0px;margin:1em 0px"></p><p id=3D"m_4609314871860484i=
nbox-inbox-confidentiality" style=3D"box-sizing:border-box;font-family:aria=
l,helvetica,sans-serif;font-size:7.5pt;color:rgb(153,153,153);padding:0px;m=
argin:1em 0px;width:450px">This message and any files transmitted with it a=
re confidential and intended solely for the use of the individual or entity=
 to whom they are addressed. Please notify the sender immediately if you ha=
ve received this e-mail by mistake and delete it from your system.</p></div=
></div></blockquote></div><div dir=3D"ltr">-- <br></div><div data-smartmail=
=3D"gmail_signature"><div dir=3D"ltr"><p id=3D"inbox-inbox-person-name" sty=
le=3D"box-sizing:border-box;font-family:arial,helvetica,sans-serif;font-siz=
e:13.3333px;color:rgb(0,0,0);padding:0px;margin:1em 0px"><strong style=3D"b=
ox-sizing:border-box">David bensoussan</strong><br style=3D"box-sizing:bord=
er-box">Roboticist / Embedded Software Engineer</p><hr style=3D"box-sizing:=
border-box;margin:0px;padding:0px;height:1px;background-image:initial;backg=
round-position:initial;background-size:initial;background-repeat:initial;ba=
ckground-origin:initial;background-clip:initial;background-color:rgb(229,27=
,65);border:none;color:rgb(17,17,17);font-family:arial,helvetica,sans-serif=
;font-size:13.3333px"><p id=3D"inbox-inbox-tag-line" style=3D"box-sizing:bo=
rder-box;font-family:arial,helvetica,sans-serif;font-size:12pt;color:rgb(0,=
0,0);padding:0px;margin:1em 0px"><strong style=3D"box-sizing:border-box">Sy=
napticon</strong><span class=3D"inbox-inbox-Apple-converted-space">=C2=A0</=
span>| Robotic Control Systems</p><table cellpadding=3D"0" cellspacing=3D"0=
" style=3D"box-sizing:border-box;font-family:arial,helvetica,sans-serif;fon=
t-size:13.3333px;color:rgb(17,17,17);padding:0px"><tbody style=3D"box-sizin=
g:border-box"><tr style=3D"box-sizing:border-box"><td style=3D"box-sizing:b=
order-box;color:rgb(0,0,0);padding:0px 15px 3px 0px">Mobile:</td><td style=
=3D"box-sizing:border-box;color:rgb(0,0,0);padding:0px 15px 3px 0px">015779=
804515</td></tr><tr style=3D"box-sizing:border-box"><td style=3D"box-sizing=
:border-box;color:rgb(0,0,0);padding:0px 15px 3px 0px">Fax:</td><td style=
=3D"box-sizing:border-box;color:rgb(0,0,0);padding:0px 15px 3px 0px">+49 70=
31 / 30 478 -99</td></tr></tbody></table><p style=3D"box-sizing:border-box;=
font-family:arial,helvetica,sans-serif;font-size:13.3333px;color:rgb(0,0,0)=
;padding:0px;margin:1em 0px"><a href=3D"https://www.synapticon.com/" style=
=3D"box-sizing:border-box;color:rgb(1,81,154)"><strong style=3D"box-sizing:=
border-box">synapticon.com</strong></a><span class=3D"inbox-inbox-Apple-con=
verted-space">=C2=A0</span>|<span class=3D"inbox-inbox-Apple-converted-spac=
e">=C2=A0</span><a href=3D"https://twitter.com/#!/synapticon_co" style=3D"b=
ox-sizing:border-box;color:rgb(1,81,154)">Twitter</a><span class=3D"inbox-i=
nbox-Apple-converted-space">=C2=A0</span>|<span class=3D"inbox-inbox-Apple-=
converted-space">=C2=A0</span><a href=3D"https://fb.com/Synapticon" style=
=3D"box-sizing:border-box;color:rgb(1,81,154)">Facebook</a></p><p id=3D"inb=
ox-inbox-address" style=3D"box-sizing:border-box;font-family:arial,helvetic=
a,sans-serif;font-size:13.3333px;color:rgb(153,153,153);padding:0px;margin:=
1em 0px">Synapticon GmbH | Daimlerstra=C3=9Fe 26 | 71101 Sch=C3=B6naich, Ge=
rmany<span class=3D"inbox-inbox-Apple-converted-space">=C2=A0</span><br sty=
le=3D"box-sizing:border-box">Secretary +49 7031 / 30 478 -0 | Managing Dire=
ctor: Nikolai Ensslen<span class=3D"inbox-inbox-Apple-converted-space">=C2=
=A0</span><br style=3D"box-sizing:border-box">Amtsgericht Stuttgart HRB 756=
076 | USt-ID DE271647127<span class=3D"inbox-inbox-Apple-converted-space">=
=C2=A0</span><br style=3D"box-sizing:border-box"></p><p style=3D"box-sizing=
:border-box;font-family:arial,helvetica,sans-serif;font-size:13.3333px;colo=
r:rgb(0,0,0);padding:0px;margin:1em 0px"></p><p id=3D"inbox-inbox-confident=
iality" style=3D"box-sizing:border-box;font-family:arial,helvetica,sans-ser=
if;font-size:7.5pt;color:rgb(153,153,153);padding:0px;margin:1em 0px;width:=
450px">This message and any files transmitted with it are confidential and =
intended solely for the use of the individual or entity to whom they are ad=
dressed. Please notify the sender immediately if you have received this e-m=
ail by mistake and delete it from your system.</p></div></div>

--94eb2c114c8e3f7d0d054dd1d9f3--

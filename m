Return-Path: <ticotimo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3630AE00E03; Wed, 20 Apr 2016 20:06:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	MIME_QP_LONG_LINE,RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ticotimo[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C3B9E00C75
	for <yocto@yoctoproject.org>; Wed, 20 Apr 2016 20:06:11 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id r187so6094909pfr.2
	for <yocto@yoctoproject.org>; Wed, 20 Apr 2016 20:06:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:mime-version:subject:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=CkwxrtER5k+g8LrLBOwHg+HhU0sntS/pWxav+GfUu+c=;
	b=yIU8TxpyLGuuOuUy4WG6xftRTiUoZhSCHNARdCPtLWA/jo6UUQxUnzdoJHDf8BEWR7
	5VFMMpMdw5OgTgPpAnEAq5JNskff82O8EECNoiXuy0ytZktZtmRTzfGI8QJ8A3NmtNaQ
	iu66Lk8KPmivwdoN7DHxZiPQEONoSy0dnqnTKpjL0/BtnCpW40FS666iTjzOULBI9FDt
	E3WYYavVi/oOhQ4/aldSUBFsc785g7t3S8mXwhEcx5I99pfEiMGHCTQTTJaItRJvrOby
	LpNMeyLL31b79V1OIrM5lSvl4q68AolYZwi+FXmaB5L6ox45yjlRfMUlerv81uElTVFc
	0eOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:mime-version:subject:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=CkwxrtER5k+g8LrLBOwHg+HhU0sntS/pWxav+GfUu+c=;
	b=iQjwk1GwHGaBqKkjqd5bU8oacYy0vio8RtgQw1PltgKN3jpLk7JfqhSEQcdDAr4kDc
	W9m8zK28r9Q0ndBOi6A92s8ZQrSA3SDDChvSFVvf6HuFJl811kt5VMKpC7MIpDhawf7c
	YZab4BPhMqz335Xu7Ku9omkxbhcHxGVi5QNTbrf09DV5G+cT1fN+X//pEokr5+l5Wn4O
	qqeWsIM8UmM11xWNQ4Ww8bG9qbZsZVp0vxrjy5OryzzxFktuZV5SR69V4aArn//JMj2Q
	DdTj7hXo5R+RXFmHGO5JhpMnD0c8rZ9dCZ5rMqKsF2ahDhCHyyaMRP9dAGzK5ErhTaNo
	+sCg==
X-Gm-Message-State: AOPr4FXDEr7BouBuSZVyRAA80wfJQkW+O4vi5sL2AVXbiF5h4iLk4aEu9zHDLx1FE2qaCg==
X-Received: by 10.98.14.67 with SMTP id w64mr17508864pfi.154.1461207971129;
	Wed, 20 Apr 2016 20:06:11 -0700 (PDT)
Received: from ?IPv6:2601:1c0:6000:8934:f426:3797:7f48:bb62?
	([2601:1c0:6000:8934:f426:3797:7f48:bb62])
	by smtp.gmail.com with ESMTPSA id qb1sm453816pac.44.2016.04.20.20.06.09
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 20 Apr 2016 20:06:10 -0700 (PDT)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <TicoTimo@gmail.com>
Mime-Version: 1.0 (1.0)
X-Mailer: iPhone Mail (13E238)
In-Reply-To: <CAHvG4ABwEc_5QT7jq2LKb976Jw=G6CHLt-UEJtrjk=brn-C4mA@mail.gmail.com>
Date: Wed, 20 Apr 2016 20:06:08 -0700
Message-Id: <0A8EBD69-118A-44F7-B3EA-4F8AD00E18B4@gmail.com>
References: <CAHvG4AC_F76W0GH=fYuv8YMa66hPDqNGv_g4fo_qwBra5muxgg@mail.gmail.com>
	<1461173123581.97537@seescan.com>
	<CAHvG4ADLMkqJ+6p=12u2WJxfkD025gi=jN5msa17LqT5ZfO2tQ@mail.gmail.com>
	<1461179526735.1762@seescan.com>
	<CAHvG4ABwEc_5QT7jq2LKb976Jw=G6CHLt-UEJtrjk=brn-C4mA@mail.gmail.com>
To: Moti Cohen <motic.mail@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: MySQL recipe for yocto
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
X-List-Received-Date: Thu, 21 Apr 2016 03:06:15 -0000
Content-Type: multipart/alternative;
	boundary=Apple-Mail-6C41E4B8-3344-4850-AD12-F703037ADF7C
Content-Transfer-Encoding: 7bit

--Apple-Mail-6C41E4B8-3344-4850-AD12-F703037ADF7C
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

As a first try, delete or comment out the entire do_configure_append() block=
. It might not be needed anymore.

> On Apr 20, 2016, at 1:39 PM, Moti Cohen <motic.mail@gmail.com> wrote:
>=20
> OK,
> I tried it and the patches errors went away, thanks !
> Now, I'm facing a new one related to the do_configure:
>=20
> ERROR: Function failed: do_configure (log file is located at /home/yocto/y=
octo/build_yocto/build/tmp/work/x86_64-linux/mysql5-native/5.6.29-r0/temp/lo=
g.do_configure.7221)
> ERROR: Logfile of failure stored in: /home/yocto/yocto/build_yocto/build/t=
mp/work/x86_64-linux/mysql5-native/5.6.29-r0/temp/log.do_configure.7221
> Log data follows:
> | DEBUG: Executing python function sysroot_cleansstate
> | DEBUG: Python function sysroot_cleansstate finished
> | DEBUG: Executing shell function autotools_preconfigure
> | DEBUG: Shell function autotools_preconfigure finished
> | DEBUG: Executing python function autotools_copy_aclocals
> | DEBUG: Python function autotools_copy_aclocals finished
> | DEBUG: Executing shell function do_configure
> | NOTE: nothing to configure
> | sed: can't read /home/yocto/yocto/build_yocto/build/tmp/work/x86_64-linu=
x/mysql5-native/5.6.29-r0/mysql-5.6.29/sql/share/Makefile: No such file or d=
irectory
> | WARNING: exit code 2 from a shell command.
> | ERROR: Function failed: do_configure (log file is located at /home/yocto=
/yocto/build_yocto/build/tmp/work/x86_64-linux/mysql5-native/5.6.29-r0/temp/=
log.do_configure.7221)
> ERROR: Task 1373 (/home/yocto/yocto/build_yocto/sources/meta-openembedded/=
meta-oe/recipes-support/mysql/mysql5-native_5.6.29.bb, do_configure) failed w=
ith exit code '1'
>=20
> the recipe's .inc file include the below line, however it looks like the m=
akefile do not exist.
>=20
> do_configure_append() {
>      sed -i /comp_err/d ${S}/sql/share/Makefile
> }
>=20
> Again, any help will be appreciated.
> =20
>=20
>=20
>=20
>> On Wed, Apr 20, 2016 at 10:12 PM, Fred Ollinger <Fred.Ollinger@seescan.co=
m> wrote:
>> You can get rid of the patches in the bb file.
>>=20
>>=20
>> Look for SRC_URI
>>=20
>>=20
>> See any .patch files and remove them and try to build again.
>>=20
>>=20
>> Please post build errors.
>>=20
>>=20
>> Frederick
>>=20
>> ________________________________
>> From: Moti Cohen <motic.mail@gmail.com>
>> Sent: Wednesday, April 20, 2016 12:08 PM
>> To: Fred Ollinger
>> Cc: yocto@yoctoproject.org
>> Subject: Re: [yocto] MySQL recipe for yocto
>>=20
>> Thanks Fred,
>>=20
>> I actually tried it and replaced the PV to a newer one, i used 5.6.29 ins=
tead of 5.1.40 which is the latest "real" MySQL supported by openembedded. I=
 also added the relevant SHA numbers etc.
>>=20
>> The problem is that the recipe includes quite a few patches that are now s=
howing many errors when applied during the build. I guess that these patches=
 are related to the original 5.1.40 version and I'm not sure they should be a=
pplied to the newer one. Unfortunetly, as I'm not an expert, it seems like i=
t will be a difficult task for me to clean these errors.
>>=20
>> I realy hope there's a simpler way go about it :)
>>=20
>>=20
>>=20
>> On Wed, Apr 20, 2016 at 8:25 PM, Fred Ollinger <Fred.Ollinger@seescan.com=
<mailto:Fred.Ollinger@seescan.com>> wrote:
>> I'd start with the mysql recipe and update the source reference and try t=
o build it.
>>=20
>>=20
>> If this fails, you might need to change some other things.
>>=20
>>=20
>> Here's a howto on writing a recipe:
>>=20
>>=20
>> https://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#new-=
recipe-writing-a-new-recipe
>>=20
>>=20
>>=20
>> ________________________________
>> From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.or=
g> <yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>> o=
n behalf of Moti Cohen <motic.mail@gmail.com<mailto:motic.mail@gmail.com>>
>> Sent: Wednesday, April 20, 2016 10:18 AM
>> To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
>> Subject: [yocto] MySQL recipe for yocto
>>=20
>> Hi all,
>> this is my 1'st post to this list so I hope I'm doing it right :)
>>=20
>> I need to add MySQL for my yocto build.
>> Looking online for a recipe - i found that there is one for MySQL under:
>> /meta-openembedded/meta-oe/recipes-support/mysql/..
>> The thing is that instead of MySQL, the recipe reffers to MariaDB which i=
s a kind of a drop-in replacemnet and since I need to have the "real" MySQL i=
n my build - I cannot use it.
>> looking into history log of mysql in the meta-openembedded git, it can be=
 seen the the switch between MySQL and MariaDB was made at 2013 and from the=
n onwards it's MariaDB.
>>=20
>> http://cgit.openembedded.org/meta-openembedded/commit/meta-oe/recipes-sup=
port/mysql?id=3D72e23c12296fbc77193898c38426add58d0c2d71
>>=20
>> Now to the question, do you know how can I add the "real" MySQL to my bui=
ld ?
>> looking before 2013 at the meta-openembedded git i can find a recipe for M=
ySQL which seems to support a "real" MySQL however, it's very old version (5=
.1) and I'm not sure how and if I can update it to one of the latest (e.g. M=
ySQL 5.6).
>>=20
>> Will appriciate any feedback on this.
>> Thanks in advance,
>> Motico
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--Apple-Mail-6C41E4B8-3344-4850-AD12-F703037ADF7C
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><div>As a first try, delete or comment out t=
he entire do_configure_append() block. It might not be needed anymore.</div>=
<div><br>On Apr 20, 2016, at 1:39 PM, Moti Cohen &lt;<a href=3D"mailto:motic=
.mail@gmail.com">motic.mail@gmail.com</a>&gt; wrote:<br><br></div><blockquot=
e type=3D"cite"><div><div dir=3D"ltr"><div><div>OK,<br></div>I tried it and t=
he patches errors went away, thanks !<br>Now, I'm facing a new one related t=
o the do_configure:<br><br>ERROR: Function failed: do_configure (log file is=
 located at /home/yocto/yocto/build_yocto/build/tmp/work/x86_64-linux/mysql5=
-native/5.6.29-r0/temp/log.do_configure.7221)<br>ERROR: Logfile of failure s=
tored in: /home/yocto/yocto/build_yocto/build/tmp/work/x86_64-linux/mysql5-n=
ative/5.6.29-r0/temp/log.do_configure.7221<br>Log data follows:<br>| DEBUG: E=
xecuting python function sysroot_cleansstate<br>| DEBUG: Python function sys=
root_cleansstate finished<br>| DEBUG: Executing shell function autotools_pre=
configure<br>| DEBUG: Shell function autotools_preconfigure finished<br>| DE=
BUG: Executing python function autotools_copy_aclocals<br>| DEBUG: Python fu=
nction autotools_copy_aclocals finished<br>| DEBUG: Executing shell function=
 do_configure<br>| NOTE: nothing to configure<br>| sed: can't read /home/yoc=
to/yocto/build_yocto/build/tmp/work/x86_64-linux/mysql5-native/5.6.29-r0/mys=
ql-5.6.29/sql/share/Makefile: No such file or directory<br>| WARNING: exit c=
ode 2 from a shell command.<br>| ERROR: Function failed: do_configure (log f=
ile is located at /home/yocto/yocto/build_yocto/build/tmp/work/x86_64-linux/=
mysql5-native/5.6.29-r0/temp/log.do_configure.7221)<br>ERROR: Task 1373 (/ho=
me/yocto/yocto/build_yocto/sources/meta-openembedded/meta-oe/recipes-support=
/mysql/<a href=3D"http://mysql5-native_5.6.29.bb">mysql5-native_5.6.29.bb</a=
>, do_configure) failed with exit code '1'<br><br></div><div>the recipe's .i=
nc file include the below line, however it looks like the makefile do not ex=
ist.<br><br>do_configure_append() {<br>&nbsp;&nbsp;&nbsp;&nbsp; sed -i /comp=
_err/d ${S}/sql/share/Makefile<br>}<br><br></div><div>Again, any help will b=
e appreciated.<br>&nbsp;<br></div><div><br></div><div><br></div></div><div c=
lass=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed, Apr 20, 2016 at 1=
0:12 PM, Fred Ollinger <span dir=3D"ltr">&lt;<a href=3D"mailto:Fred.Ollinger=
@seescan.com" target=3D"_blank">Fred.Ollinger@seescan.com</a>&gt;</span> wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex">You can get rid of the patches in the b=
b file.<br>
<br>
<br>
Look for SRC_URI<br>
<br>
<br>
See any .patch files and remove them and try to build again.<br>
<br>
<br>
Please post build errors.<br>
<br>
<br>
Frederick<br>
<br>
________________________________<br>
From: Moti Cohen &lt;<a href=3D"mailto:motic.mail@gmail.com">motic.mail@gmai=
l.com</a>&gt;<br>
Sent: Wednesday, April 20, 2016 12:08 PM<br>
To: Fred Ollinger<br>
Cc: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>=

Subject: Re: [yocto] MySQL recipe for yocto<br>
<br>
Thanks Fred,<br>
<br>
I actually tried it and replaced the PV to a newer one, i used 5.6.29 instea=
d of 5.1.40 which is the latest "real" MySQL supported by openembedded. I al=
so added the relevant SHA numbers etc.<br>
<br>
The problem is that the recipe includes quite a few patches that are now sho=
wing many errors when applied during the build. I guess that these patches a=
re related to the original 5.1.40 version and I'm not sure they should be ap=
plied to the newer one. Unfortunetly, as I'm not an expert, it seems like it=
 will be a difficult task for me to clean these errors.<br>
<br>
I realy hope there's a simpler way go about it :)<br>
<br>
<br>
<br>
On Wed, Apr 20, 2016 at 8:25 PM, Fred Ollinger &lt;<a href=3D"mailto:Fred.Ol=
linger@seescan.com">Fred.Ollinger@seescan.com</a>&lt;mailto:<a href=3D"mailt=
o:Fred.Ollinger@seescan.com">Fred.Ollinger@seescan.com</a>&gt;&gt; wrote:<br=
>
I'd start with the mysql recipe and update the source reference and try to b=
uild it.<br>
<br>
<br>
If this fails, you might need to change some other things.<br>
<br>
<br>
Here's a howto on writing a recipe:<br>
<br>
<br>
<a href=3D"https://www.yoctoproject.org/docs/current/dev-manual/dev-manual.h=
tml#new-recipe-writing-a-new-recipe" rel=3D"noreferrer" target=3D"_blank">ht=
tps://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#new-recip=
e-writing-a-new-recipe</a><br>
<br>
<br>
<br>
________________________________<br>
From: <a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctop=
roject.org</a>&lt;mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.org">y=
octo-bounces@yoctoproject.org</a>&gt; &lt;<a href=3D"mailto:yocto-bounces@yo=
ctoproject.org">yocto-bounces@yoctoproject.org</a>&lt;mailto:<a href=3D"mail=
to:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoproject.org</a>&gt;&gt=
; on behalf of Moti Cohen &lt;<a href=3D"mailto:motic.mail@gmail.com">motic.=
mail@gmail.com</a>&lt;mailto:<a href=3D"mailto:motic.mail@gmail.com">motic.m=
ail@gmail.com</a>&gt;&gt;<br>
Sent: Wednesday, April 20, 2016 10:18 AM<br>
To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>&lt;=
mailto:<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>&=
gt;<br>
Subject: [yocto] MySQL recipe for yocto<br>
<br>
Hi all,<br>
this is my 1'st post to this list so I hope I'm doing it right :)<br>
<br>
I need to add MySQL for my yocto build.<br>
Looking online for a recipe - i found that there is one for MySQL under:<br>=

/meta-openembedded/meta-oe/recipes-support/mysql/..<br>
The thing is that instead of MySQL, the recipe reffers to MariaDB which is a=
 kind of a drop-in replacemnet and since I need to have the "real" MySQL in m=
y build - I cannot use it.<br>
looking into history log of mysql in the meta-openembedded git, it can be se=
en the the switch between MySQL and MariaDB was made at 2013 and from then o=
nwards it's MariaDB.<br>
<br>
<a href=3D"http://cgit.openembedded.org/meta-openembedded/commit/meta-oe/rec=
ipes-support/mysql?id=3D72e23c12296fbc77193898c38426add58d0c2d71" rel=3D"nor=
eferrer" target=3D"_blank">http://cgit.openembedded.org/meta-openembedded/co=
mmit/meta-oe/recipes-support/mysql?id=3D72e23c12296fbc77193898c38426add58d0c=
2d71</a><br>
<br>
Now to the question, do you know how can I add the "real" MySQL to my build ?=
<br>
looking before 2013 at the meta-openembedded git i can find a recipe for MyS=
QL which seems to support a "real" MySQL however, it's very old version (5.1=
) and I'm not sure how and if I can update it to one of the latest (e.g. MyS=
QL 5.6).<br>
<br>
Will appriciate any feedback on this.<br>
Thanks in advance,<br>
Motico<br>
<br>
</blockquote></div><br></div>
</div></blockquote><blockquote type=3D"cite"><div><span>-- </span><br><span>=
_______________________________________________</span><br><span>yocto mailin=
g list</span><br><span><a href=3D"mailto:yocto@yoctoproject.org">yocto@yocto=
project.org</a></span><br><span><a href=3D"https://lists.yoctoproject.org/li=
stinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a></span><br></=
div></blockquote></body></html>=

--Apple-Mail-6C41E4B8-3344-4850-AD12-F703037ADF7C--

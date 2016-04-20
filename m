Return-Path: <motic.mail@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D42C5E00E86; Wed, 20 Apr 2016 13:39:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (motic.mail[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f174.google.com (mail-lb0-f174.google.com
	[209.85.217.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15746E007D2
	for <yocto@yoctoproject.org>; Wed, 20 Apr 2016 13:39:49 -0700 (PDT)
Received: by mail-lb0-f174.google.com with SMTP id os9so15991039lbb.2
	for <yocto@yoctoproject.org>; Wed, 20 Apr 2016 13:39:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=Y4NdEYdqAfhf0U6S0odGJxqH7KUtj4IbRYDi5NYKDNA=;
	b=HYGWYKeki9mGGj4uT2oY4zNdjnJ0v9d7Y/5RndH9dq2AASppQ+ZQyDx4lpPTNOPpyK
	7Km26WTwjRF1Cnx+75vpYS5r1mWk1i/A5C2teszGqZCJRvYyUt+R5aN+cDrtDxyKY6dK
	dQoZ0QhRFjYivPBK9oBRzkX7Yg/oh1UXL6Qb5XrPYosDCjrbMGZrAKjAm4GF08HNGr7h
	alA9EwpfzxTPZk2FP5v24zu4ENjX3niw2uBlcJnFOiAXHv+EhHu94ki4Fq0NrC/QXyYv
	k/TbaIpB9DqZJMYWB6VtoSrnRRbVAPnz85JdlhNVImCAaXVWksXqIu1Bq3Tu6sodyo2+
	sEWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=Y4NdEYdqAfhf0U6S0odGJxqH7KUtj4IbRYDi5NYKDNA=;
	b=ikzDSHGT7jd72jHDXhO1TIhctg0X7eHIg1az6zYK4PAA2jZQZ7Bpbq2Cxe7jaeYMjR
	q60DPFewfaGppTIMAuaPbIjMRBlYlhSrkkdK9OyOd20oVZp8k52wJzRCx/9wt/hUB678
	yZZ5M7VCJg0b32H5OQtNJp9r1i7O51drUjvPPbQ2rCcxNTVpTk19P6jmssf7/NPhoutx
	EhQqx9Qi2Ez57S5yP8W4qOOg1kSZQ+YKla84IFTEtsgQ86hH76BTWmdfFFDJcAy1L8Gu
	ddrRO1RLvCK/UKp5ShyfCMDYR7MgP5kHJQ3ApMbTMWMTyNxeNhK/6thR8PZg/QhMyBDa
	JRWw==
X-Gm-Message-State: AOPr4FUkG6BPHftUnXoCdE+bUA0bNZLrXnDooD4FJATBfzFiM6lPrRidBMZFZH0dch0gWZaystCHN+mbSp3W0Q==
MIME-Version: 1.0
X-Received: by 10.112.150.165 with SMTP id uj5mr4560032lbb.95.1461184788023;
	Wed, 20 Apr 2016 13:39:48 -0700 (PDT)
Received: by 10.25.160.17 with HTTP; Wed, 20 Apr 2016 13:39:47 -0700 (PDT)
In-Reply-To: <1461179526735.1762@seescan.com>
References: <CAHvG4AC_F76W0GH=fYuv8YMa66hPDqNGv_g4fo_qwBra5muxgg@mail.gmail.com>
	<1461173123581.97537@seescan.com>
	<CAHvG4ADLMkqJ+6p=12u2WJxfkD025gi=jN5msa17LqT5ZfO2tQ@mail.gmail.com>
	<1461179526735.1762@seescan.com>
Date: Wed, 20 Apr 2016 23:39:47 +0300
Message-ID: <CAHvG4ABwEc_5QT7jq2LKb976Jw=G6CHLt-UEJtrjk=brn-C4mA@mail.gmail.com>
From: Moti Cohen <motic.mail@gmail.com>
To: Fred Ollinger <Fred.Ollinger@seescan.com>
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
X-List-Received-Date: Wed, 20 Apr 2016 20:39:52 -0000
Content-Type: multipart/alternative; boundary=047d7b3a83963dd1540530f098f7

--047d7b3a83963dd1540530f098f7
Content-Type: text/plain; charset=UTF-8

OK,
I tried it and the patches errors went away, thanks !
Now, I'm facing a new one related to the do_configure:

ERROR: Function failed: do_configure (log file is located at
/home/yocto/yocto/build_yocto/build/tmp/work/x86_64-linux/mysql5-native/5.6.29-r0/temp/log.do_configure.7221)
ERROR: Logfile of failure stored in:
/home/yocto/yocto/build_yocto/build/tmp/work/x86_64-linux/mysql5-native/5.6.29-r0/temp/log.do_configure.7221
Log data follows:
| DEBUG: Executing python function sysroot_cleansstate
| DEBUG: Python function sysroot_cleansstate finished
| DEBUG: Executing shell function autotools_preconfigure
| DEBUG: Shell function autotools_preconfigure finished
| DEBUG: Executing python function autotools_copy_aclocals
| DEBUG: Python function autotools_copy_aclocals finished
| DEBUG: Executing shell function do_configure
| NOTE: nothing to configure
| sed: can't read
/home/yocto/yocto/build_yocto/build/tmp/work/x86_64-linux/mysql5-native/5.6.29-r0/mysql-5.6.29/sql/share/Makefile:
No such file or directory
| WARNING: exit code 2 from a shell command.
| ERROR: Function failed: do_configure (log file is located at
/home/yocto/yocto/build_yocto/build/tmp/work/x86_64-linux/mysql5-native/5.6.29-r0/temp/log.do_configure.7221)
ERROR: Task 1373
(/home/yocto/yocto/build_yocto/sources/meta-openembedded/meta-oe/recipes-support/mysql/
mysql5-native_5.6.29.bb, do_configure) failed with exit code '1'

the recipe's .inc file include the below line, however it looks like the
makefile do not exist.

do_configure_append() {
     sed -i /comp_err/d ${S}/sql/share/Makefile
}

Again, any help will be appreciated.




On Wed, Apr 20, 2016 at 10:12 PM, Fred Ollinger <Fred.Ollinger@seescan.com>
wrote:

> You can get rid of the patches in the bb file.
>
>
> Look for SRC_URI
>
>
> See any .patch files and remove them and try to build again.
>
>
> Please post build errors.
>
>
> Frederick
>
> ________________________________
> From: Moti Cohen <motic.mail@gmail.com>
> Sent: Wednesday, April 20, 2016 12:08 PM
> To: Fred Ollinger
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] MySQL recipe for yocto
>
> Thanks Fred,
>
> I actually tried it and replaced the PV to a newer one, i used 5.6.29
> instead of 5.1.40 which is the latest "real" MySQL supported by
> openembedded. I also added the relevant SHA numbers etc.
>
> The problem is that the recipe includes quite a few patches that are now
> showing many errors when applied during the build. I guess that these
> patches are related to the original 5.1.40 version and I'm not sure they
> should be applied to the newer one. Unfortunetly, as I'm not an expert, it
> seems like it will be a difficult task for me to clean these errors.
>
> I realy hope there's a simpler way go about it :)
>
>
>
> On Wed, Apr 20, 2016 at 8:25 PM, Fred Ollinger <Fred.Ollinger@seescan.com
> <mailto:Fred.Ollinger@seescan.com>> wrote:
> I'd start with the mysql recipe and update the source reference and try to
> build it.
>
>
> If this fails, you might need to change some other things.
>
>
> Here's a howto on writing a recipe:
>
>
>
> https://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#new-recipe-writing-a-new-recipe
>
>
>
> ________________________________
> From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>
> <yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>>
> on behalf of Moti Cohen <motic.mail@gmail.com<mailto:motic.mail@gmail.com
> >>
> Sent: Wednesday, April 20, 2016 10:18 AM
> To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
> Subject: [yocto] MySQL recipe for yocto
>
> Hi all,
> this is my 1'st post to this list so I hope I'm doing it right :)
>
> I need to add MySQL for my yocto build.
> Looking online for a recipe - i found that there is one for MySQL under:
> /meta-openembedded/meta-oe/recipes-support/mysql/..
> The thing is that instead of MySQL, the recipe reffers to MariaDB which is
> a kind of a drop-in replacemnet and since I need to have the "real" MySQL
> in my build - I cannot use it.
> looking into history log of mysql in the meta-openembedded git, it can be
> seen the the switch between MySQL and MariaDB was made at 2013 and from
> then onwards it's MariaDB.
>
>
> http://cgit.openembedded.org/meta-openembedded/commit/meta-oe/recipes-support/mysql?id=72e23c12296fbc77193898c38426add58d0c2d71
>
> Now to the question, do you know how can I add the "real" MySQL to my
> build ?
> looking before 2013 at the meta-openembedded git i can find a recipe for
> MySQL which seems to support a "real" MySQL however, it's very old version
> (5.1) and I'm not sure how and if I can update it to one of the latest
> (e.g. MySQL 5.6).
>
> Will appriciate any feedback on this.
> Thanks in advance,
> Motico
>
>

--047d7b3a83963dd1540530f098f7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>OK,<br></div>I tried it and the patches errors w=
ent away, thanks !<br>Now, I&#39;m facing a new one related to the do_confi=
gure:<br><br>ERROR: Function failed: do_configure (log file is located at /=
home/yocto/yocto/build_yocto/build/tmp/work/x86_64-linux/mysql5-native/5.6.=
29-r0/temp/log.do_configure.7221)<br>ERROR: Logfile of failure stored in: /=
home/yocto/yocto/build_yocto/build/tmp/work/x86_64-linux/mysql5-native/5.6.=
29-r0/temp/log.do_configure.7221<br>Log data follows:<br>| DEBUG: Executing=
 python function sysroot_cleansstate<br>| DEBUG: Python function sysroot_cl=
eansstate finished<br>| DEBUG: Executing shell function autotools_preconfig=
ure<br>| DEBUG: Shell function autotools_preconfigure finished<br>| DEBUG: =
Executing python function autotools_copy_aclocals<br>| DEBUG: Python functi=
on autotools_copy_aclocals finished<br>| DEBUG: Executing shell function do=
_configure<br>| NOTE: nothing to configure<br>| sed: can&#39;t read /home/y=
octo/yocto/build_yocto/build/tmp/work/x86_64-linux/mysql5-native/5.6.29-r0/=
mysql-5.6.29/sql/share/Makefile: No such file or directory<br>| WARNING: ex=
it code 2 from a shell command.<br>| ERROR: Function failed: do_configure (=
log file is located at /home/yocto/yocto/build_yocto/build/tmp/work/x86_64-=
linux/mysql5-native/5.6.29-r0/temp/log.do_configure.7221)<br>ERROR: Task 13=
73 (/home/yocto/yocto/build_yocto/sources/meta-openembedded/meta-oe/recipes=
-support/mysql/<a href=3D"http://mysql5-native_5.6.29.bb">mysql5-native_5.6=
.29.bb</a>, do_configure) failed with exit code &#39;1&#39;<br><br></div><d=
iv>the recipe&#39;s .inc file include the below line, however it looks like=
 the makefile do not exist.<br><br>do_configure_append() {<br>=C2=A0=C2=A0=
=C2=A0=C2=A0 sed -i /comp_err/d ${S}/sql/share/Makefile<br>}<br><br></div><=
div>Again, any help will be appreciated.<br>=C2=A0<br></div><div><br></div>=
<div><br></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Wed, Apr 20, 2016 at 10:12 PM, Fred Ollinger <span dir=3D"ltr">&lt;<=
a href=3D"mailto:Fred.Ollinger@seescan.com" target=3D"_blank">Fred.Ollinger=
@seescan.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">You ca=
n get rid of the patches in the bb file.<br>
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
From: Moti Cohen &lt;<a href=3D"mailto:motic.mail@gmail.com">motic.mail@gma=
il.com</a>&gt;<br>
Sent: Wednesday, April 20, 2016 12:08 PM<br>
To: Fred Ollinger<br>
Cc: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
Subject: Re: [yocto] MySQL recipe for yocto<br>
<br>
Thanks Fred,<br>
<br>
I actually tried it and replaced the PV to a newer one, i used 5.6.29 inste=
ad of 5.1.40 which is the latest &quot;real&quot; MySQL supported by openem=
bedded. I also added the relevant SHA numbers etc.<br>
<br>
The problem is that the recipe includes quite a few patches that are now sh=
owing many errors when applied during the build. I guess that these patches=
 are related to the original 5.1.40 version and I&#39;m not sure they shoul=
d be applied to the newer one. Unfortunetly, as I&#39;m not an expert, it s=
eems like it will be a difficult task for me to clean these errors.<br>
<br>
I realy hope there&#39;s a simpler way go about it :)<br>
<br>
<br>
<br>
On Wed, Apr 20, 2016 at 8:25 PM, Fred Ollinger &lt;<a href=3D"mailto:Fred.O=
llinger@seescan.com">Fred.Ollinger@seescan.com</a>&lt;mailto:<a href=3D"mai=
lto:Fred.Ollinger@seescan.com">Fred.Ollinger@seescan.com</a>&gt;&gt; wrote:=
<br>
I&#39;d start with the mysql recipe and update the source reference and try=
 to build it.<br>
<br>
<br>
If this fails, you might need to change some other things.<br>
<br>
<br>
Here&#39;s a howto on writing a recipe:<br>
<br>
<br>
<a href=3D"https://www.yoctoproject.org/docs/current/dev-manual/dev-manual.=
html#new-recipe-writing-a-new-recipe" rel=3D"noreferrer" target=3D"_blank">=
https://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#new-re=
cipe-writing-a-new-recipe</a><br>
<br>
<br>
<br>
________________________________<br>
From: <a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yocto=
project.org</a>&lt;mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.org"=
>yocto-bounces@yoctoproject.org</a>&gt; &lt;<a href=3D"mailto:yocto-bounces=
@yoctoproject.org">yocto-bounces@yoctoproject.org</a>&lt;mailto:<a href=3D"=
mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoproject.org</a>&g=
t;&gt; on behalf of Moti Cohen &lt;<a href=3D"mailto:motic.mail@gmail.com">=
motic.mail@gmail.com</a>&lt;mailto:<a href=3D"mailto:motic.mail@gmail.com">=
motic.mail@gmail.com</a>&gt;&gt;<br>
Sent: Wednesday, April 20, 2016 10:18 AM<br>
To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>&lt=
;mailto:<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a=
>&gt;<br>
Subject: [yocto] MySQL recipe for yocto<br>
<br>
Hi all,<br>
this is my 1&#39;st post to this list so I hope I&#39;m doing it right :)<b=
r>
<br>
I need to add MySQL for my yocto build.<br>
Looking online for a recipe - i found that there is one for MySQL under:<br=
>
/meta-openembedded/meta-oe/recipes-support/mysql/..<br>
The thing is that instead of MySQL, the recipe reffers to MariaDB which is =
a kind of a drop-in replacemnet and since I need to have the &quot;real&quo=
t; MySQL in my build - I cannot use it.<br>
looking into history log of mysql in the meta-openembedded git, it can be s=
een the the switch between MySQL and MariaDB was made at 2013 and from then=
 onwards it&#39;s MariaDB.<br>
<br>
<a href=3D"http://cgit.openembedded.org/meta-openembedded/commit/meta-oe/re=
cipes-support/mysql?id=3D72e23c12296fbc77193898c38426add58d0c2d71" rel=3D"n=
oreferrer" target=3D"_blank">http://cgit.openembedded.org/meta-openembedded=
/commit/meta-oe/recipes-support/mysql?id=3D72e23c12296fbc77193898c38426add5=
8d0c2d71</a><br>
<br>
Now to the question, do you know how can I add the &quot;real&quot; MySQL t=
o my build ?<br>
looking before 2013 at the meta-openembedded git i can find a recipe for My=
SQL which seems to support a &quot;real&quot; MySQL however, it&#39;s very =
old version (5.1) and I&#39;m not sure how and if I can update it to one of=
 the latest (e.g. MySQL 5.6).<br>
<br>
Will appriciate any feedback on this.<br>
Thanks in advance,<br>
Motico<br>
<br>
</blockquote></div><br></div>

--047d7b3a83963dd1540530f098f7--

Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f174.google.com (mail-lb0-f174.google.com
	[209.85.217.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEDA5E00AE2
	for <yocto@yoctoproject.org>; Wed, 23 Apr 2014 08:37:44 -0700 (PDT)
Received: by mail-lb0-f174.google.com with SMTP id u14so921298lbd.5
	for <yocto@yoctoproject.org>; Wed, 23 Apr 2014 08:37:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=ZDLEgycyyhRzj+gFWy4OXPvazwX0SAInvCNN1BHAGVA=;
	b=Pkxc1RCkwpVKTjufTSwrQWFcuUIAuNkMhkpppvQYoZX/kKKie46vVS823vTb1Z9ZhF
	PbxqvpowumBcPYlffQlNzvEab56z8x25zVbXnFjQkjShwWVZnz6+1i5twSuUX+vkAF0e
	nEvZ4lEQLs4oP7ohKcIFYf3/6wUuzDKdxBEpwVyf42JDSddwbFvF2d/v9WgdnI6NIrWR
	qJdzDWGm7S/09S3QyZqqutGAuyp3zBefvFc7HgwkU6Ka3iXB1WbXERsXpa1VPn+sHLDi
	RemViSrBmktwcfkJKHQrZp8OLCH+TSv3iOcKv+EJPawjzea8m+P0NrXFh1mf8sqAbG8B
	raGA==
X-Received: by 10.112.53.36 with SMTP id y4mr93274lbo.75.1398267462645; Wed,
	23 Apr 2014 08:37:42 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.35.194 with HTTP; Wed, 23 Apr 2014 08:37:22 -0700 (PDT)
In-Reply-To: <5357D4BE.6090309@mlbassoc.com>
References: <5357CAF3.1070702@mlbassoc.com>
	<CABcZANmHUB-v=zek8jxLWtUjSEGYZCjqL2q=3a=fUKXiMn4nSw@mail.gmail.com>
	<5357D4BE.6090309@mlbassoc.com>
From: Chris Larson <clarson@kergoth.com>
Date: Wed, 23 Apr 2014 08:37:22 -0700
X-Google-Sender-Auth: EEpMcYGM89fqjMyMls9CvgW1_vo
Message-ID: <CABcZAN=n__L01vXz2Kup3C=Vej-qCXjzwOhY7HgNnsOq6xdfFw@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: How does python-native work?
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
X-List-Received-Date: Wed, 23 Apr 2014 15:37:49 -0000
Content-Type: multipart/alternative; boundary=001a11c3bb2e697dde04f7b783ca

--001a11c3bb2e697dde04f7b783ca
Content-Type: text/plain; charset=UTF-8

On Wed, Apr 23, 2014 at 7:57 AM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2014-04-23 08:21, Chris Larson wrote:
>
>  On Wed, Apr 23, 2014 at 7:15 AM, Gary Thomas <gary@mlbassoc.com <mailto:
>> gary@mlbassoc.com>> wrote:
>>
>>     How is python-native supposed to work?  I can see that it's
>>     built and installed in my tmp/sysroots/HOST but it's installed
>>     in a sub-directory which is not found by normal means.
>>
>>
>> inherit pythonnative (or one of the classes that inherit it)
>>
>
> Thanks, I imported 'distutils' and that helped, but I still have problems
> with it.  Looking
> at log.do_configure:
>   checking for python... /local/rpi_2014-04-10/tmp/
> sysroots/x86_64-linux/usr/bin/python-native/python
>   checking for python-config... /local/rpi_2014-04-10/tmp/
> sysroots/x86_64-linux/usr/bin/python-native/python-config
>   Traceback (most recent call last):
>     File "/local/rpi_2014-04-10/tmp/sysroots/x86_64-linux/usr/bin/python-native/python-config",
> line 6, in <module>
>       from distutils import sysconfig
>     File "/local/rpi_2014-04-10/tmp/sysroots/x86_64-linux/usr/lib/
> python2.7/distutils/sysconfig.py", line 22, in <module>
>       PREFIX = os.path.normpath(sys.prefix).replace(
> os.getenv("BUILD_SYS"), os.getenv("HOST_SYS") )
>   TypeError: expected a character buffer object
>
> When I ran python-config before (original email), the results
> were from outside the build environment, i.e. the command line
> where I run 'bitbake'.  When do_configure() runs in my recipe,
> the environment seems to be quite different.  If I try to run
> python-config from devshell (for my recipe), it fails as above.
>

First, it's a bit worrisome that you're inheriting a class for distutils
when your build doesn't actually use distutils.. but beyond that, I don't
think the classes inherited by distutils assume you'll be running
python-config. Add this:

    export BUILD_SYS
    export HOST_SYS
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a11c3bb2e697dde04f7b783ca
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Wed, Apr 23, 2014 at 7:57 AM, Gary Thomas <span dir=3D"ltr">&lt;<a href=
=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</=
span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div id=3D":1aq" class=3D"a3s" style=3D"over=
flow:hidden">On 2014-04-23 08:21, Chris Larson wrote:<div class=3D""><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On Wed, Apr 23, 2014 at 7:15 AM, Gary Thomas &lt;<a href=3D"mailto:gary@mlb=
assoc.com" target=3D"_blank">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"ma=
ilto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;&gt; wro=
te:<br>


<br>
=C2=A0 =C2=A0 How is python-native supposed to work? =C2=A0I can see that i=
t&#39;s<br>
=C2=A0 =C2=A0 built and installed in my tmp/sysroots/HOST but it&#39;s inst=
alled<br>
=C2=A0 =C2=A0 in a sub-directory which is not found by normal means.<br>
<br>
<br>
inherit pythonnative (or one of the classes that inherit it)<br>
</blockquote>
<br></div>
Thanks, I imported &#39;distutils&#39; and that helped, but I still have pr=
oblems with it. =C2=A0Looking<br>
at log.do_configure:<br>
=C2=A0 checking for python... /local/rpi_2014-04-10/tmp/<u></u>sysroots/x86=
_64-linux/usr/bin/<u></u>python-native/python<br>
=C2=A0 checking for python-config... /local/rpi_2014-04-10/tmp/<u></u>sysro=
ots/x86_64-linux/usr/bin/<u></u>python-native/python-config<br>
=C2=A0 Traceback (most recent call last):<br>
=C2=A0 =C2=A0 File &quot;/local/rpi_2014-04-10/tmp/<u></u>sysroots/x86_64-l=
inux/usr/bin/<u></u>python-native/python-config&quot;, line 6, in &lt;modul=
e&gt;<br>
=C2=A0 =C2=A0 =C2=A0 from distutils import sysconfig<br>
=C2=A0 =C2=A0 File &quot;/local/rpi_2014-04-10/tmp/<u></u>sysroots/x86_64-l=
inux/usr/lib/<u></u>python2.7/distutils/sysconfig.<u></u>py&quot;, line 22,=
 in &lt;module&gt;<br>
=C2=A0 =C2=A0 =C2=A0 PREFIX =3D os.path.normpath(sys.prefix).<u></u>replace=
( os.getenv(&quot;BUILD_SYS&quot;), os.getenv(&quot;HOST_SYS&quot;) )<br>
=C2=A0 TypeError: expected a character buffer object<br>
<br>
When I ran python-config before (original email), the results<br>
were from outside the build environment, i.e. the command line<br>
where I run &#39;bitbake&#39;. =C2=A0When do_configure() runs in my recipe,=
<br>
the environment seems to be quite different. =C2=A0If I try to run<br>
python-config from devshell (for my recipe), it fails as above.</div></bloc=
kquote></div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra=
">First, it&#39;s a bit worrisome that you&#39;re inheriting a class for di=
stutils when your build doesn&#39;t actually use distutils.. but beyond tha=
t, I don&#39;t think the classes inherited by distutils assume you&#39;ll b=
e running python-config. Add this:</div>

<br>=C2=A0 =C2=A0 export BUILD_SYS</div><div class=3D"gmail_extra">=C2=A0 =
=C2=A0 export HOST_SYS<br>-- <br>Christopher Larson<br>clarson at kergoth d=
ot com<br>Founder - BitBake, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib=
<br>Senior Software Engineer, Mentor Graphics
</div></div>

--001a11c3bb2e697dde04f7b783ca--

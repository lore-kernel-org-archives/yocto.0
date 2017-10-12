Return-Path: <aaron.schwartz@logicsupply.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5DC6AE00CC6; Thu, 12 Oct 2017 04:44:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.48 listed in dnsbl.sorbs.net]
Received: from mail-oi0-f48.google.com (mail-oi0-f48.google.com
	[209.85.218.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 166DDE00CB6
	for <yocto@yoctoproject.org>; Thu, 12 Oct 2017 04:44:18 -0700 (PDT)
Received: by mail-oi0-f48.google.com with SMTP id v132so7958451oie.1
	for <yocto@yoctoproject.org>; Thu, 12 Oct 2017 04:44:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=logicsupply.com; s=google-lscom;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Djh1Beq8dyxGr9QHDHhCyS/tdPVPCN/tHaA+/s7L8TU=;
	b=pRb05JFPM9OLpn8Zyci55bH6uYsNjFRPxVv3UQpbz13d/bP2aIYH4gpEFK4o8/G6Op
	XfQlGR1KwE++Q1xzsGmLLZcOFcLv6H8v6BIAq5s9Kpi2veodXa9cRVSp/UuY50K3hDpX
	HAhHQ234ppa7eOvgOqK7nFQvwBKDgX3opIPlU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Djh1Beq8dyxGr9QHDHhCyS/tdPVPCN/tHaA+/s7L8TU=;
	b=JMsk1WzPIvi5XAEaeqVBITegDRpB9hT8KFQhLNH1jtATVs4cwy0XPwZLdlMYnZ/GFn
	HDjMIc+ODIBgAgW2aVi3eEDEehoGPZNU1c/v1EraxW2cBsvYyUqOhdpv3KVm777Xm/m9
	PWMRFjfiKNzxwuf24eSGT7ZTJ0MadTXr8h9mpNlwJLncS2H83FjfblvqojUtqyzVDNey
	32vJgWvvgzcA3q87Ifhqju8kOLI6h5OfROZZZ2jeuNsNjorqm2HzXc8AmADkb+2WohdS
	yaJw8XXNX+DLidXaB3QUPHCxFZtChgB3anMuZlpUpisUTzGueWPcwnRiN05TuzB+RRPA
	q5nQ==
X-Gm-Message-State: AMCzsaWHnwWIByf4Y5aUKTkkuaF0LdwCu/tBP5Ds6qipx0EH+LKi5I65
	gIK/J7lABrNcShQsC7710oKi4BJ04d7zDfHvZTGz0A==
X-Google-Smtp-Source: AOwi7QBpjMKY4CmxF+IqFRUneP7LHEZ8fCLmDnK+goP4ywB8Qkxn3+oU61KWAVY/mLnRb4lslTUENNV2I5ns11rXNIA=
X-Received: by 10.202.114.193 with SMTP id p184mr1138392oic.217.1507808658048; 
	Thu, 12 Oct 2017 04:44:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.74.110.156 with HTTP; Thu, 12 Oct 2017 04:44:17 -0700 (PDT)
In-Reply-To: <CAAkg2-mXCpkQuy1kc5wFD3+PbuA96C1f_XLzJHUtqDep=_gfUw@mail.gmail.com>
References: <CAAkg2-mXCpkQuy1kc5wFD3+PbuA96C1f_XLzJHUtqDep=_gfUw@mail.gmail.com>
From: Aaron Schwartz <aaron.schwartz@logicsupply.com>
Date: Thu, 12 Oct 2017 07:44:17 -0400
Message-ID: <CAP3gWc_ue3KhnHcGn_oB2dkeyR9u9F5n8-njsSJ4F_LmuUXk5w@mail.gmail.com>
To: Bernd <prof7bit@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Navigating the layer labyrinth
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
X-List-Received-Date: Thu, 12 Oct 2017 11:44:20 -0000
Content-Type: multipart/alternative; boundary="001a1134e0ee73e61c055b580f6f"

--001a1134e0ee73e61c055b580f6f
Content-Type: text/plain; charset="UTF-8"

 Hello,

I am not sure if you've found the OpenEmbedded Layer Index [0] yet, but
that's a good resource and an example of what can be done.  I believe the
source code is available [1] and I've toyed with the idea of getting it
working locally (although I've not had the time to do so).

That could be a part of what you're looking for, at least.

Hope that helps,
Aaron



0) https://layers.openembedded.org/layerindex/branch/master/recipes/
1) http://git.yoctoproject.org/cgit/cgit.cgi/layerindex-web/tree/layerindex


On Thu, Oct 12, 2017 at 5:34 AM, Bernd <prof7bit@gmail.com> wrote:

> I am a new user for a few weeks now, trying to make a customized image
> for a toradex colibri-vf module, so far I have succeeded in the
> following disciplines:
>
> * adding the 3rd party layers that I need
> * making my own layers
> * using a .bbappend to patch the device tree
> * using a .bbappend to workaround a bug(?) in one of the freescale layers
> * writing my own recipe to install a python script
> * writing recipes for pulling additional python packages with pypi and
> setuptools3
> * writing my own image recipe
> * making it boot and run on the target platform
>
> During this learning experience I have made the following observations
> of circumstances that made it especially hard for me to get things
> done, I'm not yet really sure if this is a documentation issue or if
> it is really a missing feature but I feel I could have had a much
> *much* easier time learning and understanding the concepts and
> relationships and the inner workings of existing layers upon which I
> want to build my system if the following things were possible (and/or
> if they are already possible they should be documented in the very
> first chapter of the documentation):
>
> * Finding the *file path* of an existing recipe (or append file or
> class) *by its name* and also all existing .bbappends for it, i
> imagine something simple like bitbake --show-paths foo-bar would
> output me the small list of absolute paths of recipe files by the name
> foo-bar and all matching .bbappend files in the order in which they
> would be applied, it would show me only this small list of paths and
> not dump 100kb of unrelated information along with it. This would be
> incredibly helpful when I need to inspect an existing recipe in order
> to understand how I can bbappend it or even just to see and understand
> what it actually does.
>
> * A simple way to track the assignment of a certain variable, to
> inspect its contents and if it refers to other variables then
> recursively show their contents too (and also the path of the bb file
> where this happens), and also show which other recipes will directly
> and indirectrly depend on this variable further down the line, I
> imagine this should output two tree-like structures where one can see
> at one glance how and where all the contents of that variable come
> from and where they are going to be used. Again this should be a
> simple command that formats and outputs that (and only that)
> information in a well formatted and compact tree-like representation.
>
> * The absolute killer application would be an IDE or an editor plugin
> where I open any .bb file and can then just CTRL-click on any include,
> require, inherit, depend, rdepend, or any variable name and it would
> open another editor containing that recipe file where it is defined
> and/or populate a sidebar with a list or a tree of direct and indirect
> references to that name, backward and forward, and I could just click
> on any node of that tree an and it would open the file in the editor
> and jump to that line of code. Such a thing would be an incredibly
> helpful tool, it would make even the most complex and tangled
> labyrinth of recipes navigable with ease.
>
> Please tell me that such a thing already exists and I just have not
> found it yet.
>
> Bernd
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 

Aaron Schwartz
Production
Logic Supply
Direct: +1 802 861 2300 Ext. 530
Main: +1 802 861 2300
www.logicsupply.com

Google+ <https://plus.google.com/+Logicsupply/posts> | Twitter
<https://twitter.com/logicsupply> | LinkedIn
<https://www.linkedin.com/company/logic-supply> | YouTube
<https://www.youtube.com/user/logicsupply>

--001a1134e0ee73e61c055b580f6f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">=C2=A0Hello,<div><br></div><div>I am not sure if you&#39;v=
e found the OpenEmbedded Layer Index [0] yet, but that&#39;s a good resourc=
e and an example of what can be done.=C2=A0 I believe the source code is av=
ailable [1] and I&#39;ve toyed with the idea of getting it working locally =
(although I&#39;ve not had the time to do so).</div><div><br></div><div>Tha=
t could be a part of what you&#39;re looking for, at least.</div><div><br><=
/div><div>Hope that helps,</div><div>Aaron</div><div><br></div><div><br></d=
iv><div><br></div><div>0)=C2=A0<a href=3D"https://layers.openembedded.org/l=
ayerindex/branch/master/recipes/">https://layers.openembedded.org/layerinde=
x/branch/master/recipes/</a></div><div>1)=C2=A0<a href=3D"http://git.yoctop=
roject.org/cgit/cgit.cgi/layerindex-web/tree/layerindex">http://git.yoctopr=
oject.org/cgit/cgit.cgi/layerindex-web/tree/layerindex</a></div><div><br></=
div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu,=
 Oct 12, 2017 at 5:34 AM, Bernd <span dir=3D"ltr">&lt;<a href=3D"mailto:pro=
f7bit@gmail.com" target=3D"_blank">prof7bit@gmail.com</a>&gt;</span> wrote:=
<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex">I am a new user for a few weeks now, try=
ing to make a customized image<br>
for a toradex colibri-vf module, so far I have succeeded in the<br>
following disciplines:<br>
<br>
* adding the 3rd party layers that I need<br>
* making my own layers<br>
* using a .bbappend to patch the device tree<br>
* using a .bbappend to workaround a bug(?) in one of the freescale layers<b=
r>
* writing my own recipe to install a python script<br>
* writing recipes for pulling additional python packages with pypi and<br>
setuptools3<br>
* writing my own image recipe<br>
* making it boot and run on the target platform<br>
<br>
During this learning experience I have made the following observations<br>
of circumstances that made it especially hard for me to get things<br>
done, I&#39;m not yet really sure if this is a documentation issue or if<br=
>
it is really a missing feature but I feel I could have had a much<br>
*much* easier time learning and understanding the concepts and<br>
relationships and the inner workings of existing layers upon which I<br>
want to build my system if the following things were possible (and/or<br>
if they are already possible they should be documented in the very<br>
first chapter of the documentation):<br>
<br>
* Finding the *file path* of an existing recipe (or append file or<br>
class) *by its name* and also all existing .bbappends for it, i<br>
imagine something simple like bitbake --show-paths foo-bar would<br>
output me the small list of absolute paths of recipe files by the name<br>
foo-bar and all matching .bbappend files in the order in which they<br>
would be applied, it would show me only this small list of paths and<br>
not dump 100kb of unrelated information along with it. This would be<br>
incredibly helpful when I need to inspect an existing recipe in order<br>
to understand how I can bbappend it or even just to see and understand<br>
what it actually does.<br>
<br>
* A simple way to track the assignment of a certain variable, to<br>
inspect its contents and if it refers to other variables then<br>
recursively show their contents too (and also the path of the bb file<br>
where this happens), and also show which other recipes will directly<br>
and indirectrly depend on this variable further down the line, I<br>
imagine this should output two tree-like structures where one can see<br>
at one glance how and where all the contents of that variable come<br>
from and where they are going to be used. Again this should be a<br>
simple command that formats and outputs that (and only that)<br>
information in a well formatted and compact tree-like representation.<br>
<br>
* The absolute killer application would be an IDE or an editor plugin<br>
where I open any .bb file and can then just CTRL-click on any include,<br>
require, inherit, depend, rdepend, or any variable name and it would<br>
open another editor containing that recipe file where it is defined<br>
and/or populate a sidebar with a list or a tree of direct and indirect<br>
references to that name, backward and forward, and I could just click<br>
on any node of that tree an and it would open the file in the editor<br>
and jump to that line of code. Such a thing would be an incredibly<br>
helpful tool, it would make even the most complex and tangled<br>
labyrinth of recipes navigable with ease.<br>
<br>
Please tell me that such a thing already exists and I just have not<br>
found it yet.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Bernd<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><p styl=
e=3D"color:#4c4c4c;font-family:Arial;font-size:13px">Aaron Schwartz<br> Pro=
duction<br> Logic Supply<br>Direct: +1 802 861 2300 Ext. 530 <br> Main:=C2=
=A0+1 802 861 2300<br> <a href=3D"http://www.logicsupply.com" target=3D"_bl=
ank">www.logicsupply.com</a></p><p style=3D"color:#4c4c4c;font-family:Arial=
;font-size:12px"><a href=3D"https://plus.google.com/+Logicsupply/posts" tar=
get=3D"_blank">Google+</a> | <a href=3D"https://twitter.com/logicsupply" ta=
rget=3D"_blank">Twitter</a> | <a href=3D"https://www.linkedin.com/company/l=
ogic-supply" target=3D"_blank">LinkedIn</a> | <a href=3D"https://www.youtub=
e.com/user/logicsupply" target=3D"_blank">YouTube</a></p></div>
</div>

--001a1134e0ee73e61c055b580f6f--

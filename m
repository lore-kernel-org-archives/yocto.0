Return-Path: <jeffrey.osier-mixon@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B801E004D2
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 14:01:19 -0700 (PDT)
Received: from mail-vx0-f180.google.com ([209.85.220.180])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 30 Mar 2012 14:01:18 -0700
Received: by vcbfl10 with SMTP id fl10so625792vcb.25
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 14:01:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:x-gm-message-state:content-type;
	bh=0IEEwJC9Ii11nDt3ajVPAD1z4tW+BhUzeVbccQgcHKo=;
	b=LCLGoepgffeIKoWvT87Lo8OOVYz2Zy/Z9gUptGEaJj7wGANv8bNBljiwbcKYdFykOv
	/zrHx7hHPhCPHtouN6TYhZpfmWsXK7im8K0Y6FuToohzfC5T3K9Ldyw7g0AbWw5g4rJn
	cZnoKt3yEbnXanDdGcMClC9O+RUdg4TNhDgeJ5vW55RRcKHxWiOwdkY5QvDsg98iip8R
	LN/zeFKnVtQ0g1BviHr+ZKRauv9GySqjWr16lfZOkWUF1Pih5dtQl/y1mHdBtRWTbDwK
	LV5GcElwvzu94hWnpU988oyW8COEikiQ2wP7/4HPzynZBRABKQccggrFf5KKVGRLZaj7
	3vBw==
MIME-Version: 1.0
Received: by 10.220.152.10 with SMTP id e10mr1709169vcw.31.1333141277409; Fri,
	30 Mar 2012 14:01:17 -0700 (PDT)
Received: by 10.52.30.52 with HTTP; Fri, 30 Mar 2012 14:01:17 -0700 (PDT)
In-Reply-To: <4F7614FE.5000107@windriver.com>
References: <D044B647-8BCD-48B4-BABD-CE4751D023E0@dominion.thruhere.net>
	<4F7608DC.1000402@windriver.com>
	<26C6B15B-4A12-453A-A146-C884A5040178@dominion.thruhere.net>
	<4F7614FE.5000107@windriver.com>
Date: Fri, 30 Mar 2012 14:01:17 -0700
Message-ID: <CALZ2gZXm0G+uie_H20j3M_d8FmnB_h+xbTHBF-fQhZfTn3cZ3Q@mail.gmail.com>
From: "Osier-mixon, Jeffrey" <jeffrey.osier-mixon@intel.com>
To: Mark Hatle <mark.hatle@windriver.com>
X-Gm-Message-State: ALoCoQnzp6hxElkZf5Qd6bMucIKxRJFAJHUqz6hMzbMcGxZsvkdhq2XlrlFyG9kP1LM29WgncxRk
Cc: yocto@yoctoproject.org
Subject: Re: Moving angstrom under the yocto banner
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 30 Mar 2012 21:01:19 -0000
Content-Type: multipart/alternative; boundary=f46d04389283467ff004bc7c24d2

--f46d04389283467ff004bc7c24d2
Content-Type: text/plain; charset=ISO-8859-1

I have some hope of bringing a little bit of order to the chaos that seems
to be ensuing here. I am speaking here from my own understanding, which may
or may not be correct.

On Fri, Mar 30, 2012 at 1:18 PM, Mark Hatle <mark.hatle@windriver.com>wrote:

> On 3/30/12 2:33 PM, Koen Kooi wrote:
>
>>
>> Op 30 mrt. 2012, om 12:26 heeft Mark Hatle het volgende geschreven:
>>
>>  On 3/30/12 1:44 PM, Koen Kooi wrote:
>>>
>>>> Hi,
>>>>
>>>> RP said I should raise this on the yocto lists, so here it is:
>>>>
>>>> The Angstrom core team would like to move angstrom under the yocto
>>>> banner so
>>>> we can formally claim to be 'yocto'.
>>>>
>>>
>>> For it to be on the yocto project web site, it just need to have the
>>> layers hosted on the git.yoctoproject.org.  But there is no "yocto"..
>>> It's the Yocto Project, Poky, or specific git repositories.  There is no
>>> reason we can't have an angstrom repository.  It could be in a similar
>>> format to the Poky repository (everything combined for a single download),
>>> or it could be a layer [or layers] that sit on top of Poky.
>>>
>>
>> Why on top of poky? I do not want poky, nor do my customers, oe-core is
>> what
>> we need and want. This proposal to move angstrom under yocto is targeted
>> at
>> eliminating 'poky' from the stack while still being able to say 'yocto'.
>>
>
> Poky is a repository made up of bitbake + oe-core + meta-yocto, as well as
> a distribution definition (in meta-yocto).  I assume angstrom has it's own
> distribution definition.
>
> So my question is why NOT on top of Poky (the repository, not distribution
> definition)?


I think I understand what Koen is after - an alternative reference
distribution for the Yocto Project. I think this issue provides us with the
opportunity to really nail down what is, and what isn't, the Yocto Project.
(Since this discussion is happening on the yocto mailing list.)

I see it as:
- a build took (BitBake), whose maintenance is shared with OE
- a set of metadata:
  some maintained under the Yocto Project banner (e.g. meta-yocto &
linux-yocto)
  some shared with others (oe-core)
  some outside but hosted on yp.org
- several build-related tools utilities (e.g. swabber, ADT, etc)
- embedded related libraries (e.g. EGLIBC)

What these all have in common is that they are related to embedded Linux
development, they are maintained under the Yocto Project banner, and they
are all tested together in the course of our release process.

I think most of the confusion among Yocto, Poky, and OE comes from legacy
descriptions. At one time, Poky was itself a build "system", and the
various layers were not separate projects. It was similar to OE classic.
Now functionality all lives in separate layers, most of them
interchangeable between Yocto and OE.

Definition-wise, we need to remember that the Yocto Project is a *project*,
not a distribution, and not a consortium. It isn't a sticker one could put
on a box to say "yocto inside". As the project website says, it
provides templates,
tools and methods to help you create custom Linux-based systems. It is not
a distribution itself, but it does have a reference system called Poky that
is working, tested representation of all of these things together.

Thus, there is no "yocto distribution". I think it would be correct to say
that any release that uses the linux-yocto and/or meta-yocto layer would be
representative of the Yocto Project. If a distro uses BitBake, oe-core, and
a BSP maintained or obtained from a Yocto Project repository, that's a grey
area. If a distro uses nothing maintained on yoctoproject.org, I would
suggest that it is not representative of the Yocto Project, although it may
be compatible with it.

BitBake and oe-core are shared components between Yocto and OE, so by this
circuitous definition, Angstrom could be considered representative of the
Yocto Project to some extent, as it uses Yocto Project components as its
upstream. Poky does as well, but Poky uses only Yocto-maintained components
(I think?) and represents all of the various components of the build system
working together, and it is tested as such.

Does that mean that Poky is more representative of the Yocto Project than
Angstrom? Possibly so. But it does not mean Angstrom is unrepresentative.
Angstrom uses some Yocto-maintained components and some that are not
maintained by the Yocto Project, just as Ubuntu uses some Debian components
and some that are not maintained or supported by Debian.


>
>> We both know that saying it is 'yocto' is wrong and misleading, but that's
>> what users are asking for and yocto advocates seem to push. Just watch
>> the ELC
>> videos for yocto related presentations, 'yocto' and 'poky' are used
>> interchangeably in most of them.
>>
>> A 'reference' should be just that, a reference, not a mandated part.
>>
>
> It's hard to call something Yocto Project based unless it used something
> from the Yocto Project.  meta-yocto being on of those components.
>
> There is enough confusion about yocto vs poky vs..  It's slowly being
> reconciled and defined.. but it's a slow process for all of us.


Angstrom does use oe-core, but I don't think it uses linux-yocto (right?)
and definitely not meta-yocto. In fact, I don't think it depends on any
components that are solely maintained under the Yocto Project banner. It
does depend on two components with shared responsibility between Yocto and
OE, namely oe-core and bitbake.

That does not stop it from being represented under the Yocto Project if
that is the maintainer's wish and if that representation is amenable to the
project's technical maintainers and the Advisory Board. If the goal is to
avoid future misunderstandings, however, this may not be the best way to do
it. I think community education may be the best way to address that
problem, and in order to do that, everyone involved needs to understand and
agree on the definitions. As Mark says, we are getting there, slowly.

My feeling is that if Koen wants Angstrom to be represented under the Yocto
Project banner, it can do so if the Yocto Project maintainers agree to do
it. If Koen wants Angstrom to be considered representative of the Yocto
Project, it can do so to the extent that it is based on the components it
uses that are maintained (fully or partially) by projects under the Yocto
Project.

Again, someone please let me know if I am mistaken.

-- 
Jeff Osier-Mixon http://jefro.net/blog
Yocto Project Community Manager @Intel http://yoctoproject.org

--f46d04389283467ff004bc7c24d2
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I have some hope of bringing a little bit of order to the chaos that seems =
to be ensuing here. I am speaking here from my own understanding, which may=
 or may not be correct.<br><br><div class=3D"gmail_quote">On Fri, Mar 30, 2=
012 at 1:18 PM, Mark Hatle <span dir=3D"ltr">&lt;<a href=3D"mailto:mark.hat=
le@windriver.com" target=3D"_blank">mark.hatle@windriver.com</a>&gt;</span>=
 wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">

<div>On 3/30/12 2:33 PM, Koen Kooi wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
Op 30 mrt. 2012, om 12:26 heeft Mark Hatle het volgende geschreven:<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On 3/30/12 1:44 PM, Koen Kooi wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hi,<br>
<br>
RP said I should raise this on the yocto lists, so here it is:<br>
<br>
The Angstrom core team would like to move angstrom under the yocto banner s=
o<br>
we can formally claim to be &#39;yocto&#39;.<br>
</blockquote>
<br>
For it to be on the yocto project web site, it just need to have the layers=
 hosted on the <a href=3D"http://git.yoctoproject.org" target=3D"_blank">gi=
t.yoctoproject.org</a>. =A0But there is no &quot;yocto&quot;.. It&#39;s the=
 Yocto Project, Poky, or specific git repositories. =A0There is no reason w=
e can&#39;t have an angstrom repository. =A0It could be in a similar format=
 to the Poky repository (everything combined for a single download), or it =
could be a layer [or layers] that sit on top of Poky.<br>



</blockquote>
<br>
Why on top of poky? I do not want poky, nor do my customers, oe-core is wha=
t<br>
we need and want. This proposal to move angstrom under yocto is targeted at=
<br>
eliminating &#39;poky&#39; from the stack while still being able to say &#3=
9;yocto&#39;.<br>
</blockquote>
<br></div>
Poky is a repository made up of bitbake + oe-core + meta-yocto, as well as =
a distribution definition (in meta-yocto). =A0I assume angstrom has it&#39;=
s own distribution definition.<br>
<br>
So my question is why NOT on top of Poky (the repository, not distribution =
definition)?</blockquote><div><br></div><div>I think I understand what Koen=
 is after - an alternative reference distribution for the Yocto Project. I =
think this issue provides us with the opportunity to really nail down what =
is, and what isn&#39;t, the Yocto Project. (Since this discussion is happen=
ing on the yocto mailing list.)</div>


<div><br></div><div>I see it as:</div><div>- a build took (BitBake), whose =
maintenance is shared with OE</div><div>- a set of metadata:</div><div>=A0 =
some maintained under the Yocto Project banner (e.g. meta-yocto &amp; linux=
-yocto)</div>


<div>=A0 some shared with others (oe-core)</div><div>=A0 some outside but h=
osted on <a href=3D"http://yp.org" target=3D"_blank">yp.org</a></div><div>-=
 several build-related tools utilities (e.g. swabber, ADT, etc)</div><div>-=
 embedded related libraries (e.g. EGLIBC)</div>


<br><div>What these all have in common is that they are related to embedded=
 Linux development, they are maintained under the Yocto Project banner, and=
 they are all tested together in the course of our release process.=A0</div=
>


<div><br></div><div>I think most of the confusion among Yocto, Poky, and OE=
 comes from legacy descriptions. At one time, Poky was itself a build &quot=
;system&quot;, and the various layers were not separate projects. It was si=
milar to OE classic. Now functionality all lives in separate layers, most o=
f them interchangeable between Yocto and OE.=A0</div>


<div><br></div><div>Definition-wise, we need to remember that the Yocto Pro=
ject is a *project*, not a distribution, and not a consortium. It isn&#39;t=
 a sticker one could put on a box to say &quot;yocto inside&quot;. As the p=
roject website says, it provides=A0<span style=3D"line-height:18px;color:rg=
b(76,67,63);font-size:14px;font-family:Arial,Helvetica,Tahoma,Verdana,&#39;=
Bitstream Vera Sans&#39;,sans-serif">templates, tools and methods to help y=
ou create custom Linux-based systems.=A0</span>It is not a distribution its=
elf, but it does have a reference system called Poky that is working, teste=
d representation of all of these things together.</div>

<div><br></div><div>Thus, there is no &quot;yocto distribution&quot;. I thi=
nk it would be correct to say that any release that uses the linux-yocto an=
d/or meta-yocto layer would be representative of the Yocto Project. If a di=
stro uses BitBake, oe-core, and a BSP maintained or obtained from a Yocto P=
roject repository, that&#39;s a grey area. If a distro uses nothing maintai=
ned on <a href=3D"http://yoctoproject.org" target=3D"_blank">yoctoproject.o=
rg</a>, I would suggest that it is not representative of the Yocto Project,=
 although it may be compatible with it.=A0</div>

<div><br></div><div>BitBake and oe-core are shared components between Yocto=
 and OE, so by this circuitous definition, Angstrom could be considered rep=
resentative of the Yocto Project to some extent, as it uses Yocto Project c=
omponents as its upstream.=A0Poky does as well, but Poky uses only Yocto-ma=
intained components (I think?) and represents all of the various components=
 of the build system working together, and it is tested as such.</div>


<div><br></div><div>Does that mean that Poky is more representative of the =
Yocto Project than Angstrom? Possibly so. But it does not mean Angstrom is =
unrepresentative. Angstrom uses some Yocto-maintained components and some t=
hat are not maintained by the Yocto Project, just as Ubuntu uses some Debia=
n components and some that are not maintained or supported by Debian.=A0</d=
iv>
<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
We both know that saying it is &#39;yocto&#39; is wrong and misleading, but=
 that&#39;s<br>
what users are asking for and yocto advocates seem to push. Just watch the =
ELC<br>
videos for yocto related presentations, &#39;yocto&#39; and &#39;poky&#39; =
are used<br>
interchangeably in most of them.<br>
<br>
A &#39;reference&#39; should be just that, a reference, not a mandated part=
.<br>
</blockquote>
<br></div>
It&#39;s hard to call something Yocto Project based unless it used somethin=
g from the Yocto Project. =A0meta-yocto being on of those components.<br>
<br>
There is enough confusion about yocto vs poky vs.. =A0It&#39;s slowly being=
 reconciled and defined.. but it&#39;s a slow process for all of us.</block=
quote><div><br></div><div>Angstrom does use oe-core, but I don&#39;t think =
it uses linux-yocto (right?) and definitely not meta-yocto. In fact, I don&=
#39;t think it depends on any components that are solely maintained under t=
he Yocto Project banner. It does depend on two components with shared respo=
nsibility between Yocto and OE, namely oe-core and bitbake.</div>

<div><br></div><div>That does not stop it from being represented under the =
Yocto Project if that is the maintainer&#39;s wish and if that representati=
on is amenable to the project&#39;s technical maintainers and the Advisory =
Board.=A0If the goal is to avoid future misunderstandings, however, this ma=
y not be the best way to do it. I think community education may be the best=
 way to address that problem, and in order to do that, everyone involved ne=
eds to understand and agree on the definitions. As Mark says, we are gettin=
g there, slowly.</div>

<div><br></div><div>My feeling is that if Koen wants Angstrom to be represe=
nted under the Yocto Project banner, it can do so if the Yocto Project main=
tainers agree to do it. If Koen wants Angstrom to be considered representat=
ive of the Yocto Project, it can do so to the extent that it is based on th=
e components it uses that are maintained (fully or partially) by projects u=
nder the Yocto Project.=A0</div>

<div><br></div><div>Again, someone please let me know if I am mistaken.</di=
v><div><br></div><div>--=A0</div>
</div>Jeff Osier-Mixon=A0<a href=3D"http://jefro.net/blog" target=3D"_blank=
">http://jefro.net/blog</a><div>Yocto Project Community Manager @Intel=A0<a=
 href=3D"http://yoctoproject.org/" target=3D"_blank">http://yoctoproject.or=
g</a></div>


<br>

--f46d04389283467ff004bc7c24d2--

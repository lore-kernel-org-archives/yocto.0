Return-Path: <samuelzeter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E66CAE00CDF; Thu, 17 Jan 2019 16:11:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (samuelzeter[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.54 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
	[209.85.221.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C958E00C91
	for <yocto@yoctoproject.org>; Thu, 17 Jan 2019 16:11:30 -0800 (PST)
Received: by mail-wr1-f54.google.com with SMTP id s12so13034050wrt.4
	for <yocto@yoctoproject.org>; Thu, 17 Jan 2019 16:11:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=8YqAD5HDzGkb/oEk+VgpVoMG04g++036MF+Li8KIiR4=;
	b=jrHYge/TspMtVui3/RMFWasn9NR4ZP0MciDv97KjJxbSoeWPHQnNxjx1xqk0He2mT4
	iDwbrqrOmdWacco6gy1fmvXawx82b420c9Y08TwJMUjEGsp/dM+o2QgwdLTZutRIixbX
	SDMgZne4Md+lEfeLRmM8U5mhfYg3ZXqd4cFgmVHcfv0OlMocAKNUWh8yxgXZ5YHg5MzX
	77CMWOjx1NvvXaszg6OuLEs52fswyeP3t89wnh8+HBLY/bS9n0Ci3RLJAMhGSOdCY5wR
	mpc4IoLXTOLZDYtnhCMitNE7+R2s+qqqD4gMBULdH2mtWXLMQpunc9+XIU5nE04OBli1
	exnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=8YqAD5HDzGkb/oEk+VgpVoMG04g++036MF+Li8KIiR4=;
	b=aKIbNkXIFi08eKkk+4xVJIr3LKN98G83h2jP9c9/BtfhuMzsO+ywoeNxP5O/rvU2Jw
	WIxH9YDBq5j8OrTQsdqMkSK84vDgwKRjfISiSp4kKQ3/Zb0Hk9sNxiVGaXdnBETkvSd/
	FF4RhD+RPhZBDcI5XeCqkdqfJeT9RsKY6QhCGmjA0joBmbcT2XeI9h9Z/fADTcDY8h0/
	938rGNGzZz2pfJUrwsxm+5QD8eBjeEKyOf3Trqu/OFafwDn45Y2e5qGuTxp7gQV9BLHK
	oJ3suOyawTsUUHIB69OEIKYogeXX9r97l+w/nVR/SlLSvh2EcqwTiU4Xbn0MVU6WTIl3
	VaEA==
X-Gm-Message-State: AJcUukc+840wgKErW9Af6rmM/MGfEYV5IW4wAuIEGLwq7p3MjB7FRxMv
	hGLs91vhAL9GFg6fcXPRQBfB3yNJkAL8DbxKTUQ=
X-Google-Smtp-Source: ALg8bN4SEhTx/4hl75g7vp3kMD9ahgHn2YTdTkL02/sqKMGXkAl3+EWqxso7VxP+gUE0c5NU9syXa7k0KTEBidpXNkU=
X-Received: by 2002:adf:8506:: with SMTP id 6mr14667708wrh.128.1547770289436; 
	Thu, 17 Jan 2019 16:11:29 -0800 (PST)
MIME-Version: 1.0
References: <CAAShK94whbMmErVf6j7xjbjfzW7tRD4QP=tanf2c7U7Sh++Ytg@mail.gmail.com>
	<0c803733-b074-5d0f-fbdc-53d47b9830d4@windriver.com>
In-Reply-To: <0c803733-b074-5d0f-fbdc-53d47b9830d4@windriver.com>
From: Sam Zeter <samuelzeter@gmail.com>
Date: Fri, 18 Jan 2019 10:11:18 +1000
Message-ID: <CAAShK97w42RgkchyWfKHwAp_fH3GACAPkt8XTgBk66aFQJJtnw@mail.gmail.com>
To: Randy MacLeod <randy.macleod@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: Firewalld failing to build
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
X-List-Received-Date: Fri, 18 Jan 2019 00:11:32 -0000
Content-Type: multipart/alternative; boundary="0000000000004bbc36057fb05a98"

--0000000000004bbc36057fb05a98
Content-Type: text/plain; charset="UTF-8"

Hi Randy,

Thanks for offering to help. The recipe is posted below.

For Poky: I'm on the master branch. Last commit
being 4211a7497886561e9607f18dd4d81d0d41eaadfa

Likewise, for meta-openembedded layers I am on the masters and pull them
daily.

The dependencies have been individually tested and all built successfully
(eg bitbake nftables) as per firewalld's Github instructions. The only
module I had trouble finding was python3-slip-dbus -- which I used
python3-dbus and python-slip-dbus instead. I'm not sure if this will be an
issue.

Finally, in my local.conf file I've added the following:
DISTRO_FEATURES_append = " systemd sysvinit"
DISTRO_FEATURES_BACKFILL_CONSIDERED += "sysvinit"
VIRTUAL-RUNTIME_init_manager = "systemd"



<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
# Recipe created by recipetool
# This is the basis of a recipe and may need further editing in order to be
fully functional.
# (Feel free to remove these comments when editing.)

SUMMARY = "A firewall daemon with D-Bus interface providing a dynamic
firewall"
# WARNING: the following LICENSE and LIC_FILES_CHKSUM values are best
guesses - it is
# your responsibility to verify that the values are complete and correct.
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=b234ee4d69f5fce4486a80fdaf4a4263"

SRC_URI = "git://github.com/firewalld/firewalld.git;protocol=https"

# Modify these as desired
PV = "0.6.999+git${SRCPV}"
SRCREV = "44200d0f508a990c5dfff9f480a6206ec507e229"

S = "${WORKDIR}/git"

# NOTE: the following prog dependencies are unknown, ignoring:
ip6tables-restore rmmod sysctl ip6tables modprobe modinfo ebtables iptables
ebtables-restore iptables-restore kill ipset nft xsltproc
DEPENDS = "desktop-file-utils-native intltool-native glib-2.0-native
systemd iptables ebtables ipset nftables python3-native python3-dbus
python-slip-dbus python3-decorator python3-pygobject python3-pydbus
docbook-xml-dtd4-native docbook-xsl-stylesheets-native
docbook-xsl-stylesheets libxml2-native xmlto-native"

# NOTE: if this software is not capable of being built in a separate build
directory
# from the source, you should replace autotools with autotools-brokensep in
the
# inherit line
# NOTE: spec file indicates the license may be "GPLv2+"
inherit pythonnative gettext autotools

# Specify any options you want to pass to the configure script using
EXTRA_OECONF:
EXTRA_OECONF = ""
<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



Thanks,
Sam.


On Thu, 17 Jan 2019 at 05:49, Randy MacLeod <randy.macleod@windriver.com>
wrote:

> On 1/16/19 12:47 AM, Sam Zeter wrote:
> > Hello all,
> >
> > I've been attempting to build firewalld by adding it through 'devtool
> > add ' and then 'devtool build firewalld'. However, I am stuck with the
> > following errors. I have no idea what could be causing this. Could
> > someone please help?
> >
> > xsltproc -o ../html/firewall-cmd.html --nonet --xinclude
> > transform-html.xsl firewall-cmd.xml
> > | xsltproc -o ../html/firewalld.dbus.html --nonet --xinclude
> > transform-html.xsl
> >
> ../../../../../../../../workspace/sources/firewalld/doc/xml/firewalld.dbus.xml
> > | xsltproc -o ../html/firewalld.conf.html --nonet --xinclude
> > transform-html.xsl
> >
> ../../../../../../../../workspace/sources/firewalld/doc/xml/firewalld.conf.xml
> > | xsltproc -o ../html/firewalld.html --nonet --xinclude
> > transform-html.xsl firewalld.xml
> > | 134 translated messages, 281 untranslated messages.
> > | bn_IN: 293 translated messages, 122 untranslated messages.
> > | ca: 415 translated messages.
> > | cs: 415 translated messages.
> > | da: warning: failed to load external entity "authors.xml"
> > | firewall-cmd.xml:36: parser error : Failure to process entity authors
> > |     &authors;
> > |              ^
> > | firewall-cmd.xml:36: parser error : Entity 'authors' not defined
> > |     &authors;
> > |              ^
> > | warning: failed to load external entity "seealso.xml"
> > | firewall-cmd.xml:2297: parser error : Failure to process entity seealso
> > |   &seealso;
> > |            ^
> > | firewall-cmd.xml:2297: parser error : Entity 'seealso' not defined
> > |   &seealso;
> >
> > Thanks
> > Sam.
> >
>
> Hi Sam,
>
> Can you post your recipe?
>
> Do you have all the dependencies listed on:
>     https://github.com/firewalld/firewalld
>
> What branch & commit are you based on?
>
> When we looked at adding a firewalld recipe 3+ years ago
> it didn't work out since the package wasn't cross-compile
> friendly but things have changed since then so I'm looking
> forward to see what can be achieved.
>
>
> --
> # Randy MacLeod
> # Wind River Linux
>

--0000000000004bbc36057fb05a98
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi Rand=
y,<div><br></div><div>Thanks for offering to help. The recipe is posted bel=
ow.=C2=A0</div><div><br></div><div>For Poky: I&#39;m on the master branch. =
Last commit being=C2=A04211a7497886561e9607f18dd4d81d0d41eaadfa</div><div><=
br></div><div>Likewise, for meta-openembedded layers I am on the masters an=
d pull them daily.</div><div><br></div><div>The dependencies have been indi=
vidually tested and all built successfully (eg bitbake nftables) as per fir=
ewalld&#39;s Github instructions. The only module I had trouble finding was=
 python3-slip-dbus -- which I used python3-dbus and python-slip-dbus instea=
d. I&#39;m not sure if this will be an issue.</div><div><br></div><div>Fina=
lly, in my local.conf file I&#39;ve added the following:</div><div><div>DIS=
TRO_FEATURES_append =3D &quot; systemd sysvinit&quot;</div><div>DISTRO_FEAT=
URES_BACKFILL_CONSIDERED +=3D &quot;sysvinit&quot;</div><div>VIRTUAL-RUNTIM=
E_init_manager =3D &quot;systemd&quot;</div></div><div><br></div><div><br><=
/div><div><br></div><div>&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&l=
t;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&=
lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;=
&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt=
;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;</div><div><div># Reci=
pe created by recipetool</div><div># This is the basis of a recipe and may =
need further editing in order to be fully functional.</div><div># (Feel fre=
e to remove these comments when editing.)</div><div><br></div><div>SUMMARY =
=3D &quot;A firewall daemon with D-Bus interface providing a dynamic firewa=
ll&quot;</div><div># WARNING: the following LICENSE and LIC_FILES_CHKSUM va=
lues are best guesses - it is</div><div># your responsibility to verify tha=
t the values are complete and correct.</div><div>LICENSE =3D &quot;GPLv2&qu=
ot;</div><div>LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3Db234ee4d69f5f=
ce4486a80fdaf4a4263&quot;</div><div><br></div><div>SRC_URI =3D &quot;git://=
<a href=3D"http://github.com/firewalld/firewalld.git;protocol=3Dhttps">gith=
ub.com/firewalld/firewalld.git;protocol=3Dhttps</a>&quot;</div><div><br></d=
iv><div># Modify these as desired</div><div>PV =3D &quot;0.6.999+git${SRCPV=
}&quot;</div><div>SRCREV =3D &quot;44200d0f508a990c5dfff9f480a6206ec507e229=
&quot;</div><div><br></div><div>S =3D &quot;${WORKDIR}/git&quot;</div><div>=
<br></div><div># NOTE: the following prog dependencies are unknown, ignorin=
g: ip6tables-restore rmmod sysctl ip6tables modprobe modinfo ebtables iptab=
les ebtables-restore iptables-restore kill ipset nft xsltproc</div><div>DEP=
ENDS =3D &quot;desktop-file-utils-native intltool-native glib-2.0-native sy=
stemd iptables ebtables ipset nftables python3-native python3-dbus python-s=
lip-dbus python3-decorator python3-pygobject python3-pydbus=C2=A0 docbook-x=
ml-dtd4-native docbook-xsl-stylesheets-native docbook-xsl-stylesheets libxm=
l2-native xmlto-native&quot;</div><div><br></div><div># NOTE: if this softw=
are is not capable of being built in a separate build directory</div><div>#=
 from the source, you should replace autotools with autotools-brokensep in =
the</div><div># inherit line</div><div># NOTE: spec file indicates the lice=
nse may be &quot;GPLv2+&quot;</div><div>inherit pythonnative gettext autoto=
ols</div><div><br></div><div># Specify any options you want to pass to the =
configure script using EXTRA_OECONF:</div><div>EXTRA_OECONF =3D &quot;&quot=
;</div><div>&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt=
;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&l=
t;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&=
lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;=
&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;<br></div></div><div><br></div><div=
><br></div><div><br></div><div>Thanks,</div><div>Sam.</div><div><br></div><=
/div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Thu, 17 Jan 2019 at 05:49, Randy MacLeod &lt;<a href=3D=
"mailto:randy.macleod@windriver.com">randy.macleod@windriver.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 1/16/19 =
12:47 AM, Sam Zeter wrote:<br>
&gt; Hello all,<br>
&gt; <br>
&gt; I&#39;ve been attempting to build firewalld by adding it through &#39;=
devtool <br>
&gt; add &#39; and then &#39;devtool build firewalld&#39;. However, I am st=
uck with the <br>
&gt; following errors. I have no idea what could be causing this. Could <br=
>
&gt; someone please help?<br>
&gt; <br>
&gt; xsltproc -o ../html/firewall-cmd.html --nonet --xinclude=C2=A0 <br>
&gt; transform-html.xsl firewall-cmd.xml<br>
&gt; | xsltproc -o ../html/firewalld.dbus.html --nonet --xinclude=C2=A0 <br=
>
&gt; transform-html.xsl <br>
&gt; ../../../../../../../../workspace/sources/firewalld/doc/xml/firewalld.=
dbus.xml<br>
&gt; | xsltproc -o ../html/firewalld.conf.html --nonet --xinclude=C2=A0 <br=
>
&gt; transform-html.xsl <br>
&gt; ../../../../../../../../workspace/sources/firewalld/doc/xml/firewalld.=
conf.xml<br>
&gt; | xsltproc -o ../html/firewalld.html --nonet --xinclude=C2=A0 <br>
&gt; transform-html.xsl firewalld.xml<br>
&gt; | 134 translated messages, 281 untranslated messages.<br>
&gt; | bn_IN: 293 translated messages, 122 untranslated messages.<br>
&gt; | ca: 415 translated messages.<br>
&gt; | cs: 415 translated messages.<br>
&gt; | da: warning: failed to load external entity &quot;authors.xml&quot;<=
br>
&gt; | firewall-cmd.xml:36: parser error : Failure to process entity author=
s<br>
&gt; |=C2=A0 =C2=A0 =C2=A0&amp;authors;<br>
&gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^<br>
&gt; | firewall-cmd.xml:36: parser error : Entity &#39;authors&#39; not def=
ined<br>
&gt; |=C2=A0 =C2=A0 =C2=A0&amp;authors;<br>
&gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^<br>
&gt; | warning: failed to load external entity &quot;seealso.xml&quot;<br>
&gt; | firewall-cmd.xml:2297: parser error : Failure to process entity seea=
lso<br>
&gt; |=C2=A0 =C2=A0&amp;seealso;<br>
&gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^<br>
&gt; | firewall-cmd.xml:2297: parser error : Entity &#39;seealso&#39; not d=
efined<br>
&gt; |=C2=A0 =C2=A0&amp;seealso;<br>
&gt; <br>
&gt; Thanks<br>
&gt; Sam.<br>
&gt; <br>
<br>
Hi Sam,<br>
<br>
Can you post your recipe?<br>
<br>
Do you have all the dependencies listed on:<br>
=C2=A0 =C2=A0 <a href=3D"https://github.com/firewalld/firewalld" rel=3D"nor=
eferrer" target=3D"_blank">https://github.com/firewalld/firewalld</a><br>
<br>
What branch &amp; commit are you based on?<br>
<br>
When we looked at adding a firewalld recipe 3+ years ago<br>
it didn&#39;t work out since the package wasn&#39;t cross-compile<br>
friendly but things have changed since then so I&#39;m looking<br>
forward to see what can be achieved.<br>
<br>
<br>
-- <br>
# Randy MacLeod<br>
# Wind River Linux<br>
</blockquote></div>

--0000000000004bbc36057fb05a98--

Return-Path: <santantonioswap@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A993E00950; Fri,  7 Sep 2018 02:38:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (santantonioswap[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f54.google.com (mail-oi0-f54.google.com
	[209.85.218.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51E10E0090A
	for <yocto@yoctoproject.org>; Fri,  7 Sep 2018 02:38:01 -0700 (PDT)
Received: by mail-oi0-f54.google.com with SMTP id x197-v6so26123694oix.5
	for <yocto@yoctoproject.org>; Fri, 07 Sep 2018 02:38:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=OXRWtMuf75vw7zhRMzWMme3BRNEQflDDSb+cvCbwyh8=;
	b=MX0Wmbmjr7i4bPCy2+M1bsx4RdKT2qFseFhPDrULUYrThVkBmXXlFUVhr2W3fVB+Sf
	Bb0q4dCKUJ56k/pjHqFssfbizDvjA5njSVyUX+UehNW2kIOgPRKdUMLaKc+02JMdawm/
	jA33iZJcWsDpar8+y/Y+B4XCjLOTInZTFY2wlJd9+FYt3M/03cAcQ+G4xT9yKd5L4AG9
	Sh2D1JH/JwHZwvuF4EAtBBYOZB0Rns/Dn77oOUCeyg38uic32Z4qi4fosugL2T4gdZgt
	BB1WfN/vpoxLcts4BV+kuKnlQE9hIW2D6UWV8IJalKa6Hp0P1GQ56/sdaDr76f4+jndA
	aSEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=OXRWtMuf75vw7zhRMzWMme3BRNEQflDDSb+cvCbwyh8=;
	b=kYHW6feLQXNI1UnaUEfSAbu0iIE2EknRlKvFJSO4edTQeQYbI7NaNJOKZZ/3tSDMSV
	Q5l3X2pIymBfm1WW5GKfT+Nixxe1rsre7wiJzXq+/IH4KZvVU22YRC9nf5lAnAgMkJ/R
	+ggQrcH/woKb+2h2rj18MNZzWBHMviimxvfGzGqc9Ua9bQ1kztNqPNpO0emaB8SJWU3B
	lmMC29ArJ/fG9vTqemk8hLAZrWt2hdaY3CMXmi0hJ6EqW0s50g7wqo9X3wgC4cgSOMCz
	7KSXoS26JJ77JB6lXNGeS71zRvWE3q+3g4vT1/M7hySf8Andp6O51vvehFIuAzzpYm9W
	tTxQ==
X-Gm-Message-State: APzg51C5lp/2lx1Yej1eruVcGRC8OK/X10y+CdPFEWg4veSEzSb+oQMz
	XbjOI0u88hBOjFR9aqzJOyXdRTet+ziq0ZGWc3Q=
X-Google-Smtp-Source: ANB0VdYCu76Xg8pKZAjMiXkL8Y66xaZxfizNdkdgANUjowpYv6OhVJ6pzCD8EhnSye4cQzrI4/DCPG2wIJvpM6PkrGo=
X-Received: by 2002:a54:4010:: with SMTP id
	x16-v6mr7458726oie.228.1536313080735; 
	Fri, 07 Sep 2018 02:38:00 -0700 (PDT)
MIME-Version: 1.0
References: <CACsVzKiq8gco767SGV_U-WiMNuvp-H+d_u030mBhzCPJzrkobw@mail.gmail.com>
	<CALNvYWOaXtrpM1Zu+W4QVOE1viDgBLfTgZBQ1AP4njWZ+t=SVA@mail.gmail.com>
	<CAJ86T=WDxPryffxaPrKRgMZjDz7GRP=wUWQduHU_h4EzyR39sw@mail.gmail.com>
In-Reply-To: <CAJ86T=WDxPryffxaPrKRgMZjDz7GRP=wUWQduHU_h4EzyR39sw@mail.gmail.com>
From: Antonio Santagiuliana <santantonioswap@gmail.com>
Date: Fri, 7 Sep 2018 10:37:53 +0100
Message-ID: <CACsVzKioydvS8hsfj0M9TKuGtfmFod8HC6cHQ_qC-6FoRhoL+g@mail.gmail.com>
To: armccurdy@gmail.com
Cc: yocto@yoctoproject.org
Subject: Re: curl package config
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
X-List-Received-Date: Fri, 07 Sep 2018 09:38:03 -0000
Content-Type: multipart/alternative; boundary="00000000000070ed9b057544c38e"

--00000000000070ed9b057544c38e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

thank to both of you, it worked with the .bbappend file placed in the
folder of one of my layers and with
PACKAGECONFIG_append =3D " smb"




On Thu, Sep 6, 2018 at 10:00 PM Andre McCurdy <armccurdy@gmail.com> wrote:

> On Thu, Sep 6, 2018 at 12:10 PM, Erik Bot=C3=B6 <erik.boto@gmail.com> wro=
te:
> > Hi,
> >
> > On Thu, Sep 6, 2018 at 8:01 PM Antonio Santagiuliana
> > <santantonioswap@gmail.com> wrote:
> >>
> >> Hello
> >> I am trying to enable the SMB protocol when building curl library by
> Yocto
> >> the original recipe is under meta/recipes-support/curl
> >>
> >> in my image's local.conf I have
> >> IMAGE_INSTALL_append +=3D "curl-dev"
> >>
> >> curl is built correctly, but SMB is disabled
> >>
> >> So I tried to add a .bbappend file with same name as the recipe's name=
,
> >> with this line only :
> >> PACKAGECONFIG =3D "--enable-smb"
>
> This is just the wrong syntax. PACKAGECONFIG is not a list of
> configure options. It's a list of "features" to enable, which are then
> translated into appropriate configure options (and dependencies) based
> on rules defined in the recipe. Maybe look through some existing
> recipes in oe-core to get some idea of how the process works.
>
> >> but I still have SMB disaabled on curl.
> >>
> >> Which is the right way to enable it with PACKAGECONFIG?
> >> or another way ?
> >
> >
> > You just want to add "smb" to the variable PACKAGECONFIG in the bbappen=
d.
> > But since the original recipe uses ??=3D to assign the default
> PACKAGECONFIG
> > value you probably want to either redefine the whole variable as the
> > original recipe, but adding "smb"
> > PACKAGECONFIG =3D "${@bb.utils.filter('DISTRO_FEATURES', 'ipv6', d)} gn=
utls
> > libidn proxy threaded-resolver verbose zlib smb"
> >
> > I think it could work if you use _append as well, since I think that's
> added
> > after the ??=3D operator is evaluated. So you can also try (note the sp=
ace
> > before smb):
> > PACKAGECONFIG_append =3D " smb"
>
> Using _append like this to add values to PACKAGECONFIG is the
> recommended way (ie don't try to use +=3D) for the reasons mentioned.
>
> Redefining the entire variable isn't necessary or recommended (it
> requires more maintenance to keep the .bbappend value in sync with any
> changes in the base recipe).
>

--00000000000070ed9b057544c38e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">thank to both of you, it worked with the .bbappend file pl=
aced in the folder of one of my layers and with=C2=A0<div><span style=3D"co=
lor:rgb(80,0,80)">PACKAGECONFIG_append =3D &quot; smb&quot;</span>=C2=A0</d=
iv><div><br></div><div><br></div><div><br></div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr">On Thu, Sep 6, 2018 at 10:00 PM Andre McCurdy &l=
t;<a href=3D"mailto:armccurdy@gmail.com">armccurdy@gmail.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">On Thu, Sep 6, 2018 at 12:10 PM, E=
rik Bot=C3=B6 &lt;<a href=3D"mailto:erik.boto@gmail.com" target=3D"_blank">=
erik.boto@gmail.com</a>&gt; wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; On Thu, Sep 6, 2018 at 8:01 PM Antonio Santagiuliana<br>
&gt; &lt;<a href=3D"mailto:santantonioswap@gmail.com" target=3D"_blank">san=
tantonioswap@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Hello<br>
&gt;&gt; I am trying to enable the SMB protocol when building curl library =
by Yocto<br>
&gt;&gt; the original recipe is under meta/recipes-support/curl<br>
&gt;&gt;<br>
&gt;&gt; in my image&#39;s local.conf I have<br>
&gt;&gt; IMAGE_INSTALL_append +=3D &quot;curl-dev&quot;<br>
&gt;&gt;<br>
&gt;&gt; curl is built correctly, but SMB is disabled<br>
&gt;&gt;<br>
&gt;&gt; So I tried to add a .bbappend file with same name as the recipe&#3=
9;s name,<br>
&gt;&gt; with this line only :<br>
&gt;&gt; PACKAGECONFIG =3D &quot;--enable-smb&quot;<br>
<br>
This is just the wrong syntax. PACKAGECONFIG is not a list of<br>
configure options. It&#39;s a list of &quot;features&quot; to enable, which=
 are then<br>
translated into appropriate configure options (and dependencies) based<br>
on rules defined in the recipe. Maybe look through some existing<br>
recipes in oe-core to get some idea of how the process works.<br>
<br>
&gt;&gt; but I still have SMB disaabled on curl.<br>
&gt;&gt;<br>
&gt;&gt; Which is the right way to enable it with PACKAGECONFIG?<br>
&gt;&gt; or another way ?<br>
&gt;<br>
&gt;<br>
&gt; You just want to add &quot;smb&quot; to the variable PACKAGECONFIG in =
the bbappend.<br>
&gt; But since the original recipe uses ??=3D to assign the default PACKAGE=
CONFIG<br>
&gt; value you probably want to either redefine the whole variable as the<b=
r>
&gt; original recipe, but adding &quot;smb&quot;<br>
&gt; PACKAGECONFIG =3D &quot;${@bb.utils.filter(&#39;DISTRO_FEATURES&#39;, =
&#39;ipv6&#39;, d)} gnutls<br>
&gt; libidn proxy threaded-resolver verbose zlib smb&quot;<br>
&gt;<br>
&gt; I think it could work if you use _append as well, since I think that&#=
39;s added<br>
&gt; after the ??=3D operator is evaluated. So you can also try (note the s=
pace<br>
&gt; before smb):<br>
&gt; PACKAGECONFIG_append =3D &quot; smb&quot;<br>
<br>
Using _append like this to add values to PACKAGECONFIG is the<br>
recommended way (ie don&#39;t try to use +=3D) for the reasons mentioned.<b=
r>
<br>
Redefining the entire variable isn&#39;t necessary or recommended (it<br>
requires more maintenance to keep the .bbappend value in sync with any<br>
changes in the base recipe).<br>
</blockquote></div>

--00000000000070ed9b057544c38e--

Return-Path: <chmorgan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78987E00A10; Thu, 28 May 2015 04:23:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (chmorgan[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f169.google.com (mail-ig0-f169.google.com
	[209.85.213.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 238BBE009EF
	for <yocto@yoctoproject.org>; Thu, 28 May 2015 04:23:27 -0700 (PDT)
Received: by igbpi8 with SMTP id pi8so110645704igb.0
	for <yocto@yoctoproject.org>; Thu, 28 May 2015 04:23:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=K0VReomAJu2NuSR9JSUlPvYmn4eSit3zy+tWpc3aMTQ=;
	b=bKN3HC2NEfudPK1n0QDObCD+tqTAh16aqgEviu1A9DbDMeozzt/y3667b2LuJNP74d
	QbD1Rh/jyaEt8Fc0X6aycE+OKrRQu9U+a1cBzlIBR3rmumKuBxdBB7b8HDl6Xxk8DBT6
	apsLmA2KOW6CT1bdw/sUYwExLieQiyecq6Qy6b9nW8Q6wEHluFUGN6BCz+h8B65CvDSB
	S11Gyda6W5t1XylYHDQOm2/eApbuLwKVv7/c8hBW+CCTxxLtp9ApY6bI/z2tek5+kZS/
	87Ha2hJBicXU4hSk375w4YIb4BmxxOxIadyH6uRvwZISzoXPC+KKX8hpilZv/kSwzMs3
	m6Ig==
MIME-Version: 1.0
X-Received: by 10.107.32.73 with SMTP id g70mr2714966iog.23.1432812207325;
	Thu, 28 May 2015 04:23:27 -0700 (PDT)
Received: by 10.79.0.18 with HTTP; Thu, 28 May 2015 04:23:27 -0700 (PDT)
In-Reply-To: <CADu_VSa5W1E+GCiXgkaXGRoJ7g4kz4WZ7M=GZvbAgL_KCYgodg@mail.gmail.com>
References: <CADu_VSa5W1E+GCiXgkaXGRoJ7g4kz4WZ7M=GZvbAgL_KCYgodg@mail.gmail.com>
Date: Thu, 28 May 2015 07:23:27 -0400
Message-ID: <CAAPegz2wvXap_eHY9hsQ3b0emQGYvaK=6Uyj6ShecjxkLVsakg@mail.gmail.com>
From: Chris Morgan <chmorgan@gmail.com>
To: Matthew Karas <mkarascybi@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Start openvpn with my own config at startup
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
X-List-Received-Date: Thu, 28 May 2015 11:23:31 -0000
Content-Type: multipart/alternative; boundary=001a11404078a5cbac05172296c4

--001a11404078a5cbac05172296c4
Content-Type: text/plain; charset=UTF-8

On Wednesday, May 27, 2015, Matthew Karas <mkarascybi@gmail.com> wrote:

> I have an ovpn file I'd like my system to start up with.  I was able
> to install the openvpn file into /etc/openvpn using a bbappends file -
> but the system doesn't start openvpn like the openvpn docs describes.
>
> How do I set up openvpn to launch with my config file at start up?
>
>
Openvpn doesn't come with init or systemd support out of the box?

If you are using systemd there is a class that will take care of installing
and enabling a service file for you. You'd have to write the service file
yourself I think. There should be some examples of how other recipes are
using it if you search for systemd in the base poky recipes.

You can put your changes into the .bbappend and they should take effect
when you build and install the recipe.

Chris

--001a11404078a5cbac05172296c4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wednesday, May 27, 2015, Matthew Karas &lt;<a href=3D"mailto:mkarascybi@=
gmail.com">mkarascybi@gmail.com</a>&gt; wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">I have an ovpn file I&#39;d like my system to start up with.=C2=A0 I =
was able<br>
to install the openvpn file into /etc/openvpn using a bbappends file -<br>
but the system doesn&#39;t start openvpn like the openvpn docs describes.<b=
r>
<br>
How do I set up openvpn to launch with my config file at start up?<br><br>
</blockquote><div><br></div>Openvpn doesn&#39;t come with init or systemd s=
upport out of the box?<br><div><br></div><div>If you are using systemd ther=
e is a class that will take care of installing and enabling a service file =
for you. You&#39;d have to write the service file yourself I think. There s=
hould be some examples of how other recipes are using it if you search for =
systemd in the base poky recipes.</div><div><br></div><div>You can put your=
 changes into the .bbappend and they should take effect when you build and =
install the recipe.<span></span></div><div><br></div><div>Chris</div><div><=
br></div><div>=C2=A0</div>

--001a11404078a5cbac05172296c4--

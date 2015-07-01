Return-Path: <b.hutchman@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB4DEE00A81; Wed,  1 Jul 2015 10:31:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (b.hutchman[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.49 listed in list.dnswl.org]
Received: from mail-oi0-f49.google.com (mail-oi0-f49.google.com
	[209.85.218.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C7F7E009D2
	for <yocto@yoctoproject.org>; Wed,  1 Jul 2015 10:30:58 -0700 (PDT)
Received: by oiyy130 with SMTP id y130so37295095oiy.0
	for <yocto@yoctoproject.org>; Wed, 01 Jul 2015 10:30:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=nfXLYv3dFgUhdQg63NZCXnyUou1XUqbE5Pmijn88/RM=;
	b=PDx2xRoVtCej8fgb/0osn5dzb9cscq27fJ7qSzxzuBS1s2Ehv4WsVIOcunNF3QbmkH
	wmeOMf5+OJrR09HzP7xAx8AqPPMrVWiWupY/UYVV+fSoT1eEPU2XjokAGZDOl42j2Tpr
	zIA9hSjCT5pMGR2R+3VC3hP2PZQLDhyQUyp/Jg/HYFZiaio+8rAG5bIQKr5Fj4CI8gb1
	Lud9s8BrZu1MwiObihqRBW+Y/0WgWiEi8hEInjzgy2fpEHI1ibzYR4o/wjFfdKrn+4M6
	oLiL4J+MbULietpL1MduuQ4Fmbxz61+BpLudoPxCoDaMDbmzu0gj/L8KE2zGsVJLA8F8
	XYqA==
MIME-Version: 1.0
X-Received: by 10.60.45.207 with SMTP id p15mr25609985oem.34.1435771857968;
	Wed, 01 Jul 2015 10:30:57 -0700 (PDT)
Received: by 10.60.150.76 with HTTP; Wed, 1 Jul 2015 10:30:57 -0700 (PDT)
In-Reply-To: <A50844B104EDFA45BBC46099A9C6C8407B0BB7F2@SPCCOREXCMBX01.AD.SPIRENTCOM.COM>
References: <A50844B104EDFA45BBC46099A9C6C8407B0BB7D6@SPCCOREXCMBX01.AD.SPIRENTCOM.COM>
	<CAFZh4h_P6NrLmWNuK-4d0UYANwR0DfB3RBTOGZ_AjpszFz6a9g@mail.gmail.com>
	<A50844B104EDFA45BBC46099A9C6C8407B0BB7F2@SPCCOREXCMBX01.AD.SPIRENTCOM.COM>
Date: Wed, 1 Jul 2015 13:30:57 -0400
Message-ID: <CAFZh4h_Z5Kjwm=pspfdW7RukQOK2AZik5ija=jUP4Q7i5Kik1A@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: "Stanciu, Alin" <Alin.Stanciu@spirent.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Retrieve list of all software/applications/packages installed on Yocto
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
X-List-Received-Date: Wed, 01 Jul 2015 17:31:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 1, 2015 at 7:55 AM, Stanciu, Alin <Alin.Stanciu@spirent.com> wr=
ote:
> Thank you Brian, this is very useful.
>
>
>
> I don=E2=80=99t have either opkg or dpkg installed so I=E2=80=99m using r=
pm. It=E2=80=99s useful in
> the sense I can get comprehensive information on all packages installed, =
as
> well as all files for each package:
>
>
>
> =C2=B7         rpm =E2=80=93qa (all packages)
>
> =C2=B7         rpm -qi <package_name>(detailed package information)
>
> =C2=B7         rpm -ql <package_name>( package files)
>
>
>
> This is almost too useful=E2=80=A6in the sense that I need a more high-le=
vel
> description/listing off the packages installed (or even a more succinct
> listing, if you will). Think of it as a Linux (or in this case Yocto)
> equivalent of Control Panel -> Programs and Features in Windows.
>
>
>
> Are you aware of an easy way to do this?
>

On a running system?  The way I usually research things is to use sites lik=
e:

http://recipes.yoctoproject.org/rrs/recipes/1.9/M2/
http://layers.openembedded.org/layerindex/branch/master/layers/

If you are running X with a window manager of some type then yea, you
can install any number of GUI front ends to the package manager and do
a similiar thing as your windows example.  My embedded boxes aren't
running X, they are just console based systems that run a web server.

If you run Toaster (used to be HOB) you can have a nice GUI on your
development host that will unwind all the metatdata of all possible
packages and display some of the same info and look at dependencies,
sizes etc.  It will allow you to do "what if" cases like "If I want
bluez, what other packages get pulled in an how much bigger will my
flash image be".

On a running system if you need more info about packages and you don't
have a GUI front end ... I would think you would have to use the
package manager cmd line to see what's installed and if you need more
info on that package then use the name of it and visit some of the
sites like I listed above.

That's all I can think of at the moment.  I'm sure there are a lot of
folks smarter than me that hopefully will chime in with better tricks.

Regards,

Brian


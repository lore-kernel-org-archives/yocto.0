Return-Path: <einar@vading.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82A15E00D14; Fri, 21 Dec 2018 06:16:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.53 listed in list.dnswl.org]
Received: from mail-yw1-f53.google.com (mail-yw1-f53.google.com
	[209.85.161.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71CA6E0097C
	for <yocto@yoctoproject.org>; Fri, 21 Dec 2018 06:16:46 -0800 (PST)
Received: by mail-yw1-f53.google.com with SMTP id j6so2135261ywj.6
	for <yocto@yoctoproject.org>; Fri, 21 Dec 2018 06:16:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=C+IKPvFcaW8rxJmHnr664rg9XiARIb9G5GPVap2pa/Y=;
	b=hH/OV9nx3SotY3wlm/aB665/13CZxP2sAiJTEqIEDB6LBjinLbX8IyQjXF9YoM6Cb4
	CAHfgtUK6VMz7gsAwtQg03WrRc0CCw6Pfuf4lZev1WHUR8mZ3ab49R1mvuGGtZIEIfwC
	45ijJn+cgRU/utgft1B4LuMHH3IloMy4MM0A1sVCupXnXzoLgdvnToU8wT9KbUU3oc6s
	dT2ubPNf/loNKRwzTckEu0mq4TQm0pnNcA/OMM30YoFF2eyclCK53TuzfD77FMfMwYqo
	UKgBtYe3fzkZ/kirUjKRhnMS+9dHYTNY1e/N61ZuXbK9Arib0zfRrVQTi9n3fkWYLIb0
	Euvw==
X-Gm-Message-State: AA+aEWYvl7uhNgEyPrpcCHsgq+ndt2GnUSUD1EUJrZU4+iY74NiDyiwM
	YX277I58A0ikXRtjQAxXyGGF2mWfiS+H1Pc/mL2ApQ==
X-Google-Smtp-Source: AFSGD/XQcEV7Lq5QmUMz149uwq5P6agYdesnRH/3x9/QXuOZPq0T2eek5w0Nhqu1Q2oaYZ0601a1yeq5uxS19gRXFYE=
X-Received: by 2002:a81:2714:: with SMTP id n20mr2543315ywn.77.1545401805464; 
	Fri, 21 Dec 2018 06:16:45 -0800 (PST)
MIME-Version: 1.0
References: <CAB6-Vt+dvn1VwmvX7Q854rDvZ2qPqkRhm=uX3sgS0nfBkokLXg@mail.gmail.com>
	<CAJTo0Lau_jdwPCxHZtd+MN7a-fVscq-w4fkPvPAzr3tBpibsqQ@mail.gmail.com>
In-Reply-To: <CAJTo0Lau_jdwPCxHZtd+MN7a-fVscq-w4fkPvPAzr3tBpibsqQ@mail.gmail.com>
From: Einar Vading <yocto-ml@vading.se>
Date: Fri, 21 Dec 2018 15:16:33 +0100
Message-ID: <CAB6-VtLLHe+8Doe1jqbi0SKQkvBcq7u=u+89rWhT7HSofv5BFA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Python3 and pathlib/ntpath
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
X-List-Received-Date: Fri, 21 Dec 2018 14:16:47 -0000
Content-Type: text/plain; charset="UTF-8"

I'm installing using the recipe.

Running Sumo and the meson recipe has:
RDEPENDS_${PN} = "ninja python3-core python3-modules"

I'll try to add python3-misc to RDEPENDS.

// Einar

On Fri, Dec 21, 2018 at 2:58 PM Burton, Ross <ross.burton@intel.com> wrote:
>
> pathlib is in python3-misc:
>
> $ oe-pkgdata-util find-path */pathlib.py
> python3-misc: /usr/lib/python3.5/pathlib.py
>
> And Meson in Thud at least has a dependency on python3-misc, so you
> shoudn't need to do anything.
>
> What release are you using?
>
> Or, are you trying to install Meson from source inside the image,
> instead of using the recipe?  In that case ensure that you have all of
> Python installed, easiest way is to add python3 to IMAGE_INSTALL.
>
> Ross
>
> On Fri, 21 Dec 2018 at 13:17, Einar Vading <yocto-ml@vading.se> wrote:
> >
> > Hi,
> >
> > I was trying to install meson on target for a machine that creates a
> > docker image for us. When I try to start meson however I get an error
> > message that pathlib can't be found. With the patch below I got it to
> > work but my question is if there is another way? Or if the patch would
> > be acceptable upstream?
> >
> > Best regards,
> > Einar
> >
> > diff --git a/meta/recipes-devtools/python/python3/python3-manifest.json
> > b/meta/recipes-devtools/python/python3/python3-manifest.json
> > index 2491f36db2..42a5680c65 100644
> > --- a/meta/recipes-devtools/python/python3/python3-manifest.json
> > +++ b/meta/recipes-devtools/python/python3/python3-manifest.json
> > @@ -154,10 +154,12 @@
> >              "${libdir}/python3.5/__pycache__/keyword.*.pyc",
> >              "${libdir}/python3.5/__pycache__/linecache.*.pyc",
> >              "${libdir}/python3.5/__pycache__/locale.*.pyc",
> > +            "${libdir}/python3.5/__pycache__/ntpath.*.pyc",
> >              "${libdir}/python3.5/__pycache__/opcode.*.pyc",
> >              "${libdir}/python3.5/__pycache__/operator.*.pyc",
> >              "${libdir}/python3.5/__pycache__/optparse.*.pyc",
> >              "${libdir}/python3.5/__pycache__/os.*.pyc",
> > +            "${libdir}/python3.5/__pycache__/pathlib.*.pyc",
> >              "${libdir}/python3.5/__pycache__/platform.*.pyc",
> >              "${libdir}/python3.5/__pycache__/posixpath.*.pyc",
> >              "${libdir}/python3.5/__pycache__/re.*.pyc",
> > @@ -269,10 +271,12 @@
> >              "${libdir}/python3.5/linecache.py",
> >              "${libdir}/python3.5/locale.py",
> >              "${libdir}/python3.5/new.py",
> > +            "${libdir}/python3.5/ntpath.py",
> >              "${libdir}/python3.5/opcode.py",
> >              "${libdir}/python3.5/operator.py",
> >              "${libdir}/python3.5/optparse.py",
> >              "${libdir}/python3.5/os.py",
> > +            "${libdir}/python3.5/pathlib.py",
> >              "${libdir}/python3.5/platform.py",
> >              "${libdir}/python3.5/posixpath.py",
> >              "${libdir}/python3.5/re.py",
> > @@ -1146,4 +1150,4 @@
> >          ],
> >          "summary": "Python XML-RPC support"
> >      }
> > -}
> > \ No newline at end of file
> > +}
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto


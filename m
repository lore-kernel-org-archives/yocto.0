Return-Path: <einar@vading.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 713CAE00B58; Mon,  7 Jan 2019 03:58:47 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9ACA6E009B1
	for <yocto@yoctoproject.org>; Mon,  7 Jan 2019 03:58:46 -0800 (PST)
Received: by mail-yw1-f53.google.com with SMTP id k188so33842ywa.6
	for <yocto@yoctoproject.org>; Mon, 07 Jan 2019 03:58:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=4hMUBfmMR6zuR6ZJB6oJRhfBe3NeG4fXsyEYt3gzvQ8=;
	b=TF/1p/g4tn+1w4+Xs+gucDwQ5/DlPRVqalTkKl9Hy4K2mmrE4bhubVbk3hTJawjxZG
	G46pxWpwy+MbzM+mFf9jUJ2qWMV4iDBy3fmaUa92xtQDdpdvFhIzD7Od5uURJcWrDtj8
	ST1JWegTTh8zRU6yoaCdH6SJZ9C9SF7r/LPYpFxw83UdOmf4Rjn7qzSBIdFhRzOnuPJg
	0gN8Zfkw+LKWV2ZVdC/K9ubOX+Yudsga4uBQGQLxEN/TbswpYRdt/TzIcLmwE/X2buWw
	5w4XKTwzi09qC+R+QPotBNiDgz7tDn1ebDJ84Je13KQkdlzFcSOYNP5k1tN+TDDfuQLd
	/6LQ==
X-Gm-Message-State: AA+aEWatlrjeTomqodUqw/BWs7dnuOJnaXmX2GzJU0x5wLxUZ/a2UZVP
	eZapyfgjCMk1vveRjYC1a7d0ffIIQkGmt47XykTDaPFaieg=
X-Google-Smtp-Source: AFSGD/XDRJKcVesZbXYbMvxEHe7A1vtn9P+aYCLbbYu4n33GwsqILBuPBU1hqD6tD8BjS5DmgpcpTqGeVWT7Zf9iSDk=
X-Received: by 2002:a81:63d4:: with SMTP id x203mr58519347ywb.82.1546862325764;
	Mon, 07 Jan 2019 03:58:45 -0800 (PST)
MIME-Version: 1.0
References: <CAB6-Vt+dvn1VwmvX7Q854rDvZ2qPqkRhm=uX3sgS0nfBkokLXg@mail.gmail.com>
	<CAJTo0Lau_jdwPCxHZtd+MN7a-fVscq-w4fkPvPAzr3tBpibsqQ@mail.gmail.com>
	<CAB6-VtLLHe+8Doe1jqbi0SKQkvBcq7u=u+89rWhT7HSofv5BFA@mail.gmail.com>
	<CAB6-VtLP18=1zjKUdL0ewjMW9tOMSx+1i6ar6NBQQ-eMJqjuiQ@mail.gmail.com>
In-Reply-To: <CAB6-VtLP18=1zjKUdL0ewjMW9tOMSx+1i6ar6NBQQ-eMJqjuiQ@mail.gmail.com>
From: Einar Vading <yocto-ml@vading.se>
Date: Mon, 7 Jan 2019 12:58:34 +0100
Message-ID: <CAB6-VtJ9OE+Z0DVNLGSsZcm6kuYOar9iPkX=SNaEqW77K5MMuw@mail.gmail.com>
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
X-List-Received-Date: Mon, 07 Jan 2019 11:58:47 -0000
Content-Type: text/plain; charset="UTF-8"

Hello again,

I can't get this to work. If I add pathlib and ntpath like in my
initial email I have pathlib on target. If however I
'IMAGE_INSTALL_append = " python3-misc"' or add python3-misc as
RDEPENDS in meson recipe I don't have pathlib on target.

There is no mention of ntpath or pathlib in the python3-manifest file
but I'm not sure how that thing is supposed to work.

// Einar

On Fri, Dec 21, 2018 at 5:48 PM Einar Vading <yocto-ml@vading.se> wrote:
>
> Adding python3-misc did not seem to make a difference.
>
> // Einar
>
> Den fre 21 dec. 2018 15:16 skrev Einar Vading <yocto-ml@vading.se>:
>>
>> I'm installing using the recipe.
>>
>> Running Sumo and the meson recipe has:
>> RDEPENDS_${PN} = "ninja python3-core python3-modules"
>>
>> I'll try to add python3-misc to RDEPENDS.
>>
>> // Einar
>>
>> On Fri, Dec 21, 2018 at 2:58 PM Burton, Ross <ross.burton@intel.com> wrote:
>> >
>> > pathlib is in python3-misc:
>> >
>> > $ oe-pkgdata-util find-path */pathlib.py
>> > python3-misc: /usr/lib/python3.5/pathlib.py
>> >
>> > And Meson in Thud at least has a dependency on python3-misc, so you
>> > shoudn't need to do anything.
>> >
>> > What release are you using?
>> >
>> > Or, are you trying to install Meson from source inside the image,
>> > instead of using the recipe?  In that case ensure that you have all of
>> > Python installed, easiest way is to add python3 to IMAGE_INSTALL.
>> >
>> > Ross
>> >
>> > On Fri, 21 Dec 2018 at 13:17, Einar Vading <yocto-ml@vading.se> wrote:
>> > >
>> > > Hi,
>> > >
>> > > I was trying to install meson on target for a machine that creates a
>> > > docker image for us. When I try to start meson however I get an error
>> > > message that pathlib can't be found. With the patch below I got it to
>> > > work but my question is if there is another way? Or if the patch would
>> > > be acceptable upstream?
>> > >
>> > > Best regards,
>> > > Einar
>> > >
>> > > diff --git a/meta/recipes-devtools/python/python3/python3-manifest.json
>> > > b/meta/recipes-devtools/python/python3/python3-manifest.json
>> > > index 2491f36db2..42a5680c65 100644
>> > > --- a/meta/recipes-devtools/python/python3/python3-manifest.json
>> > > +++ b/meta/recipes-devtools/python/python3/python3-manifest.json
>> > > @@ -154,10 +154,12 @@
>> > >              "${libdir}/python3.5/__pycache__/keyword.*.pyc",
>> > >              "${libdir}/python3.5/__pycache__/linecache.*.pyc",
>> > >              "${libdir}/python3.5/__pycache__/locale.*.pyc",
>> > > +            "${libdir}/python3.5/__pycache__/ntpath.*.pyc",
>> > >              "${libdir}/python3.5/__pycache__/opcode.*.pyc",
>> > >              "${libdir}/python3.5/__pycache__/operator.*.pyc",
>> > >              "${libdir}/python3.5/__pycache__/optparse.*.pyc",
>> > >              "${libdir}/python3.5/__pycache__/os.*.pyc",
>> > > +            "${libdir}/python3.5/__pycache__/pathlib.*.pyc",
>> > >              "${libdir}/python3.5/__pycache__/platform.*.pyc",
>> > >              "${libdir}/python3.5/__pycache__/posixpath.*.pyc",
>> > >              "${libdir}/python3.5/__pycache__/re.*.pyc",
>> > > @@ -269,10 +271,12 @@
>> > >              "${libdir}/python3.5/linecache.py",
>> > >              "${libdir}/python3.5/locale.py",
>> > >              "${libdir}/python3.5/new.py",
>> > > +            "${libdir}/python3.5/ntpath.py",
>> > >              "${libdir}/python3.5/opcode.py",
>> > >              "${libdir}/python3.5/operator.py",
>> > >              "${libdir}/python3.5/optparse.py",
>> > >              "${libdir}/python3.5/os.py",
>> > > +            "${libdir}/python3.5/pathlib.py",
>> > >              "${libdir}/python3.5/platform.py",
>> > >              "${libdir}/python3.5/posixpath.py",
>> > >              "${libdir}/python3.5/re.py",
>> > > @@ -1146,4 +1150,4 @@
>> > >          ],
>> > >          "summary": "Python XML-RPC support"
>> > >      }
>> > > -}
>> > > \ No newline at end of file
>> > > +}
>> > > --
>> > > _______________________________________________
>> > > yocto mailing list
>> > > yocto@yoctoproject.org
>> > > https://lists.yoctoproject.org/listinfo/yocto


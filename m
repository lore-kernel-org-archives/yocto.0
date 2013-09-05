Return-Path: <jc@vtkloud.com>
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com
	[209.85.220.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21CEBE01542
	for <yocto@yoctoproject.org>; Thu,  5 Sep 2013 03:05:05 -0700 (PDT)
Received: by mail-pa0-f49.google.com with SMTP id ld10so1689230pab.8
	for <yocto@yoctoproject.org>; Thu, 05 Sep 2013 03:05:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:in-reply-to
	:references:from:to:cc:subject:content-type;
	bh=WZXwp9M1DkJ60k6OiGkPED5AAFKv/poywZieg2v3cDA=;
	b=U2FNyAIyUyzUTLP0L9C4nl5pZ5s0Fkkq963oMzecgqEgk6oIcfEEH7UliDh4L63Xa8
	Q9b1TlqmPcy/hTsi/lT16uo9OyHCWrIXKviHZYh7MjwAZn719JR6PpdkuxeIIDtMDIJa
	KNkFqCoDHzgoFE5IsaWj7MmRZolAdHHg5AkDxHkRjMjfoVJOHkjbkI+zK9wMBApHCVvF
	CWMQkQgMUi12bXdoSWwZxole3HWcqtDL6KMsfTskJTJOOVZWboaPiDMMj+HUuZ+FFRC1
	QuS/3C8g1/CELKxnDT1L6lJ0jVIDtdnSLkkJRfCfxvoc/1c0FmGqzZT8Ojzkgkd7phRf
	83bg==
X-Gm-Message-State: ALoCoQkGlR4BTB7ybU7OQh9HMojZkMh724UpRAKJQ04CWedV8ISp55wdMt2UCBsNVkUMU2vlE7ah
X-Received: by 10.66.189.98 with SMTP id gh2mr8428816pac.60.1378375504889;
	Thu, 05 Sep 2013 03:05:04 -0700 (PDT)
Received: from [127.0.0.1] (ec2-54-235-159-142.compute-1.amazonaws.com.
	[54.235.159.142]) by mx.google.com with ESMTPSA id
	zv11sm36894752pab.3.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 05 Sep 2013 03:05:04 -0700 (PDT)
MIME-Version: 1.0
X-Mailer: Nodemailer (0.5.0; +http://www.nodemailer.com/)
Date: Thu, 05 Sep 2013 03:05:04 -0700 (PDT)
Message-Id: <1378375503526.8457b679@Nodemailer>
In-Reply-To: <1788175.gQRx6AnBKQ@helios>
References: <1788175.gQRx6AnBKQ@helios>
X-Orchestra-Oid: 18072BA2-1BFC-476A-95FA-BD65CAB31506
X-Orchestra-Sig: 07e93fdd2ec56a7e66584f3268f30151650428c0
X-Orchestra-Thrid: TDF50CD80-D5BE-4DE9-9446-44DAF41E57D4_1445274457542802648
X-Orchestra-Thrid-Sig: ccbac92b43e02bd664ad313d5bdcb9885467a63d
X-Orchestra-Account: 6c2f62d6b45251ceab0a0e49493972f93f78eb70
From: "JC" <jc@vtkloud.com>
To: "Paul Eggleton" <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: adding specific config files
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
X-List-Received-Date: Thu, 05 Sep 2013 10:05:11 -0000
Content-Type: multipart/alternative;
	boundary="----Nodemailer-0.5.0-?=_1-1378375504430"

------Nodemailer-0.5.0-?=_1-1378375504430
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On jeu., sept. 5, 2013 at 12:00 PM, Paul Eggleton <paul.eggleton@linux.=
intel.com=3D=22mailto:paul.eggleton@linux.intel.com=22>> wrote:

    On Thursday 05 September 2013 11:45:26 JC wrote:

> On 05/09/2013 11:32, Paul Eggleton wrote:

> > Unfortunately we have to have a fixed configuration for smart during

> > do=5Frootfs, so it has to be written to. I think though that rather =
than

> > trying to install a configuration file for smart using a separate =
recipe,

> > I would suggest modifying the smart configuration at the end of =
do=5Frootfs

> > to add the configuration elements you need. The way to do this would =
be

> > to define a shell function that you can add a call to in

> > ROOTFS=5FPOSTPROCESS=5FCOMMAND that will run smart:

> >=20

> > add=5Fextra=5Fsmart=5Fconfig() {

> >=20

> > 	smart --data-dir=3D${IMAGE=5FROOTFS}/var/lib/smart channel --add =
rpmsys

> > 	type=3Drpm-sys -y>=20

> > }

> > ROOTFS=5FPOSTPROCESS=5FCOMMAND +=3D =22add=5Fextra=5Fsmart=5Fconfig; =
=22

> >=20

> > You can put the above in the image recipe itself or in a class that =
your

> > image recipe inherits.

> >=20

> > Cheers,

> > Paul

>=20

> Thanks, I'm going to try it !!

>=20

> Assuming I don't want to create a new image (i still haven't exactly

> figured how to do this in a clean way), where should I append this code =
=3F


To be honest I always recommend people create their own image recipes

whatever they are doing since image recipes are usually trivial and

almost always need to be customised. The easiest way to do this is to

copy an existing image recipe and name it and modify it as you prefer.


> How can I make it dependend on the =22package-management=22 feature=3F


If =22package-management=22 is not in IMAGE=5FFEATURES the smart config =
gets deleted

anyway so this will have no effect. However, if desired you can use an =
inline

python expression within the shell function to do things conditionally, e.g=
.


if ${@base=5Fcontains(=22IMAGE=5FFEATURES=22, =22package-management=22, =
=22true=22, =22false=22, d)}; then

...

fi


It's important to realise though that the evaluation of the inline

python happens when the expression is parsed, not when the shell

function it is executed; by the time the shell function executes the

expression will have been converted to its result.


Cheers,

Paul




    =E2=80=8B

=20=20=20=20
=20=20=20=20=20=20


    Thanks ! I'm gonna try and let you know !

=20=20=20=20
=20=20=20=20=20=20


    Jay

------Nodemailer-0.5.0-?=_1-1378375504430
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <body>
    <br/>
    <br/>
    <br/>
    <div id=3D=22orc-email-signature=22 style=3D=22display: block; =22>
      <div class=3D=22mailbox=5Fsignature=22>
        <br/>
      </div>
    </div>
    <span id=3D=22orc-full-body-initial-text=22 style=3D=22display: inline;=
 =22>On jeu., sept. 5, 2013 at 12:00 PM, Paul Eggleton &lt;<a><href =
target=3D=22=5Fblank=22>paul.eggleton@linux.intel.com</href>=3D=22mailto:pa=
ul.eggleton@linux.intel.com=22&gt;</a>&gt; wrote:<br/></span>
    <blockquote class=3D=22gmail=5Fquote=22>On Thursday 05 September 2013 =
11:45:26 JC wrote:
<br/>&gt; On 05/09/2013 11:32, Paul Eggleton wrote:
<br/>&gt; &gt; Unfortunately we have to have a fixed configuration for =
smart during
<br/>&gt; &gt; do=5Frootfs, so it has to be written to. I think though that=
 rather than
<br/>&gt; &gt; trying to install a configuration file for smart using a =
separate recipe,
<br/>&gt; &gt; I would suggest modifying the smart configuration at the end=
 of do=5Frootfs
<br/>&gt; &gt; to add the configuration elements you need. The way to do =
this would be
<br/>&gt; &gt; to define a shell function that you can add a call to in
<br/>&gt; &gt; ROOTFS=5FPOSTPROCESS=5FCOMMAND that will run smart:
<br/>&gt; &gt;=20
<br/>&gt; &gt; add=5Fextra=5Fsmart=5Fconfig() {
<br/>&gt; &gt;=20
<br/>&gt; &gt; 	smart --data-dir=3D${IMAGE=5FROOTFS}/var/lib/smart channel =
--add rpmsys
<br/>&gt; &gt; 	type=3Drpm-sys -y&gt;=20
<br/>&gt; &gt; }
<br/>&gt; &gt; ROOTFS=5FPOSTPROCESS=5FCOMMAND +=3D =22add=5Fextra=5Fsmart=
=5Fconfig; =22
<br/>&gt; &gt;=20
<br/>&gt; &gt; You can put the above in the image recipe itself or in a =
class that your
<br/>&gt; &gt; image recipe inherits.
<br/>&gt; &gt;=20
<br/>&gt; &gt; Cheers,
<br/>&gt; &gt; Paul
<br/>&gt;=20
<br/>&gt; Thanks, I'm going to try it !!
<br/>&gt;=20
<br/>&gt; Assuming I don't want to create a new image (i still haven't =
exactly
<br/>&gt; figured how to do this in a clean way), where should I append =
this code =3F
<br/><br/>To be honest I always recommend people create their own image =
recipes
<br/>whatever they are doing since image recipes are usually trivial and
<br/>almost always need to be customised. The easiest way to do this is to
<br/>copy an existing image recipe and name it and modify it as you prefer.=

<br/><br/>&gt; How can I make it dependend on the =22package-management=22 =
feature=3F
<br/><br/>If =22package-management=22 is not in IMAGE=5FFEATURES the smart =
config gets deleted
<br/>anyway so this will have no effect. However, if desired you can use an=
 inline
<br/>python expression within the shell function to do things conditionally=
, e.g.
<br/><br/>if ${@base=5Fcontains(=22IMAGE=5FFEATURES=22, =
=22package-management=22, =22true=22, =22false=22, d)}; then
<br/>...
<br/>fi
<br/><br/>It's important to realise though that the evaluation of the =
inline
<br/>python happens when the expression is parsed, not when the shell
<br/>function it is executed; by the time the shell function executes the
<br/>expression will have been converted to its result.
<br/><br/>Cheers,
<br/>Paul
<br/><br/><br/></blockquote>
    <div id=3D=22mb-inline-edit=22>=E2=80=8B</div>
    <div id=3D=22mb-inline-edit=22>
      <br/>
    </div>
    <div id=3D=22mb-inline-edit=22>Thanks ! I'm gonna try and let you know =
!</div>
    <div id=3D=22mb-inline-edit=22>
      <br/>
    </div>
    <div id=3D=22mb-inline-edit=22>Jay</div>
    <blockquote class=3D=22gmail=5Fquote=22>=C2=A0<br/></blockquote>
  </body>
</html>

------Nodemailer-0.5.0-?=_1-1378375504430--

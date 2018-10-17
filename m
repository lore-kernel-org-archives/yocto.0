Return-Path: <dhanush.ks@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1EB90E00BC4; Wed, 17 Oct 2018 05:12:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dhanush.ks[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.46 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
	[209.85.221.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09D27E00B9F
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2018 05:12:43 -0700 (PDT)
Received: by mail-wr1-f46.google.com with SMTP id y11-v6so29373808wrd.4
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2018 05:12:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=/ttILuwrm9aUdZN2kV4SkmB2YH3JBnxijDoMz5ZKM8U=;
	b=BeqYY1Ka5Nh5daX36O6H6zFvnyxJd/FrlE6FNl4GeuujFBgV9m3a+JCMbOB1F5xy4T
	TT7FClX0ULhwZDZY7lsP8qVszmqEGmiC5S65yfHTkEH8GaneseJjDLRVpJ34W2TTEetG
	V+nB4t3QA5cZ3WXMw+6bEclN0AIgSKg5blQFyqfEL1X3hvvvbIe3lRPNDtpazjAyUwBc
	eTM4vbcupksmu0erjtetoughAIcIMUgv9JZc96jfXtYiJ/TAnExs5uSyaEjaPre4VXKr
	n6fuRZjdfCtolNvVSBDxFFsTeD8eDXYnYT7fvsdR2vqo19r2IPzsUHRTv/FnJVFvdmg8
	g3Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=/ttILuwrm9aUdZN2kV4SkmB2YH3JBnxijDoMz5ZKM8U=;
	b=Tcbooo7kLJz4YLQJBmx0D+WiBtkgOZrsINxaosHBw1M8WkKT4kz0RFcjS6F2YiEpL5
	7LWfgOm5wJQyUdwhjWrkOjXIaPu+8KbjhMEoAECuPFijr5gs1eWQIkMjCeBkV+wgNBlI
	ztlcRPuN1S3PP40taehNfeJR6nomXpM9rOywqbY7YzU6dtAw1lxQiw0523d1cCF3AUYy
	L2SVYvez1wMZOxHJVPGiC6w+zClv7ORuJoJbdPYwhlaBnWSc9euIsDHgvVHRckU1/ApX
	T/DgS53v8sBmubFmozqIv7ssYw/PjtfREEpz+8h0A5v5X7eV1A3qG6jm22ZOTsHYKSYi
	w2Dw==
X-Gm-Message-State: ABuFfoh2LlwMX1ShBM6rAJ+iTOoepEKxSLSeWWkFNc8FmJMnHy72vjQ6
	vQ+VbUH+6ECYlWUdxxJEscBtlarNdYAztbjCJhtvomj2E80=
X-Google-Smtp-Source: ACcGV60FiE7Kft47GvF4hsBM3k+yMEMCY/t2VCKAIi9yF5VGZl1gqEvmqBZL1bqlqmwST9hXzw++mIQ2KkAfAPt/vVQ=
X-Received: by 2002:adf:f1ce:: with SMTP id
	z14-v6mr22956058wro.214.1539778362461; 
	Wed, 17 Oct 2018 05:12:42 -0700 (PDT)
MIME-Version: 1.0
From: "Dhanush K.S" <dhanush.ks@gmail.com>
Date: Wed, 17 Oct 2018 14:12:33 +0200
Message-ID: <CAKPYHZ54PdoWPYKw4OAGto_7So0X26+0fZZTcyFyzMVWaFS63A@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Bitbake Build Configurations
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
X-List-Received-Date: Wed, 17 Oct 2018 12:12:46 -0000
Content-Type: multipart/alternative; boundary="00000000000053d2bd05786b96e5"

--00000000000053d2bd05786b96e5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Yocto,

I have my bitbake environment set up on the host system CentOS 7 and
building images for the target ARM cortex A8 with the following BUILD
CONFIGURATION,

Build Configuration:
BB_VERSION           =3D "1.37.0"
BUILD_SYS            =3D "x86_64-linux"
NATIVELSBSTRING      =3D "universal-4.8"
TARGET_SYS           =3D "arm-poky-linux-gnueabi"
MACHINE              =3D "arm-cortex-a8"
DISTRO               =3D "poky"
DISTRO_VERSION       =3D "2.5"
TUNE_FEATURES        =3D "arm armv7a vfp neon callconvention-hard cortexa8"
TARGET_FPU           =3D "hard"
meta-networking
meta-python          =3D "master:45ee3c0e98bd3ed81419aaeae1e7324e486161a2"
meta-userbsp-ti
meta
meta-poky
meta-yocto-bsp
meta-user-common      =3D "<unknown>:<unknown>"
meta-oe              =3D "master:45ee3c0e98bd3ed81419aaeae1e7324e486161a2"


   1. What I don't understand is how exactly are these Variables set?
   2. For the NATIVELSBSTRING which should actually be displaying the HOST
   OS according to the Yocto Manual, isn't doing that. What could be the
   reason for that? (Earlier, with Poky Fido, this wasn't the case. It
   displays "CentOS-Linux-7.1.1503".)
   3. From where does Bitbake pull this information?
   4. Also how is the TARGET_FPU variable set?

Could someone please shed some light on this.

Thanks!

Mit freundlichen Gr=C3=BC=C3=9Fen / Best Regards,
Dhanush Keshava Reddy Soppahalli
Mob: +4915216144064

--00000000000053d2bd05786b96e5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_defa=
ult" style=3D"font-family:georgia,serif">Hi=C2=A0Yocto,</div><div class=3D"=
gmail_default" style=3D"font-family:georgia,serif"><br></div><div class=3D"=
gmail_default" style=3D"font-family:georgia,serif">I have my bitbake enviro=
nment set up on the host system CentOS 7 and building images for the target=
 ARM cortex A8 with the following BUILD CONFIGURATION,</div><div class=3D"g=
mail_default" style=3D"font-family:georgia,serif"><br></div><div class=3D"g=
mail_default" style=3D"font-family:georgia,serif"><div class=3D"gmail_defau=
lt">Build Configuration:</div><div class=3D"gmail_default">BB_VERSION=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.37.0&quot;</div><div class=
=3D"gmail_default">BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &=
quot;x86_64-linux&quot;</div><div class=3D"gmail_default">NATIVELSBSTRING=
=C2=A0 =C2=A0 =C2=A0 =3D &quot;universal-4.8&quot;</div><div class=3D"gmail=
_default">TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;arm-=
poky-linux-gnueabi&quot;</div><div class=3D"gmail_default">MACHINE=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm-cortex-a8&quot;</di=
v><div class=3D"gmail_default">DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0=3D &quot;poky&quot;</div><div class=3D"gmail_default">DIS=
TRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;2.5&quot;</div><div class=
=3D"gmail_default">TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm a=
rmv7a vfp neon callconvention-hard cortexa8&quot;</div><div class=3D"gmail_=
default">TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;hard&=
quot;</div><div class=3D"gmail_default">meta-networking=C2=A0 =C2=A0 =C2=A0=
=C2=A0</div><div class=3D"gmail_default">meta-python=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =3D &quot;master:45ee3c0e98bd3ed81419aaeae1e7324e486161a2&quo=
t;</div><div class=3D"gmail_default">meta-userbsp-ti=C2=A0 =C2=A0 =C2=A0 =
=C2=A0=C2=A0</div><div class=3D"gmail_default">meta=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div class=3D"gmail_default">me=
ta-poky=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</div><div class=3D"g=
mail_default">meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div class=3D"=
gmail_default">meta-user-common=C2=A0 =C2=A0 =C2=A0 =3D &quot;&lt;unknown&g=
t;:&lt;unknown&gt;&quot;</div><div class=3D"gmail_default">meta-oe=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;master:45ee3c0e98bd3ed8=
1419aaeae1e7324e486161a2&quot;</div><div class=3D"gmail_default"><br></div>=
<div class=3D"gmail_default"><ol><li>What I don&#39;t understand is how exa=
ctly are these Variables set?=C2=A0</li><li>For the NATIVELSBSTRING which s=
hould actually be displaying the HOST OS according to the Yocto Manual, isn=
&#39;t doing that. What could be the reason for that? (Earlier, with Poky F=
ido, this wasn&#39;t the case. It displays &quot;CentOS-Linux-7.1.1503&quot=
;.)</li><li>From where does Bitbake pull this information?</li><li>Also how=
 is the TARGET_FPU variable set?</li></ol><div>Could someone please shed so=
me light on this.=C2=A0</div><div><br></div><div>Thanks!</div></div></div><=
div class=3D"gmail_default" style=3D"font-family:georgia,serif">=C2=A0</div=
><div><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><div><div=
 dir=3D"ltr"><div><div dir=3D"ltr"><div><font face=3D"georgia, serif" color=
=3D"#666666">Mit=C2=A0freundlichen=C2=A0Gr=C3=BC=C3=9Fen / Best Regards,</f=
ont><div><font face=3D"georgia, serif" color=3D"#666666">Dhanush Keshava Re=
ddy Soppahalli</font></div><div><font face=3D"georgia, serif" color=3D"#cc0=
000">Mob: +4915216144064</font></div></div></div></div></div></div></div></=
div></div></div></div></div>

--00000000000053d2bd05786b96e5--

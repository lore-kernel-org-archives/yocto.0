Return-Path: <andreabenini@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46898E00A53; Thu, 20 Apr 2017 15:50:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_FONT_FACE_BAD,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (andreabenini[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.0 HTML_FONT_FACE_BAD BODY: HTML font face is not a word
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.54 listed in dnsbl.sorbs.net]
Received: from mail-oi0-f54.google.com (mail-oi0-f54.google.com
	[209.85.218.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20EC2E0092B
	for <yocto@yoctoproject.org>; Thu, 20 Apr 2017 15:50:17 -0700 (PDT)
Received: by mail-oi0-f54.google.com with SMTP id y11so39233084oie.0
	for <yocto@yoctoproject.org>; Thu, 20 Apr 2017 15:50:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=zzkABNtspSeqzDZIG+x1QDdnUAhgaEdJfmIfD4St2T4=;
	b=EmxmHvr+R/YHnzbkRTYvlqzNJkLrBgcHXKgKDJ8q0dcoSCePNvsIsCa33H9OgD8HKH
	6A9BdyJ+IGSYJFowsrxLQqkyHiuO9ltnhyP6VnPn726HT9qSkM+m+49WZVIuPNQ4Mqmt
	WAO5wdtbUTK59S03hqKGcyJ9gmn5FOUTCFl8Vj8UuJOm4B9Pwiq7aZEcqR4aTZipW3Gx
	m0NMfSz6Gzsg6dvODVElksIVvYC8uNfsGcWI8z/ka83IcVMedaxevhtg7kbfJ1Q/u3N0
	vpSvX43dyL3sPjczI0WKhL1Uf5kYdkysh2ZuAx0pvwC6LfTQKtyUwzZWi4MBO0x/jwlN
	M1kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=zzkABNtspSeqzDZIG+x1QDdnUAhgaEdJfmIfD4St2T4=;
	b=rcrQMJKGvyfvpL1wpz9Hbp+BbEPxyqqVpkWIbagoO0Z+OxpxGoqDK9sWk9AeTwWSIA
	CV509G2FxDpK8Y4AUWt9sw0sHvWgGqpkPUl3/40ZNO5mz0saQsymZGfBwBlt08uyyjtF
	wHquJNpSXN85LhrtLL3bltfyXUVUP/mKy/bb6rDAUn14xXvw0QVDYSYfqxj+/c1SApm2
	Nn4DkQtobNAeOottAVbN2UmdNW3Sei4dzibLvK34kZ3MLCz5Jo7TfcCxSalApbkcrNtS
	rWmWNtqeHiht0uSj0mM1h48ewjAykee6FFRhpaovTF/IGjHq+t1ZHXquY4u+30irmPUC
	UczQ==
X-Gm-Message-State: AN3rC/7M9Mc5glmxdwp+VHhDOjGGRnfqYDHYe6bRm/qBkqxPxO1+myO8
	RZkAc/tfhPXu1Z+Ee2K1SGE6N41RsAad
X-Received: by 10.202.245.3 with SMTP id t3mr5768614oih.52.1492728616931; Thu,
	20 Apr 2017 15:50:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.74.145.149 with HTTP; Thu, 20 Apr 2017 15:50:16 -0700 (PDT)
From: Andrea Benini <andreabenini@gmail.com>
Date: Fri, 21 Apr 2017 00:50:16 +0200
Message-ID: <CAOrUntYm=4BjpQmOm=rTo7fbCNec8sshDm943nujMYX8yZUuqQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-raspberrypi] Basic image on all platforms
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
X-List-Received-Date: Thu, 20 Apr 2017 22:50:21 -0000
Content-Type: multipart/alternative; boundary=001a113d2d04f55a21054da0f65a

--001a113d2d04f55a21054da0f65a
Content-Type: text/plain; charset=UTF-8

Hi List,
I have posted a similar question few days ago, lately I have tried more
things and permutation but my issue is still there and I'm still in the
starting point.
I'm able to compile a barebone yocto image (rpi-hwup-image.bb) for each
single RaspberryPi (1/2/3/0) board just by changing the MACHINE var. I have
removed every customization to limit possible errors but I'm not able to
produce a single image compatible with all these boards. When I set
MACHINE="raspberrypi" it works fine on RPi1 boards only and it hangs on
newer ones, during boot newer boards have a seven times flashing led
(kernel7.img missing). With MACHINE="raspberrypi2" (or "raspberrypi3) I can
see a complete boot on newer boards but it hangs on previous ones. I even
had tried some weird mix with kernel.img and kernel7.img files on the same
SD (from two different builds) to get something working but obviously after
a successful kernel boot the image complains on different loadable modules
on root partition so this shouldn't be the right path to follow.
RPi0 and RPi1 are using tune-arm1176jzf-s, RPi2 and RPi3 are
using tune-cortexa7, two different architectures for sure but with the same
base, RPi3 even has 64bit capabilities. What I'm trying to do is to adapt
my image to use the lower common specs of all these platforms, I'm aware
about the performance loss but at least I might have something compatible,
this should be possible because already raspbian did it.
Raspbian for example has kernel.img and kernel7.img files to boot on each
board

Here are my layers:
BBLAYERS ?= " \
  /home/devel/yocto/meta \
  /home/devel/yocto/meta-poky \
  /home/devel/yocto/meta-yocto-bsp \
  /home/devel/yocto/meta-openembedded/meta-oe \
  /home/devel/yocto/meta-openembedded/meta-networking \
  /home/devel/yocto/meta-openembedded/meta-python \
  /home/devel/yocto/meta-raspberrypi \
  "
I'm currently using the Morty branch, I don't know if you need more
information about the environment, just drop me a note about that.
There's probably something wrong but I'm not able to figure what it is, has
anyone ever created a cross compatible image ? I'm still experimenting so
if someone could give me a suggestion I'll try to use it.

Thanks again for your support
Ben

--001a113d2d04f55a21054da0f65a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi List,<div><span style=3D"font-size:12.8px">I have poste=
d a similar question few days ago, lately I have tried more things and perm=
utation but my issue is still there and I&#39;m still in the starting point=
.</span></div><div><span style=3D"color:rgb(36,41,46);font-family:-apple-sy=
stem,blinkmacsystemfont,&quot;segoe ui&quot;,helvetica,arial,sans-serif,&qu=
ot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;segoe ui symbol=
&quot;;font-size:14px">I&#39;m able to compile a barebone yocto image (</sp=
an><a href=3D"http://rpi-hwup-image.bb/" target=3D"_blank" style=3D"font-fa=
mily:-apple-system,blinkmacsystemfont,&quot;segoe ui&quot;,helvetica,arial,=
sans-serif,&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;s=
egoe ui symbol&quot;;font-size:14px">rpi-hwup-image.bb</a><span style=3D"co=
lor:rgb(36,41,46);font-family:-apple-system,blinkmacsystemfont,&quot;segoe =
ui&quot;,helvetica,arial,sans-serif,&quot;apple color emoji&quot;,&quot;seg=
oe ui emoji&quot;,&quot;segoe ui symbol&quot;;font-size:14px">) for each si=
ngle RaspberryPi (1/2/3/0) board just by changing the MACHINE var. I have r=
emoved every customization to limit possible errors but I&#39;m not able to=
 produce a single image compatible with all these boards. When I set MACHIN=
E=3D&quot;raspberrypi&quot; it works fine on RPi1 boards only and it hangs =
on newer ones, during boot newer boards have a seven times flashing led (ke=
rnel7.img missing). With MACHINE=3D&quot;raspberrypi2&quot; (or &quot;raspb=
errypi3) I can see a complete boot on newer boards but it hangs on previous=
 ones. I even had tried some weird mix with kernel.img and kernel7.img file=
s on the same SD (from two different builds) to get something working but o=
bviously after a successful kernel boot the image complains on different lo=
adable modules on root partition so this shouldn&#39;t be the right path to=
 follow.</span></div><div><span style=3D"color:rgb(36,41,46);font-family:-a=
pple-system,blinkmacsystemfont,&quot;segoe ui&quot;,helvetica,arial,sans-se=
rif,&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;segoe ui=
 symbol&quot;;font-size:14px">RPi0 and RPi1 are using=C2=A0</span><font col=
or=3D"#24292e" face=3D"-apple-system, blinkmacsystemfont, segoe ui, helveti=
ca, arial, sans-serif, apple color emoji, segoe ui emoji, segoe ui symbol">=
<span style=3D"font-size:14px">tune-arm1176jzf-s, RPi2 and RPi3 are using=
=C2=A0tune-cortexa7, two different architectures for sure but with the same=
 base, RPi3 even has 64bit capabilities. What I&#39;m trying to do is to ad=
apt my image to use the lower common specs of all these platforms, I&#39;m =
aware about the performance loss but at least I might have something compat=
ible, this should be possible because already raspbian did it.</span></font=
></div><div>Raspbian for example has kernel.img and kernel7.img files to bo=
ot on each board</div><div><br></div><div>Here are my layers:<br></div><div=
>BBLAYERS ?=3D &quot; \</div><div>=C2=A0 /home/devel/yocto/meta \</div><div=
>=C2=A0 /home/devel/yocto/meta-poky \</div><div>=C2=A0 /home/devel/yocto/me=
ta-yocto-bsp \</div><div>=C2=A0 /home/devel/yocto/meta-openembedded/meta-oe=
 \</div><div>=C2=A0 /home/devel/yocto/meta-openembedded/meta-networking \</=
div><div>=C2=A0 /home/devel/yocto/meta-openembedded/meta-python \</div><div=
>=C2=A0 /home/devel/yocto/meta-raspberrypi \</div><div>=C2=A0 &quot;<br></d=
iv><div>I&#39;m currently using the Morty branch, I don&#39;t know if you n=
eed more information about the environment, just drop me a note about that.=
<br></div><div>There&#39;s probably something wrong but I&#39;m not able to=
 figure what it is, has anyone ever created a cross compatible image ? I&#3=
9;m still experimenting so if someone could give me a suggestion I&#39;ll t=
ry to use it.</div><div><br></div><div>Thanks again for your support</div><=
div>Ben</div></div>

--001a113d2d04f55a21054da0f65a--

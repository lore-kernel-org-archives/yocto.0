Return-Path: <finncarlsvi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A32D1E00CC1; Tue, 13 Oct 2015 12:14:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (finncarlsvi[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f51.google.com (mail-vk0-f51.google.com
	[209.85.213.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47328E00C28
	for <yocto@yoctoproject.org>; Tue, 13 Oct 2015 12:13:58 -0700 (PDT)
Received: by vkat63 with SMTP id t63so16608620vka.1
	for <yocto@yoctoproject.org>; Tue, 13 Oct 2015 12:13:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=+wRqCUqZpVsfiuR272Fm/EUlBhvv+lHBXPrd30X/bOo=;
	b=gtVkx9CT9L43e1XvqGk5A367+AHorJph5tZ2xKSKycD35uaqJMq/KT/RJ3pX4tDDX5
	ZJTnhb/4k5OsCGBLrjMELsHZSLwcYzvnqn7buwJn3ZNCMjVL3VcosbQvRt5+GyE0ArSx
	H0VdqZso+Nl6a7rbB8+zcFrvk6IXqn4qPqsvK10IkTeyVLT1Ad1AcnKuWeU8l0YmU/iu
	u/AhanqZWunE+TZMTVRgzcjLbLp8TXHDT3LlOelIxBM16MrXUPqg28WUi5Tv1MLa6uHd
	e6LtHK3fbWgBuVhs4iVZM/b8PTFIc0ILMI0f0ncjEC6ALDF8ekfo5OWI0jAdb239bBFV
	10YQ==
MIME-Version: 1.0
X-Received: by 10.31.132.79 with SMTP id g76mr6021306vkd.40.1444763638211;
	Tue, 13 Oct 2015 12:13:58 -0700 (PDT)
Received: by 10.31.178.22 with HTTP; Tue, 13 Oct 2015 12:13:58 -0700 (PDT)
Date: Tue, 13 Oct 2015 12:13:58 -0700
Message-ID: <CAD-yPSd=ue4FgBSEU6G_OMoQtBC6ZaypkOCQhmFp1X1emWZVpg@mail.gmail.com>
From: Finn Carlsvi <finncarlsvi@gmail.com>
To: yocto@yoctoproject.org
Subject: Cap'n Proto Recipe Help
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
X-List-Received-Date: Tue, 13 Oct 2015 19:14:02 -0000
Content-Type: multipart/alternative; boundary=001a1145809670afc20522013fa8

--001a1145809670afc20522013fa8
Content-Type: text/plain; charset=UTF-8

Hello,

I'm attempting to create a recipe for the Cap'n Proto serialization protocol
<https://lists.yoctoproject.org/pipermail/yocto/>, but am still a beginner
at Yocto.
The only link I have found regarding the subject (so far) is this google
group
<https://groups.google.com/forum/#!msg/capnproto/ZfHEXEVb7KM/hyOOlAKQAF0J>.

I created a standard recipe, linked to the source
https://capnproto.org/capnproto-c++-${PV}.tar.gz
<https://capnproto.org/capnproto-c++-$%7BPV%7D.tar.gz>

Based on the information from the google group link above, I changed the
do_configure:

do_configure() {
    export CAPNP=/usr/local/bin/capnp
    ${S}/configure --with-external-capnp -build=x86_64-linux
--host=arm-poky-linux-gnueabi --target=arm-poky-linux-gnueabi
}

From what I understand, the reason is that I need an installed version of
Cap'n Proto on my Linux host in order to cross compile for ARM

Because external library files are used, I also added the lines:

INSANE_SKIP_${PN} += "install-host-path"
INSANE_SKIP_${PN} += "installed-vs-shipped"

Running *bitbake capnproto* works, but when I add the line:

IMAGE_INSTALL_append = " capnproto"

and try to run* bitbake core-image-base *I get the following error from the
do_rootfs log:

DEBUG: Executing python function rootfs_process_ignore
DEBUG: Python function rootfs_process_ignore finished
DEBUG: Executing python function rootfs_runtime_mapping
DEBUG: Python function rootfs_runtime_mapping finished
DEBUG: Executing python function do_rootfs
NOTE: configuring RPM platform settings
NOTE: configuring RPM system provides
NOTE: configuring RPM DB settings
NOTE: configuring Smart settings
NOTE: Note: adding Smart channel nitrogen6sx (105)
NOTE: Note: adding Smart channel cortexa9hf_vfp_neon_mx6sx (100)
NOTE: Note: adding Smart channel cortexa9hf_vfp_neon (95)
NOTE: Note: adding Smart channel all (90)
NOTE: adding Smart RPM DB channel
NOTE: Note: configuring RPM cross-install scriptlet_wrapper
NOTE: ###### Generate rootfs #######
NOTE: Executing
'/home/finn/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/createrepo
--dbpath
/home/finn/yocto/poky/build/tmp/work/nitrogen6sx-poky-linux-gnueabi/core-image-base/1.0-r0/rpmdb/cortexa9hf_vfp_neon_mx6sx
--update -q
/home/finn/yocto/poky/build/tmp/deploy/rpm/cortexa9hf_vfp_neon_mx6sx' ...
NOTE: Executing
'/home/finn/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/createrepo
--dbpath
/home/finn/yocto/poky/build/tmp/work/nitrogen6sx-poky-linux-gnueabi/core-image-base/1.0-r0/rpmdb/cortexa9hf_vfp_neon
--update -q /home/finn/yocto/poky/build/tmp/deploy/rpm/cortexa9hf_vfp_neon'
...
NOTE: Executing
'/home/finn/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/createrepo
--dbpath
/home/finn/yocto/poky/build/tmp/work/nitrogen6sx-poky-linux-gnueabi/core-image-base/1.0-r0/rpmdb/nitrogen6sx
--update -q /home/finn/yocto/poky/build/tmp/deploy/rpm/nitrogen6sx' ...
NOTE: Installing the following packages: capnproto psplash
packagegroup-base-extended run-postinsts packagegroup-core-boot
locale-base-en-us locale-base-en-gb
alsa-conf-1.0.28-r0@cortexa9hf_vfp_neon_mx6sx
alsa-conf-base-1.0.28-r0@cortexa9hf_vfp_neon_mx6sx
alsa-lib-1.0.28-r0@cortexa9h .........
DEBUG: Python function do_rootfs finished
ERROR: Function failed: do_rootfs

I noticed that I have the cross compiled version of capnproto (capnp) in
the images folder in my work directory, but the packages-split/capnproto
directory is empy.

Thanks for any help, as soon as get it working I'd like to make it
available to others.

/ Finn

--001a1145809670afc20522013fa8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I&#39;m attempting to create a r=
ecipe for the <a href=3D"https://lists.yoctoproject.org/pipermail/yocto/" t=
arget=3D"_blank">Cap&#39;n Proto serialization protocol</a>, but am still a=
 beginner at Yocto.</div><div>The only link I have found regarding the subj=
ect (so far) is this <a href=3D"https://groups.google.com/forum/#!msg/capnp=
roto/ZfHEXEVb7KM/hyOOlAKQAF0J" target=3D"_blank">google group</a>.</div><di=
v><br></div><div>I created a standard recipe, linked to the source=C2=A0<a =
href=3D"https://capnproto.org/capnproto-c++-$%7BPV%7D.tar.gz" target=3D"_bl=
ank">https://capnproto.org/capnproto-c++-${PV}.tar.gz</a></div><div><br></d=
iv><div>Based on the information from the google group link above, I change=
d the do_configure:</div><div><br></div><div><div>do_configure() {</div><di=
v>=C2=A0 =C2=A0 export CAPNP=3D/usr/local/bin/capnp</div><div>=C2=A0 =C2=A0=
 ${S}/configure --with-external-capnp -build=3Dx86_64-linux --host=3Darm-po=
ky-linux-gnueabi --target=3Darm-poky-linux-gnueabi</div><div>}</div></div><=
div><br></div><div>From what I understand, the reason is that I need an ins=
talled version of Cap&#39;n Proto on my Linux host in order to cross compil=
e for ARM</div><div><br></div><div>Because external library files are used,=
 I also added the lines:</div><div><br></div><div><div>INSANE_SKIP_${PN} +=
=3D &quot;install-host-path&quot;</div><div>INSANE_SKIP_${PN} +=3D &quot;in=
stalled-vs-shipped&quot;</div></div><div><br></div><div>Running <i>bitbake =
capnproto</i> works, but when I add the line:</div><div><br></div><div>IMAG=
E_INSTALL_append =3D &quot; capnproto&quot;<br></div><div><br></div><div>an=
d try to run<i>=C2=A0bitbake core-image-base </i>I get the following error =
from the do_rootfs log:</div><div><br></div><div><div><div>DEBUG: Executing=
 python function rootfs_process_ignore</div><div>DEBUG: Python function roo=
tfs_process_ignore finished</div><div>DEBUG: Executing python function root=
fs_runtime_mapping</div><div>DEBUG: Python function rootfs_runtime_mapping =
finished</div><div>DEBUG: Executing python function do_rootfs</div><div>NOT=
E: configuring RPM platform settings</div><div>NOTE: configuring RPM system=
 provides</div><div>NOTE: configuring RPM DB settings</div><div>NOTE: confi=
guring Smart settings</div><div>NOTE: Note: adding Smart channel nitrogen6s=
x (105)</div><div>NOTE: Note: adding Smart channel cortexa9hf_vfp_neon_mx6s=
x (100)</div><div>NOTE: Note: adding Smart channel cortexa9hf_vfp_neon (95)=
</div><div>NOTE: Note: adding Smart channel all (90)</div><div>NOTE: adding=
 Smart RPM DB channel</div><div>NOTE: Note: configuring RPM cross-install s=
criptlet_wrapper</div><div>NOTE: ###### Generate rootfs #######</div><div>N=
OTE: Executing &#39;/home/finn/yocto/poky/build/tmp/sysroots/x86_64-linux/u=
sr/bin/createrepo --dbpath /home/finn/yocto/poky/build/tmp/work/nitrogen6sx=
-poky-linux-gnueabi/core-image-base/1.0-r0/rpmdb/cortexa9hf_vfp_neon_mx6sx =
--update -q /home/finn/yocto/poky/build/tmp/deploy/rpm/cortexa9hf_vfp_neon_=
mx6sx&#39; ...</div><div>NOTE: Executing &#39;/home/finn/yocto/poky/build/t=
mp/sysroots/x86_64-linux/usr/bin/createrepo --dbpath /home/finn/yocto/poky/=
build/tmp/work/nitrogen6sx-poky-linux-gnueabi/core-image-base/1.0-r0/rpmdb/=
cortexa9hf_vfp_neon --update -q /home/finn/yocto/poky/build/tmp/deploy/rpm/=
cortexa9hf_vfp_neon&#39; ...</div><div>NOTE: Executing &#39;/home/finn/yoct=
o/poky/build/tmp/sysroots/x86_64-linux/usr/bin/createrepo --dbpath /home/fi=
nn/yocto/poky/build/tmp/work/nitrogen6sx-poky-linux-gnueabi/core-image-base=
/1.0-r0/rpmdb/nitrogen6sx --update -q /home/finn/yocto/poky/build/tmp/deplo=
y/rpm/nitrogen6sx&#39; ...</div><div>NOTE: Installing the following package=
s: capnproto psplash packagegroup-base-extended run-postinsts packagegroup-=
core-boot locale-base-en-us locale-base-en-gb</div></div><div>alsa-conf-1.0=
.28-r0@cortexa9hf_vfp_neon_mx6sx alsa-conf-base-1.0.28-r0@cortexa9hf_vfp_ne=
on_mx6sx alsa-lib-1.0.28-r0@cortexa9h .........</div><div>DEBUG: Python fun=
ction do_rootfs finished</div><div>ERROR: Function failed: do_rootfs</div><=
/div><div><br></div><div>I noticed that I have the cross compiled version o=
f capnproto (capnp) in the images folder in my work directory, but the pack=
ages-split/capnproto directory is empy.</div><div><br></div><div>Thanks for=
 any help, as soon as get it working I&#39;d like to make it available to o=
thers.</div><div><br></div><div>/ Finn</div></div>

--001a1145809670afc20522013fa8--

Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EDDC1E00D43; Thu, 24 Sep 2015 06:45:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yk0-f171.google.com (mail-yk0-f171.google.com
	[209.85.160.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 429E1E00927
	for <yocto@yoctoproject.org>; Thu, 24 Sep 2015 06:45:05 -0700 (PDT)
Received: by ykdg206 with SMTP id g206so79675147ykd.1
	for <yocto@yoctoproject.org>; Thu, 24 Sep 2015 06:45:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=KOBoHKMTsf52yU7ZttuVhBF6Dei8f7YaCAGgq44zciY=;
	b=b4NMnEFwMxv8SLz1+syfRO5rPxgVGGZtub48hV75pzozuLYPlzW+RLblhcMQvVWpK4
	GVoDc0eu/R6WqjuyNMZZ5yzHym8HLLvY9z61LVsLB1rBC9PYQALhOxWPPa2PabDScH/k
	uUBlleXsm4Rc3JQfwOz+X8o906XXpKcX040LmPvvZt+gNNcFVBQt03MUyPTHW6zIG1U7
	P0QVemQVKT+fCVgwiKg7u36/estZ8ghN2IOPltLvFZO0HlA0fg7ftvYvVKTdEpfJy1hj
	+EzJ/fBaRu0V2ONpVR4/PHjLvKFnqfbbhs8feOww2xXRDg8hlK6D3y6xyWHLFlZRUPZq
	xpkA==
MIME-Version: 1.0
X-Received: by 10.170.216.87 with SMTP id i84mr30494152ykf.91.1443102304229;
	Thu, 24 Sep 2015 06:45:04 -0700 (PDT)
Received: by 10.129.148.199 with HTTP; Thu, 24 Sep 2015 06:45:04 -0700 (PDT)
In-Reply-To: <5603f9ce.e9d1440a.dc3ac.43adSMTPIN_ADDED_BROKEN@mx.google.com>
References: <5603f9ce.e9d1440a.dc3ac.43adSMTPIN_ADDED_BROKEN@mx.google.com>
Date: Thu, 24 Sep 2015 10:45:04 -0300
Message-ID: <CAF3SDA7SE==bdZO45njNYnbtViyJ1JTH+AKofNM3+brKdW2iAA@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: andy.pont@sdcsystems.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Setting root password
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
X-List-Received-Date: Thu, 24 Sep 2015 13:45:09 -0000
Content-Type: multipart/alternative; boundary=001a1139e99c37e38805207e704a

--001a1139e99c37e38805207e704a
Content-Type: text/plain; charset=UTF-8

Hey Andy,

I didn't know about this EXTRA_USERS_PARAMS. What I do is adding this
function to
my image.

# This function sets the password for root based on ROOT_PASSWD variable
set_root_password () {
        local p=$(openssl passwd -1 -salt "My salt" "${ROOT_PASSWD}")
        sed -e "s/root:[^:]*:/root:${p}:/" -i ${IMAGE_ROOTFS}/etc/shadow
}

And append it to ROOTFS_POSTPROCESS_COMMAND:
ROOTFS_POSTPROCESS_COMMAND += "set_root_password; "

I did all this in a class file which I import on all my images, but since
you point me EXTRA_USERS_PARAMS I think I'll do that in your (the right)
way. About your problem, can you get the "usermod" error from log.do_rootfs
in your image WORKDIR/temp folder?

Cheers
- dhs

PS: Not all shells recognize the "local" keyword. Remove it if you have
problems.

2015-09-24 10:24 GMT-03:00 Andy Pont <andy.pont@sdcsystems.com>:

> Hello,
>
> Looking around the web and reading the assorted documents it seems to be
> that the defined way to set the root password is to remove "debug-tweaks"
> from EXTRA_IMAGE_FEATURES and to add the following lines to local.conf:
>
> require conf/distro/include/security_flags.inc
> INHERIT += "extrausers"
> EXTRA_USERS_PARAMS = "usermod -P <encrypted_password> root;"
>
> When I try to build core-image-minimal then the build fails with the
> following:
>
> | DEBUG: Executing shell function set_user_group
> | NOTE: Performing usermod with [-R
>
> XXXXX/build/tmp/work/intel_core2_32-poky-linux/core-image-minimal-initramfs/
> 1.0-r0/rootfs -P Hkw6rBJlcfhvM root] and 1 times of retry
> | Server refused shutdown.  Remaining client fds: 2
> | Client pids: 3878 16245
> | Server will shut down after all clients exit.
> | WARNING: usermod command did not succeed. Retrying...
> | ERROR: Tried running usermod command 1 times without success, giving up
> | WARNING:
>
> XXXXX/build/tmp/work/intel_core2_32-poky-linux/core-image-minimal-initramfs/
> 1.0-r0/temp/run.set_user_group.3878:1 exit 1 from
> |   exit 1
> | DEBUG: Python function do_rootfs finished
> | ERROR: Function failed: set_user_group (log file is located at
>
> XXXXX/build/tmp/work/intel_core2_32-poky-linux/core-image-minimal-initramfs/
> 1.0-r0/temp/log.do_rootfs.3878)
>
> Any ideas on how to make this work?
>
> Thanks,
>
> Andy.
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
*"Do or do not. There is no try"*
  *Yoda Master*

--001a1139e99c37e38805207e704a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hey Andy,<br><br></div>I didn&#39;t know ab=
out this EXTRA_USERS_PARAMS. What I do is adding this function to<br></div>=
my image. <br><br></div># This function sets the password for root based on=
 ROOT_PASSWD variable<br><div><div>set_root_password () {<br>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 local p=3D$(openssl passwd -1 -salt &quot;My=
 salt&quot; &quot;${ROOT_PASSWD}&quot;)<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 sed -e &quot;s/root:[^:]*:/root:${p}:/&quot; -i ${IMAGE_ROOTFS=
}/etc/shadow<br>}<br><br></div><div>And append it to ROOTFS_POSTPROCESS_COM=
MAND:<br>ROOTFS_POSTPROCESS_COMMAND +=3D &quot;set_root_password; &quot;<br=
><br></div><div>I did all this in a class file which I import on all my ima=
ges, but since you point me EXTRA_USERS_PARAMS I think I&#39;ll do that in =
your (the right) way. About your problem, can you get the &quot;usermod&quo=
t; error from log.do_rootfs in your image WORKDIR/temp folder?<br></div><di=
v><br></div><div>Cheers<br></div><div>- dhs<br><br></div><div>PS: Not all s=
hells recognize the &quot;local&quot; keyword. Remove it if you have proble=
ms.<br></div></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail=
_quote">2015-09-24 10:24 GMT-03:00 Andy Pont <span dir=3D"ltr">&lt;<a href=
=3D"mailto:andy.pont@sdcsystems.com" target=3D"_blank">andy.pont@sdcsystems=
.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hello,<br>
<br>
Looking around the web and reading the assorted documents it seems to be<br=
>
that the defined way to set the root password is to remove &quot;debug-twea=
ks&quot;<br>
from EXTRA_IMAGE_FEATURES and to add the following lines to local.conf:<br>
<br>
require conf/distro/include/security_flags.inc<br>
INHERIT +=3D &quot;extrausers&quot;<br>
EXTRA_USERS_PARAMS =3D &quot;usermod -P &lt;encrypted_password&gt; root;&qu=
ot;<br>
<br>
When I try to build core-image-minimal then the build fails with the<br>
following:<br>
<br>
| DEBUG: Executing shell function set_user_group<br>
| NOTE: Performing usermod with [-R<br>
XXXXX/build/tmp/work/intel_core2_32-poky-linux/core-image-minimal-initramfs=
/<br>
1.0-r0/rootfs -P Hkw6rBJlcfhvM root] and 1 times of retry<br>
| Server refused shutdown.=C2=A0 Remaining client fds: 2<br>
| Client pids: 3878 16245<br>
| Server will shut down after all clients exit.<br>
| WARNING: usermod command did not succeed. Retrying...<br>
| ERROR: Tried running usermod command 1 times without success, giving up<b=
r>
| WARNING:<br>
XXXXX/build/tmp/work/intel_core2_32-poky-linux/core-image-minimal-initramfs=
/<br>
1.0-r0/temp/run.set_user_group.3878:1 exit 1 from<br>
|=C2=A0 =C2=A0exit 1<br>
| DEBUG: Python function do_rootfs finished<br>
| ERROR: Function failed: set_user_group (log file is located at<br>
XXXXX/build/tmp/work/intel_core2_32-poky-linux/core-image-minimal-initramfs=
/<br>
1.0-r0/temp/log.do_rootfs.3878)<br>
<br>
Any ideas on how to make this work?<br>
<br>
Thanks,<br>
<br>
Andy.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br><br clear=3D"all"><br>-- <br><div clas=
s=3D"gmail_signature"><div style=3D"text-align:right"><i>&quot;Do or do not=
. There is no try&quot;</i><br><i>=C2=A0 </i><i><b>Yoda Master</b></i><br><=
/div></div>
</div>

--001a1139e99c37e38805207e704a--

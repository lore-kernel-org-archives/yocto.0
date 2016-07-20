Return-Path: <bilzhang23@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB999E00C52; Wed, 20 Jul 2016 12:20:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bilzhang23[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f42.google.com (mail-vk0-f42.google.com
	[209.85.213.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65DADE00C52
	for <yocto@yoctoproject.org>; Wed, 20 Jul 2016 12:20:50 -0700 (PDT)
Received: by mail-vk0-f42.google.com with SMTP id x130so82986299vkc.0
	for <yocto@yoctoproject.org>; Wed, 20 Jul 2016 12:20:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=C+EaCL5LXM//8oa34gIcpw6oh3sFrf8XWf8WjndHXrs=;
	b=IXebEXogBn+PnyJJPz3Stz9gQVDdZv8ymgRm++8YGU761MqmoysOlXl5dxq69V3MLN
	mPyVWRSPb4//px9fLa9fnw+5KnLp5zeH1W+5h/5ibuGqAKJbQdm7TSAXjs5EHgEXm74s
	9eTvvYp5aQA0T/8XWTwQBT37jDtJ0kePvj8Yxks/XgIh1nmvL6VYnCPfdG+gF4T93Odq
	YmBV37CLPRGzi9Fecr4JwxU3ipnLfDZe0nz9YxAgoca/nYC+Mz4dyAt0VKCk61J25j8b
	Olic7vu2ENma15UiziPV1qzeO5EQELxvvP+8Vk0HE5LnFpVWL84HN/R6Y1WDPUlz+qlo
	XpLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=C+EaCL5LXM//8oa34gIcpw6oh3sFrf8XWf8WjndHXrs=;
	b=VLBmQqu0Xne6RHvHaqwmTmGO0iiGN1O9HjZNTglE3t02mtUYDZ60wViFJIWPACRMlr
	nnGs6JXwqCsEf7PWCMRD8ZCEV/siaI4u4hRKV7ZZxCk+rVPTuDXipgRFniiCtMovHJuQ
	FN4itk/2t4GzJSDbEzgMABBGahw7zfbgwC+DwonjB0xLo3beB7VOZFimnxvu3uYRQDo3
	AjWUPq5YAp80GUp5JIz4vHrOpjbpoMm469fyRJWGJBTkPmDi6UKwJskIY0W6xvC1iVDy
	9ldtT9f+22R7WOvfBG59puSdJ1SUXdesTOBOdJ9fFaYbfWgyX4uMGvFm4TUmqwBdkvt2
	HBeg==
X-Gm-Message-State: ALyK8tL2ytVZ+kHlbTjfsxt93dKliiKjc7/Za4M38F+jRn2zLjCB8bak12W5qP+ZTGeje+sBLGPmp1Y79Dm6oA==
X-Received: by 10.31.165.80 with SMTP id o77mr24510850vke.9.1469042449827;
	Wed, 20 Jul 2016 12:20:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.31.189.65 with HTTP; Wed, 20 Jul 2016 12:20:49 -0700 (PDT)
From: Bill zhang <bilzhang23@gmail.com>
Date: Wed, 20 Jul 2016 15:20:49 -0400
Message-ID: <CAMmbFf5p_9QXmuQh1aK6GeUFLPBjLim-AyWije3gEMHahaKLnQ@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Thu, 21 Jul 2016 07:15:19 -0700
Subject: U-boot tool/mkimage Signing / verified boot not supported (CONFIG_FIT_SIGNATURE undefined)
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
X-List-Received-Date: Wed, 20 Jul 2016 19:20:54 -0000
Content-Type: multipart/alternative; boundary=001a1142dba661ccf005381619cc

--001a1142dba661ccf005381619cc
Content-Type: text/plain; charset=UTF-8

Hi all,

I want to use U-boot tool "mkimage" to sign images with RSA keys for secure
boot, but the mkimage built from YOCTO v1.7 does not support options:
-k,-K,

when run command:
${mkimage} -D "${dtc}" -F -k dev-keys -K sandbox-u-boot.dtb \
-r test.fit >${tmp},

it failed, with usage() printed out:

mkimage -l
Usage: ./mkimage -l image
          -l ==> list image header information
       ./mkimage [-x] -A arch -O os -T type -C comp -a addr -e ep -n name
-d data_file[:data_file...] image
          -A ==> set architecture to 'arch'
          -O ==> set operating system to 'os'
          -T ==> set image type to 'type'
          -C ==> set compression type 'comp'
          -a ==> set load address to 'addr' (hex)
          -e ==> set entry point to 'ep' (hex)
          -n ==> set image name to 'name'
          -d ==> use image data from 'datafile'
          -x ==> set XIP (execute in place)
       ./mkimage [-D dtc_options] [-f fit-image.its|-F] fit-image
          -D => set options for device tree compiler
          -f => input filename for FIT source
Signing / verified boot not supported (CONFIG_FIT_SIGNATURE undefined)
       ./mkimage -V ==> print version information and exit

How to build tools "mkimage" with  "signing/verifying enabled" ?

Thanks
Leo

--001a1142dba661ccf005381619cc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>I want to use U-boot tool &quot=
;mkimage&quot; to sign images with RSA keys for secure boot, but the mkimag=
e built from YOCTO v1.7 does not support options: -k,-K,=C2=A0</div><div><b=
r></div><div>when run command:</div><div><div>${mkimage} -D &quot;${dtc}&qu=
ot; -F -k dev-keys -K sandbox-u-boot.dtb \</div><div><span class=3D"" style=
=3D"white-space:pre">		</span>-r test.fit &gt;${tmp},</div></div><div><br><=
/div><div>it failed, with usage() printed out:</div><div><br></div><div><di=
v>mkimage -l</div><div>Usage: ./mkimage -l image</div><div>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 -l =3D=3D&gt; list image header information</div><div>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0./mkimage [-x] -A arch -O os -T type -C comp -a =
addr -e ep -n name -d data_file[:data_file...] image</div><div>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 -A =3D=3D&gt; set architecture to &#39;arch&#39;</=
div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 -O =3D=3D&gt; set operating sys=
tem to &#39;os&#39;</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 -T =3D=3D&=
gt; set image type to &#39;type&#39;</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 -C =3D=3D&gt; set compression type &#39;comp&#39;</div><div>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 -a =3D=3D&gt; set load address to &#39;addr&#39=
; (hex)</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 -e =3D=3D&gt; set entr=
y point to &#39;ep&#39; (hex)</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
-n =3D=3D&gt; set image name to &#39;name&#39;</div><div>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 -d =3D=3D&gt; use image data from &#39;datafile&#39;</div=
><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 -x =3D=3D&gt; set XIP (execute in =
place)</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0./mkimage [-D dtc_options] [-f =
fit-image.its|-F] fit-image</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 -D=
 =3D&gt; set options for device tree compiler</div><div>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 -f =3D&gt; input filename for FIT source</div><div>Signin=
g / verified boot not supported (CONFIG_FIT_SIGNATURE undefined)</div><div>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0./mkimage -V =3D=3D&gt; print version informatio=
n and exit</div></div><div><br></div><div>How to build tools &quot;mkimage&=
quot; with =C2=A0&quot;signing/verifying enabled&quot; ?</div><div><br></di=
v><div>Thanks</div><div>Leo</div><div><br></div></div>

--001a1142dba661ccf005381619cc--

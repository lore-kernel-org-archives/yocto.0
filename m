Return-Path: <thieldev@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00BCEE00AF4; Mon, 24 Apr 2017 22:53:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (thieldev[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.53 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.53 listed in list.dnswl.org]
Received: from mail-lf0-f53.google.com (mail-lf0-f53.google.com
	[209.85.215.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A1F1E00AE6
	for <yocto@yoctoproject.org>; Mon, 24 Apr 2017 22:53:19 -0700 (PDT)
Received: by mail-lf0-f53.google.com with SMTP id 75so84767630lfs.2
	for <yocto@yoctoproject.org>; Mon, 24 Apr 2017 22:53:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=bvgGB00ZKbiw/j+uW07o6rdRMrowX1uP731gGoY0oBY=;
	b=p2iNwYlfNU25+o8+Dn8KJhGDCMsreGTrmMP4NNNA5n6+qQH+pX8i9REaZV99JtD/Re
	pMAOYaMvxIZj1bXA3Mwus0wayaY982aXrRMyn9qhmEPTp3lCaKc7Nm48T8Z8Vsdfili2
	Vk7AbiFJh+kDFGLIX9hmLVARwql2S1JZeoHVNFqNSc1z1Dcub70f8G1o06cqRsy42cbG
	47FM7SpUaBOhZIs47k2SCrPBqjLGXJMHGxTDwHIQI17bwmM8QBg1DFiY5jBgtltJTMbL
	4135A2TGFlP28fFkylkfjclRfH4GwfXOQAsLyb5FmJKTBfPcRWGWlh2ggokIRnJ8ob2c
	Q6zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=bvgGB00ZKbiw/j+uW07o6rdRMrowX1uP731gGoY0oBY=;
	b=YIMrrsWKl9aZGHZruA+quQ4xk1LhgzdXjs801JsQHfW4g6ePlEMpyfMDySby3RoZMh
	3DBZZoRJJofa+QKSU0XTAUjnn31isWUcCySRWAXJgzDPTr/eBFsLnNaSTgF+0NgEJU76
	/0EX9Hz4KkjEGRO2DDisxLy+Dxib/OBO9OAd1jfN/Px8pv5WDALm3UoX/B80KLVxEC7D
	mNZSL03+5P+y0zTnF0nxPg7sXXnoJbKITMgP4bvbrxhFoUbDjox7yznqdEiFYn4hFIni
	XDbMD8mRLvMakvcKY9W42hB+CXfvsTynmGp1hLMpdrqqbjLflqKhIMyTTZjvjkPb3k0T
	9LRA==
X-Gm-Message-State: AN3rC/5rjKS2JUooaRsq1luhBaMfqoTAueNbR//Dp/t5M8pJBi24tYsv
	7vISptFnIZ/glsjyeijXJWZU2qj0wQXkMdc=
X-Received: by 10.46.22.17 with SMTP id w17mr8971910ljd.86.1493099598051; Mon,
	24 Apr 2017 22:53:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.234.92 with HTTP; Mon, 24 Apr 2017 22:53:17 -0700 (PDT)
From: Malte Thiel <thieldev@gmail.com>
Date: Tue, 25 Apr 2017 07:53:17 +0200
Message-ID: <CAJ5fcV09oAowofNxyneK6QuetLDt3a9MxSuvRT7R-WUMhrLp_g@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Add own dts file to arch/arm/boot/dts
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
X-List-Received-Date: Tue, 25 Apr 2017 05:53:23 -0000
Content-Type: multipart/alternative; boundary=94eb2c1b413a2801cf054df7572b

--94eb2c1b413a2801cf054df7572b
Content-Type: text/plain; charset=UTF-8

Good day,

How can I add my own dts file to the arch/arm/boot/dts folder? Within my
yocto installation the whole path for the dts files is:

tmp/work/sm2_imx6-poky-linux-gnueabi/linux-yocto-custom/4.1.15-2/git/arch/arm/boot/dts

As you can see it lies within the "tmp" folder. Hence, I do not want to
copy it manually into this branch. I tried playing around with
"appendsrcfiles" while creating an extra recipe "add-screen-dts":


recipetool appendsrcfiles --destdir arch/arm/boot/dts
../../sources/meta-own add-screen-dts
../../sources/meta-own/recipes-own/images/sm2-imx6-133-1280x800-single-lvds-SCX1001255GGU17.dts

However, I do not have any success here. Thanks for helping me out!

--94eb2c1b413a2801cf054df7572b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Good day,<div><br></div><div>How can I add my own dts file=
 to the=C2=A0arch/arm/boot/dts folder? Within my yocto installation the who=
le path for the dts files is:</div><div><br></div><div>tmp/work/sm2_imx6-po=
ky-linux-gnueabi/linux-yocto-custom/4.1.15-2/git/arch/arm/boot/dts<br></div=
><div><br></div><div>As you can see it lies within the &quot;tmp&quot; fold=
er. Hence, I do not want to copy it manually into this branch. I tried play=
ing around with &quot;appendsrcfiles&quot; while creating an extra recipe &=
quot;add-screen-dts&quot;:</div><div><br></div><div><br></div><div>recipeto=
ol appendsrcfiles --destdir arch/arm/boot/dts =C2=A0 ../../sources/meta-own=
 add-screen-dts ../../sources/meta-own/recipes-own/images/sm2-imx6-133-1280=
x800-single-lvds-SCX1001255GGU17.dts<br></div><div><br></div><div>However, =
I do not have any success here. Thanks for helping me out!</div><div><br></=
div></div>

--94eb2c1b413a2801cf054df7572b--

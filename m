Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 105A1E009EB; Mon, 18 Feb 2019 23:35:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marek.belisko[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
	[209.85.221.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C67BE00872
	for <yocto@yoctoproject.org>; Mon, 18 Feb 2019 23:34:59 -0800 (PST)
Received: by mail-wr1-f66.google.com with SMTP id n2so8823515wrw.8
	for <yocto@yoctoproject.org>; Mon, 18 Feb 2019 23:34:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=hy9sPmu5WRK3KnV6jQ1j0GxERfVJqysEmnvPT+KmsOw=;
	b=WYn/XQVSy4+McCU0HxBCg2OpA+taT2gffDSntkeP4Hnv+nTM7f/MHeMbCY5YyQDlJP
	j97YyypVATokw5vXcG6LNsHdXSWv5th4H5bMS3B+kFW6exqi2htAMDuYFGJVp0AWeDOK
	iNJszozqCh18XmY+VwSzPn3SvP740+hijrzxC0eypkm3MVsgTlBU8F0bLNVvEef6YKFw
	w5wqo6CwVU+/ZGld+Xy3LCqZxYHsWNq/YmQjkjM1agJDJQvk250t6q8BRiWPRUe1vxFY
	PHHYl1wL7znUa1cSc92FnJmEYrvEx9Lu1V17Ztmd3+Xj9gModTSWCmU/pCFl7s2Ptna3
	Y7Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=hy9sPmu5WRK3KnV6jQ1j0GxERfVJqysEmnvPT+KmsOw=;
	b=jXjnprOEXv2L2LMPr3Drz0ljCgxuSdzNWLza5fJMVbwETaV/Hd74vfPI03Wg7r8AKK
	xT3pWl1yg1wp9FfWK/OlmJ9k6OY0x5BE6BdrL0ZO8Zj3o/2d6qX0ZjRW3TbkOxni12D1
	aTbq7Grl5Caz+v5mpALfnSreLJhEt2/G3a4IKMe1W99ta3+Etn08pE3NBPfgTp8alvDE
	9lj4ac5gK/w4uiMG1m9k904EKHXslO2J2YA9+4R33OnoohR8b+GmUmTVHh42I/Pj8ZII
	ztBYCsSLgOVCCSrynLdphu64cgh/NSWXWEWAgDtTurLuAuAngCcviOs4oDlGmghC2Gyc
	ub7Q==
X-Gm-Message-State: AHQUAuZisba3oRvzUty7xbBq9HYxEQIMk5E4HkSGAFzHZUbqACF6ueg4
	HuL3SGuF5sY2TjkrW/ctCgjGvKKiFsY/LWyeXT4=
X-Google-Smtp-Source: AHgI3IblVQw+Sw3jSRu1wAn6Lzl+6zaA4lWHAwdzzQNldgTggsD9uFbdhSzKpsWO7oq15a+igfZbbj0uX8+sD4Tt7QQ=
X-Received: by 2002:a5d:6452:: with SMTP id d18mr262418wrw.183.1550561698516; 
	Mon, 18 Feb 2019 23:34:58 -0800 (PST)
MIME-Version: 1.0
References: <CAAfyv34zsYSumJ9ka5GczozkG5UNqF977R7Ar8hizOq0QKXa=w@mail.gmail.com>
	<CAMRMzCAcmrue6f1UZCppg-gQQiXGB04aUmp0m6P+maSr=-9tKg@mail.gmail.com>
In-Reply-To: <CAMRMzCAcmrue6f1UZCppg-gQQiXGB04aUmp0m6P+maSr=-9tKg@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Tue, 19 Feb 2019 08:34:46 +0100
Message-ID: <CAAfyv34_7wQf4qCvB3ShdTB5R-v3QWYQXa-7AbZyQz-mU59V-Q@mail.gmail.com>
To: Marc Ferland <marc.ferland@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: readonly rootfs - storing data in separate partition
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
X-List-Received-Date: Tue, 19 Feb 2019 07:35:00 -0000
Content-Type: multipart/alternative; boundary="0000000000003e150c05823a4719"

--0000000000003e150c05823a4719
Content-Type: text/plain; charset="UTF-8"

On Mon, Feb 18, 2019 at 5:52 PM Marc Ferland <marc.ferland@gmail.com> wrote:

> On Mon, Feb 18, 2019 at 11:37 AM Belisko Marek <marek.belisko@gmail.com>
> wrote:
>
>> Hi,
>>
>> I plan to use readonly rootfs option and store some custom data in
>> separate partition (like hostname, wpa_supplicant.conf etc). I have wic
>> file which create rootfs + then rest is for data storage. I can adjust
>> various recipes to symlink to /data partition. My question is if there
>> exists some mechanism how to store some pieces in non-rootfs partition? I
>> know some projects which put those extra files to deploy dir and then by dd
>> create dummy storage nd put files there and finally create partition from
>> that. Thanks a log for any pointers.
>>
>>
>
> You could potentially use overlayfs to have a RO rootfs and a separate RW
> layer in another partition for example. I think linux-yocto also support
> AUFS.
>
This one seems promising:
https://github.com/cmhe/meta-readonly-rootfs-overlay
This is not exactly what I was looking for but I think it can be usable.
Anyone using this? Thanks.

>
> Good luck,
>
> Marc
>

/marek

--0000000000003e150c05823a4719
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">On Mon, Feb 18, 2019 at =
5:52 PM Marc Ferland &lt;<a href=3D"mailto:marc.ferland@gmail.com">marc.fer=
land@gmail.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Feb 18, 2019 at 11:=
37 AM Belisko Marek &lt;<a href=3D"mailto:marek.belisko@gmail.com" target=
=3D"_blank">marek.belisko@gmail.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div>Hi,<div><br></div><div>I plan to us=
e readonly rootfs option and store some custom data in separate partition (=
like hostname, wpa_supplicant.conf etc). I have wic file which create rootf=
s=C2=A0+ then rest is for data storage. I can adjust various recipes to sym=
link to /data partition. My question is if there exists some mechanism how =
to store some pieces in non-rootfs partition? I know some projects which pu=
t those extra files to deploy dir and then by dd create dummy storage nd pu=
t files there and finally create partition from that. Thanks a log for any =
pointers.</div><div>=C2=A0</div></div></blockquote><div><br></div><div>You =
could potentially use overlayfs to have a RO rootfs and a separate RW layer=
 in another partition for example. I think linux-yocto also support AUFS.<b=
r></div></div></div></blockquote><div>This one seems promising:=C2=A0<a hre=
f=3D"https://github.com/cmhe/meta-readonly-rootfs-overlay">https://github.c=
om/cmhe/meta-readonly-rootfs-overlay</a>=C2=A0</div><div>This is not exactl=
y what I was looking for but I think it can be usable. Anyone using this? T=
hanks.</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"l=
tr"><div class=3D"gmail_quote"><div></div><div><br></div><div>Good luck,</d=
iv><div><br></div><div>Marc<br></div></div></div>
</blockquote></div><br clear=3D"all"><div>/marek</div><br><div dir=3D"ltr" =
class=3D"gmail_signature"></div></div></div>

--0000000000003e150c05823a4719--

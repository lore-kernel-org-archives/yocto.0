Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3278E00B96; Sun, 11 Dec 2016 21:22:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.195 listed in dnsbl.sorbs.net]
Received: from mail-ua0-f195.google.com (mail-ua0-f195.google.com
	[209.85.217.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 521E5E00B74
	for <yocto@yoctoproject.org>; Sun, 11 Dec 2016 21:22:13 -0800 (PST)
Received: by mail-ua0-f195.google.com with SMTP id 20so7453915uak.0
	for <yocto@yoctoproject.org>; Sun, 11 Dec 2016 21:22:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=m1gn1qOI0k/WxP1QO0ax1GF0WRr2c8FJaF54LIbYXv4=;
	b=Q/uSkDIQAQLGo7QcNBm5wy9j6tnEIkMISvk0byCpC5QuhSoz24cj2LMOD48/DenOVD
	V+LBXikNYiHoG55qHb1e5XSBExMLsK6mIjIou8xY+8Pm/zsnPW7zzXBUUZLTG6lGepIj
	qF+tLyxcQ3VpmvGjcH4v2dEveTF6nvd8FvXn+kK1rSQWP74bLiknzsrCMH+9XGTLpGHs
	djJ23cYfGCLXi7Mm7rz4FKC4G+Iz7A+v3FCNFx7G/W/zfL+1snDRG71YeDmUK/bD8vYd
	Qb6qSu+edEs4WzkS1UKnWZpnEoFnM2Fn1eJuX8Z2E2MSViNxi2230S2SaJ/omwLxKy1e
	HONA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=m1gn1qOI0k/WxP1QO0ax1GF0WRr2c8FJaF54LIbYXv4=;
	b=UawPjkO6jTB9LZmCgVKVweWg5MGJMRRjq+laC9dzjOak1mYQg+Q3zksqJQD1r22Q/S
	jKUAC6ivfCVknh4RElh2XJFe1XzGXgZpw5i4qljFtuUVRPuX+chuCQU1TWhK/VBbHge+
	0mnpwlxo8KPZkiRFYER1xGhonNzbrFoZy9NKqPhwExB6kad8qfrbWi/orLAqoIGAuSai
	QhUIv39ZhCXRboJ4t8z7vN067OCfYqnPNrTZzuHN0Cgw3PyEa3NARCVQO4PydI+5zYGQ
	pYbBUmpbMjkXaKb+DU/TYkfkQX7mxuNIf9dotk2nGgYOYWK7fVzYl/AjN1Q/x4enFgyh
	qI5A==
X-Gm-Message-State: AKaTC00OQcPD8tmtYauh75YNg26IlJKzf8qmg7MldPY0kebposNtsWi2HtsZ6slZyLTXv/dJcC78v4U31LvAuA==
X-Received: by 10.159.55.142 with SMTP id q14mr73934617uaq.107.1481520132076; 
	Sun, 11 Dec 2016 21:22:12 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.48.87 with HTTP; Sun, 11 Dec 2016 21:21:41 -0800 (PST)
In-Reply-To: <1481193612-18179-1-git-send-email-schnitzeltony@googlemail.com>
References: <1481193612-18179-1-git-send-email-schnitzeltony@googlemail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 11 Dec 2016 21:21:41 -0800
Message-ID: <CAMKF1srbGTypEP2FrNHHKxqdxg595EgdCxn=9dy9OVEA-s2PAw@mail.gmail.com>
To: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi-base.bbclass: remove version hack
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
X-List-Received-Date: Mon, 12 Dec 2016 05:22:15 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 8, 2016 at 2:40 AM, Andreas M=C3=BCller
<schnitzeltony@googlemail.com> wrote:
> * no more required (version > 3.17 | > 4.3.x | > 4.4.5)
> * causes error with rt kernel
>

I think this is ok to apply now.

> Signed-off-by: Andreas M=C3=BCller <schnitzeltony@googlemail.com>
> ---
>  classes/linux-raspberrypi-base.bbclass | 15 ---------------
>  1 file changed, 15 deletions(-)
>
> diff --git a/classes/linux-raspberrypi-base.bbclass b/classes/linux-raspb=
errypi-base.bbclass
> index 3a6e33d..dc2330a 100644
> --- a/classes/linux-raspberrypi-base.bbclass
> +++ b/classes/linux-raspberrypi-base.bbclass
> @@ -14,21 +14,6 @@ def get_dts(d, ver=3DNone):
>          from the kernel staging '''
>          ver =3D get_kernelversion_file(staging_dir)
>
> -    if ver is not None:
> -        min_ver =3D ver.split('.', 3)
> -    else:
> -        return dts
> -
> -    # Always turn off device tree support for kernel's < 3.18
> -    try:
> -        if int(min_ver[0]) >=3D 4:
> -            if (int(min_ver[1]) < 4) or (int(min_ver[1]) =3D=3D 4 and in=
t(min_ver[2]) < 6):
> -                dts =3D ' '.join([(re.sub(r'(.*)\.dtbo$', r'\1-overlay.d=
tb', x)) for x in dts.split()])
> -        elif int(min_ver[1]) < 18:
> -            dts =3D ""
> -    except IndexError:
> -        min_ver =3D None
> -
>      return dts
>
>
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


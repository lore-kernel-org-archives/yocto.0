Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55BD0E01264; Wed,  6 Jun 2018 01:46:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f176.google.com (mail-qt0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB506E00DED
	for <yocto@yoctoproject.org>; Wed,  6 Jun 2018 01:46:26 -0700 (PDT)
Received: by mail-qt0-f176.google.com with SMTP id y31-v6so5506318qty.9
	for <yocto@yoctoproject.org>; Wed, 06 Jun 2018 01:46:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=JJ6tozD9ltHx4R7dDC5+PTIqjfjTDvX2eDZ8xYTBFuw=;
	b=iBlEPsERfoMD9SAYnwi1y54BwWQ443/n3kbsPOVg41Oy3ol5/T8yBlQL0kphS6XX9Y
	kfVpxN17Ktic2qVr5xhvVrMmOHwz5LiMT+/CwUD3ckVWVIjTNvEv6+bYE4SkiemiVeWM
	3XBqg04ope8Thrsu/BJgYaavJHJ7LhuXuh7IK0YKZfLef0FtT5WlljSr0npk2K58MH39
	jSW1eKDDxv+IpXLh4qvqsiovAJ9hKbsibUCFeIF4B2nZFeRsWnWgIJPEKuVJanfirmLf
	vUxeNMt2xDOpZLPagV8+do9AMD2uat807iVUf0Tb54LfNm8gLVbRdsVAqECerqMoWART
	6I8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=JJ6tozD9ltHx4R7dDC5+PTIqjfjTDvX2eDZ8xYTBFuw=;
	b=nWB1imKN9FhxgCoLitcAAn+vUPThXLp10GXeiMC9I4q+gv2bqVP4ncpkexohO/2HrH
	H1UJAtjs0LUbnE+w4rmPDff0n8Ppa57SSLcls4MyO620AMikQlWbLHFe0yJUPYu96TxS
	fmnoLo47Oa6/VWWWyDwGOjn+G9nUAW/Vf090qXWaGI+wQWDLTNQdoo6ZP2YZLH2oI0Nq
	5TO7LW3tkgaX51OvxXmUPJ7dEDc30yXAC7aIm1R2Qqe2lc6NoTSsfyeyEnN1GAQA/hV8
	5O/9NXVvYBNCL8pE3UV5RdDI2L/wo4N5euYJNXRUoDi6qiGQfM7VEpEhRLnX40Nrod8U
	QEDw==
X-Gm-Message-State: APt69E0754QU1EUX3X9ODoiwACpPPKleQN0rfpzx8Yxi1nCk9zSqVwNm
	axaAOABp729cwJv/CrQwhZBR3QFM8uWXIKB/hQ8=
X-Google-Smtp-Source: ADUXVKK+vZOlxUXBRI1qgdHxXzAliI4aeBrV4o5SArXKbocgkkKRLLZLaai8NxBUlKjtbdZHL5TKqt89nWwLeVaMQ4g=
X-Received: by 2002:a0c:fa89:: with SMTP id
	o9-v6mr1817345qvn.160.1528274785995; 
	Wed, 06 Jun 2018 01:46:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:ad44:0:0:0:0:0 with HTTP;
	Wed, 6 Jun 2018 01:46:25 -0700 (PDT)
In-Reply-To: <A33D6C2E-A641-476F-8ECA-CF92032A47E4@gmail.com>
References: <443D9650-0A26-433A-AC22-F61DBFDE1221@gmail.com>
	<CAALXFYwLpD0yr1s2CA9XT0X2iRhi_ApaAjW1Mra6ZonJb+s_kA@mail.gmail.com>
	<A33D6C2E-A641-476F-8ECA-CF92032A47E4@gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 6 Jun 2018 10:46:25 +0200
Message-ID: <CAGAf8LzmY0ZFaDZbEbt8NXi=tH5F0qh=BhP60QvMA3KHmfyb6g@mail.gmail.com>
To: Mihaela Apetroaie-Cristea <apetroaiecristeamihaela@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: partitions resizing on the fly
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
X-List-Received-Date: Wed, 06 Jun 2018 08:46:28 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Before asking this question to YOCTO community, the simplier question
will be to ask if anybody knows any Linux distro (RHEL, Fedora,
Debian, Ubuntu, SuSE etc.), with the feature which can do this?

I am dealing with Linux for years, but such a mechanism did not
see/experience. As well, never found anybody who asked this question
as a such even for the normal distros.

In contrary, it is impossible to expand/shrink dynamically active
(mounted) partitions, AFAIK.

For this to happen, somebody needs to invent the new dynamically
expanding active fs (the feature of it), which can do that.

Zoran
_______

On Tue, Jun 5, 2018 at 4:59 PM, Mihaela Apetroaie-Cristea
<apetroaiecristeamihaela@gmail.com> wrote:
> Hi,
>
> Thanks for your answer. However, my question is whether there is a mechan=
ism
> such that the root will keep it=E2=80=99s minimal size, but be able to ex=
pand if
> there is free space on the disk when new files are added (not necessarily=
 to
> occupy the whole free space), and shrink back if files are deleted. At th=
e
> moment I am happy to flash it with the minimal size, but it runs out of
> space when I want to add something to the partitions, although there is
> extra space on the disk that it could take. I know the implementation of
> this is complicated, but I am wondering if anyone knows a solution for th=
is.
>
> Thank you
>
>
> On 5 Jun 2018, at 15:50, Iv=C3=A1n Castell <icastell@nayarsystems.com> wr=
ote:
>
> I managed this issue redefining this script in my custom layer (rocko
> branch):
>
>     scripts/lib/wic/canned-wks/mkefidisk.wks
>
> and setting a bigger size for the root partition (80GB in my case):
>
>     part / --source rootfs --ondisk sda --fstype=3Dext4 --label platform
> --align 1024 --use-uuid --size 80000
>
> Its not very nice, I know. But yocto can't know the real size of your roo=
t
> device until writing the final image.
>
> I don't know if this is the best way to fix this  but it works.
>   -- Ivan
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


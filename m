Return-Path: <xiaoxianghua@gmail.com>
Received: from mail-bw0-f48.google.com (mail-bw0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5B44E01414
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2011 10:17:48 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by bkat2 with SMTP id t2so510981bka.35
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2011 10:17:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=mRFRu9Y0CM7Su8kpXfttppmp7VJCsOa/d/ssx4zk/hk=;
	b=QMyHrfuwcPVQxB3ccRcC49h9eylvdMehni7RqOxjtNRPhkwqSBh4vjyKzwSZn4rdcB
	Usza/NQBPRqK/AAnWzZIguGggNqx1Zbxfyf/spHKZk/rDptdVM9KLmhuvPTD5zvjmLVU
	MZGUQHuMWCl7GrsrdX6HkIjtYembtfIkJ516Y=
MIME-Version: 1.0
Received: by 10.182.114.2 with SMTP id jc2mr835387obb.27.1319822266639; Fri,
	28 Oct 2011 10:17:46 -0700 (PDT)
Received: by 10.182.108.36 with HTTP; Fri, 28 Oct 2011 10:17:46 -0700 (PDT)
In-Reply-To: <4EAADC39.8060000@linux.intel.com>
References: <CAP7cwtu-T9LdUy78MSG+JOanSHw6UTK5D-4zFu-bVzsRp9XwwA@mail.gmail.com>
	<4EAAC008.4050406@windriver.com>
	<CAP7cwttTXcGySrqmKvv+7saHFyF0xuUczY8h5693f232RCA_Sg@mail.gmail.com>
	<CAP7cwtvdz1G9YsoF6aDj0EUAQ4=WQmus2J2Ep5FYA=d8+9ZmYQ@mail.gmail.com>
	<4EAADC39.8060000@linux.intel.com>
Date: Fri, 28 Oct 2011 12:17:46 -0500
Message-ID: <CAP7cwtuaZZqLWfRX=uH5b4G_iRJEAPj15ZOY_-u3jE=e8cFsWw@mail.gmail.com>
From: Xianghua Xiao <xiaoxianghua@gmail.com>
To: Joshua Lock <josh@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: building and using yocto 1.1
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 28 Oct 2011 17:17:49 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

filed a bug on sato-input.

thanks!

On Fri, Oct 28, 2011 at 11:45 AM, Joshua Lock <josh@linux.intel.com> wrote:
> On 28/10/11 09:20, Xianghua Xiao wrote:
>> is there a way that, when a release is made, all the related source
>> tarballs can be download as a whole? the separate download =C2=A0slows
>> build a lot for the out-of-box test as well.
>
> We have a BitBake command to fetch all of the sources without actually
> doing the build:
>
> bitbake <target> -c fetchall
>
> i.e.
>
> bitbake core-image-sato -c fetchall
>
> OR
>
> bitbake world -c fetchall
>
> Cheers,
> Joshua
> --
> Joshua Lock
> =C2=A0 =C2=A0 =C2=A0 =C2=A0Yocto Project "Johannes factotum"
> =C2=A0 =C2=A0 =C2=A0 =C2=A0Intel Open Source Technology Centre
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


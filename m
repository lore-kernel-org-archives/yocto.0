Return-Path: <jeffrey.osier-mixon@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 331E4E01396
	for <yocto@yoctoproject.org>; Tue,  8 May 2012 00:58:34 -0700 (PDT)
Received: from mail-vb0-f52.google.com ([209.85.212.52])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 08 May 2012 00:58:33 -0700
Received: by vbzb23 with SMTP id b23so1628520vbz.25
	for <yocto@yoctoproject.org>; Tue, 08 May 2012 00:58:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding:x-gm-message-state;
	bh=KqKBq8+1E2Ys8JmzZz2jodjIJXF2+TF+artstVb7xis=;
	b=AV8eBeXb7J2hQzXZ7z4CaXzX9Vae08YA5mJapjHl8Y6fwXE7YB/q8lo/lZb6Xh+0Oo
	053vcZDWmi6GZ/U812aZlzRMRsnRxH7KpSVD5ghWgNFtrsDsMa/QY4DBPrhrh7zN33Yj
	gv6Mvnh9rTRHfKavcTeRldEkfDQ0R2iJQztkv0yYzPgrtS2gJYb/xV4SyEot6k/seKqK
	wTE/r0eFc6qNDpBo/MBKqSnUSJfLBM+UsIA1vrVjxJNr5WLNFxDLjzrXibq4ZDKi9Y1b
	Ada3sKcad5OAwFVCx4Djd27BnamG0Vtj46c2o8RO+vKqB7hOrqwGuMnMfwZImN6TZOtt
	DEww==
MIME-Version: 1.0
Received: by 10.220.240.73 with SMTP id kz9mr2698961vcb.9.1336463912935; Tue,
	08 May 2012 00:58:32 -0700 (PDT)
Received: by 10.52.31.74 with HTTP; Tue, 8 May 2012 00:58:32 -0700 (PDT)
In-Reply-To: <F549F654-3C59-46D2-9CA4-CE734301938B@keylevel.com>
References: <752F5B12-4CCB-4C62-A1DE-61EA5BD21CE9@keylevel.com>
	<F549F654-3C59-46D2-9CA4-CE734301938B@keylevel.com>
Date: Tue, 8 May 2012 00:58:32 -0700
Message-ID: <CALZ2gZU7DOYu6+kZ-DY=hw-3v5Gyqn2nABDgz06h+S4rubfL+A@mail.gmail.com>
From: "Osier-mixon, Jeffrey" <jeffrey.osier-mixon@intel.com>
To: Chris Tapp <opensource@keylevel.com>
X-Gm-Message-State: ALoCoQk7Th/C2YDbTMiJmdlFKbLeHqNyEZ6dO4mo2HKEis44MJuSUtCeEEYxvYqxUmJ5UtFxQQfG
Cc: yocto@yoctoproject.org
Subject: Re: Raspberry Pi
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
X-List-Received-Date: Tue, 08 May 2012 07:58:34 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Chris & all - there is a small group working on a Yocto Project BSP
for the Raspberry Pi, particularly to get Qt working (this is the
QtonPi group to which Brian referred in an earlier message). I can put
you in touch with them if you like.

On Tue, May 8, 2012 at 12:43 AM, Chris Tapp <opensource@keylevel.com> wrote=
:
> On 15 Dec 2011, at 21:47, Chris Tapp wrote:
>
>> Is anyone on this list considering (or working on) a BSP for the Raspber=
ry Pi (http://www.raspberrypi.org/faqs) ?
>>
>> For those that haven't seen it, it's a credit-card sized 'home pc' aimed=
 primarily at educational users that includes a 700MHz ARM11 core, HDMI, Op=
enGL ES 2.0, ethernet and audio for about $35. It will be supporting Debian=
, Fedora and ArchLinux at launch.
>>
>> Looks like a good board for people that want to get in to Yocto / embedd=
ed linux. Also looks like it's a good platform for some of my stuff...
>>
>> I would be interested in working on a BSP / distro if anyone is working =
on it or would like to work on it.
>
> Well, I've finally got to the top of the order list and should be getting=
 some hardware within the next few days. Time to get started!
>
> I guess the first thing to do is get a kernel built. I'm not up-to-date w=
ith ARM - are there any BSPs available for similar devices / the ARM11 core=
?
>
> Chris Tapp
>
> opensource@keylevel.com
> www.keylevel.com
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--=20
Jeff Osier-Mixon=A0http://jefro.net/blog
Yocto Project Community Manager @Intel=A0http://yoctoproject.org


Return-Path: <paul.betafive@gmail.com>
Received: from mail-vc0-f179.google.com (mail-vc0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5857CE0146E
	for <yocto@yoctoproject.org>; Wed,  8 May 2013 02:56:09 -0700 (PDT)
Received: by mail-vc0-f179.google.com with SMTP id hz10so1505662vcb.10
	for <yocto@yoctoproject.org>; Wed, 08 May 2013 02:56:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=ZcyYrjdSp4/TWJDLRmit8FTW4cGNLLBkI/ouzVGzYaI=;
	b=v+s+AVFKBadPPtbRZnQSA2fqh+n75qVIkefS1afR5CofdAqXwHq9mAEV2Lyw9CIKPI
	7oQUc0c6W2CW7Pb24QnyqM9aHQLM+Cndha0Ueuqa0tRi3PJ4tdhq/0VPyCOt883Mnpk9
	V2TcSiRvaApolH4t+lvIZLLs3zCTIk+O61x3LJDc0oHrsOhw97d3dH1Nurtq/poyv+cY
	BpRCZxxwAokf5SpFVuW0n5IkVd280gK22it/XtoP/Jl6/I3zzun5Sjxny/HNtNaWz/BK
	F5+h+yrXUJjnFqUCLb+g1whgMFrclBb60vRdOp2d43aFCC6lFSJsOrLFizaOmrN8A2N3
	chBA==
X-Received: by 10.220.168.71 with SMTP id t7mr889628vcy.39.1368006968668; Wed,
	08 May 2013 02:56:08 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.48.5 with HTTP; Wed, 8 May 2013 02:55:48 -0700 (PDT)
In-Reply-To: <CAK18fxH+vfma5BuDfcLB7AdoJX+GjppYs83NSDC4=zh3O_OY4w@mail.gmail.com>
References: <CANyK_8c2tTqktkHFuR+vzAGbsb3AKyFow1T4rU_aEnb8pdQnuw@mail.gmail.com>
	<CAK18fxFMKykJQnuMqrU6eLkD0E_Ht+Vyo2tmayukvNU_eyV6aw@mail.gmail.com>
	<CANyK_8fVfKbTHq3X1hdSWOFdwsz4cZLaaispiwC_hJJbimM1ig@mail.gmail.com>
	<CAHUNapRr4y47FGqp90NZwKwwE0PGSj6A2vN1nRujqjBSL9oOZw@mail.gmail.com>
	<CANyK_8erAWaRzrXxDOCwaa9xkfxqVM5Fk5hukGPoyapZJTMw5w@mail.gmail.com>
	<518292E5.9030101@mlbassoc.com>
	<CAK18fxH+vfma5BuDfcLB7AdoJX+GjppYs83NSDC4=zh3O_OY4w@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Wed, 8 May 2013 10:55:48 +0100
X-Google-Sender-Auth: 3yoYpXcTK3Ba64hItF5YDm58rfI
Message-ID: <CANyK_8f+MV8nnX2ptQHMGhONSfTFFUXLmUeQ8nFRpjcOaHygEQ@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Zenity is in meta-gnome
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
X-List-Received-Date: Wed, 08 May 2013 09:56:09 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 2 May 2013 17:45, Andrei Gherzan <andrei@gherzan.ro> wrote:
>
> So that script was just a helper to make things easier for the user.
>
> On the other hand i'm pretty sure nobody uses it. Probably because is
> outdated and seems to come from other project - which is true :). So if we
> decide to keep it we need to refactor it. And raspi-config would be my
> choice.
>

For my current builds I've removed this recipe completely. I think if
someone wants a script like this it makes more sense to start from
scratch or from raspi-config rather then from this script. I can send
a patch if you agree.

--
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk


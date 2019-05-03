Return-Path: <schnitzeltony@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7E52E00D50; Fri,  3 May 2019 01:29:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (schnitzeltony[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.42 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com
	[209.85.166.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EC56E00D3F
	for <yocto@yoctoproject.org>; Fri,  3 May 2019 01:29:00 -0700 (PDT)
Received: by mail-io1-f42.google.com with SMTP id m14so4505400ion.13
	for <yocto@yoctoproject.org>; Fri, 03 May 2019 01:29:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=MWFnHl4VGESVcBctg/mPXz7Gb8kWAbBlPZT0Kn5b/28=;
	b=LcWZes0mZJ6baQ8j2xkaF/0I3i/2mICOoMOyxpZ2Oi4opVtcuAbG66GHQwou7myUu3
	pXbAoMprEDzNtOXZgN7n8VhHXeB25vtTfLbRDYCZGG+9sHDJyqig10Wnc0cTPjWzPQfN
	JipfdjoZf/+m5rZILD/ZKXU8tVvFiIynq+I2q/AIwPCCFYDZDmG8e4hkQ4+WtijaxfjU
	xhyq7X1q3bIsOFNQU5LjdmnnQ7ukTdW85nv9CF+sn971FsnvdYIKPmp5vspA4IjGSPUB
	eGRTfHF4UPk07vmqfwqLWaJcndr5zLqbKqtwrB+vhSgGnpGn6YMhf48y2K01B+cXB6Nt
	7grQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=MWFnHl4VGESVcBctg/mPXz7Gb8kWAbBlPZT0Kn5b/28=;
	b=JkO07N2Mjs3pRsZcsvQKfOog9u9rdNjt2PGA1Stz7P0ad1f6+eaTorKjfy9QTtLW8s
	uYY9eTCf0/QIY8SuZiRp2AxbYIX2qEptfCIvrbTSjSqsrgZAuiMpfxwe+vKTe9MvW9Cg
	i6OmIWJCgjDflGzU6J7ZZOwhX6+Q6eXoc0DSkjIYkF6l02P0zVaLZ9xBuaHlPBFWhbDB
	UnALNKgd1URZzvXpB4awBNsnAfEsmZu+2soo6Ip30YhWi8IdGTIgVSO4UjptnGSUzVmg
	EmqZgxadR/0dRHlPIzHrYALbSCFyxqnQhV26so4Yt68pQOWcIbShsUpcrsUlpRz/3O2P
	6ARw==
X-Gm-Message-State: APjAAAXU+SVk6weFqvS0OUEPIzNDIce4OLE6GXOiDhvov7SImGOn0zIw
	9DGSCW3GYnwiOjp6o6dYMpvWt2dl1q5mP29NtGk=
X-Google-Smtp-Source: APXvYqzBaIv2yPfNb2OjKWXc6K4EeQBYLIOYoQEYcsuwbKFd9KorHh4fM5XnCGyYS1h6wg/8jYzDB0sMw9bL1YflbmY=
X-Received: by 2002:a6b:5d01:: with SMTP id r1mr2739795iob.272.1556872140439; 
	Fri, 03 May 2019 01:29:00 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWS8L-dByznaDUALrZ2_Qt_Q0mXJ6uuGoEyQ=EoC2HiHUA@mail.gmail.com>
	<CALbNGRTR2u3Oq0bDi6W30zCcFo7dt+O3BMKrauhyhTPV8kQ8=g@mail.gmail.com>
	<CAA=hcWSFeokUgsN45HyKVQ=ky9Cp8bPCAvmwTM_SZ=FH2=6npA@mail.gmail.com>
In-Reply-To: <CAA=hcWSFeokUgsN45HyKVQ=ky9Cp8bPCAvmwTM_SZ=FH2=6npA@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Date: Fri, 3 May 2019 10:28:48 +0200
Message-ID: <CALbNGRQMH4wQYm7ZLhh2t93zR_Hmv9kFpLLi90xYwOnrmsr=4w@mail.gmail.com>
To: JH <jupiter.hce@gmail.com>, Yocto Project <yocto@yoctoproject.org>
Subject: Re: System service
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
X-List-Received-Date: Fri, 03 May 2019 08:29:01 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 3, 2019 at 10:22 AM JH <jupiter.hce@gmail.com> wrote:
>
> Hi Andreas,
>
> > In cases like these:
> >
> > * expecting sytemd starting service automatically
> > * something went wrong
> >
> > I ask systemd for it with 'systemctl status <service>'
> >
> > So what does 'systemctl status ofono' say?
>
> You right, it was aborted, but it had no problems to be started
> manually, a little mysterious, need further investigation. Thanks
> Andreas.
>
> # systemctl status ofono
> =EF=BF=BD=EF=BF=BD=E2=97=8F ofono.service - Telephony service
>    Loaded: loaded
> (8;;file://solarevk/lib/systemd/system/ofono.service/lib/systemd/system/o=
fono.service8;;;
> enabled; vendor preset: enabled)
>    Active: failed (Result: exit-code) since Fri 2019-05-03 01:01:04 UTC; =
7h ago
>   Process: 218 ExecStart=3D/usr/sbin/ofonod -n (code=3Dexited, status=3D1=
/FAILURE)
>  Main PID: 218 (code=3Dexited, status=3D1/FAILURE)
>
> May 03 01:01:01 solarevk systemd[1]: Starting Telephony service...
> May 03 01:01:01 solarevk ofonod[218]: oFono version 1.24
> May 03 01:01:01 solarevk systemd[1]: Started Telephony service.
> May 03 01:01:03 solarevk ofonod[218]: Aborting (signal 11) [/usr/sbin/ofo=
nod]
> May 03 01:01:04 solarevk systemd[1]: ofono.service: Main process
> exited, co=EF=BF=BD=EF=BF=BD=E2=80=A6LURE
> May 03 01:01:04 solarevk systemd[1]: ofono.service: Failed with result
> 'exi=EF=BF=BD=EF=BF=BD=E2=80=A6de'.
> Hint: Some lines were ellipsized, use -l to show in full.
>
> # systemctl status ofono
> =EF=BF=BD=EF=BF=BD=E2=97=8F ofono.service - Telephony service
>    Loaded: loaded (8;;file://solarevk/lib/systemd/system/ofono.service/li=
b/syst)
>    Active: active (running) since Fri 2019-05-03 08:18:59 UTC; 2s ago
>  Main PID: 275 (ofonod)
>    CGroup: /system.slice/ofono.service
>            =EF=BF=BD=EF=BF=BD=E2=94=94=EF=BF=BD=EF=BF=BD=E2=94=80275 /usr=
/sbin/ofonod -n
>
> May 03 08:18:59 solarevk systemd[1]: Starting Telephony service...
> May 03 08:18:59 solarevk ofonod[275]: oFono version 1.24
> May 03 08:18:59 solarevk systemd[1]: Started Telephony service.
> May 03 08:19:00 solarevk ofonod[275]: Interface org.ofono.AllowedAccessPo=
in=EF=BF=BD=EF=BF=BD=E2=80=A6lt
> Hint: Some lines were ellipsized, use -l to show in full.

Accidentally I made this a private discussion - make it public again
so others with similar issues might not need to ask again :)

Andreas


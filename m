Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25175E00CC4; Tue, 31 Jul 2018 13:18:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f41.google.com (mail-oi0-f41.google.com
	[209.85.218.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA2D8E00CA1
	for <yocto@yoctoproject.org>; Tue, 31 Jul 2018 13:18:51 -0700 (PDT)
Received: by mail-oi0-f41.google.com with SMTP id y207-v6so30367580oie.13
	for <yocto@yoctoproject.org>; Tue, 31 Jul 2018 13:18:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=ShLnUkVCVUHFUfVgbKy7iCqcn9e8bcYzqGxeCB8nxtI=;
	b=Y5ow1xiOfyoZYZzSxklYkXcdm/V3ruEMEQ2T+GGZ80ZdRfG3MuWDBCKYhIIUTZFde3
	gSxOkW3sN3WzUqBxs6jCq/K7Pllcz/X6Ak7x9vkWAQfL+EoXcxkTr/LFswZ42QbO796i
	tPFRpxWaBySvNcBUCXSGsbT0jy3C7JS0XDVN0CRag7iFgD864MHcIuGmUhVDnjuWdlZ7
	ETMWrRMT8EqvgJvsGfsfF84yNlPq/NNphctIduSCB+QHGAbruqzTJGO/9mK0tGLU5gs8
	v3ypuDs92X05ojkAXGz5NeMXUH0OgIhVMkxttgHdVBzHk3Tl+OTvkAfcdWTQm1y/yn0n
	vpPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=ShLnUkVCVUHFUfVgbKy7iCqcn9e8bcYzqGxeCB8nxtI=;
	b=DE8c+m0LVQ0nGnGtdE+WnfMyoaLe6xnWlcHPMNd2/LNI7WZlIbhDHMY4fmSxzjcBq9
	rVGE0K4Mj0AbuyCc0a09CLPYx5oT6DWmTQsM1aO4A9CF0B7YLqFAgUPmDoMdnWRGiEoi
	J/lUpp/UnIjN/GGd40TkZV6b1TuvVhtqmEP97qODM5HmwU3GKQayTWTvJ/VgmoesR+yf
	L4azdFYu9Y+/Vds4y2dlrrX9w9uBpqneNEGZjk+7Kkg8p67ZETLrcGBCFnEdrOB2j9Oi
	ebB0kruSgWCR/PRX5dmAK1dYxcq3Na7/H9f59eqYRinF581lAZ1E/vkxjpU981hll6Wf
	bb4A==
X-Gm-Message-State: AOUpUlF62Apm5Pqnjurkg+jJdeVg0ly+3ZRZawLMwxTUknmg+M4wWqWh
	bRZfMEeQPzK8acTK0DiJbWmAVk4ooCU6LTn9WH6pcA==
X-Google-Smtp-Source: AAOMgpeuScfyVv4m1GFjgYEKYVZ7tpJTRU263LAntpfBwkHOdu4IBcWdXkq+6XgolyPUeZtdjZ8HQhEjDsCne91r6/0=
X-Received: by 2002:aca:f409:: with SMTP id s9-v6mr521532oih.102.1533068331009;
	Tue, 31 Jul 2018 13:18:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6845:0:0:0:0:0 with HTTP; Tue, 31 Jul 2018 13:18:30
	-0700 (PDT)
In-Reply-To: <VI1PR0501MB2320523BE7412E38D0AB4525B82F0@VI1PR0501MB2320.eurprd05.prod.outlook.com>
References: <VI1PR0501MB2320523BE7412E38D0AB4525B82F0@VI1PR0501MB2320.eurprd05.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 31 Jul 2018 21:18:30 +0100
Message-ID: <CAJTo0LawozrqGb4TsVFz+NzKyNGb-G96vYopsHNXvcJVj_DnDA@mail.gmail.com>
To: Erik Nellessen <enellessen@phoenixcontact.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Non-deterministic build error in package gcc-source
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
X-List-Received-Date: Tue, 31 Jul 2018 20:18:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Obvious short answer is do you actually need to use the archiver in
patched mode?  Changing to a different mode, or disabling the archiver
entirely, may solve this.

Long answer is this is most likely a race in the archiver, so filing a
bug with as many details as you can would be good.

Ross

On 30 July 2018 at 08:48, Erik Nellessen <enellessen@phoenixcontact.com> wr=
ote:
> We are building an operating system based on poky
> (f0ec7c8b2dc1797ba22c45653a5f182b63354092, bitbake: toaster: add 'Sumo' t=
o
> release selection).
>
>
> Sometimes (about 1 in 10 times) our build fails, because the task
> do_ar_patched fails for package gcc-source-7.3.0-7.3.0-r0.
>
>
> The short error message:
>
> 14:44:09 Exception: FileNotFoundError: [Errno 2] No such file or director=
y:
> '/home/jenkins/workspace/_Config_mguard_0.1.0_MG-254-QLU3J23WOWLZZG76AVHU=
5BVY3M7SIU3EOQQQSUQNOEXHTXRFTQMQ_2/build/qemux86-64_tmp/work-shared/gcc-7.3=
.0-r0/gcc-7.3.0/gcc/gengtype-lex.c'
> 14:44:09
> 14:44:09 ERROR: gcc-source-7.3.0-7.3.0-r0 do_ar_patched: Function failed:
> do_ar_patched
> 14:44:09 ERROR: Logfile of failure stored in:
> /home/jenkins/workspace/_Config_mguard_0.1.0_MG-254-QLU3J23WOWLZZG76AVHU5=
BVY3M7SIU3EOQQQSUQNOEXHTXRFTQMQ_2/build/qemux86-64_tmp/work-shared/gcc-7.3.=
0-r0/temp/log.do_ar_patched.43242
> 14:44:09 NOTE: recipe gcc-source-7.3.0-7.3.0-r0: task do_ar_patched: Fail=
ed
> 14:44:09 ERROR: Task
> (/home/jenkins/workspace/_Config_mguard_0.1.0_MG-254-QLU3J23WOWLZZG76AVHU=
5BVY3M7SIU3EOQQQSUQNOEXHTXRFTQMQ_2//mguard/poky/meta/recipes-devtools/gcc/g=
cc-source_7.3.bb:do_ar_patched)
> failed with exit code '1'
>
> I attached the full error message as a text file.
>
>
> Does anybody know this error message? Does anybody experience similar
> problems with non-deterministic build failure?
>
>
> Kind regards,
>
> Erik
>
> ..................................................................
> Phoenix Contact GmbH & Co. KG
>
> Sitz der Gesellschaft / registered office of the company: 32825 Blomberg
> USt-Id-Nr.: DE124613250
> Pers. haftende Gesellschafterin / personally liable partner: Phoenix Cont=
act
> Verwaltungs GmbH
> Amtsgericht Lemgo HRB 5273 / district court Lemgo HRB 5273
> Kom. Ges. Amtsgericht Lemgo HRA 3746 / limited commercial partnership
> district court Lemgo HRA 3746
> Gesch=C3=A4ftsf=C3=BChrer / Executive Board: Frank St=C3=BChrenberg (Vors=
itzender / Chief
> Executive Officer), Roland Bent, Prof. Dr. Gunther Olesch, Axel Wachholz
> ___________________________________________________________________
> Diese E-Mail enth=C3=A4lt vertrauliche und/oder rechtlich gesch=C3=BCtzte
> Informationen. Wenn Sie nicht der richtige Adressat sind oder diese E-Mai=
l
> irrt=C3=BCmlich erhalten haben, informieren Sie bitte sofort den Absender=
 und
> vernichten Sie diese Mail. Das unerlaubte Kopieren, jegliche anderweitige
> Verwendung sowie die unbefugte Weitergabe dieser Mail ist nicht gestattet=
.
> -------------------------------------------------------------------------=
---------------------------
> This e-mail may contain confidential and/or privileged information. If yo=
u
> are not the intended recipient (or have received this e-mail in error)
> please notify the sender immediately and destroy this e-mail. Any
> unauthorized copying, disclosure, distribution or other use of the materi=
al
> or parts thereof is strictly forbidden.
> ___________________________________________________________________
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


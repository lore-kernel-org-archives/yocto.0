Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07269E00C71; Thu, 14 Feb 2019 15:08:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.169 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
	[209.85.222.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23D84E0048C;
	Thu, 14 Feb 2019 15:08:04 -0800 (PST)
Received: by mail-qk1-f169.google.com with SMTP id x9so4689755qkf.0;
	Thu, 14 Feb 2019 15:08:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=6B+S7KZfoCcrihmpcvDwATSthpgP7N07qW6opytQcgY=;
	b=q4kwCo3GS2KrqyYxuDIcL+/IJmI3YvKAnH1MO0T3VAXzzS9wIbmkJdE5K8RUuYn3Q0
	OpFwWbI3PKL9R1Df/gFLvpnEOd08VydGb7pMtI0mAgPdCmla1nN5kLVkHVhZ1ctv2+SK
	uQhYS3vYfEHWh2yoyQ3uFhKxHybM952+fkft9hBuqyB1vgPDFxV//u2DxHBmswWb1MVD
	mrEBC9kjznnavSa8hq3UxwobBGUH7mimp3gBVBH/K8TPVNcVSX/udQCm3aXGjO1cflEl
	l0SS8Wezzj10/iADZKPVFPUNFkcb18I1Nf/UQff+VXXiDRbMTyt+hctmk8fw8sXbJaet
	vl+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=6B+S7KZfoCcrihmpcvDwATSthpgP7N07qW6opytQcgY=;
	b=Hj77b1e7Aw9nxQnDY5sxrCyfb37xLTuIWs2aMOW+luxqHHZqHqPmBNjaPhQnes4IuM
	9OivTTKEDjv98+htDQ9YQBj8H1GQQwY5brQPLjo64wdXND+zr/A9z1IHWctzZUKbAU8F
	N5TieNTwAlgytAvV9j3ETGQImO9yhGhxyBMyLWQaTd97MttxqE6TxesZFJHT5p9QyMxF
	T5vdFLhqntqWXnZlkfUYitgRp5dLFh3LeC3wLLjBWeGINHyzEwga6kE8uDtA0wW34bfc
	0Qm+YNF+yL6wHdbW8zIg2mfsGeaQIXcjG4SfAAkSA9lszOp5u3LUJuvFVmcjR0lFggV+
	fpOw==
X-Gm-Message-State: AHQUAuZympTVGEV36O0idrcnMLHzR4zY35WScPU7uZYAyjybEiDIPznQ
	rVsX0TWv05x/Rf5wXClOTRNu2YXklXAJ6AO2Grc=
X-Google-Smtp-Source: AHgI3Ibp01P4jbT0xvAA5ZBNEVv0SmMIq1DzHIHDD+daU/wMHZoY78ojvRy0jLO0XiDr2JGzW9v7Bd28R+YOjk2MayY=
X-Received: by 2002:a37:9585:: with SMTP id x127mr4831239qkd.315.1550185684257;
	Thu, 14 Feb 2019 15:08:04 -0800 (PST)
MIME-Version: 1.0
References: <VI1PR08MB33751690D8A189D395F63C53F5660@VI1PR08MB3375.eurprd08.prod.outlook.com>
In-Reply-To: <VI1PR08MB33751690D8A189D395F63C53F5660@VI1PR08MB3375.eurprd08.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 14 Feb 2019 15:07:38 -0800
Message-ID: <CAMKF1sp4J6vDTYz9w+-M5nK7vCu-sEsDSE9CFC6H8N+83FO9xA@mail.gmail.com>
To: Johann Obermayr <johann.obermayr@sigmatek.at>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"yocto-bounces@yoctoproject.org" <yocto-bounces@yoctoproject.org>
Subject: Re: Toolchain , kernel-dev and xenomai
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
X-List-Received-Date: Thu, 14 Feb 2019 23:08:07 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 13, 2019 at 2:43 AM Johann Obermayr
<johann.obermayr@sigmatek.at> wrote:
>
> Hello,
>
>
>
> At this time we work with 1.3.2 (yes, it=E2=80=99s very old, but we are w=
orking to change to v2.5.x)
>
>
>
> We have some trouble with your toolchain.
>
> Kernel/scripts/basic/fixdep   is missing.
>

this looks more like a kernel build error. Which version of kernel are you =
on?

> If I will compile in the toolchain kernel source directory =E2=80=9Cmake =
scripts=E2=80=9D I get some other errors (see b) )
>
>
>
>        b) Xenomai integrates its files as linked. And this links are inst=
alled with the toolchain. So the files are not really available.
>
>
>
>
>
> Thanks & Regards
>
>   Johann
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


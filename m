Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C4A8E01426
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2012 22:48:46 -0700 (PDT)
Received: by eaab16 with SMTP id b16so586954eaa.35
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2012 22:48:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=189xRIUTVm4rzI+7emcWGH2nbeCH43+/q/03LE2RHio=;
	b=VNbu1q/sgq6gPKmn9DSqe7UrQ/Ycq3/90DGPA2W1obywrmMRFXUZJi+gdnFwqeviye
	aovEIDj1oftJN2UwQWlNip5pVm9H2Ss26a7iw7405ymMlIf1JC8roLcZsFTyb/QOWtK3
	TMbZwPJeIVivstdjKFj9MeOTYNq8odOvJ/tUHUbHD8eIKm2yvxt1HH1ja8nxYPx1M/Jq
	R/0hp9Q1c9yIQ0ntscZ+/iIivuoWp9DEo3H4+qkAb6GDNDxMdUsZEg0+d6s8slWaHOOo
	9Jr83aUWTbo+g2z6jHBEK9FaTQDrEoxWyEkOO35v8XR+wN3p2Xu6QWVdnpcdrTTwQ4Vv
	MFLQ==
Received: by 10.14.37.76 with SMTP id x52mr175180eea.102.1340344125218; Thu,
	21 Jun 2012 22:48:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.219.71 with HTTP; Thu, 21 Jun 2012 22:48:14 -0700 (PDT)
In-Reply-To: <3ED83A9DB3B6D94CA68BF7C03F2981D35B18D9EDE8@EXDCVYMBSTM006.EQ1STM.local>
References: <3ED83A9DB3B6D94CA68BF7C03F2981D35A844F357F@EXDCVYMBSTM006.EQ1STM.local>
	<4F825F65.4040706@windriver.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35AE63C1B69@EXDCVYMBSTM006.EQ1STM.local>
	<CADkTA4PnNWTbtpzVu=Qhegg87Ai=XNXgH5VD6c7mCK=BYj3dgg@mail.gmail.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35B042416CC@EXDCVYMBSTM006.EQ1STM.local>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35B042416CF@EXDCVYMBSTM006.EQ1STM.local>
	<4F9E9DD5.5080601@windriver.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35B042416D2@EXDCVYMBSTM006.EQ1STM.local>
	<4FA27A40.6080506@windriver.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35B042416D3@EXDCVYMBSTM006.EQ1STM.local>
	<4FA66F02.3080107@windriver.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35B1897B1D2@EXDCVYMBSTM006.EQ1STM.local>
	<4FBD2998.5060407@intel.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35B1897B1D3@EXDCVYMBSTM006.EQ1STM.local>
	<4FE317F5.1000400@mlbassoc.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35B18D9EC2E@EXDCVYMBSTM006.EQ1STM.local>
	<4FE32F95.8000801@mlbassoc.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35B18D9EDE8@EXDCVYMBSTM006.EQ1STM.local>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 21 Jun 2012 22:48:14 -0700
Message-ID: <CAMKF1sosEk23cc=GKxH7KinhPUNwhsdhPKkFHjYybPezZJrmSQ@mail.gmail.com>
To: Om Prakash PAL <omprakash.pal@stericsson.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Porting of specific Kernel/Driver into yocto.
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
X-List-Received-Date: Fri, 22 Jun 2012 05:48:46 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 21, 2012 at 10:37 PM, Om Prakash PAL
<omprakash.pal@stericsson.com> wrote:
>
>>> and then console got =C2=A0stuck.
>>
>>> What do you have SERIAL_CONSOLE set to in your configuration?
>>
>> I have set SERIAL_CONSOLE=3D"115200 ttyAMA2". As we are using ttyAMA2 fo=
r console.
>
>>What is your target device? =C2=A0Do you really have /dev/ttyAMA2 serial =
port??.
>
> Yes, I have /dev/ttyAMA2 serial port.

Can you try using say poky/master and generate root file system and
try that out ?
another option is to try core-image-core


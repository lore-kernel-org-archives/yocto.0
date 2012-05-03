Return-Path: <raj.khem@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42260E0044D
	for <yocto@yoctoproject.org>; Thu,  3 May 2012 10:02:41 -0700 (PDT)
Received: by lboj14 with SMTP id j14so1130293lbo.35
	for <yocto@yoctoproject.org>; Thu, 03 May 2012 10:02:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=ma9Ri2nxFDtaTdZYgYXX3Xwvx9WgPQNAg/Q92h1gBJk=;
	b=ZwbEIpmn00smA5loA2CKdSt/jgnbKclYO1D58sh3mDrg6XdKlQKixshUzhS3RKPZQk
	JWc8/4RB6D38Q/fPAEYKpgOi7YzQqkPkUpjSjZTlYl0DBnGjG7AjjQkAOkN3Dnvz1CjD
	Rsrz0wxnb6JMS2yccMrThY4tuu43U+ttXe+yPm+HtVUvL4CLc9+cI6eUwUazswy2p/Wh
	+Y8YQz9FU/Rx8UodYJgTu843GCyhqmDTNxKNsGe25iM1Xpd9iphi6TPmiLr8ZO7pve4u
	bq43GNC2DN0dfgjwjvpINWCAvwrj5B2WQGHyblAd+2tos2IDrWISjT5tM5OF17Nma3/4
	tGPA==
Received: by 10.152.111.198 with SMTP id ik6mr2712579lab.38.1336064559981;
	Thu, 03 May 2012 10:02:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.152.129.134 with HTTP; Thu, 3 May 2012 10:02:08 -0700 (PDT)
In-Reply-To: <7513B431-B65B-4ADC-AAA3-9C54F9A37028@gmail.com>
References: <7513B431-B65B-4ADC-AAA3-9C54F9A37028@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 3 May 2012 10:02:08 -0700
Message-ID: <CAMKF1srm-fj99U6cMF-FWM_RWBWjPAQYyPJM2Zr4n0dRnXwJuQ@mail.gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: ERROR: ParseError at /tool/yocto/poky-extras/meta-linaro/recipes-devtools/gcc/gcc-4.5.1.linaro.inc:1: Could not include required file recipes-devtools/gcc/gcc-4.5.1.inc
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
X-List-Received-Date: Thu, 03 May 2012 17:02:41 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, May 3, 2012 at 9:25 AM, Elvis Dowson <elvis.dowson@gmail.com> wrote=
:
> =C2=A0 /tool/yocto/poky-extras/meta-linaro \

I think you should remove above layer from BBLAYERS


Return-Path: <twoerner@gmail.com>
Received: from mail-we0-f169.google.com (mail-we0-f169.google.com
	[74.125.82.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A33ACE013DE
	for <yocto@yoctoproject.org>; Mon, 29 Apr 2013 05:44:10 -0700 (PDT)
Received: by mail-we0-f169.google.com with SMTP id p43so5613640wea.28
	for <yocto@yoctoproject.org>; Mon, 29 Apr 2013 05:44:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=jMEay79I6XRnVlwtghRv4oauiNrERzShesIFi0/tuAA=;
	b=yAQFS7mp46P8RRhOrjZAMci50FXtMnSV8payHoN0GZcYrdeiU1mQ6Ztcxp11eM6g/7
	4Li+H8fA0bOLst9KTMNzyYDtwnurlnZn15NcFhjOAyinXmYl+zqXZuCEgTIvXs8oDcqQ
	ReYdrOCLxezJhfwUXr6NYQk8Be/2QywD4RuRsMHg8YrQiREa9Dl49lLzEg1c25KmX9u/
	/4VTnqwxBdOqRVyk+fhZgVaWMjlZTPhulTiSJ+IZLs/MtvbKTnnGnIDkqzEQDNjNCYKi
	ygs82yrAk/ZDd2CPpUCbXOjRo+B4gJMBLT/ufa2DszFGfYkjtNt5+mVRdmtKh5N4LyeJ
	gNsw==
MIME-Version: 1.0
X-Received: by 10.194.10.129 with SMTP id i1mr2758606wjb.21.1367239449340;
	Mon, 29 Apr 2013 05:44:09 -0700 (PDT)
Received: by 10.194.5.132 with HTTP; Mon, 29 Apr 2013 05:44:09 -0700 (PDT)
In-Reply-To: <5560552.0ejHhnttl9@helios>
References: <CAAGt+t04eUOBF3ZXeGVGatFh3V-vB3GWJ+JNtiWtH49hYUTUFw@mail.gmail.com>
	<CAAGt+t2_5LUQD9Rnq9B-_7ou1=_Wj+N6qq8o6-88uoSdVwWFVg@mail.gmail.com>
	<c46460b7-9c66-40f3-9a1c-1be602fb0172@email.android.com>
	<5560552.0ejHhnttl9@helios>
Date: Mon, 29 Apr 2013 08:44:09 -0400
Message-ID: <CAHUNapSd7RtskweSWoCvv+x21QTqVtcq2sq_==7maZ1PUfcnAA@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Zafrullah Syed <zafrullahmehdi@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: poky: Bitbake nothing provides error
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
X-List-Received-Date: Mon, 29 Apr 2013 12:44:11 -0000
Content-Type: text/plain; charset=ISO-8859-1

Another option is to start over again following these instructions:

https://github.com/gumstix/Gumstix-YoctoProject-Repo/blob/master/README.md


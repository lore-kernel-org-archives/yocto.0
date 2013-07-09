Return-Path: <paul.betafive@gmail.com>
Received: from mail-ve0-f172.google.com (mail-ve0-f172.google.com
	[209.85.128.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35C93E00715
	for <yocto@yoctoproject.org>; Tue,  9 Jul 2013 03:36:23 -0700 (PDT)
Received: by mail-ve0-f172.google.com with SMTP id jz10so4488369veb.17
	for <yocto@yoctoproject.org>; Tue, 09 Jul 2013 03:36:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=zBGLWOSyDuoJipsb4Gwxkq6K20hXT0blP4kqFw3kpVw=;
	b=fvcBbCbMZ5O8JCHiIOvXRre2VcPWzq5Actxd6sT8/m02fVLzyvOAHEKYMxUqH9Mn1L
	LnUBRoeQMTgzy9gx5zwh1ng8cc2T7XHhYwbtJvclxxj7dprafguc+GqoiE83ARFd3nLi
	jBtiiXY/XZQ9I1AyTJEiVev4FPoNaxXN9QvOhHII6E+2geQ7ZOQeyjyQljiN37lpXp1G
	ebXnb2e1Uiam3vg1Nfo1UINO6H6RA2rq7nDeu9inpGE+dUi+n3M5+PWr93WKyALOALq8
	9thcZe4ir3cpYsJA4Bplo8WjsjMuvONbJGFW4hMiHv8BRqBiXOkHnMFGPagt6UITxvqh
	sOiw==
X-Received: by 10.220.162.200 with SMTP id w8mr15978892vcx.90.1373366182739;
	Tue, 09 Jul 2013 03:36:22 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.195.201 with HTTP; Tue, 9 Jul 2013 03:35:42 -0700 (PDT)
In-Reply-To: <CE0199EC.2D583%belen.barros.pena@intel.com>
References: <CAJTo0LaoiT4=q2f51NH3UFt50c7D5-gVLZJcjs91vaGGNDRG5Q@mail.gmail.com>
	<CE0199EC.2D583%belen.barros.pena@intel.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Tue, 9 Jul 2013 11:35:42 +0100
X-Google-Sender-Auth: pKLlbSE4f-VxgzooOE7YaXyNf4s
Message-ID: <CANyK_8e+0BLNcfbTcXWt-oHn9-Mh+K+PNddjPfw-Uu+42aWxqA@mail.gmail.com>
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: naming .bb files
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
X-List-Received-Date: Tue, 09 Jul 2013 10:36:26 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 9 July 2013 11:27, Barros Pena, Belen <belen.barros.pena@intel.com> wrote:
> Thanks Ross!
>
> I've tried a .bb file name with capital letters and Hob is not liking it
> at all. So it looks like uppercase might also be a problem.
>

This is from memory and a month or so back but I think the problem
with capital letters is that opkg rejects .ipk files with capital
letters. I didn't have any problems with it when producing .deb files.

--
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk


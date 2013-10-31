Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f175.google.com (mail-ie0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA847E017D3
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 09:24:20 -0700 (PDT)
Received: by mail-ie0-f175.google.com with SMTP id aq17so5272775iec.20
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 09:24:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=z+cwA03uq4X0RDMu1ZZjRJGzon9dns5JRphSDtdwBYY=;
	b=TIcT/0ybu0/g69JBTFVx8xRTl7ddNe6v0p3VRBcEZ9c3izWPQswt8c61/oBc5UWekr
	SFu+00grQ8QxBGbqWAloLdsBH5wAFpJm4/VdBn/2h7nnhjoz0YIrGgMATKY9AP66Fh7M
	6oFWCMnTUsL7SsjG4Y1jINJ8PsnqVuWzAsQ9ndbQrjgsf3/GY6PPSRDwhx3/Z6ixpErE
	RMM3GmERzWKyuE2muV2d7Dq518xZqFa2RoEYXzf995IZR0xlwUOjWFI1JdzkvSld3jCZ
	ZR62ibByn0Rd/9MCmg0yerbNOYBnGnMdW5J4bi0qH7zcEIqK+GP76yHfsip1/Fk12GPX
	wMCg==
X-Received: by 10.50.23.103 with SMTP id l7mr167866igf.3.1383236659970; Thu,
	31 Oct 2013 09:24:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.219.195 with HTTP; Thu, 31 Oct 2013 09:23:49 -0700 (PDT)
In-Reply-To: <CANwz6nzjixVwB1Q=nJ6JCQCJOw-uJe7edmC4gn+FVZ9mK8_-6A@mail.gmail.com>
References: <CANwz6nxT34jJGydYGe=snHHijwMdMOKdOgnxQWCp0KGkBN4OHw@mail.gmail.com>
	<CAMKF1spw=Kr99nmVHjAw8PELK6E768RBpgxLCZFMcdMyConSEg@mail.gmail.com>
	<CANwz6nyYTVxmNfxK2kK0Z54uDw+Yq=RRTzmpXvJz19MDCB47MA@mail.gmail.com>
	<CAMKF1spP+BYrodrAoWzO=ZCfDqhpN=1-BnmDMr80-_f+pupdtQ@mail.gmail.com>
	<CANwz6nzjixVwB1Q=nJ6JCQCJOw-uJe7edmC4gn+FVZ9mK8_-6A@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 31 Oct 2013 09:23:49 -0700
Message-ID: <CAMKF1srnJLpErc_xjcQOXRTsjM38EaZ8jqHMKpUveumGj1x1XA@mail.gmail.com>
To: Edward Vidal <vidal.develone@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: adding a udev entry for a camera
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
X-List-Received-Date: Thu, 31 Oct 2013 16:24:21 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 31, 2013 at 8:45 AM, Edward Vidal <vidal.develone@gmail.com> wrote:
>
> Do I add RUN+="/bin/mknod /dev/video0 c 81 0" see below new version of
> 1--c920.rules
> cat 10-c920.rules
> SUBSYSTEM=="video4linux", BUS=="usb", ATTRS{idvendor}=="0x046d",
> ATTRS{idProduct}=="0x082d", NAME="video0", MODE:="0660", RUN+="/bin/mknod
> /dev/video0 c 81 0"

get rid of BUS construct there


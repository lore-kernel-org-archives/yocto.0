Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f177.google.com (mail-ve0-f177.google.com
	[209.85.128.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7307FE01439
	for <yocto@yoctoproject.org>; Tue,  7 May 2013 11:52:14 -0700 (PDT)
Received: by mail-ve0-f177.google.com with SMTP id jw11so929491veb.22
	for <yocto@yoctoproject.org>; Tue, 07 May 2013 11:52:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=e0GVOdj1gGdP3bpvKObRPLPjmRQEFfcrvNbzjWpDQNg=;
	b=n/sseoijbNDA0ATlkymJ0uJlArXiL/jS2Wefsib0OCrhlQ8egzWJLFH0cDXf0BeC+8
	tLfj1IZW9Je5ZZEw35RngtnTU4/O73vGzMiBtiP82gp29XC77mwrk4USjY/uCA1gqSBv
	O81SxCy5f1iaJX3QMv0dkczDqsQOLHUOj9rrKnwd2yN8CTFXYZDLjFEcJlyL/x7NUK/Y
	WojCCCoOYmbv1IxGNpIzjZsCPyOpQ2V6a6WSJuXCQJnotHo1n+T/Bt1K2pjFVjmCkpho
	/RB4hmL27K/6HTXhSpiW8YdA+tAFPBKjIS8Sdqx9WLA6x7Dv4esDBGIwpofRCQEk+XVu
	pSCA==
X-Received: by 10.58.255.229 with SMTP id at5mr752987ved.44.1367952733422;
	Tue, 07 May 2013 11:52:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.221.8.3 with HTTP; Tue, 7 May 2013 11:51:52 -0700 (PDT)
In-Reply-To: <23c0c78e3de800ff998f3cc987ca51a1@fiskare.de>
References: <23c0c78e3de800ff998f3cc987ca51a1@fiskare.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 7 May 2013 19:51:52 +0100
Message-ID: <CAJTo0LZsK6a2+Te2VCkVhfvV7LA5UcOiPdW2ViiJqfBUBsUR2Q@mail.gmail.com>
To: Felix Fischer <felix@fiskare.de>
X-Gm-Message-State: ALoCoQl/ue6u4K0NEJPgoBQ+lJQFkOfbGXRlirpg1u4QCoA9oMfgBBl1ArKxrmMg4sJxF8xvevw0
Cc: yocto@yoctoproject.org
Subject: Re: Antwort: Re: booting with systemd fails with poky 9.0.0 & meta-ivi 4.0 & meta-intel master
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
X-List-Received-Date: Tue, 07 May 2013 18:52:14 -0000
Content-Type: text/plain; charset=UTF-8

On 7 May 2013 17:13, Felix Fischer <felix@fiskare.de> wrote:
> The last two lines I get are
>
> systemd-udev[48]: starting version 199
> Waiting for removable media...

It's possibly waiting for the automounter to run, but it's not
installed.  Check that udev-extraconf is installed in your
rootfs/initramfs or whatever is booting.  core-image-minimal-initramfs
does, but I've no idea if the IVI images pull it in explicitly as we
recently removed it as a universal recommendation in systemd/udev.

Ross


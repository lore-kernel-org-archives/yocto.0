Return-Path: <twoerner@gmail.com>
Received: from mail-wi0-f178.google.com (mail-wi0-f178.google.com
	[209.85.212.178]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 81785E006C3
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2013 17:02:00 -0800 (PST)
Received: by mail-wi0-f178.google.com with SMTP id o1so809750wic.17
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2013 17:01:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=pDBk1su3dv7QIyLvkcNIw2ZFnNVCIfRmDWeUnmUClHQ=;
	b=RNFdXCaB5cBHChzTI7avZqHxbXEEq010Ow1il6QD245Z6BQ9jIE8sgLGYqlgZFaA3l
	YrvPeJzdRTNHrXbY7mExDgwLMKGVuv2hsXGwJcQve35GAJFLAm0dYs3Yq60SAC/0PJrE
	bDfg6bhnxBsL6eZ0w6/8f5vZJsh7u1/FC3Wcww5Do7id75cJW/Ro339LBtmPTHL+fPKp
	f5c+i5D/GpO7s85kOlh4AlqVCOqtjWeyXfj5icOwZdiRbmEW/YzUSHSljPq1gYj8e4rp
	6rzEHoNVcsp1dBKM+BOg0VH8erE6NRY389QrOATuMscxFMjD/jCdwd0DHxly2mr9QpPI
	4uTA==
MIME-Version: 1.0
X-Received: by 10.180.77.9 with SMTP id o9mr6450187wiw.16.1360717318182; Tue,
	12 Feb 2013 17:01:58 -0800 (PST)
Received: by 10.194.36.228 with HTTP; Tue, 12 Feb 2013 17:01:58 -0800 (PST)
Date: Tue, 12 Feb 2013 20:01:58 -0500
Message-ID: <CAHUNapSm1V6thRmYzNX-Z7PwohFUs=R6ruqiWYFCdhHtdMJ3cA@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: package list for image build
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
X-List-Received-Date: Wed, 13 Feb 2013 01:02:00 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi everyone,

I've looked at Tim's cheat sheet and Robert's FAQ but I can't seem to
figure out if there is a simple way to get bitbake to list the
packages that will be included in the build of a given image.

$ bitbake <magic> core-image-minimal
<list of packages included in core-image-minimal image including
anything added in local.conf>

Am I overlooking something obvious?

Best regards,
    Trevor


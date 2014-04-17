Return-Path: <mahyar@boundarydevices.com>
Received: from mail-la0-f47.google.com (mail-la0-f47.google.com
	[209.85.215.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4533FE00C1E
	for <yocto@yoctoproject.org>; Thu, 17 Apr 2014 16:48:07 -0700 (PDT)
Received: by mail-la0-f47.google.com with SMTP id pn19so892368lab.6
	for <yocto@yoctoproject.org>; Thu, 17 Apr 2014 16:48:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=0WYMPHtsgHsVGhrX+mqP+4h71VTZbzdtmGUGz6Sfer0=;
	b=ly+/dKLMdHoXGZkii6uK3Nmstg9MulDYu8B8in0MDS2DxeejKJLYmUk8jc7wPYkwqu
	RkU45N5GiZoxtqdyK3/kCSOFypIY21z2aKwwQZ33lpg8tLIiJBdJpNRKvPOVN3+W6yKJ
	wsZf8dYveBVfmj37MFjBhhiqSaxlXgEav0+v6qyWqUrDXjaHB4lzvUxbwA9AE1olQigy
	affxx/TrLc6/38NA9gL7Lwy+wlCtdVKR+kDvsKydFngyDy2IYsRnwKCit7PATLaEchEq
	QBuadNNVSgh4Tc3kTnMBTDGInvfdFecCY62sYUiV6hCVPZWMT79Kl+MILqEmfrI9jNma
	XrQA==
X-Gm-Message-State: ALoCoQlsIH3U/PLzG/zAQNiLGbf0tgAWJstUaSHkK2ljPM499S151VmG5Hjk9qmtLpieiWKJQilO
MIME-Version: 1.0
X-Received: by 10.112.118.198 with SMTP id ko6mr8744448lbb.6.1397778486172;
	Thu, 17 Apr 2014 16:48:06 -0700 (PDT)
Received: by 10.112.88.164 with HTTP; Thu, 17 Apr 2014 16:48:06 -0700 (PDT)
Date: Thu, 17 Apr 2014 16:48:06 -0700
Message-ID: <CAOJo16W3sQ2MqvYFCDrNB_vPv_bow7vKysXL69ZutuwevxkWYA@mail.gmail.com>
From: Mahyar Yaghmaee <mahyar@boundarydevices.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: ROOTFS_POSTPROCESS_COMMAND warning
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
X-List-Received-Date: Thu, 17 Apr 2014 23:48:08 -0000
Content-Type: multipart/alternative; boundary=047d7bfd022a24b2bf04f745aaf4

--047d7bfd022a24b2bf04f745aaf4
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I'm trying to run a post processing shell command using
ROOTFS_POSTPROCESS_COMMAND by adding ROOTFS_POSTPROCESS_COMMAND += "
*shell_command*;" at the end of an image recipe.
I get:
WARNING: Function *shell_command* doesn't exist

Any ideas what's the problem here?

Regards,
Mahyar

--047d7bfd022a24b2bf04f745aaf4
Content-Type: text/html; charset=ISO-8859-1

<div dir="ltr"><div><div><div><div><div>Hi,<br><br></div>I&#39;m trying to run a post processing shell command using ROOTFS_POSTPROCESS_COMMAND by adding ROOTFS_POSTPROCESS_COMMAND += &quot;<i>shell_command</i>;&quot; at the end of an image recipe.<br>
</div>I get:<br>WARNING: Function <i>shell_command</i> doesn&#39;t exist<br></div><br></div>Any ideas what&#39;s the problem here?<br></div><div><br></div>Regards,<br>Mahyar<br></div>

--047d7bfd022a24b2bf04f745aaf4--

Return-Path: <zafrullahmehdi@gmail.com>
Received: from mail-wg0-f51.google.com (mail-wg0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17218E008B6
	for <yocto@yoctoproject.org>; Wed,  8 Jan 2014 15:54:43 -0800 (PST)
Received: by mail-wg0-f51.google.com with SMTP id z12so1955162wgg.30
	for <yocto@yoctoproject.org>; Wed, 08 Jan 2014 15:54:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=22CPzvM1WieQOitcbTZNQ6jfbg8dYi/MbnMlgRLJiUM=;
	b=OhVdich7M8MStVi7FgF9Id/CSCh0dWDPipZVuw4VXKZBnDR2zx7He03volKheP/O2F
	WuVBcGI8ec+k4EuYxgNrVE7TgRQHDOR+ForVMnX+/k2M953shXByiJmBEYSeGXolm0wv
	TqNfLggxg5WnyvyCO+oXO5hh07UN8p/qlEAMYoX3V1uBjgBRJueOGKIOLWAWwmNohIzf
	LGo79GBGK49E/I4txWDUzKi9LFAKUdvVF5lXtSUK/InUsoRRXtiAK9mmLNDWjmSzC1ew
	aHUqdT40/OQ4Nylw/8emX8DdT1GoH7aXf6zXCUJVkvq3d8ie6R3T0hDwz4u3YXqNTCRY
	YJFQ==
X-Received: by 10.180.212.98 with SMTP id nj2mr499991wic.52.1389225281937;
	Wed, 08 Jan 2014 15:54:41 -0800 (PST)
MIME-Version: 1.0
Received: by 10.194.59.146 with HTTP; Wed, 8 Jan 2014 15:54:21 -0800 (PST)
From: Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Thu, 9 Jan 2014 00:54:21 +0100
Message-ID: <CAAGt+t09E7q1G8tunvq1BtcZmH7P85R+kqNqhhU6YhjWuK92Xg@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: exception MalformedUrl error
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
X-List-Received-Date: Wed, 08 Jan 2014 23:54:44 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

I tried to apply a patch directly to linux-gumstix_3.5.7.bb and kept
.patch file in
/yocto/poky/meta-gumstix/recipes-kernel/linux/linux-gumstix-3.5/
directory along with other patches, and ran bitbake
gumstix-console-image.

Output:

ERROR: ExpansionError during parsing
/home/zaif/yocto/poky/meta-gumstix/recipes-kernel/linux/linux-gumstix_3.5.7.bb:
Failure expanding expression ${@bb.fetch.get_checksum_file_list(d)}
which triggered exception MalformedUrl: The URL: 'missing' is invalid
and cannot be interpreted
ERROR: Command execution failed: Exited with 1

I removed the patch file and patch entry from linux-gumstix_3.5.7.bb,
then ran bitbake gumstix-console-image, I get the same error.

I then ran

bitbake -c cleansstate linux-gumstix-3.5
bitbake world
hob

All of these returned the same error:

ERROR: ExpansionError during parsing
/home/zaif/yocto/poky/meta-gumstix/recipes-kernel/linux/linux-gumstix_3.5.7.bb:
Failure expanding expression ${@bb.fetch.get_checksum_file_list(d)}
which triggered exception MalformedUrl: The URL: 'missing' is invalid
and cannot be interpreted
ERROR: Command execution failed: Exited with 1

I am trying to add this patch: http://pastebin.com/W3S6hW0M

Did I messed up something ?

-- 
Regards,
Zafrullah Syed


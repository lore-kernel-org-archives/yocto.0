Return-Path: <ajlennon@gmail.com>
Received: from mail-wg0-f42.google.com (mail-wg0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44A6DE008FF
	for <yocto@yoctoproject.org>; Thu, 27 Feb 2014 13:48:11 -0800 (PST)
Received: by mail-wg0-f42.google.com with SMTP id x13so3379922wgg.1
	for <yocto@yoctoproject.org>; Thu, 27 Feb 2014 13:48:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id;
	bh=XKHgfS+8QXksFkag+rqw+iJYM10Cim18vzmijkCXNko=;
	b=S7angbHJly9vaA9LHQWWWYwTkbxG+WPdK3obJWOT0+7CZPjezuHE5xKQxfNy35sDra
	uDe1zp4mddYbEZFJ9zUPTi2rhMFXltN0ncfe1z/ocXWEeUA5FNCaFNyINXTo4iRaN7ja
	28ENi24Msynjg7hB6wCbSMr5zIcepFuI8GoPkf/7/JsCbEeBn4FKAGavBZPt9+BSNNOt
	ds2D9cZwkrxpJqNkuFJKWQaxm7MV0QKrMZi06a2cxCjilBjv54Rz8IiLZu/hzM6mLyOT
	A1EBMRXlrMEDmreStTxFB87IFz0Pp5UN8P++uWCsFr+dmrNLSQVKf+jCMQPkduPuGvq8
	9XWA==
X-Received: by 10.180.77.74 with SMTP id q10mr144535wiw.39.1393537689576;
	Thu, 27 Feb 2014 13:48:09 -0800 (PST)
Received: from localhost.localdomain
	(cpc32-live22-2-0-cust59.17-2.cable.virginm.net. [82.36.253.60])
	by mx.google.com with ESMTPSA id lz3sm78367wic.1.2014.02.27.13.48.07
	for <yocto@yoctoproject.org>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 27 Feb 2014 13:48:07 -0800 (PST)
Sender: Alex Lennon <ajlennon@gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
To: yocto@yoctoproject.org
Date: Thu, 27 Feb 2014 21:47:39 +0000
Message-Id: <cover.1393537481.git.ajlennon@dynamicdevices.co.uk>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-mono] [PATCH 0/1] mono-xsp: Update to 2.10
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
X-List-Received-Date: Thu, 27 Feb 2014 21:48:12 -0000

See following patch for details

The following changes since commit 8bc61051cafd1d12cef3111132a50ebdd87640a2:

  gtk-sharp, libgdiplus mono-helloworld, mono: Removed extraneous PR variables from upgraded recipes (2014-02-27 17:16:14 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/meta-mono ajl/mono-xsp
  http://git.yoctoproject.org/cgit.cgi/meta-mono/log/?h=ajl/mono-xsp

Alex J Lennon (1):
  mono-xsp: Updated to 2.10

 recipes-mono/mono-xsp/mono-xsp.inc      |   33 +++++
 recipes-mono/mono-xsp/mono-xsp_1.2.5.bb |  228 -------------------------------
 recipes-mono/mono-xsp/mono-xsp_2.10.bb  |    5 +
 3 files changed, 38 insertions(+), 228 deletions(-)
 create mode 100644 recipes-mono/mono-xsp/mono-xsp.inc
 delete mode 100644 recipes-mono/mono-xsp/mono-xsp_1.2.5.bb
 create mode 100644 recipes-mono/mono-xsp/mono-xsp_2.10.bb

-- 
1.7.9.5



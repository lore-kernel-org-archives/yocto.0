Return-Path: <ajlennon@gmail.com>
Received: from mail-we0-f180.google.com (mail-we0-f180.google.com
	[74.125.82.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55FD1E00928
	for <yocto@yoctoproject.org>; Mon,  3 Mar 2014 04:45:07 -0800 (PST)
Received: by mail-we0-f180.google.com with SMTP id p61so1946701wes.39
	for <yocto@yoctoproject.org>; Mon, 03 Mar 2014 04:45:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id;
	bh=MGNyRJ0RdHOzAl+qTNFzlTVFRittHFcBLPfX06MBCGg=;
	b=QcBgeKgBt9lBiKTxHmpoZY9lZDdj6Gy1fzoVVxfWD5KhyPTdj6pO6/qZ3QUqURhaGs
	RCkLwtkvAHMhFCUFYBlSGHwTBsFTkA7uq/kvpRi6K00IyP8elyda0NbpgAUnpklU0Krs
	KRihZXPVvJHeVEUoaAZXAbXKgpCnxKOURdpt6zX5Hg4YjmS8wPFg0DK0vydT680xgMam
	vPoeKcPiq+kV2fTCWsqoB7pHmB6Eh6Acl0Jr65XYg7ByuPr2ZWUr+MmiHmdRyyQwI9rs
	wMOMCJTKLq6HBWx1yH/hk8QGXhnN13rz3NQAn86YJ8uakBzD/MYJDBxrlk+ZPgxLgafA
	bs8Q==
X-Received: by 10.194.57.77 with SMTP id g13mr11354199wjq.42.1393850704915;
	Mon, 03 Mar 2014 04:45:04 -0800 (PST)
Received: from localhost.localdomain
	(cpc32-live22-2-0-cust59.17-2.cable.virginm.net. [82.36.253.60])
	by mx.google.com with ESMTPSA id 12sm34748805wjm.10.2014.03.03.04.45.02
	for <yocto@yoctoproject.org>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 03 Mar 2014 04:45:02 -0800 (PST)
Sender: Alex Lennon <ajlennon@gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
To: yocto@yoctoproject.org
Date: Mon,  3 Mar 2014 12:44:29 +0000
Message-Id: <cover.1393850555.git.ajlennon@dynamicdevices.co.uk>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-mono] [PATCH 0/1] fsharp: Add support for F# programming language v3.1
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
X-List-Received-Date: Mon, 03 Mar 2014 12:45:10 -0000

See following patch for details

The following changes since commit 3caf7ee6e56c2c0f009724f36665afe647b7873a:

  mono-native: Modify build to eliminate dependency on on host system mscorlib.dll (2014-03-03 10:37:28 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/meta-mono ajl/fsharp
  http://git.yoctoproject.org/cgit.cgi/meta-mono/log/?h=ajl/fsharp

Alex J Lennon (1):
  fsharp: Add support for F# programming language v3.1

 recipes-mono/fsharp/fsharp.inc        |   43 +++++++++++++++++++++++++++++++++
 recipes-mono/fsharp/fsharp_3.1.1.1.bb |    7 ++++++
 2 files changed, 50 insertions(+)
 create mode 100644 recipes-mono/fsharp/fsharp.inc
 create mode 100644 recipes-mono/fsharp/fsharp_3.1.1.1.bb

-- 
1.7.9.5



Return-Path: <jfabernathy@gmail.com>
Received: from mail-qw0-f48.google.com (mail-qw0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1234EE00599
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2012 06:06:28 -0800 (PST)
Received: by qadz30 with SMTP id z30so75799qad.14
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2012 06:06:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=Z5ZM9PyYGc0LZxNoyds/jdd8jOQcJsulbgBBrDx+xBY=;
	b=UyrJsV3AmQtqRXuMcnL7oVgbCnN6GQh5C/hM7+oCFaJETYH9Dyw+g2ZaCQgNOz0DeN
	+QkeOJp5m2hYg7ejaZuLVdtqvyHTCDovtPRfrt44U2Xmxeev+Rtb5+/hRUdATeYRBXyl
	R9CE4j9X4sy3DGCfpZnIvp36avm+nSUcSU97A=
Received: by 10.224.17.143 with SMTP id s15mr27542354qaa.64.1326981988462;
	Thu, 19 Jan 2012 06:06:28 -0800 (PST)
Received: from [10.0.1.54] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id dh10sm87791qab.19.2012.01.19.06.06.27
	(version=SSLv3 cipher=OTHER); Thu, 19 Jan 2012 06:06:27 -0800 (PST)
Message-ID: <4F182364.9000408@gmail.com>
Date: Thu, 19 Jan 2012 09:06:28 -0500
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: using the same download directory multiple times
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
X-List-Received-Date: Thu, 19 Jan 2012 14:06:29 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

After reading the comments in the local.conf file about the download 
directory (DL_DIR), I experimented with creating it outside of the 
normal <build dir> directory used by "source oe-init-build-env <build 
dir>" command. After completing a build successfully, I examined the 
download directory and I'm trying to figure out what is in there besides 
the tarballs that were downloaded and the .done files for the matching 
tarball.  There also appear to be .done files that are not related to 
any tarball in the download directory.

What is the purpose of these files?

Apparently, all this works because I've recreated the same BSP in two 
different build directories with a common DL_DIR outside the build 
directory successfully.

Jim A



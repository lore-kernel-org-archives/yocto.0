Return-Path: <elvis.dowson@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 097E1E01396
	for <yocto@yoctoproject.org>; Sat,  5 May 2012 10:37:51 -0700 (PDT)
Received: by werc1 with SMTP id c1so719092wer.35
	for <yocto@yoctoproject.org>; Sat, 05 May 2012 10:37:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:from:content-type:x-mailer:message-id:date:to
	:content-transfer-encoding:mime-version;
	bh=j6xastsr4vm/dezRxoN3voB/czpCoWju2XN5QBiOI/M=;
	b=NxK/ABJTSxaLaBZAwA9Wq9hqEKmmfIThpAxY5lZ2z9bqokFuH9y9acjN3DPJ7G24UJ
	h0BZg8D0NttLA5tUeyet+GnDRGD493anbSZTBrtXb2VrFK5PE349RuBGRcrbiUzNW0Zf
	10t91QRby533iNEjhJg7wS2yeMyrvS4UthlyXIfnkOkv5MkNwqM86FMTG+0lPY0YbwZq
	eqlRnZdB5yMwfi6LbVCh5zKRLG7aZgfSWPFr2Xz0ceIr4uKsASKSsLd1gcuxWBuB3bKx
	NZth+Jb0VEcEaiEyZTDoQLJC3phNAwdAG7eEri+vHTZx9bEKpQEHo8zmbWkjZvJvmK81
	IynA==
Received: by 10.216.135.206 with SMTP id u56mr6491394wei.29.1336239470613;
	Sat, 05 May 2012 10:37:50 -0700 (PDT)
Received: from [192.168.1.33] (5.Red-83-49-41.dynamicIP.rima-tde.net.
	[83.49.41.5])
	by mx.google.com with ESMTPS id gd4sm11402351wib.6.2012.05.05.10.37.48
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 05 May 2012 10:37:49 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
X-Mailer: iPhone Mail (9B176)
Message-Id: <9EE240ED-602E-4E08-817E-1DA7D2831D5F@gmail.com>
Date: Sat, 5 May 2012 19:35:37 +0200
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (1.0)
Subject: Using distcc with poky
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
X-List-Received-Date: Sat, 05 May 2012 17:37:52 -0000
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,
Is it possible to tell poky to use distcc, to perform a distributed build =
across two ubuntu 12.04 machines on a netwrok?

Elvis

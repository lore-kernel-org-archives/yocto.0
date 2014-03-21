Return-Path: <jatedev@gmail.com>
Received: from mail-qc0-f196.google.com (mail-qc0-f196.google.com
	[209.85.216.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5925E00B8C
	for <yocto@yoctoproject.org>; Fri, 21 Mar 2014 14:27:52 -0700 (PDT)
Received: by mail-qc0-f196.google.com with SMTP id i17so1144025qcy.3
	for <yocto@yoctoproject.org>; Fri, 21 Mar 2014 14:27:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=nCgyo32c1h9r+O+kpfOZnB7GalmIcejuf8Rzm4f/QT4=;
	b=jS1WLHpl3x5DRR3TnlDkQpHFeCKPrS+DALDkP39y+Wmo3EeDfwxCPVfsSDTPqgDYUt
	aOOYxvxNoRaCEK/nBMz1w2R8wwTg2INs6pXeNy/js2xCu0tH0w+sYdXSSIe7xKv3/Giv
	5q+y+N9ATBD3FcW7M8QY9gYVC6kpb27qLhFM5/HOEvepndYJICNiGrQqZxL0eunQzuq5
	U1W2fjPSD3LM0a5vNm9gDocpMj3yS35VQxtuiwr4Hlk4lWDvAh15aQ6OtXytXUX7QlAR
	wBk5098RqDvet7tcAwwwCyR1rHHeJzFCb7uO85/MDh+DABA8/TlIY48pARFpzrYnU80r
	w1TQ==
MIME-Version: 1.0
X-Received: by 10.224.151.130 with SMTP id c2mr58265742qaw.67.1395437271335;
	Fri, 21 Mar 2014 14:27:51 -0700 (PDT)
Received: by 10.140.87.237 with HTTP; Fri, 21 Mar 2014 14:27:51 -0700 (PDT)
Date: Fri, 21 Mar 2014 17:27:51 -0400
Message-ID: <CAPphmgYBnU6-NtLt+FDgpc97CKsnU6y8OSSGGO9W9isbf0xH7g@mail.gmail.com>
From: Jate S <jatedev@gmail.com>
To: yocto@yoctoproject.org
Subject: linux-yocto fetch bottleneck
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
X-List-Received-Date: Fri, 21 Mar 2014 21:27:52 -0000
Content-Type: text/plain; charset=ISO-8859-1

I am running into a bottleneck with the linux-yocto recipe on dora
1.5.1. The fetch retrieves git2_git.yoctoproject.org.git.tar.gz, but
then it hits a bottleneck when it must do a git fetch to update to the
required references. The git server does not have high bandwdith.

One workaround that I've found is to archive the git repository and
replace the tar.gz in the downloads directory. The recipe then finds
the required references.

Would BB_GENERATE_MIRROR_TARBALLS actually take care of this? Any
other recommendations?


- Jate S.


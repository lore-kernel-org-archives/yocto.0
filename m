Return-Path: <ratheesh.ksz@gmail.com>
Received: from mail-yh0-f42.google.com (mail-yh0-f42.google.com
	[209.85.213.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D757EE00A29
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 00:01:28 -0800 (PST)
Received: by mail-yh0-f42.google.com with SMTP id a41so637913yho.15
	for <yocto@yoctoproject.org>; Wed, 05 Mar 2014 00:01:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=woRhg/AaQB4fCHCuhDYUuXMNiKn3GRKFDikQC312edM=;
	b=KT+IXAHROOI47uailMfqPEtTXgz9piXKx4szUEc8zrtwPGlFKqZ717C8uWsGh7vDJ3
	jhZfRz6sols4OHgF7yFDL90mtIlXkonNloXLsVXLyDT8A3JAkJIv1Lwiv+55u7VYqzix
	FQL9idmpFRdDGiruG0QpZNluVVVd1NUrFVyBMHIcFA1G8IRraok5+lHVV6cSlSUDLVuz
	Owhg2tmI/fs3KuDNbvVCiBbGQCLkDWbyN5Ksn3bmmo9aBf6rFJDw++1ED0Ktj0FR1aET
	/wdR9nRXiQlra2WzjuMaAnqa9vsg4+jQNudP8KTtG5wElwFi3y1hCuVI/4CT92/KuZoW
	X8xw==
MIME-Version: 1.0
X-Received: by 10.236.86.1 with SMTP id v1mr5084700yhe.1.1394006487518; Wed,
	05 Mar 2014 00:01:27 -0800 (PST)
Received: by 10.170.125.23 with HTTP; Wed, 5 Mar 2014 00:01:27 -0800 (PST)
Date: Wed, 5 Mar 2014 13:31:27 +0530
Message-ID: <CAGZFCEFFA+CBqkTbu4nsWuy4xjbbpsqrrXeLp4oE8OU84J_wkA@mail.gmail.com>
From: ratheesh kannoth <ratheesh.ksz@gmail.com>
To: yocto@yoctoproject.org
Subject: Error on building
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
X-List-Received-Date: Wed, 05 Mar 2014 08:01:34 -0000
Content-Type: text/plain; charset=ISO-8859-1

I am getting following error. what is the problem. ? How can i get around this ?


ERROR: QA Issue: non -staticdev package contains static .a library:
sf-test path '/work/x86_64-wrs-linux/sf/1.0-r0/packages-split/sf-test/lib/snort_dynamicengine/libsf_engine.a'
ERROR: QA Issue: sf-test:
/work/x86_64-wrs-linux/sf/1.0-r0/packages-split/sf-test/lib/snort_dynamicengine/libsf_engine.so.0.0.0
contains probably-redundant RPATH /usr/lib64


Thanks,
Ratheesh


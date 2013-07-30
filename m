Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vb0-f51.google.com (mail-vb0-f51.google.com
	[209.85.212.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC3F9E002E9
	for <yocto@yoctoproject.org>; Tue, 30 Jul 2013 15:57:03 -0700 (PDT)
Received: by mail-vb0-f51.google.com with SMTP id x16so4160vbf.24
	for <yocto@yoctoproject.org>; Tue, 30 Jul 2013 15:57:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=Nlv2Jys0tyT7LYXCLbcDHveWf2+i93ADiCxADpMyWLc=;
	b=L/Fe99J1l061p1+eyZXt+CA6OtXt94+ArTkGYlsy/DkVAYT2tVD+NjlnhxVBQlFKdj
	p2zgJImNNso5xZxEPLCDcIo5BHT8eIb80t4HzoGHmJxLCRIIpSjsx9hZ/0wIygHdqO2P
	1s71NKvezE4iLIQWtWp4XE3PjgOcr2OqF4rebOGA8pbQWs6fN/zD9Txqa23P9TJOz6Gu
	cNtR+spusBcoDJ8RZg8DZ1KzEBJkc6c2wTRd4wr3xSN/7JmXsksvSA4BD5v5P3Kyc7TP
	iJKWrVmByrvXWGJTPruCkLFNw+WBbJPXugHkXppIcVqmT12bMMDjcRp/whItW3q0skcB
	IWkg==
MIME-Version: 1.0
X-Received: by 10.52.248.206 with SMTP id yo14mr23303956vdc.61.1375225022195; 
	Tue, 30 Jul 2013 15:57:02 -0700 (PDT)
Received: by 10.52.73.168 with HTTP; Tue, 30 Jul 2013 15:57:02 -0700 (PDT)
Date: Tue, 30 Jul 2013 15:57:02 -0700
Message-ID: <CAPhnLPBL0=nVDe9KqNvV4WT41cOCKrd8PxT-w1LqGocWnJxBRg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQmG+e1pguqjnyF0H2QGs+JGj/aPWlMEv7ltfbqzPghxvqA2g+r3hIcyQoJKei0A1juyW3+8
Subject: Moving the eclipse-poky repo
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
X-List-Received-Date: Tue, 30 Jul 2013 22:57:05 -0000
Content-Type: text/plain; charset=ISO-8859-1

All,

We're going to start building out multiple versions of the eclipse
plugin. Currently, we're on Juno, but with Kepler support on the way,
we wanted to start supporting multiple plugin versions. Because of
this, we decided to have multiple repos, each specific to the eclipse
version. We've copied over the eclipse-poky repo to eclipse-poky-juno
and have added an eclipse-poky-kepler repo as well. Doc change patch
is coming to ensure that the docs are up to date. The autobuilder has
already been changed to reflect these new targets.

-b

-- 
Elizabeth Flanagan
Yocto Project
Build and Release


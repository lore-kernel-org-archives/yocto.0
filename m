Return-Path: <raj.khem@gmail.com>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31536E00282
	for <yocto@yoctoproject.org>; Fri, 20 Jul 2012 16:34:07 -0700 (PDT)
Received: by wibhn17 with SMTP id hn17so839874wib.11
	for <yocto@yoctoproject.org>; Fri, 20 Jul 2012 16:34:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=e0a6q4+9WHZ5sBBxyaqZqHfJq3182hjMPYWNOCx5RmU=;
	b=U3Xq9cRC8HfIiAPTTiRZVeDpCqjq+6Uu4KQ5F2rhlgd6qPYfRYHE0ZmUdngVT6K6Ej
	vjwlJXBi9FhLumyNL+nlM7yA5SSMcr4NlzCpEBDGR2JFlAWLcerRfurJKsrZtL1vyS7K
	u7v0orwIEedi+5bPLEzYkF7hd6O8WqDiDT/n/VGn6ZGNiXAQ7OJBc5Tdz2svsBTS+PYV
	B/WL0uObupGM776ZWupZi+Ue5mERuyM7q1Egh8TXZ2wBfhCVlBv0DqCyXmqZZxuTuUYu
	nZJTziRTQ3AahoCkoQJJBZsB54aKY0ACLGg32OM+mB0D2lYGGeRwespsy799VZ81VMxS
	tdlQ==
Received: by 10.180.96.3 with SMTP id do3mr18283727wib.5.1342827246847; Fri,
	20 Jul 2012 16:34:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.18.98 with HTTP; Fri, 20 Jul 2012 16:33:36 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 20 Jul 2012 16:33:36 -0700
Message-ID: <CAMKF1spBY0USM6d_o=F4fLUvyK1qi5hMz9rJBSUsjFE4n3KFCw@mail.gmail.com>
To: Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>, yocto@yoctoproject.org, 
	openembeded-devel <Openembedded-devel@lists.openembedded.org>
Subject: Cross referencing git commit SHA info in commit logs
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
X-List-Received-Date: Fri, 20 Jul 2012 23:34:08 -0000
Content-Type: text/plain; charset=UTF-8

Hello,

I have seen some commit logs referring to poky commits but are applied
to OE-Core and there might be vice versa case too. In general I don't
see an issue
when there is a commit SHA id in log message but please add the
project info to it unless so someone can go and look for it in
particular repo

eg, poky/<id> OE-Core/<id> meta-oe/<id>  oe.dev/<id> would make it a bit better

Thanks
-Khem


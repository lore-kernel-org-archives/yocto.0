Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qc0-f180.google.com (mail-qc0-f180.google.com
	[209.85.216.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16C80E01572
	for <yocto@yoctoproject.org>; Fri,  7 Jun 2013 01:05:11 -0700 (PDT)
Received: by mail-qc0-f180.google.com with SMTP id a1so223796qcx.25
	for <yocto@yoctoproject.org>; Fri, 07 Jun 2013 01:05:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=EdHdRgZQrtSKFLww9AyOhqPltfkmvER5edZdWj3ADiI=;
	b=Joe0xceFRNlS1HpRj7bWbZWOEKsFMNLkD72t/RZkX2CStBL8ttObqn85TNaakP3Bac
	q1Bz748qc0nfkXMckinbBGeNHgRWUCutkPZ4YW8MYC4h/Aw7O2ltIJ7j/eyGTQOw+HNt
	KR2aPz/NNxZech4/x7vR2SyQWSrF4sKSKPkNPyfpjTU/lq8tOkJNrpOsl3m6U+ccmNDZ
	uivlSkJV10FyGIxTUdp+VDa09WP4DRrHDFpfphUNYWWeU/9/nYN2O2NTWbKikBJx0h1U
	hHs8Cc76gF7A1LKGFn+Ex1eswuv5BVoLBZ94+WGImgC7ZdIjYACwzx8FsrnsqyFAAcSN
	HV9Q==
MIME-Version: 1.0
X-Received: by 10.224.78.193 with SMTP id m1mr1478209qak.79.1370592310383;
	Fri, 07 Jun 2013 01:05:10 -0700 (PDT)
Received: by 10.49.24.239 with HTTP; Fri, 7 Jun 2013 01:05:10 -0700 (PDT)
Date: Fri, 7 Jun 2013 10:05:10 +0200
Message-ID: <CAFyqS9oP_F1+Fa2+cVMnhmTwJTbzcD2ec2QQ0Cf-Mup6mDRKQw@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: staging of native header file to non-native package
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
X-List-Received-Date: Fri, 07 Jun 2013 08:05:11 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello. We have a native package that implements a header file that is
required also by another non-native package. What is the best approach
to handle such a situation?
I guess one option is to create two recipes for the package containing
the header filer; one native and a one non-native that does not
configure/compile anything but only installs the header file? But that
seems ugly :( Must be some more clever way if solving this?

Hans


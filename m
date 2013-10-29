Return-Path: <hans.beckerus@gmail.com>
Received: from mail-oa0-f48.google.com (mail-oa0-f48.google.com
	[209.85.219.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5585E0179F
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 04:46:19 -0700 (PDT)
Received: by mail-oa0-f48.google.com with SMTP id m17so5036701oag.35
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 04:46:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Dxs8AwSMIaxvMFdor9yeCLjBJrOgEKiwV8l3fYtgLfw=;
	b=SR0h6707IOxPIPXBQr/C0EZydiqZWHXG6OFkTRcIPYTUjF+Mu5BsTr5rGWbElSrldE
	bX/o3m052YxTSoQHSpFcLzvM2fod+fgPYDislPW3/PPqMJ9cXF3H/fRUBpvuwh/+jCBb
	wA/n8DnChmuH/v1DVKySu02tYyV46X/UsKD7nz6N907PH/V0KfuAH3FSHGciBJnG7Cr6
	i3vjM9hJOWHi2LRXo84sXJ4RFNU8l5aTI8vR3KFqio1VJKY7kfae2yXZ4xgiCu9f0fpk
	qUqtkeT2x90artqM26LRGL+nNnUuvawTwy1ifMRy+2G2PyqhbUYo+ZZMzPkDgfqfoSeH
	7OrA==
MIME-Version: 1.0
X-Received: by 10.60.59.5 with SMTP id v5mr18926976oeq.30.1383047178863; Tue,
	29 Oct 2013 04:46:18 -0700 (PDT)
Received: by 10.182.44.8 with HTTP; Tue, 29 Oct 2013 04:46:18 -0700 (PDT)
Date: Tue, 29 Oct 2013 12:46:18 +0100
Message-ID: <CAFyqS9qh4GgseGVMVjYTo5jK5SURWVgDR5NdgoGv_Pw7q72kmg@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: SRCREV how is it supposed to work?
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
X-List-Received-Date: Tue, 29 Oct 2013 11:46:20 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi. I am wondering if we are using SRCREV wrong somehow.
Is it expected that if we use SRCREV = "${AUTOREV}", that any changes
to the remote should be automatically detected and downloaded/fetched?
I can no see that this is actually what happens. Any changes made to
the remote still need to be manually fetched or indirectly by stepping
the recipe revision.
Are we using SRCREV wrong or is this actually the way it is supposed
to work? Also, is there some way to force a download to me made every
single time by a recipe,
irrespective of if the remote changed or not?

Thanks.
Hans


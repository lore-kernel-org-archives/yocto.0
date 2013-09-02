Return-Path: <hans.beckerus@gmail.com>
Received: from mail-ob0-f182.google.com (mail-ob0-f182.google.com
	[209.85.214.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BB48E01358
	for <yocto@yoctoproject.org>; Mon,  2 Sep 2013 07:56:29 -0700 (PDT)
Received: by mail-ob0-f182.google.com with SMTP id wo10so4635826obc.13
	for <yocto@yoctoproject.org>; Mon, 02 Sep 2013 07:56:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=VA49iUMmnTpQWSd2Hu0cIhK0gbIstxk84n5CfmVwVGw=;
	b=gwI49RQia9HODrlLlXJ6FsL6MHBAzIB3HYdlMM2NaJ3N/f2wSh7JRIq3OO5s8hjh9n
	p6gRKSQB7q3T3zPXh6U2o5+eJajkJkX0NYzzGm5iIJyM3r+xMEaUgWQxmLSZvh2b0lnx
	+ZJR8vcrwPa3E6DcbtUvmq8+agq5Ook1Uy46iNuULmmqK16Od8wkgQAIdZGrF3X2EM+f
	430JJBQ5mcyPhaCAIkrm7ujvyCJP54sRQHdLZwGclSJ8LXc8VCMOxzX60KXHORKbdBo+
	ADR8cX8DD4iHQZgf1LkquwnW5seAr1OWxG9MIZZV4w1yq3NUvIxlD0noxDyXJT7RWKdd
	9TXQ==
MIME-Version: 1.0
X-Received: by 10.182.225.162 with SMTP id rl2mr17284150obc.72.1378133789229; 
	Mon, 02 Sep 2013 07:56:29 -0700 (PDT)
Received: by 10.182.44.8 with HTTP; Mon, 2 Sep 2013 07:56:29 -0700 (PDT)
Date: Mon, 2 Sep 2013 16:56:29 +0200
Message-ID: <CAFyqS9o02b7W4LBhuPkRzo09yR74g71gEWyEvVJ5Ug-0XMD3yQ@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: header file missing in populated SDK
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
X-List-Received-Date: Mon, 02 Sep 2013 14:56:33 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi. We are having some issues figuring out why one of our header files
fails to be installed properly into the SDK. The header file is
currently installed using a few lines in one of our recipe:

do_install_append() {
        install -m 0644 ${S}/foo.h
${STAGING_DIR}/${MACHINE}${includedir}/linux/foo.h
}

foo.h ends up ok in our build/tmp/sysroots, but it does not make it to the SDK.
Is our do_install_append wrong in some way, does it have to be updated
to support SDK builds? Maybe it is wrong to use ${MACHINE} here?

Thanks.
Hans


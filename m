Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qe0-f48.google.com (mail-qe0-f48.google.com
	[209.85.128.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD5BCE014F3
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 00:34:30 -0700 (PDT)
Received: by mail-qe0-f48.google.com with SMTP id 3so121349qea.7
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 00:34:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=7yv2rLnzA+w910jZ2ZyBHiR3YNKASXUXadgJeHmzmzA=;
	b=K8KtiF5Q5dH++NXEJ9nKaUBRpKmjWAWwIUPg2WGXx+Z0D/MmdA+a3ab5iARm8PTmAG
	Kyb/bx9aK+x3VozEWwo8CFOYp4Re/47JvSr1vnEiiIoLcn7OAbx+VI7r/argqqhXzIWJ
	7+GjFoSZ0ZNNzF6Cx5DK/tHxzPPrhz3Ax3l/j/iXlnLh/fQz6IrKMMA2mCIGMTSXyW42
	kpTev+qgQPImBjBH/4ZbLpU/ZIcIHtKs9zikzIu1HDyBpDp6jOobCZW1jRKrx2TgOvcn
	zBJEx1N0xO5m71g6ULB4Hft5jO2+wE+h7sg+s2Zb3TjRBr6JdtELfy3QJpQqc0VirO5C
	ZEVw==
MIME-Version: 1.0
X-Received: by 10.224.75.133 with SMTP id y5mr21397011qaj.78.1366616069977;
	Mon, 22 Apr 2013 00:34:29 -0700 (PDT)
Received: by 10.49.38.195 with HTTP; Mon, 22 Apr 2013 00:34:29 -0700 (PDT)
Date: Mon, 22 Apr 2013 09:34:29 +0200
Message-ID: <CAFyqS9rXZcC9EWFsM=9MfXtrr--8QmRq9+5kn2rJ_TzeE6nEBg@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: gnupg vs gpgme
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
X-List-Received-Date: Mon, 22 Apr 2013 07:34:31 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello. I wish to bring in gnupg to our system but from what I can tell
gnupg is not part of Yocto nor OpenEmbedded. However, gpgme is. Is
gpgme to consider a complete replacement for gnupg? I have no need for
any gpg application libraries, but need the ability to sign and
perhaps encrypt/decrypt information. Is an option here to bring in
gnupg 1.4.13 myself or is this not something you should recommend?

Hans


Return-Path: <hans.beckerus@gmail.com>
Received: from mail-oa0-f43.google.com (mail-oa0-f43.google.com
	[209.85.219.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4627E01643
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2013 03:44:19 -0700 (PDT)
Received: by mail-oa0-f43.google.com with SMTP id f4so455040oah.30
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2013 03:44:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=bLGRMJcZEH3MbQ254qJSw0zrKzWHubqoSyiIyHrD3qY=;
	b=MCZh5MJuUvmgV9qml8AvdHb7/z28/Id38ZgWRJmwVpj3cCF8h/sneFYmDlr6hwK2+b
	yJnpqVaSkK3pWaFlPVIirrf+YRWbVFYLpU6l6Ufv6dcKdjRupXIYUvhdCey3y6Swq5jO
	WliJ91dP3Se0XElORVtubKUKgBMzX47yK5j96yIbSj3WdbPEnnIgSAS4NP1i2H9keOEO
	UKnxEK1ZYs1MaK8+TDf4D7O20aNrEmYVUFkK4lVKKC/OfpuSH34CTf+iFqJV0xQZ3Bg5
	4QnSK1Y5XLGC+pD3Vo7EhFsSv5TThcxWHYFrVUegFYjKQCK+GcQEqHfcQ35o6DX6mZ4V
	uYkg==
MIME-Version: 1.0
X-Received: by 10.182.73.136 with SMTP id l8mr112494obv.53.1380192259236; Thu,
	26 Sep 2013 03:44:19 -0700 (PDT)
Received: by 10.182.44.8 with HTTP; Thu, 26 Sep 2013 03:44:19 -0700 (PDT)
Date: Thu, 26 Sep 2013 12:44:19 +0200
Message-ID: <CAFyqS9pyyWQ29B+V7Bu8j6s6CgO4y3UwiefL4BTnAhwKbXNraQ@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: BBCLASSEXTEND nativesdk vs native weirdness?
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
X-List-Received-Date: Thu, 26 Sep 2013 10:44:22 -0000
Content-Type: text/plain; charset=ISO-8859-1

For a recipe that extends to native and nativesdk, why are these not
resolved in the same way when trying to build the packages?
To build native you do 'bitbake foo-native' but for nativesdk that
does not work, but instead 'bitbake nativesdk-foo' is possible?
This is really confusing! Does this mix up also apply to DEPEND etc.
In that case this must be really error prone? Or is it some old legacy
that
can not be changed until all existing nativesdk-<pkg>.bb files have
been replaced, either with <pkg>-nativesdk.bb or using BBCLASSEXTENDs?

Thanks.
Hans


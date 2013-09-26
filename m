Return-Path: <hans.beckerus@gmail.com>
Received: from mail-oa0-f48.google.com (mail-oa0-f48.google.com
	[209.85.219.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8470E0044C
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2013 05:41:46 -0700 (PDT)
Received: by mail-oa0-f48.google.com with SMTP id m6so570922oag.7
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2013 05:41:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=nO+TTPDqdsFheBYgd3FWg2Vs2yugaHR2I/srkUiEB3M=;
	b=vTz5At1LTShz/cfH2c79vnBP3aE0vSELDCmRujNRS7ZCw/COQoMMdMNxV/ZUpXjxuG
	6lYkpJikchu5wGLe+e7xg9uLU9FZmAHw6Nt0I19+dKnM1mwPqRhTKZCdLIfadiRqkNvh
	21lATtto0AHXRNv5yl9ApBXYw3E8onPn9EFfaD2UbonpdlnjjEeUUgI1+n0HyI4OL7z5
	3Jc0Gu2+O93Bx5vEoIhdOp9H1VLwtmzFpD0DUYjNrXgeyS7N9kwRLokhlF9RcAHldGfE
	FNyMS7O+b6smkcR5ooAIVcg0p+SZAXD+V6Ey4Lj7OHT+OSCg6Kn3UwuHmkH+ivOaO6UF
	dlUw==
MIME-Version: 1.0
X-Received: by 10.182.143.5 with SMTP id sa5mr136393obb.80.1380199304883; Thu,
	26 Sep 2013 05:41:44 -0700 (PDT)
Received: by 10.182.44.8 with HTTP; Thu, 26 Sep 2013 05:41:44 -0700 (PDT)
Date: Thu, 26 Sep 2013 14:41:44 +0200
Message-ID: <CAFyqS9oDjhiKNr3gPYtNmgkqfC82J-OiG1hX4TG3L3AqbjABCA@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Question about DEPENDS and eg. DEPENDS_class-native
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
X-List-Received-Date: Thu, 26 Sep 2013 12:41:48 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi. Browsing through the existing recipes really did not answer this
since I have no clue what was the initial intent.
So my quick question is if a .inc file has a DEPENDS = "foo" and a
recipe that includes it has DEPENDS_class-native = "fee", will the
resulting depend be merged from the two or will DEPENDS_class-native
completely override DEPENDS? If it overrides, is the correct way to
merge them to do DEPENDS_append_class-native = "fee"?

Thanks.
Hans


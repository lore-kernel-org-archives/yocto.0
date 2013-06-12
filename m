Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qa0-f43.google.com (mail-qa0-f43.google.com
	[209.85.216.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85243E006C2
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 10:10:22 -0700 (PDT)
Received: by mail-qa0-f43.google.com with SMTP id d13so484156qak.9
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 10:10:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=LJ8T3qgMUBrhyUeJ5MvCUI9S7rFMmFccdfRPOZxSwbE=;
	b=XQsfF9svGiq1vAMeoY6/J54lXsHdsg8Xh17ED+GM7aRBwPjdsBjtzwyf0BH/Zy3vnO
	lEBXLOcpFLwrKzVw7ykkL769eW/dzlEMrYjJ9WpOagKOIuYZ+ENRE3P1jG2HMXQL6jq4
	BUeNmahmAyo/DErtUGXXOJGC+bOtxPhs3SDhFwTckwtYtn+07SS1rIK7QvZYBqllGVRS
	p/ZoxV2mv1BVvoy0Ye8s0BZiTFCvjwhjRdASkWtkVYjNHR1AzMlr/bu7E09Rsr/tZ2qd
	OgKcmI6XzTPBigukJeEIbJHRAm4UjNWKC1uNpw9U81vS7F07jNY9NHLIEtXJrjooSI35
	y3Zg==
MIME-Version: 1.0
X-Received: by 10.224.1.2 with SMTP id 2mr25191322qad.38.1371057022099; Wed,
	12 Jun 2013 10:10:22 -0700 (PDT)
Received: by 10.49.24.239 with HTTP; Wed, 12 Jun 2013 10:10:22 -0700 (PDT)
Date: Wed, 12 Jun 2013 19:10:22 +0200
Message-ID: <CAFyqS9oLMjsokibbUyVjs0mG0NK7cOdC63qMbyw0ihGKVSj+Vw@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: /var/lib/wdj/l10n: what is it doing in the target rootfs?
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
X-List-Received-Date: Wed, 12 Jun 2013 17:10:23 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi. Anyone that can tell me why 'wdj' and 'wdj/l10n' folders are added
to /var/lib?
I sort of dislike having files/folders generated that I can not
explain what they are doing; eventually the question will arise ;)
Has it something to do with RPM? Should it really be there? I do not
have RPM support on my target device.

Hans


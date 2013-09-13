Return-Path: <ashish.dalela@gmail.com>
Received: from mail-lb0-f182.google.com (mail-lb0-f182.google.com
	[209.85.217.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6BC7E014F7
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 22:39:55 -0700 (PDT)
Received: by mail-lb0-f182.google.com with SMTP id c11so1740120lbj.27
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 22:39:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=zCZUdnjBcSYoWvv2SxZdeLsVvHaLH0K20v2BHopCuYo=;
	b=iI8l9RENGaGTcIygHxcgp9C+kveQBnzUtYaz0kCKjilAdrzPuozjghVhO+i6NrIrf9
	sf83V2UKaKHl1sR4D8ZtYmaQyHc9E1JLrCC4GbUkCZ48w7QjMVtU7ib4o8ifoIktQXMs
	+S+TXIpEvaUuB52nbcxJ/oW5C7CMCiFP5HxFrncD+tPKHzn4W1CHe/HxQQv3f4AGA7m4
	i+pySP3Ds+Pz3cclpqg8ub20n11TYSL75GT3+PukfIZwoR/vqtoE54n7/0KHIipWHKHq
	HgU0L7mmH9RNmsmvIuxuiNfxCHaVZCuaSilzWMifYNmWLEuwdEpEzMVewxOHwOhnTsZz
	nEXQ==
MIME-Version: 1.0
X-Received: by 10.112.51.166 with SMTP id l6mr10507869lbo.5.1379050795170;
	Thu, 12 Sep 2013 22:39:55 -0700 (PDT)
Received: by 10.112.11.195 with HTTP; Thu, 12 Sep 2013 22:39:55 -0700 (PDT)
Date: Fri, 13 Sep 2013 11:09:55 +0530
Message-ID: <CABhkJReHPjzAed68qejMDa-vf28W4=TfYsjDRrb-hnr7OL08fg@mail.gmail.com>
From: Ashish Dalela <ashish.dalela@gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: Makefile:100: OPTION_EGLIBC_NSSWITCH is disabled, but fixed config file
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
X-List-Received-Date: Fri, 13 Sep 2013 05:39:57 -0000
Content-Type: multipart/alternative; boundary=001a113366bcc6026704e63d4849

--001a113366bcc6026704e63d4849
Content-Type: text/plain; charset=ISO-8859-1

I'm seeing a EGLIBC failure.

| Makefile:100: OPTION_EGLIBC_NSSWITCH is disabled, but fixed config file
| Makefile:101: *** does not exist: "".  Stop.

Searched and saw that few people have reported this problem, but no
solutions.

Has anyone been able to fix this? If so, can you please tell me what to do?

Thanks
-Ashish

--001a113366bcc6026704e63d4849
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div>I&#39;m seeing a EGLIBC failure.</div><div><br></=
div><div><div>| Makefile:100: OPTION_EGLIBC_NSSWITCH is disabled, but fixed=
 config file</div><div>| Makefile:101: *** does not exist: &quot;&quot;. =
=A0Stop.</div>
</div><div><br></div><div>Searched and saw that few people have reported th=
is problem, but no solutions.=A0</div><div><br></div><div>Has anyone been a=
ble to fix this? If so, can you please tell me what to do?</div><div><br>
</div><div>Thanks</div><div>-Ashish</div></div>

--001a113366bcc6026704e63d4849--

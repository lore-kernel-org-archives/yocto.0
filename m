Return-Path: <sleepylight@jive-turkey.net>
Received: from mail-ee0-f45.google.com (mail-ee0-f45.google.com [74.125.83.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7910FE01621
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2013 08:21:40 -0700 (PDT)
Received: by mail-ee0-f45.google.com with SMTP id e50so2067496eek.4
	for <yocto@yoctoproject.org>; Fri, 01 Nov 2013 08:21:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=x3JB3xzv3uB2ll6rBNIyP/IMaC83KdH6U7xNUEhzSKE=;
	b=LTqUbOYTl0b61U1Q/GJ7RyUIG1QFWzHcI9WLgdyBHXg7AZulpPcB92oFCRCyE5dZVJ
	66GZ4MnzVzInsmLHPBl64YLRlPonfzQZBgvAczOLLAPicMc+kd93T6lD5u4JNz/uyD6r
	AHmw9JTp/Y7DqcMJHRDCE0qdwtvnIVDRQuB23NIJv5mBMKsAuFBX4OH+JuoMd/PNCzs8
	mC1bWGCcPFHlwG9E+UwxmSd1SdDPS65XBg8MPYAnwVkA6UZnsKu3CHohWT6BwHeZebk7
	9sdUMBD8kK9TLe1zQxRohhkcAc2fA4Iv+BkxVC2SZFpo7mJiaxdq8079JH1fVU/v4EMH
	pipg==
X-Gm-Message-State: ALoCoQlkMixE7hPU3u/sEWROp4EP1EWvnYq8eFbRgNV4RR9n/e+NmHLqE4eGp3FpS+zqoLFf6ja9
MIME-Version: 1.0
X-Received: by 10.15.33.198 with SMTP id c46mr312221eev.115.1383319299332;
	Fri, 01 Nov 2013 08:21:39 -0700 (PDT)
Received: by 10.223.153.67 with HTTP; Fri, 1 Nov 2013 08:21:39 -0700 (PDT)
Date: Fri, 1 Nov 2013 11:21:39 -0400
Message-ID: <CADi-vsyk+mZ3qnYKVW13dQoFzQpGokSNBT5WitOvqBsGJMx+Dw@mail.gmail.com>
From: Maxwell Bottiger <sleepylight@jive-turkey.net>
To: yocto@yoctoproject.org
Subject: 2.6.39 kernel and poky
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
X-List-Received-Date: Fri, 01 Nov 2013 15:21:41 -0000
Content-Type: multipart/alternative; boundary=089e0168126a72abd804ea1f1f60

--089e0168126a72abd804ea1f1f60
Content-Type: text/plain; charset=ISO-8859-1

I have a custom kernel and drivers I built for an Atmel AT91SAM9x5ek system
on a chip, and I'd like to use them with yocto to build a distribution.

The original documentation, support CD, etc are all based around an open
embedded build from 2011, which doesn't seem to work any longer.  Yocto
looks like a great alternative, but wants to build the 3.10 kernel, which I
don't think supports this SoC any longer.  So, is there a straight forward
method of building a standard Poky root filesystem, but with a custom
recipe for the 2.6.39 kernel instead of the stock one?

Thanks for your help.

--089e0168126a72abd804ea1f1f60
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>I have a custom kernel and drivers I built for a=
n Atmel AT91SAM9x5ek system on a chip, and I&#39;d like to use them with yo=
cto to build a distribution.<br><br></div>The original documentation, suppo=
rt CD, etc are all based around an open embedded build from 2011, which doe=
sn&#39;t seem to work any longer.=A0 Yocto looks like a great alternative, =
but wants to build the 3.10 kernel, which I don&#39;t think supports this S=
oC any longer.=A0 So, is there a straight forward method of building a stan=
dard Poky root filesystem, but with a custom recipe for the 2.6.39 kernel i=
nstead of the stock one?<br>
<br></div>Thanks for your help.<br></div>

--089e0168126a72abd804ea1f1f60--

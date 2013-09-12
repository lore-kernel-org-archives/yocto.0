Return-Path: <ashish.dalela@gmail.com>
Received: from mail-la0-f54.google.com (mail-la0-f54.google.com
	[209.85.215.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EF02E013DA
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 04:22:53 -0700 (PDT)
Received: by mail-la0-f54.google.com with SMTP id ea20so8734426lab.27
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 04:22:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=peJC9JSGw7IKFQMyRAKipGigpknaKe8mcP62AskV6pY=;
	b=wf/WGmhYatdJuF+X8gDt4QhKwbW0wvkwSbd7rZejm2BQGOoSmbD2p4/Q6RNQlSeLkF
	CEvXhM/xRadQJQ022Hkf4OpcDdZCepKF8oB3vZwlj7gI+oUef3qmlZI/E22fdafi5LjC
	irb9g3NG0ININUhGQ5cN5hGCH0DPvTKAn1VAipkA9WQcFw1MzJdDw6VySUuIOd8AECnz
	xHiFkIqcarBfmzCxCorbfiBxLMcdS9Ku3ff7LlpAALP6XLcNYxL7vX2jeY8GEauVhyvs
	t44NlLYBUzTlb+i7EXIrVCdCcSOIwV+F9xqFfbs97okEjZYWVq9j4KiLSb3p5q2ByaQl
	HpVw==
MIME-Version: 1.0
X-Received: by 10.112.50.109 with SMTP id b13mr92124lbo.47.1378984971813; Thu,
	12 Sep 2013 04:22:51 -0700 (PDT)
Received: by 10.112.11.195 with HTTP; Thu, 12 Sep 2013 04:22:51 -0700 (PDT)
Date: Thu, 12 Sep 2013 16:52:51 +0530
Message-ID: <CABhkJRdQQ2HaXCrah=544uAn6Ys=gspTdmuSOa2VHv_gJASmKA@mail.gmail.com>
From: Ashish Dalela <ashish.dalela@gmail.com>
To: yocto@yoctoproject.org
Subject: Error while building a custom image
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
X-List-Received-Date: Thu, 12 Sep 2013 11:22:54 -0000
Content-Type: multipart/alternative; boundary=001a11336ce26547cd04e62df569

--001a11336ce26547cd04e62df569
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I am new to the Yocto project and trying to build a custom image (I have
built the standard images - e.g. core-image-basic and run them).

I added a meta-mylayer directory in the poky directory and added a recipe
for a component "tpmc". Then I modified the core-image-basic recipe and
added a packagegroup-tpmc. This packagegroup is defined to build and
package my component "tpmc". The packagegroup is defined in the
yocto:~/poky-dylan-9.0.2/meta/recipes-extended/packagegroups directory.

When I build the core-image-basic, at the end (while executing do_rootfs) I
see the below error:

*| Computing transaction...error: Can't install packagegroup-tpmc-1.0-r6@all:
no package provides tpmc*

What am I doing wrong? Any hints anyone can give me?

Thanks
-Ashish

--001a11336ce26547cd04e62df569
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I am new to the Yocto project and t=
rying to build a custom image (I have built the standard images - e.g. core=
-image-basic and run them).</div><div><br></div><div>I added a meta-mylayer=
 directory in the poky directory and added a recipe for a component &quot;t=
pmc&quot;. Then I modified the core-image-basic recipe and added a packageg=
roup-tpmc. This packagegroup is defined to build and package my component &=
quot;tpmc&quot;. The packagegroup is defined in the yocto:~/poky-dylan-9.0.=
2/meta/recipes-extended/packagegroups directory.</div>
<div><br></div><div>When I build the core-image-basic, at the end (while ex=
ecuting do_rootfs) I see the below error:</div><div><br></div><div><div><b>=
| Computing transaction...error: Can&#39;t install packagegroup-tpmc-1.0-r6=
@all: no package provides tpmc</b></div>
</div><div><br></div><div>What am I doing wrong? Any hints anyone can give =
me?</div><div><br></div><div>Thanks</div><div>-Ashish</div></div>

--001a11336ce26547cd04e62df569--

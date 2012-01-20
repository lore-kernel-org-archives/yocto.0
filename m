Return-Path: <jfabernathy@gmail.com>
Received: from mail-vx0-f176.google.com (mail-vx0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A90CBE00599
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2012 16:51:16 -0800 (PST)
Received: by vcbfk13 with SMTP id fk13so44548vcb.35
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2012 16:51:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=j9Wds/Tqp5tBZEiyBVyzkxILuPcszqAOzvy1CGLYiZc=;
	b=FyJoJd0VzROoMknegaxTYSzf+3fgACgadDZlLzPUnkzW/e1zQmIkRchtZlc1wRJtmJ
	y9ivN45y3PwgREQBoT6FzAst07+Z3NcDQkn7Dta9alI2dKwYix1TMAPxKojebCCL6Xug
	cY7JCOqZ9KFxTYSetEbmpA1pa6TP0eVfwdf4Y=
MIME-Version: 1.0
Received: by 10.220.231.131 with SMTP id jq3mr16335176vcb.44.1327020675740;
	Thu, 19 Jan 2012 16:51:15 -0800 (PST)
Received: by 10.52.180.69 with HTTP; Thu, 19 Jan 2012 16:51:15 -0800 (PST)
Date: Thu, 19 Jan 2012 19:51:15 -0500
Message-ID: <CANFv2En8WfmoBpzqRYU9hhOH9aCMGTBgML41Ee+uaXc1MJrNjg@mail.gmail.com>
From: James Abernathy <jfabernathy@gmail.com>
To: yocto@yoctoproject.org
Subject: core-image-sato-directdisk
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 20 Jan 2012 00:51:16 -0000
Content-Type: multipart/alternative; boundary=14dae9cdc125fcb59b04b6eb1382

--14dae9cdc125fcb59b04b6eb1382
Content-Type: text/plain; charset=ISO-8859-1

The README.hardware file in the poky directory talks about creating images
on 2 types of disk for the Atom based PCs like the n450. The one I've
successfully tested is the core-image-sato on a USB key.  I have no luck
with the directdisk method because the image recipe doesn't exist for
core-image-minimal-directdisk or core-image-sato-directdisk.

Is there a way to put Yocto on the hard drive on a Atom PC?

Jim A

--14dae9cdc125fcb59b04b6eb1382
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>The README.hardware file in the poky directory talks about creating im=
ages on 2 types of disk for the Atom based PCs like the n450. The one I&#39=
;ve successfully tested is the core-image-sato on a USB key.=A0 I have no l=
uck with the directdisk method because the image recipe doesn&#39;t exist f=
or core-image-minimal-directdisk or core-image-sato-directdisk.</div>

<div>=A0</div>
<div>Is there a way to put Yocto on the hard drive on a Atom PC?</div>
<div>=A0</div>
<div>Jim A</div>
<div>=A0</div>

--14dae9cdc125fcb59b04b6eb1382--

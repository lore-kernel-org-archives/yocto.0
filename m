Return-Path: <elvis.dowson@gmail.com>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3049CE013B7
	for <yocto@yoctoproject.org>; Thu,  3 May 2012 05:56:08 -0700 (PDT)
Received: by wibhm17 with SMTP id hm17so269803wib.11
	for <yocto@yoctoproject.org>; Thu, 03 May 2012 05:56:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:date:message-id
	:to:mime-version:x-mailer;
	bh=Mx7lwp1lrNGthl5VIdTI5Zhms8L++DWOWpQpELQL0+s=;
	b=sdVGbbc9KXlY7KFjjFDOVi1wI690AUt6vNlS/bZu70xvSNs/yF28ouXg8haklYqvND
	dgGjKGA6aSfsOEXgfMUfzvmIKA74U/CFXFDhcQi8/x+mQ96D/gg2Uw6T6ScwvVrdlMTt
	au9rx9Fy/G/mFhkwcciaWaqBA9/QaPkdUPMW1xNWDqoiYL+k0NUWkj04PKgGCjxD45E6
	1k0GYksgg6qVHmuFXe1oDYrc57rYNVXWvathjy0tD/n1xgrH0jxOo1ae1cPEETXRCp9e
	vYI6Igf0GysiAmhW0i59BYRg9wI9Ylpfn7cb2uuWl/1X6PAF/vIzY+dicMH6Ruxungvl
	w6UA==
Received: by 10.216.141.164 with SMTP id g36mr508489wej.119.1336049767181;
	Thu, 03 May 2012 05:56:07 -0700 (PDT)
Received: from [192.168.1.33] (240.Red-88-6-19.staticIP.rima-tde.net.
	[88.6.19.240])
	by mx.google.com with ESMTPS id l5sm1900418wia.11.2012.05.03.05.56.04
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 03 May 2012 05:56:06 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Thu, 3 May 2012 14:56:03 +0200
Message-Id: <880CAB78-91DC-46B5-A4BB-00D33FFA9624@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1257)
X-Mailer: Apple Mail (2.1257)
Subject: Build error: Could not inherit file classes/systemd.bbclass
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
X-List-Received-Date: Thu, 03 May 2012 12:56:08 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,
     I've setup and configured an Ubuntu-12.04 LTS 64-bit system, and I =
get a build error when I run the following command:

$ bitbake -c fetchall core-image-minimal

Pseudo is not present but is required, building this first before the =
main build
WARNING: Host distribution "Ubuntu 12.04 LTS" has not been validated =
with this version of the build system; you may possibly experience =
unexpected failures. It is recommended that you use a tested =
distribution.
ERROR: ParseError at =
/tool/yocto/meta-ti/recipes-misc/payload/bonescript.bb:5: Could not =
inherit file classes/systemd.bbclass
ERROR: Command execution failed: Exited with 1

Summary: There was 1 WARNING message shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit =
code.


Best regards,

Elvis Dowson=


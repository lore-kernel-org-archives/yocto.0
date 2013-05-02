Return-Path: <seth.boll@gmail.com>
Received: from mail-ia0-f181.google.com (mail-ia0-f181.google.com
	[209.85.210.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D4C1E014C8
	for <yocto@yoctoproject.org>; Wed,  1 May 2013 17:13:15 -0700 (PDT)
Received: by mail-ia0-f181.google.com with SMTP id f27so52853iae.26
	for <yocto@yoctoproject.org>; Wed, 01 May 2013 17:13:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=81hqAY7e4H8gDHEsgdLHSYlxDZ23hukWrt44dQnop/Y=;
	b=DdwudvKIsLblOa9MoqZXeqjEI+zUkoTGcu+jZ9dIcDiMAV6N7dAkeQ7VHeO0KmBVlU
	VUPaDVYFHu+cKGuCveB36r1SJJY7Dm0/UhU5SRGh9NIo/gcqQEoWQW6DXgSQq3lLWXsP
	UEBSJu39XjH7jzSLSHfct/ykZx7EQQGqjbwKrVdWKOOQ8OUEV8FV2azJTb0ZtR5XJfs6
	xe9A5/I+DFjeaEghLsHgeMWLniv5w5KjAJwZJ+/UKhKeCRPAuiIpSVkzwv4UP9iYPV2T
	DutMYYCe/gcP6EkmOIl10NO5XYFGy0o1207f+mfMDmUyYVLSnD2nd90glv1ZFNNnXpUn
	bj1w==
X-Received: by 10.50.12.201 with SMTP id a9mr2952129igc.10.1367453594449;
	Wed, 01 May 2013 17:13:14 -0700 (PDT)
Received: from [192.168.1.102] (c-66-41-191-40.hsd1.mn.comcast.net.
	[66.41.191.40])
	by mx.google.com with ESMTPSA id qs4sm6385048igb.10.2013.05.01.17.13.13
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 01 May 2013 17:13:13 -0700 (PDT)
Message-ID: <5181AF9F.8040702@gmail.com>
Date: Wed, 01 May 2013 19:13:19 -0500
From: seth bollinger <seth.boll@gmail.com>
User-Agent: Postbox 3.0.7 (Macintosh/20130119)
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: bash specific syntax in bbclass files
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
X-List-Received-Date: Thu, 02 May 2013 00:13:15 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello All,

I recently ran into a problem in 
meta-raspberrypi/classes/sdcard_image-rpi.bbclass

The following was run through my default debian dash shell (I thought I 
switched a while back, but I must have reverted my VM image or 
something...).

   # If SDIMG_ROOTFS_TYPE is a .xz file use xzcat
   if [[ "$SDIMG_ROOTFS_TYPE" == *.xz ]]
   then

The bash specific syntax ([[) failed in dash causing the "else" path to 
be traversed instead of the correct "then" path.  The failure was silent 
and resulted in a blind copy of a compressed rootfs to the sdcard 
image.  Of course this didn't run.  :)

1.  Is there particular shell syntax that class files should stick too?
2.  I couldn't find a wildcard string search in dash.  Can anyone 
suggest a more shell agnostic way to do this?
3.  Is there a way to guarantee we're running in bash if we're using 
bash specific syntax?

My solution was the following, but it's less readable.

if echo "${SDIMG_ROOTFS_TYPE}" | egrep -q "*\.xz"

Thanks,

Seth



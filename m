Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f172.google.com (mail-ve0-f172.google.com
	[209.85.128.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D0FAE007D6
	for <yocto@yoctoproject.org>; Thu, 12 Dec 2013 15:48:07 -0800 (PST)
Received: by mail-ve0-f172.google.com with SMTP id jw12so889809veb.3
	for <yocto@yoctoproject.org>; Thu, 12 Dec 2013 15:48:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=Xq+5Ai7seT6jGdOfM0vzh2DLWVDR/7iD+vIpk5ML0FQ=;
	b=iuu97pxvIEJZGuWNRdqqzMzN907lWF4AvjnvjKbAmMweWAgZev3DcZ1v8KfUfzxOj4
	OT5fg6b+5sL+6PWpmfYg59G5cmLb0VfI+pyg8W5ho7LW9B0Jt22XRtH4xYO5TddQW0mA
	A5XIIrU2zlJMTZkuKKAVmsXQZV26/PeRPyGjQwE+Oucqj/mSCtH/jUrGZqtXuBO78RfV
	xqCPqurk0pXqbiX+SNmIF6EErK67GW0N1hH5a74Mo+OJIurynJC2paO+ySwh0rC0JNmX
	vuZFM3xjPOx3R6XOBvl6WZwSK3btIQGwA75d5DoQY5QAH5nyC+nyG48godRnB6A75UCU
	dcWQ==
X-Gm-Message-State: ALoCoQk2OR7JYIc9kiaJyZ4yz5IpOk4r3dki7sIuUrC1yx7j12LmM5nAE8ApaQu0k6QtNe+p6TJv
MIME-Version: 1.0
X-Received: by 10.220.124.68 with SMTP id t4mr67300vcr.52.1386892086586; Thu,
	12 Dec 2013 15:48:06 -0800 (PST)
Received: by 10.52.161.7 with HTTP; Thu, 12 Dec 2013 15:48:06 -0800 (PST)
Date: Thu, 12 Dec 2013 23:48:06 +0000
Message-ID: <CAPhnLPCDyGo2tfuD435uAECJHFfeQUHe3imszMZGt2AdrdNiJw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Zhao Yi <yi.zhao@windriver.com>
Subject: Dylan point release candidate
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
X-List-Received-Date: Thu, 12 Dec 2013 23:48:10 -0000
Content-Type: text/plain; charset=ISO-8859-1

The first release candidate for dylan-9.0.3 is currently being
generated. It should be available in a few hours at:

http://autobuilder.yoctoproject.org/pub/releases/dylan-9.0.3.rc1

bitbake a779ae4d4ef47fc36b98ec5753289af7755fcd03
eclipse-poky-juno dc9a609c68fe4a6bbbf34d418fd6611489c1d6f7
meta-fsl-arm 24caed8ff6f6088033d00d4567f7a7cad7fd5dd3
meta-fsl-ppc 84edb861ec2f5cde6e4034504024a4261fdaf3af
meta-intel b383d94711bf13f67ab00a07022cfcb512ff206c
meta-minnow d5849d5ea14bc9b34ddd05b92c3a7ea46bd1863a
meta-qt3 4c27cce6688aa39852f3cba5e7b80ec279019605
oecore b17beebf488d8392698a5efdd6f08b599c1ee1cd
poky f665cee7a695ba403ccec645a0364702d5af3046

-- 
Elizabeth Flanagan
Yocto Project
Build and Release


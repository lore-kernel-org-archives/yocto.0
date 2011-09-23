Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92B5CE004EB
	for <yocto@yoctoproject.org>; Fri, 23 Sep 2011 07:02:54 -0700 (PDT)
Received: from [192.168.0.58] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id BC63520797
	for <yocto@yoctoproject.org>; Fri, 23 Sep 2011 14:19:57 +0100 (BST)
Message-ID: <4E7C918D.5050407@communistcode.co.uk>
Date: Fri, 23 Sep 2011 15:02:53 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:6.0.2) Gecko/20110902 Thunderbird/6.0.2
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Eclipse Plugin 1.1-M4
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
X-List-Received-Date: Fri, 23 Sep 2011 14:03:00 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I am trying to get the latest plugin working with Eclipse Indigo and 
have followed the instructions listed here:

http://permalink.gmane.org/gmane.linux.embedded.yocto.general/2596

The instructions all work fine until I point Eclipse to a local git 
clone of the EclipsePlugin directory. When I try to install the plugin I 
recieve this error message:

Cannot complete the install because one or more required items could not 
be found.
   Software being installed: Yocto Plugin for Eclipse 1.1.0.qualifier 
(org.yocto.sdk.feature.group 1.1.0.qualifier)
   Missing requirement: Yocto Plugin for Eclipse 1.1.0.qualifier 
(org.yocto.sdk.feature.group 1.1.0.qualifier) requires 
'org.yocto.sdk.source.feature.group 0.0.0' but it could not be found

Could anyone shed any light on the situation?

Regards,
Jack.


Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B110E004E9
	for <yocto@yoctoproject.org>; Tue, 11 Oct 2011 08:41:26 -0700 (PDT)
Received: from [192.168.0.57] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id 805D6232F7
	for <yocto@yoctoproject.org>; Tue, 11 Oct 2011 15:23:29 +0100 (BST)
Message-ID: <4E9463A3.3090005@communistcode.co.uk>
Date: Tue, 11 Oct 2011 16:41:23 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: QEmu Script Error Checking
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
X-List-Received-Date: Tue, 11 Oct 2011 15:41:32 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I have run into the following issue where the tap device is in use due 
to the QEmu machine unexpectedly crashing. The error I recieve is here:

http://i.imgur.com/5t9U1.png (appologies for the screenshot but it 
wouldn't let me copy the text)

Is there any leaway for more robust error checking or a way to forcibly 
destroy the tap node to allow a new one to be created?

Cheers,
Jack.


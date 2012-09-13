Return-Path: <ml@communistcode.co.uk>
Received: from eumx.net (eumx.net [91.82.101.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19345E013DB
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2012 04:34:44 -0700 (PDT)
Received: from localhost ([127.0.0.1]:49244 helo=eumx.net)
	by eumx.net with esmtp (Exim 4.72)
	(envelope-from <ml@communistcode.co.uk>) id 1TC7gg-0000Da-UR
	for yocto@yoctoproject.org; Thu, 13 Sep 2012 11:34:27 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=eumx.net; h=message-id
	:date:from:reply-to:mime-version:to:subject:content-type
	:content-transfer-encoding; s=default; bh=+WNkAWjQANXV0+j/IL0joj
	Jy7KI=; b=Gdu2iYQd1A+k1dCCLpJOZxp6ARB16gJG5UwupaOiunghEfnzpegeIZ
	XPynCl+9krHwU5SgRm7tQgfo6Mi467i4LAq590zwcY/DJ62eGd4UOc1bZAYE/tB4
	0NWIJE0kQ1o7NbuthNAvfcg8e3obTc6yHIj3F35SofJqRdW0/OPMw=
Received: from [195.171.99.130] (port=62346 helo=[192.168.0.40])
	by eumx.net with esmtpa (Exim 4.72)
	(envelope-from <ml@communistcode.co.uk>) id 1TC7gg-0000DW-Rz
	for yocto@yoctoproject.org; Thu, 13 Sep 2012 11:34:26 +0000
Message-ID: <5051C51B.2000007@communistcode.co.uk>
Date: Thu, 13 Sep 2012 12:35:55 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120828 Thunderbird/15.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Adding items to meta-toolchain
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: ml@communistcode.co.uk
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 13 Sep 2012 11:34:44 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I'm sure I saw something regarding this come up recently, but I can't 
seem to find it so apologies if this has just been answered.

What is the proper way of adding things to a meta-toolchain build. For 
example, I have included in my image libwebsockets as a library which my 
application dynamically links against. Now at the moment I build my 
appplication locally against the output from meta-toolchain and a -I to 
specific the sysroot of my build. However how do I get libwebsockets.so 
and libwebsockets.h included in a meta-toolchain build so I can cross 
compile with the library on a host without the build sysroot?

Regards,
Jack.

-- 

   Jack Mitchell (jack@embed.me.uk)
   Embedded Systems Engineer
   http://www.embed.me.uk

--



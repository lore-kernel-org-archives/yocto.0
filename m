Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by mx1.pokylinux.org (Postfix) with ESMTP id 12C044C800B2
	for <yocto@yoctoproject.org>; Sat, 19 Feb 2011 18:13:53 -0600 (CST)
Received: from durham.keylevel.com ([109.224.134.115]:46976
	helo=[192.168.1.83])
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1Pqwvw-00036m-0o
	for yocto@yoctoproject.org; Sun, 20 Feb 2011 00:13:52 +0000
Message-Id: <D74F59D1-086C-4C9E-BCBF-550266AC1EDC@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Apple Message framework v936)
Date: Sun, 20 Feb 2011 00:13:49 +0000
X-Mailer: Apple Mail (2.936)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
Subject: How to reference /usr/include
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
X-List-Received-Date: Sun, 20 Feb 2011 00:13:53 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

I'm trying to make a simple recipe that uses libxml. However, the  
headers for this are in libxlm2/libxml, so I need to add an include  
path.

I can get this to work using an absolute path, as shown below:

do_compile() {
    ${CC} -I/usr/include/libxml2 helloworld.c -o helloworld
}

However, this isn't good as it uses /usr. How should I do this? I've  
tried to find a ${...} to use, but I've not found anything that works.

Chris Tapp

opensource@keylevel.com
www.keylevel.com





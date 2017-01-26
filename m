Return-Path: <Jason.Cooper@attocore.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19817E0085D; Thu, 26 Jan 2017 02:43:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 997 seconds by postgrey-1.32 at yocto-www;
	Thu, 26 Jan 2017 02:43:22 PST
Received: from mx1.solardns.com (mx1.solardns.com [109.73.127.119])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB60DE0082E
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2017 02:43:22 -0800 (PST)
Received: from titan.solardns.com ([213.129.84.167])
	by mx1.solardns.com with esmtps
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.86)
	(envelope-from <Jason.Cooper@attocore.com>)
	id 1cWhGN-0008K2-Dw; Thu, 26 Jan 2017 10:26:44 +0000
Received: from [80.85.87.23] (port=52366 helo=[10.8.0.18])
	by titan.solardns.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.87)
	(envelope-from <Jason.Cooper@attocore.com>)
	id 1cWhGN-001ucT-9L; Thu, 26 Jan 2017 10:26:43 +0000
From: Jason Cooper <Jason.Cooper@attocore.com>
To: yocto@yoctoproject.org
Message-ID: <a7383673-0d71-e73c-9f18-0ffc5f6e9ba7@attocore.com>
Date: Thu, 26 Jan 2017 10:26:43 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
X-AuthUser: jason.cooper@attocore.com
X-Originating-IP: 213.129.84.167
X-SpamExperts-Domain: out.solardns.com
X-SpamExperts-Username: 213.129.84.167
Authentication-Results: solardns.com;
	auth=pass smtp.auth=213.129.84.167@out.solardns.com
X-SpamExperts-Outgoing-Class: unsure
X-SpamExperts-Outgoing-Evidence: Combined (0.50)
X-Recommended-Action: accept
X-Filter-ID: s0sct1PQhAABKnZB5plbIeDM3CFaILk+pXAj5lg13p3Bkn2V7eX5DaYwDpeBIoaGBjIf54pj8W0w
	FGRH58WQD6M+f+aiQxyq7mtv3xEd2UkL39xq7iFOofCrBDF/WHtM8psfgciDTedlVS49q/iD+WGx
	cw3wiKGQw5espMTiPkmKyTz9VqY3I3xkM2Fm9JJ836hipxfgslCv1n9Mb2FW45XJP5sTyAl0Iq4A
	JGo3KV030OXrvk+NRCiId9raL5YDDbUi/NnhTlhgEBYHGnQ9wnmRjAEWMdJfXJIBIxjtDySgo2Eg
	KKi5BubPHM68Th8O/z1Qipe0YczecXzcAhw/PyLpQCk9LN96ieg5guM8uFgjsEjgD9bPVONMogqW
	B/Riv2yws1Z2lXL3aklLfDoslJ4KrJMzhTy/4u5BvaE2XRi4eulKklTg9CWoWP3v3vCCwaEh4MHC
	ziS+7iGBWJgglI4fsV6VMUQDns66AKNCom+rlcOVKLVL8ICqnrHqCItSkBp1o6ksvu/MCUfP1W3S
	UlsfersVIkQC+ZylEOD4Nxfv2K2kVZYsHdn7nL9nN+8+3XgnE1t5vxZ+TApKVlvN1A0DDFbYC82S
	1xHEqATOcSlPW8p9pEocP7Urx8rcAa4jO7uz9AZ3Ew2Chg1trGZ/d4KhjxclRupbAAFsqkHq96QH
	mFDqewO9xyOqCYO8P1aHYzaNP4QGREZyTZPoqrLKMygMT3gEJWyA1sjaWEbZdSqXcnZVa/7ZEBco
	qnhGF2YhhnkcAonl3Q/0EYqU2sT2Rt2DpCPlyxQuiYcM0SpCLDyZedOYmRn73hG8gDECUbzlRzSn
	En+RQV8UENZIDqzRq2SDo+JAHJG25dj6Q3se1O9NdpZGAoL29rHwr/p7LPcT
X-Report-Abuse-To: spam@mx1.solardns.com
Subject: mips64 with 'seh' instruction?
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
X-List-Received-Date: Thu, 26 Jan 2017 10:43:26 -0000
Content-Type: multipart/alternative;
	boundary="------------1CF17DA7DAD62D2F505518F4"

--------------1CF17DA7DAD62D2F505518F4
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Folks,

I'm trying to build a mips64 toolchain and qemu runtime. I can build and 
run code but if I link with a third-party library that contains the 
'seh' assembly instruction the executable is killed with SIGILL Illegal 
Instruction, when run with qemu.

If I run the program on the target it works fine. Looking at the 
disassembly shows me that this is when qemu is trying to execute the 
'seh' instruction. This is Krogoth 2.1.2 with:

MACHINE = "qemumips64"
TARGET_FPU = "soft"
DEFAULTTUNE = "mips64-nf"
TUNE_FEATURES = "n64 bigendian"

The 'seh' instruction was introduced in mips32 Release 2, I believe. I 
tried a DEFAULTTUNE of "mips32r2" and a few others but they did not 
help... or perhaps I should be looking at the qemu code?

Thanks

Jason


--------------1CF17DA7DAD62D2F505518F4
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body bgcolor="#FFFFFF" text="#333399">
    <p>Folks,</p>
    <p>I'm trying to build a mips64 toolchain and qemu runtime. I can
      build and run code but if I link with a third-party library that
      contains the 'seh' assembly instruction the executable is killed
      with SIGILL Illegal Instruction, when run with qemu. </p>
    <p>If I run the program on the target it works fine. Looking at the
      disassembly shows me that this is when qemu is trying to execute
      the 'seh' instruction. This is Krogoth 2.1.2 with:<br>
    </p>
    MACHINE = "qemumips64"<br>
    TARGET_FPU = "soft"<br>
    DEFAULTTUNE = "mips64-nf"<br>
    TUNE_FEATURES = "n64 bigendian"<br>
    <br>
    <p>The 'seh' instruction was introduced in mips32 Release 2, I
      believe. I tried a DEFAULTTUNE of "mips32r2" and a few others but
      they did not help... or perhaps I should be looking at the qemu
      code?</p>
    <p>Thanks</p>
    <p>Jason<br>
      <meta http-equiv="content-type" content="text/html; charset=utf-8">
    </p>
  </body>
</html>

--------------1CF17DA7DAD62D2F505518F4--

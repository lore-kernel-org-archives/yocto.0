Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FD6BE006B4
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2011 06:45:18 -0700 (PDT)
Received: from [192.168.0.75] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id BBED22392B
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2011 13:10:03 +0100 (BST)
Message-ID: <4EA025EF.8020008@communistcode.co.uk>
Date: Thu, 20 Oct 2011 14:45:19 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Sysprof build error
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
X-List-Received-Date: Thu, 20 Oct 2011 13:45:24 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I have been sucessfully compiling using the git master branch of poky 
for the past month or so. I switched branches to Edison yesterday so I 
would be working with the stable branch instead and now I cannot compile 
my build.

I am currently getting errors with sysprof, however if I clean the 
shared state of sysprof I then get errors with Avahi, so I then clean 
shared state of Avahi and it goes back to sysprof errors. Anyway, my 
error log is as shown below:

http://pastebin.com/j5vf6wzj

I have tried cleaning and recompiling glib-2.0 due to this error:

| 
mnt/yocto/poky/qemuarm-toolchain/tmp/sysroots/qemuarm/usr/lib/libgtk-x11-2.0.so: 
undefined reference to `g_datalist_get_data'

Which I believe is glib related, however this might not be the 
fundamental error?

Anyway, any help would be appreciated!

Cheers,
Jack.


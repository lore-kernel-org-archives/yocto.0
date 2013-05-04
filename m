Return-Path: <seth.boll@gmail.com>
Received: from mail-vb0-f47.google.com (mail-vb0-f47.google.com
	[209.85.212.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C3CDE00304
	for <yocto@yoctoproject.org>; Sat,  4 May 2013 13:36:29 -0700 (PDT)
Received: by mail-vb0-f47.google.com with SMTP id x14so2141791vbb.20
	for <yocto@yoctoproject.org>; Sat, 04 May 2013 13:36:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=rSvMseWBrWmNZvE6hhzMlLRWSzgL2s5ZBAgC98ri+po=;
	b=QyKNki2EkXD8DDQsrehhm4r7aQlQqrS4OyB6EMLQSp75yPIFuyQ9hXL64Bfdjnk5t7
	vZ4EkDAbNELkOHdYVT4ZNwVAMYsOd/apASQIaNFb8hofstFd3Vv6WAXXHuDh3jqTu6ae
	8WN7rLCnL+mXX1aI3mvfwEiZTQET2RXg0H77b9o2edEibLUEDuLlzSA8yWTtJqL3PHqb
	mPjtSTGx3gA8KUohLTtzWKGTxzgvzQpuQ629hzYkSG7rZtAjqbfhVICPs0aGbPfRkBRc
	9BK7jDiCtGBWd4K9rKHohAri2v/XLhhGt2QSK5K1CTxt45NLvw9/AU4VZNUSC6qClHCY
	+oBA==
X-Received: by 10.221.9.70 with SMTP id ov6mr5121125vcb.72.1367699788638;
	Sat, 04 May 2013 13:36:28 -0700 (PDT)
Received: from [192.168.1.102] (c-66-41-191-40.hsd1.mn.comcast.net.
	[66.41.191.40])
	by mx.google.com with ESMTPSA id tk7sm924287vdc.0.2013.05.04.13.36.26
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 04 May 2013 13:36:27 -0700 (PDT)
Message-ID: <51857159.8000502@gmail.com>
Date: Sat, 04 May 2013 15:36:41 -0500
From: seth bollinger <seth.boll@gmail.com>
User-Agent: Postbox 3.0.7 (Macintosh/20130119)
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: resize_inode
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
X-List-Received-Date: Sat, 04 May 2013 20:36:29 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello All,

I'm trying to create a small SD card image that I can quickly dd to card 
and then do an online resize as a post process step to take advantage of 
the entire space of the card.  Similar to how the raspbian image works.  
Unfortunately genext2fs doesn't seem to set this flag (and reserve the 
required resources), so the online resize fails.  I tried using tune2fs, 
as it looked like there was some interest in adding support, but it 
looks like it never happened.  Has anyone else run into this issue?  Is 
there a solution?

resize2fs 1.42.1 (17-Feb-2012)
Filesystem at /dev/mmcblk0p2 is mounted on /; on-line resizing required
old_desc_blocks = 1, new_desc_blocks = 15
resize2fs: Filesystem does not support online resizing

| Setting filesystem feature 'resize_inode' not supported.
| tune2fs 1.42.1 (17-Feb-2012)

Thanks,

Seth


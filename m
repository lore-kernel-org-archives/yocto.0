Return-Path: <446257357@qq.com>
Received: from smtpbg55.qq.com (smtpbg55.qq.com [64.71.138.44])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 65E98E0059A
	for <yocto@yoctoproject.org>; Sun,  8 Apr 2012 02:31:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s0907;
	t=1333877515; bh=tCJbGbhYSwqk65uH9i4owPwU4TvP6vFJv4MNNMFAg40=;
	h=X-QQ-mid:Received:X-QQ-SSF:Message-ID:Date:From:User-Agent:
	MIME-Version:To:Subject:Content-Type:Content-Transfer-Encoding;
	b=HRcnsB+7gBeZgEN1roEz9ik9BYEBZ0952t1rLyFEbs3jMpOjuAxuSzuWNEnlaW6oT
	NjPJ1ZcHYbcy0UCy65MoxtBRFstqPkrQ4J5TAMNH4Mz62fI0F9uKfkrs4UUDHYS
X-QQ-mid: esmtp1t1333877513t544t12561
Received: from [58.198.103.18] (unknown [58.198.103.18])
	by esmtp4.qq.com (ESMTP) with SMTP id 0
	for <yocto@yoctoproject.org>; Sun, 08 Apr 2012 17:31:53 +0800 (CST)
X-QQ-SSF: 00000000000000F0FNF001000000000
Message-ID: <4F815B09.9090003@qq.com>
Date: Sun, 08 Apr 2012 17:31:53 +0800
From: shushm <446257357@qq.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Sun, 08 Apr 2012 08:32:02 -0700
Subject: build the adt error
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
X-List-Received-Date: Sun, 08 Apr 2012 09:31:57 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

When I use the bitbake meta-toolchain-sdk,it comes the error: Failed 
dependencies:
|     libcurl.so.4 is needed by qemu-nativesdk-0.15.1-r4.i686.
PS:I have checked the libcurl.so.4 in /usr/lib/i386-linux-gnu.
How can I fix it? Thank you~



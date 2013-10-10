Return-Path: <seth.boll@gmail.com>
Received: from mail-ie0-f172.google.com (mail-ie0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35DBEE01426
	for <yocto@yoctoproject.org>; Wed,  9 Oct 2013 17:16:18 -0700 (PDT)
Received: by mail-ie0-f172.google.com with SMTP id x13so3617611ief.17
	for <yocto@yoctoproject.org>; Wed, 09 Oct 2013 17:16:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=9++F6Axzs/St/sIqOj61VEN6ndL1D2NNi7e/9+ToKe4=;
	b=OAz/1wWDyDArguolXX41l3IrH4SQCQcPcjIKh19ZL9g26b69KPbiqnrOqfk2qYiJUW
	E8l5F1h9Gt/1fa0YJqV3qqN60kX8vYIG4jTk9Puf/s5w2cAVfc87u2tgAz0ECWLdjlTw
	zWQ4cJvohlTpTGRTpg4zpfLy8GE0GHmcRlqWoRr1GqpTerLnHK+fhmezTzOd5wVsgrtO
	GjzDKxHPa/3jTx6mpdikKjteoY2Ly5GTmh37jDp3X+QMn1U5jZRkatN+z0fWdvXty5cn
	btZ/MkXP40N6dQT8Sr9K9lIHcV/K+lsWf8vDgItIohurqDRr86jJqWJFoztn53B57AQR
	//GQ==
X-Received: by 10.42.30.143 with SMTP id v15mr6436669icc.24.1381364178004;
	Wed, 09 Oct 2013 17:16:18 -0700 (PDT)
Received: from [192.168.1.102] (c-66-41-191-40.hsd1.mn.comcast.net.
	[66.41.191.40])
	by mx.google.com with ESMTPSA id ka1sm10238892igb.7.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 09 Oct 2013 17:16:17 -0700 (PDT)
Message-ID: <5255F1CF.8020203@gmail.com>
Date: Wed, 09 Oct 2013 19:16:15 -0500
From: seth bollinger <seth.boll@gmail.com>
User-Agent: Postbox 3.0.8 (Macintosh/20130427)
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Recipes that update a shared file
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
X-List-Received-Date: Thu, 10 Oct 2013 00:16:23 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello All,

What's the best practice for recipes that need to update a shared file 
provided by a different recipe?  For example let's say that the 
widget-watcher recipe creates /etc/ww.conf and the widget1, and widget2 
recipes need to append a line to the config.  I've searched through the 
recipes a bit and can't find a good example.  The closest that I've seen 
is pkg_postinst().  Is that the best method?

Thanks!

Seth


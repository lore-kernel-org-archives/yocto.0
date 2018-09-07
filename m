Return-Path: <bds@bsmucker.eu.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD03DE00953; Fri,  7 Sep 2018 13:24:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 449 seconds by postgrey-1.32 at yocto-www;
	Fri, 07 Sep 2018 13:24:57 PDT
Received: from fbo-2.mxes.net (fbo-2.mxes.net [205.237.194.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26F9FE0090C
	for <yocto@yoctoproject.org>; Fri,  7 Sep 2018 13:24:57 -0700 (PDT)
Received: from smtp-out-2.mxes.net (smtp-out-2.mxes.net [67.222.241.118])
	by fbi-2.mxes.net (Postfix) with ESMTP id 0002E27509
	for <yocto@yoctoproject.org>; Fri,  7 Sep 2018 16:17:26 -0400 (EDT)
Received: from webmail.mxes.net (webmail.mxes.net [67.222.241.105])
	by smtp.mxes.net (Postfix) with ESMTP id 789FB2755C
	for <yocto@yoctoproject.org>; Fri,  7 Sep 2018 16:17:25 -0400 (EDT)
Received: from webmail.mxes.net (webmail.mxes.net [67.222.241.105])
	by webmail.mxes.net (Postfix) with ESMTPA id 0840C3B36F
	for <yocto@yoctoproject.org>; Fri,  7 Sep 2018 16:17:25 -0400 (EDT)
MIME-Version: 1.0
Date: Fri, 07 Sep 2018 13:17:24 -0700
From: Brian Smucker <bds@bsmucker.eu.org>
To: yocto@yoctoproject.org
Message-ID: <c6323c5a6230ad0faea75b4f31a5e7a9@bsmucker.eu.org>
X-Sender: bds@bsmucker.eu.org
User-Agent: Roundcube Webmail/1.3.7
X-Sent-To: <eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw==>
Subject: Security updates question
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
X-List-Received-Date: Fri, 07 Sep 2018 20:24:57 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Hello all,

We have a device whose image is built using an older yocto image. It is 
based on yocto Danny, if I recall correctly.

How do users of yocto handle the need occasionally to update one or more 
component packages to deal with security vulnerabilities?

I am not a yocto expert and I was hoping there would be a clear way 
forward here.

Migrating all our recipes to the latest version of yocto probably should 
be done, but it would involve weeks of pain. I know, I started to do it 
sometime back.

So that is one option, but a very unattractive one at the moment.

When we jumped into using Yocto, I was hoping that there would be a 
clear answer to this, but I have been frustrated. Perhaps there is a 
clear answer, but it's outside of what I know.

What are my options and the tradeoffs of each?

Thanks

Brian


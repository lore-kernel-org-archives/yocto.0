Return-Path: <jfabernathy@gmail.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2427BE01363
	for <yocto@yoctoproject.org>; Thu, 24 May 2012 07:55:19 -0700 (PDT)
Received: by vcbfo14 with SMTP id fo14so2246082vcb.35
	for <yocto@yoctoproject.org>; Thu, 24 May 2012 07:55:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=Zjr+3rm5gR3Pomb9ejKQ5kF9KtIY3XlS1uypFNuKXx8=;
	b=afH8vl4CroGjDgjey0VHhu4IwMHGDchtsXsVJ1M7BNWPsfvItlITwSoZ2t7dQzGxbq
	1uiSf04FqLXGF8OxoiMt6s9OwHuuf7b9T/xHrLGcIFT27StqH914QOMeQiTTF1tf4wIb
	s0HRQufOVPvdx6qMpNdIoAyU+xw5Wy1dx9n9AFiBodTC+cAzvrVK0oyweb0Fs2gTPZlw
	PPkYvRHPnkp4hVXpRbrwH0oB2bRP1evjCReDZzSP7F2NfJyb/gWw5KMx+1/B4nkQx9KC
	I7hsH8TQhHmsbISJz3li+zlLwx6xRb6eghjRD4dYNnPy9jLoUhJIKZncLViifDyoIq5X
	SV1A==
Received: by 10.52.95.225 with SMTP id dn1mr2441470vdb.99.1337871318381;
	Thu, 24 May 2012 07:55:18 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-33-55.dhcp.embarqhsd.net. [184.4.33.55])
	by mx.google.com with ESMTPS id
	o15sm28250693vdi.15.2012.05.24.07.55.17 (version=SSLv3 cipher=OTHER);
	Thu, 24 May 2012 07:55:17 -0700 (PDT)
Message-ID: <4FBE4BD6.5060800@gmail.com>
Date: Thu, 24 May 2012 10:55:18 -0400
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: checking out branches: tracking vs. tags
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
X-List-Received-Date: Thu, 24 May 2012 14:55:19 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I'm trying to understand a few git concepts as they relate to Yocto.  
Reading the 1.2 version of the Development Manual Appendix A 
(http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#dev-manual-bsp-appendix), 
I see the statement:

   $ git checkout denzil-7.0 -b denzil


What I think this does is create me a local branch that is fixed to what 
was committed when the denzil-7.0 tag was created and it will remain 
that way and will not track the denzil branch as it gets updated.  Right????

Now if I want to track the denzil branch as changes are committed, I 
think I do the following.

  $ git checkout origin/denzil -b denzil


Now I can do git pull commands to get the updates that are committed. 
Right??

Jim A



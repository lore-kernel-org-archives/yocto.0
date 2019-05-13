Return-Path: <matthias.schoepfer@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3471E00D12; Mon, 13 May 2019 09:53:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (matthias.schoepfer[at]googlemail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.44 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
	[209.85.221.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BEA9AE00B8F
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 09:53:02 -0700 (PDT)
Received: by mail-wr1-f44.google.com with SMTP id c5so16062179wrs.11
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 09:53:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding:content-language;
	bh=zc5T36lX8Ix59aML5kReAH6VprHcHLU3Z9kq7JUCLF8=;
	b=AkYmMrghOocPZPYXLyZvDFdwbh3BZVtnZPMj5U33/EqMlJPH/SxfA+G04nOsY66gO8
	Jj4QMoQgAmCpjR5bGb032LXaTjDSVaolZAR0dkPmdqXWCR+GNN7hWHIZuNNUib92nDpt
	9eNlZbtXe/Crdpt8XG9fkvvc/jqyJNRS81eKso1Q2o6dNyikSPzXa10JWybsVB7VwUMM
	RykQW7ZRWgfGA0HvMg1glxkimOE1Fc1TOtthYggCDv7uFIJ91n3y3J8KvasiAo6pCc/C
	kK1FFSJknewbgjappS6MCrfWI1UT1urHrPBYgJDu4kq1EZMg3IrYXHHLgF6aSEz8R/Ok
	qr4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=zc5T36lX8Ix59aML5kReAH6VprHcHLU3Z9kq7JUCLF8=;
	b=YX7+s0OB2aNNp0LURkWEFamcB642KvWZIipx2f9L7/Zn9nxld2/afB+3boV4xwFxiU
	ZF6AUmiAAxUV0cLkOlZbynNfNKMs6EZa9inpWgamL19SscVlqbUOL6Yz1RzsLhSlLx03
	3O/eMjNRSj0oORZcngIPIx9dSZybcrDvU00kvSLBiNm1eAADhJbLRY5vrGGDIYrf3RBw
	HC7UDvC+ymxxD2ho+0PwaR8AErUPlKUUqzkkmXJo09hJ4seoL0OYRhqO1AzfRAVlKUZx
	URD0MbaGGonD1HcD3L1PjGhzOdwJg6xvjI8R2r37xtbrOWq9l3O7IkFTgEltVJ6gPtib
	waaA==
X-Gm-Message-State: APjAAAXrLyXF2lyM8AOeKFfhAOvTUDHZ+h9Xhco1a/l7Q4pXO8WS1V7i
	DxdnBDUFsKlW6PhD68J5q+zfLKZ/
X-Google-Smtp-Source: APXvYqysVoWWih/3QuWNUaVJ5jjC9EjtmKYjW94aDpKxySrnwl1thVb0Nx5CXGsoFz4jWk6AwzjiLg==
X-Received: by 2002:a5d:5506:: with SMTP id b6mr15628662wrv.221.1557766381543; 
	Mon, 13 May 2019 09:53:01 -0700 (PDT)
Received: from [172.16.100.14] ([213.168.66.146])
	by smtp.gmail.com with ESMTPSA id
	j10sm45284964wrb.0.2019.05.13.09.52.59 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Mon, 13 May 2019 09:53:00 -0700 (PDT)
To: yocto@yoctoproject.org
From: Matthias Schoepfer <matthias.schoepfer@googlemail.com>
Message-ID: <7b3a42c2-1bc2-e739-5ff8-77e27b053c9c@googlemail.com>
Date: Mon, 13 May 2019 18:52:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
Subject: Debugging dev-deps
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
X-List-Received-Date: Mon, 13 May 2019 16:53:04 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi!

I am trying to write a recipe for a rather tricky component (that has 
plugins and stuff). Anyhow, I cannot get bitbake not to complain that 
<PACKAGENAME> rdepends on <PACKAGENAME>-dev. And if I INSANE_SKIP it, 
the -dev package will get installed. But I cannot figure out which file 
is responsible. I tried to ldd all installed files in <PACKAGENAME>, but 
could not get any results. Any hints on how to debug this further?!

Thanks and regards,

   Matthias



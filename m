Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9D8CE0085D; Fri, 26 May 2017 18:34:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=BAYES_40,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 BAYES_40 BODY: Bayes spam probability is 20 to 40%
	*      [score: 0.2084]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.86.89.64 listed in list.dnswl.org]
Received: from elasmtp-curtail.atl.sa.earthlink.net
	(elasmtp-curtail.atl.sa.earthlink.net [209.86.89.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F556E0077F
	for <yocto@yoctoproject.org>; Fri, 26 May 2017 18:34:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1495848892; bh=/ZGnqYhDU1Zmun/XHDDq1sZ1+NLMgiuwZDTf
	gasuNlQ=; h=Received:From:To:Subject:Date:Message-ID:MIME-Version:
	Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:
	X-MimeOLE:X-ELNK-Trace:X-Originating-IP; b=LirQAWxa5+h0MYyr/bWI9j4
	iJzKhLGDy/zSPgC0XICWfn0RqA4xk+bkU4OtS//FuPu89hp3O9robNF/yeU5mrFXj5d
	CByl90mUN4GgS7/+53GcegdOFkDNTXzz0/xfXIdBV00BKPYF7y8SqVBVXW/DsgiB3y6
	ICE/qOnusjDsKmCV6iOk6ol7M1xbyWmGjo3exthRy2Q1avFbAaoFCQlD3x4COX6EbvG
	Q7uBNaLY7+WOT0WUFa8gooW+G/Ny0gmv4SsaHFZK2JwkNU8zryxuUHjpXMmzRkQqtnK
	fB7SpIH7enu8q6j8gSyasQsrng3jLpeLgNn2PTJIfwFZHwBKPtA==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk12062016; d=ix.netcom.com;
	b=KDgqGJ6WQYjUvZj6e0Rvt1du19CYlhHSmVNlJfsWbX398rh59eJFOUZfOzuDOlD098P0LWtF2fhFviG9EQeZYskjEMNZup0eJcQ9jQevmRXSkFDhkzhAAZDtQV5o7pEqWxsV40z3rkHqOIVzelsEtWie6GxSqjeID5zv9PL0L1lR2c9kTxpcRMeasLVQNG3HnXRKv6G4AKSX+4YDTkDaMCgeW4jzdAP9W1RkdJTNKc9JkG8ryjKCR/WnnyKSj63utjjsaFKzlBSSbFQy44zTSVnYqfI6uYfRYrjQ2opCe7BjyeZVHSRjJ49YjtJlE4j85ycsHROZSqkVK4xIHKtusw==;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [45.49.236.199] (helo=PAULD)
	by elasmtp-curtail.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1dEQd0-00083z-Ug
	for yocto@yoctoproject.org; Fri, 26 May 2017 21:34:51 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Fri, 26 May 2017 18:34:57 -0700
Message-ID: <2F9B07C5AA344ED6AA5B799671B76F5A@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdLWiXKxS3GBKRS9QKSzo6ahsYT9Sg==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.23651
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e5196068834c8188252bcc73593bfce89c9a67f3c350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 45.49.236.199
Subject: How to replace an arch*.inc file?
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
X-List-Received-Date: Sat, 27 May 2017 01:34:54 -0000
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

I'd like to try the Linaro version of arch-armv8.inc in an RPi3 project,
because it has an ilp32 tune option. What's the correct way to incorporate
this?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com



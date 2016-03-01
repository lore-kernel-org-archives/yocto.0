Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33055E00C18; Tue,  1 Mar 2016 02:48:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 301 seconds by postgrey-1.32 at yocto-www;
	Tue, 01 Mar 2016 02:48:00 PST
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE6D1E00B8C
	for <yocto@yoctoproject.org>; Tue,  1 Mar 2016 02:48:00 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id B1AF827E709;
	Tue,  1 Mar 2016 10:42:57 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id XzaaAdF1liDq; Tue,  1 Mar 2016 10:42:36 +0000 (UTC)
Received: from [10.221.15.227]
	(host86-187-154-130.range86-187.btcentralplus.com [86.187.154.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id AC8B627E704;
	Tue,  1 Mar 2016 10:42:34 +0000 (UTC)
To: Ioan-Adrian Ratiu <adrian.ratiu@ni.com>
References: <1456826490-14432-1-git-send-email-adrian.ratiu@ni.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Message-ID: <56D57219.20101@dynamicdevices.co.uk>
Date: Tue, 1 Mar 2016 10:42:33 +0000
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <1456826490-14432-1-git-send-email-adrian.ratiu@ni.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-mono][PATCH] recipies-mono: fix LIC_FILES_CHKSUM URI
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
X-List-Received-Date: Tue, 01 Mar 2016 10:48:21 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 01/03/2016 10:01, Ioan-Adrian Ratiu wrote:
> Build fails with the following error (caused by a typo s/files/file/):
>
> "Failure expanding variable do_fetch[file-checksums], expression was
> ${@bb.fetch.get_checksum_file_list(d)}  ${@get_lic_checksum_file_list(d)}
> which triggered exception IndexError: string index out of range"
>
> Signed-off-by: Ioan-Adrian Ratiu <adrian.ratiu@ni.com>
> ---

Applied, thanks Adrian.


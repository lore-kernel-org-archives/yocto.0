Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A182E00AE6; Sat, 24 Aug 2019 14:19:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [62.149.158.217 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd01-g.aruba.it (smtpcmd01-g.aruba.it [62.149.158.217])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27174E00AB6
	for <yocto@yoctoproject.org>; Sat, 24 Aug 2019 14:19:44 -0700 (PDT)
Received: from [192.168.24.172] ([93.38.119.136])
	by smtpcmd01.ad.aruba.it with bizsmtp
	id t9Kh200012wfazh019KhTT; Sat, 24 Aug 2019 23:19:42 +0200
To: yocto@yoctoproject.org
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <fff2306b-4938-01a0-69b4-775e113a1853@faresoftware.it>
Date: Sat, 24 Aug 2019 23:19:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1566681582; bh=AzApJ575aMbvfqNMnfmZNkegUza8orrRbaCXInun8fc=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=TlGVOETZ3+KuxD3Qh966w2LUuBYIphfj7hpCnnpFyJpk9PpD8JnWKrR4X1Kh4Xrjz
	vqsGBX9o7GN7K55HJssbORv4CkrDeR0I1j6PNZTfU4yOQ8JkdLF+RSTOth3JwnQBuo
	NAymbvOGf2aiGR5iDweWx+2eyIAH+2b9OVTxfaCBz78ddQRvvsA+CWjYJGfNNOsN9z
	1z7whlEo8FgMgy1I/+jWbuxnVKCbbZRzgY8pCL/CGxmzrEALjp5JQ7PHm356DGNwdV
	n0akVNkYpfn+ybJxaLsbHnJK2QIQIBeRaH1KegXzWEkpM+HdVtxnueOI7AJDSTiUAS
	a9r1cNi7idNsQ==
Subject: Python3 scan packages
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
X-List-Received-Date: Sat, 24 Aug 2019 21:19:47 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: it

Hi all.

Do you know some class or recipe which can detect the modules used by a 
python application?

Now I have to RDEPENDS every package the application need


MZ



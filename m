Return-Path: <alberk@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33B11E00871; Thu, 12 Mar 2015 21:21:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alberk[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
Received: from mail-ie0-f171.google.com (mail-ie0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 044FDE0085D
	for <yocto@yoctoproject.org>; Thu, 12 Mar 2015 21:21:51 -0700 (PDT)
Received: by iecsl2 with SMTP id sl2so80578747iec.1
	for <yocto@yoctoproject.org>; Thu, 12 Mar 2015 21:21:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=YmHUiQio0KvKxWZ2MFv4JQD22LHR91edIPphZh9gzRw=;
	b=TB5m7922DVaavnDs2A3+Glxh857UMiAns+GdQIFV/o+mOxem4ks2M36F/pCNXVg98T
	0dIy2fi8DhkkudQ87q+VCOPK6frMQrmZLFbXTRh+HJdjRi22UJSsvSDseKV9YSUjxKZG
	H37hBw4umDiGxdQFAC7MgcklSupL292s7WqTeZy4SBbM6FEHrbelIokObHZrezRCB7iA
	fabBsPt8XT3GSVsNUDw394BRtqdYtBPJZA7iFhL7rZHsHPLbTtbxItNwRX+iwEacAhzg
	T2iKO8IDCf+52O1xunF39BRJpSPfWRGcjciZMv7VSHmo4UsV2JP9KvMmwJT+SfFiBdTd
	xXPw==
MIME-Version: 1.0
X-Received: by 10.42.166.73 with SMTP id n9mr53080224icy.19.1426220510217;
	Thu, 12 Mar 2015 21:21:50 -0700 (PDT)
Received: by 10.64.39.16 with HTTP; Thu, 12 Mar 2015 21:21:50 -0700 (PDT)
Date: Fri, 13 Mar 2015 12:21:50 +0800
Message-ID: <CACjDgAMTi_5Jk-p4n8F80XaZzaZ637q+5pvErr=ZfsSb2n5D2w@mail.gmail.com>
From: Albert K <alberk@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Yocto Dizzy branch with Linux Kernel 3.19
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
X-List-Received-Date: Fri, 13 Mar 2015 04:21:55 -0000
Content-Type: text/plain; charset=UTF-8

Dear all,

I would like to know if it is possible to do a compile with Linux
Kernel 3.19.  I have tried the  PREFERRED_VERSION_linux-yocto_qemux86
= "3.19%"  in the local.conf and it does not work.

If possible, what need to be done to the this going.  Thanks.

Regards,
Albert.


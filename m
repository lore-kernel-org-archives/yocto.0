Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5ADF5E00B21; Fri, 16 Oct 2015 12:33:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.44 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f44.google.com (mail-pa0-f44.google.com
	[209.85.220.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3540FE006D5
	for <yocto@yoctoproject.org>; Fri, 16 Oct 2015 12:32:58 -0700 (PDT)
Received: by pabrc13 with SMTP id rc13so128570596pab.0
	for <yocto@yoctoproject.org>; Fri, 16 Oct 2015 12:32:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-type:content-transfer-encoding;
	bh=UHdV3npMIxMia9yGSg1HqjBOBIaD4jYALt+KNbxhgNY=;
	b=lMOOVhYOczIpn4KxweNhyq/PDd9qSR6Rjay6wC+5PejsfUnipI7QKy6bhNgwq7vDjQ
	BwmvTKB5/eYXW4Ex75o5ZBXPSmHwGx6DEsA18FL+i/mkxMRY7QGb2wNzQgmuqWgHJNel
	H1d3BxsR/0lMc/CRm++OhjGIlfIRbw2U8BF8qF6zZ71fy82oJIU2YK/yBwSoUNSnY2aT
	9ohGOieXJCapbgwGkJRXiyFCfD9nXM9ZsyZ3MoHCxcs+7pScIId1Vuv8eMuFp0d7c/HS
	iF4SNSz4hLyDv7DfkV/a8Dp0XFCZbMpJMwbd29pZgjtvAXBsh7doNvlnTJljD5muV0/v
	upxQ==
X-Received: by 10.68.196.161 with SMTP id in1mr18253356pbc.127.1445023978295; 
	Fri, 16 Oct 2015 12:32:58 -0700 (PDT)
Received: from ?IPv6:2601:202:4000:1239:197c:ac43:581b:7cb1?
	([2601:202:4000:1239:197c:ac43:581b:7cb1])
	by smtp.googlemail.com with ESMTPSA id
	ou1sm22670757pbb.0.2015.10.16.12.32.56
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 16 Oct 2015 12:32:57 -0700 (PDT)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	OE-core <openembedded-core@lists.openembedded.org>
From: akuster808 <akuster808@gmail.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <562150E7.80604@gmail.com>
Date: Fri, 16 Oct 2015 12:32:55 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
Subject: Auto builder
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
X-List-Received-Date: Fri, 16 Oct 2015 19:33:02 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello all,

Are there any plans on tagging the autobuilder and any other sources
used to create and test the 2.0 release? It would be nice to try to
avoid the issues we ran into earlier this year with a Dizzy release that
has repressions.

regards,
Armin


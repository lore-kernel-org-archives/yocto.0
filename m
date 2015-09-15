Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC35BE00BEF; Tue, 15 Sep 2015 07:47:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.174 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f174.google.com (mail-ig0-f174.google.com
	[209.85.213.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D808E00B51
	for <yocto@yoctoproject.org>; Tue, 15 Sep 2015 07:47:43 -0700 (PDT)
Received: by igbni9 with SMTP id ni9so14322714igb.0
	for <yocto@yoctoproject.org>; Tue, 15 Sep 2015 07:47:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=sao0vhjPhrEVciKmCSw/E7Ux25xc1ex8VR+faA8xMBQ=;
	b=d7ILW3ZseqqPNhlkNQxaufpH0Vcqg/Q7Z3S7xS+k3jRS2zunU8Oj2zMRi8joq4XbEt
	nKGznjDxjwR/eZHuF9K3Eitqf6Pfx9aub8aoOXb22UI/+ka+oMDnRBd551q3aAnE6FXi
	wn4IBxHc7v1V5t1rhpKelEnA+bCDiFj7D9c5A+Iqx3X8EIIMXqhzmyPEursSTf1Oyyol
	fKOXjpcvuzWmGASsbUIZfFvyLMCHuO1JxOE/Dfd4BGo9OWawB6M28SUQRuzNgxCUIQZT
	pLd5xgTKnlKV5LtpnqfnJq9V3X8gaKhTZ1kofW6Nzp4b7T7hKvpFTGc8xLh30z4HZelX
	jjhA==
X-Received: by 10.50.12.36 with SMTP id v4mr6685666igb.87.1442328463026;
	Tue, 15 Sep 2015 07:47:43 -0700 (PDT)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	a4sm7711258igh.16.2015.09.15.07.47.41
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 15 Sep 2015 07:47:41 -0700 (PDT)
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>, yocto@yoctoproject.org
References: <A240ECF1A90D49B7ACC78379329FE808@PAULD>
From: Trevor Woerner <twoerner@gmail.com>
Message-ID: <55F82F8A.0@gmail.com>
Date: Tue, 15 Sep 2015 10:47:38 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <A240ECF1A90D49B7ACC78379329FE808@PAULD>
Subject: Re: I hate busybox!
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
X-List-Received-Date: Tue, 15 Sep 2015 14:47:46 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 09/15/15 04:26, Paul D. DeRocco wrote:
> My embedded system has enough room in it for full-featured command line
> tools, instead of the wretched busybox. Does the Yocto meta-data include a
> layer that provides such tools? Or does OE? And how would I disable
> busybox in order to use the better tools?

+1

...although "hate" is a strong word, I have been tripped up numerous
times in the past by writing a script on my development host only to
find it doesn't work on my target device due to the restrictions of the
various busybox executables. The "embedded" system of today is the
desktop system of only a couple years ago. The only place busybox (and
toybox) are needed today are in the MMU-less-type systems, such as
Cortex-Ms etc.


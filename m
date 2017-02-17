Return-Path: <pj0585@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A746E00935; Fri, 17 Feb 2017 01:35:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pj0585[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.176 listed in list.dnswl.org]
Received: from mail-wr0-f176.google.com (mail-wr0-f176.google.com
	[209.85.128.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A2C4E00724
	for <yocto@yoctoproject.org>; Fri, 17 Feb 2017 01:35:39 -0800 (PST)
Received: by mail-wr0-f176.google.com with SMTP id i10so26535829wrb.0
	for <yocto@yoctoproject.org>; Fri, 17 Feb 2017 01:35:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=aOkfa197Hb9bwpRz97N5/VjVp1Hnm8RmkOcAJ3tmVCI=;
	b=BgOSbtDc42/r9q8wgp/Fk8YCyz/PXngGGZ+h7f9Qn6E6UeB4qQTh3uAYkkg5a/DQ2f
	nkKR9cCvTN57NqbMakBeVlVMMwov15NeNcLrfO5NnjVXRYZ7GzMMajEVVopc3P5o/d3w
	Y7hQMaM5GS1F5Y20Qam7UqKR2Vt0k2GzihYmR0I/sb6Kes+auC7wYNUD6cD2TiSMO7lD
	zhchneZLwwZHHQJH31Q3UvlP3GII9hG90rWsaokQpAZqpag8t5a5TGPvHDdRd21Ct0iq
	Yi+oa55axuZSPv5cfENTbqclY2HsfqyoSUsWc9s+Mr52LGDsWeWMO8OX+kAdhnxeS0Uk
	/D6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=aOkfa197Hb9bwpRz97N5/VjVp1Hnm8RmkOcAJ3tmVCI=;
	b=uN1pSrUfz+gDYA8cLhYvAdCAszk7n3JJ7nMuXt8v9frCwALWu/Dm65/fRECmP85ErQ
	wA0xxexsg+ZJe3opqKti+xUcGsEnICJe+3DpHu2mfBp9K68eUh5uzbuNKi2c1znl8YyL
	80+YHNkC6BICO5/0t60GEv3JdsWyIlwxsHUUjipWC1JVCzZbFirEsR715xxOwP/sCv+0
	jsdMbX/itnrdxDIllAI4NUNLIy1oBe7IrgnBdb+qRbrVzhqWVdjJs5lSDFTuIiKylQ8Y
	7IGYUUCGmjwOqccP8/RtjxgGhXpXutIzx2ARxPlrC0XQEDe4Qut96h+AHmFtQZda+JT7
	ybzg==
X-Gm-Message-State: AMke39l4z8mxunm2AxKRt8ebp5w2myjqrDi8r20zzWT27JPihBfLrNBDkvGc69d4VdkXq66Cu/+vcu94kli0Fw==
X-Received: by 10.223.177.134 with SMTP id q6mr5566619wra.83.1487324138887;
	Fri, 17 Feb 2017 01:35:38 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.130.137 with HTTP; Fri, 17 Feb 2017 01:35:38 -0800 (PST)
From: Prasant J <pj0585@gmail.com>
Date: Fri, 17 Feb 2017 15:05:38 +0530
Message-ID: <CAA2DH4v=5gLb80rJxzqRcCxvj-o-SdGdDSvi13Jbcv+M1W3xiQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Autotools package configure error
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
X-List-Received-Date: Fri, 17 Feb 2017 09:35:43 -0000
Content-Type: text/plain; charset=UTF-8

Hi,


I'm trying to include a third party package in my custom layer.
Unfortunately there is no new release of this third party package.
During the 'configure' stage I get this error:

configure.ac:15: error: possibly undefined macro: AM_PROG_LIBTOOL

I tried changing AM_PROG_LIBTOOL to AC_PROG_LIBTOOL, but I get the
same error message.



Any ideas on how can I fix this?
Is there a easy tool or helpful utility to upgrade old autotools
package to a newer one?


Regards, Pj

